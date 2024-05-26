#!/usr/bin/python3


import json
import os

import psycopg2
from urllib.parse import urlparse


MONTHS = [
    'Jan',
    'Fév',
    'Mar',
    'Avr',
    'Mai',
    'Juin',
    'Juil',
    'Août',
    'Sep',
    'Oct',
    'Nov',
    'Déc',
]
MONTHS_FULL = [
    'Janvier',
    'Février',
    'Mars',
    'Avril',
    'Mai',
    'Juin',
    'Juillet',
    'Août',
    'Septembre',
    'Octobre',
    'Novembre',
    'Décembre',
]

conn = psycopg2.connect(
    dbname = "bqrtvnn1cqx8a2lxmxhv",
    user = "u9y4l14lq7ckl9panjm1",
    password = "bBoCboOm2Cfq68STHyEs",
    host = "bqrtvnn1cqx8a2lxmxhv-postgresql.services.clever-cloud.com",
    port = 5120,
)

cur = conn.cursor()


def poetry():
    cur.execute("""
SELECT
    a.name,
    JSON_AGG((p.key, p.title))
  FROM poem p
  JOIN author_poem ap ON p.id = ap.poem_id JOIN author a ON a.id = ap.author_id
  GROUP BY a.name, a.key
  ORDER BY a.key
""")
    poets = cur.fetchall()
    for poet in poets:
        print(f"<h2>{poet[0]}</h2>")
        print("<ul>")
        for poem in sorted(poet[1], key=lambda x: x["f2"]):
            print(f"  <li><a href=\"../poem/{poem['f1']}\">{poem['f2']}</a></li>")
        print("</ul>")


def poems():
    cur.execute("""
SELECT
    p.key,
    p.title,
    p.content,
    a.name
  FROM poem p
  JOIN author_poem ap ON p.id = ap.poem_id JOIN author a ON a.id = ap.author_id
""")
    poems = cur.fetchall()
    for poem in poems:
        fp = open(f"layouts/poems/{poem[0]}.html", "w")
        content = [
            "{{ define \"main\" }}\n",
            "\n",
        ]

        content += [l + "\n" for l in poem[2]]

        content += [
            "\n",
            "{{ end }}\n",
        ]
        fp.writelines(content)
        fp.close()

        try:
            os.mkdir(f"content/poem/{poem[0]}")
        except:
            pass

        fp = open(f"content/poem/{poem[0]}.md", "w")
        content = [
            "+++\n",
            f"title = \"{poem[1]}\"\n",
            f"subtitle = \"{poem[3]}\"\n",
            "date = 2024-05-26T14:20:51+02:00\n",
            "type = \"poems\"\n",
            f"layout = \"{poem[0]}\"\n",
            "+++\n",
        ]
        fp.writelines(content)
        fp.close()


def authors():
    cur.execute("""
SELECT
    a.name,
    JSON_AGG((b.title, r.date))
  FROM book b
  JOIN author_book ab ON b.id = ab.book_id JOIN author a ON a.id = ab.author_id JOIN read r ON r.book_id = b.id
  GROUP BY a.name, a.key
  ORDER BY a.key
""")
    authors = cur.fetchall()
    for author in authors:
        print(f"<h2><a style=\"color: black;\" href=\"https://fr.wikipedia.org/wiki/{author[0]}\">{author[0]}</a></h2>")
        print("<ul>")
        for book in sorted(list(set([b["f1"] for b in author[1]]))):
            line = f"  <li>{book} - "
            for date in sorted([b["f2"] for b in author[1] if b["f1"] == book]):
                year = date[:4]
                month = MONTHS[int(date[:7][-2:]) - 1]
                month_full = MONTHS_FULL[int(date[:7][-2:]) - 1]
                line += f"<a href=\"../archives/{year}#{month_full}\">{month} {year}</a>"
            line += "</li>"
            print(line)
        print("</ul>")


def years():
    for year in range(2014, 2024):
        cur.execute(f"""
SELECT
    EXTRACT(MONTH FROM r.date),
    JSON_AGG((r.date, a.name, b.title))
  FROM book b
  JOIN author_book ab ON b.id = ab.book_id JOIN author a ON a.id = ab.author_id JOIN read r ON r.book_id = b.id
  WHERE EXTRACT(YEAR FROM r.date)::integer = {int(year)}
  GROUP BY EXTRACT(MONTH FROM r.date)
  ORDER BY EXTRACT(MONTH FROM r.date)
    """)
        months = cur.fetchall()

        try:
            os.mkdir(f"content/archives/{year}")
        except:
            pass

        fp = open(f"content/archives/{year}/index.md", "w")
        content = [
            "+++\n",
            f"title = \"{year}\"\n",
            "date = 2024-05-26T14:20:51+02:00\n",
            "type = \"archives\"\n",
            f"layout = \"{year}\"\n",
            "+++\n",
        ]
        fp.writelines(content)
        fp.close()

        fp = open(f"layouts/archives/{year}.html", "w")

        content = [
            "{{ define \"main\" }}\n",
            "\n",
        ]

        for month in months:
            content += "\n"
            content += [f"<h3 id = \"{MONTHS_FULL[int(month[0]) - 1]}\">{MONTHS_FULL[int(month[0]) - 1]}</h3>\n"]
            content += "\n"
            content += "<ul>\n"
            for book in sorted(month[1], key = lambda x: str(x["f1"])):
                content += f"  <li>{book['f2']} - {book['f3']}</li>\n"
            content += "</ul>\n"

        content += [
            "\n",
            "{{ end }}\n",
        ]
        fp.writelines(content)
        fp.close()


if __name__ == "__main__":
    # poetry()
    # poems()
    authors()
    # years()
