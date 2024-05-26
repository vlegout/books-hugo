--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9
-- Dumped by pg_dump version 15.6 (Debian 15.6-0+deb12u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: tiger; Type: SCHEMA; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

CREATE SCHEMA tiger;


ALTER SCHEMA tiger OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: tiger_data; Type: SCHEMA; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

CREATE SCHEMA tiger_data;


ALTER SCHEMA tiger_data OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: topology; Type: SCHEMA; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: SCHEMA topology; Type: COMMENT; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';


--
-- Name: plcoffee; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plcoffee WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plcoffee; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plcoffee IS 'PL/CoffeeScript (v8) trusted procedural language';


--
-- Name: plls; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plls WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plls; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plls IS 'PL/LiveScript (v8) trusted procedural language';


--
-- Name: plv8; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plv8 WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plv8; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plv8 IS 'PL/JavaScript (v8) trusted procedural language';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- Name: autoinc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS autoinc WITH SCHEMA public;


--
-- Name: EXTENSION autoinc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION autoinc IS 'functions for autoincrementing fields';


--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: file_fdw; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS file_fdw WITH SCHEMA public;


--
-- Name: EXTENSION file_fdw; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION file_fdw IS 'foreign-data wrapper for flat file access';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: insert_username; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS insert_username WITH SCHEMA public;


--
-- Name: EXTENSION insert_username; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION insert_username IS 'functions for tracking who changed a table';


--
-- Name: intagg; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intagg WITH SCHEMA public;


--
-- Name: EXTENSION intagg; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intagg IS 'integer aggregator and enumerator (obsolete)';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: isn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS isn WITH SCHEMA public;


--
-- Name: EXTENSION isn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION isn IS 'data types for international product numbering standards';


--
-- Name: lo; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS lo WITH SCHEMA public;


--
-- Name: EXTENSION lo; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION lo IS 'Large Object maintenance';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: moddatetime; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS moddatetime WITH SCHEMA public;


--
-- Name: EXTENSION moddatetime; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION moddatetime IS 'functions for tracking last modification time';


--
-- Name: pageinspect; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pageinspect WITH SCHEMA public;


--
-- Name: EXTENSION pageinspect; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pageinspect IS 'inspect the contents of database pages at a low level';


--
-- Name: pg_buffercache; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_buffercache WITH SCHEMA public;


--
-- Name: EXTENSION pg_buffercache; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_buffercache IS 'examine the shared buffer cache';


--
-- Name: pg_freespacemap; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_freespacemap WITH SCHEMA public;


--
-- Name: EXTENSION pg_freespacemap; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_freespacemap IS 'examine the free space map (FSM)';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: postgis_raster; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_raster WITH SCHEMA public;


--
-- Name: EXTENSION postgis_raster; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_raster IS 'PostGIS raster types and functions';


--
-- Name: postgis_tiger_geocoder; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;


--
-- Name: EXTENSION postgis_tiger_geocoder; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


--
-- Name: postgres_fdw; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgres_fdw WITH SCHEMA public;


--
-- Name: EXTENSION postgres_fdw; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgres_fdw IS 'foreign-data wrapper for remote PostgreSQL servers';


--
-- Name: refint; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS refint WITH SCHEMA public;


--
-- Name: EXTENSION refint; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION refint IS 'functions for implementing referential integrity (obsolete)';


--
-- Name: seg; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS seg WITH SCHEMA public;


--
-- Name: EXTENSION seg; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION seg IS 'data type for representing line segments or floating-point intervals';


--
-- Name: sslinfo; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS sslinfo WITH SCHEMA public;


--
-- Name: EXTENSION sslinfo; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION sslinfo IS 'information about SSL certificates';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: tcn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tcn WITH SCHEMA public;


--
-- Name: EXTENSION tcn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tcn IS 'Triggered change notifications';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: author; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.author (
    id uuid NOT NULL,
    key text,
    name text,
    origin text[],
    birth integer,
    death integer
);


ALTER TABLE public.author OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: author_book; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.author_book (
    author_id uuid,
    book_id uuid
);


ALTER TABLE public.author_book OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: author_poem; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.author_poem (
    author_id uuid,
    poem_id uuid
);


ALTER TABLE public.author_poem OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: book; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.book (
    id uuid NOT NULL,
    title text,
    subtitle text,
    title_original text,
    subtitle_original text,
    year integer,
    year_translation integer,
    editor text,
    series text,
    npages integer,
    isbn10 text,
    isbn13 text,
    lang text,
    ebook boolean,
    html text,
    epub text,
    pdf text
);


ALTER TABLE public.book OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: poem; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.poem (
    id uuid NOT NULL,
    key text,
    title text,
    content text[]
);


ALTER TABLE public.poem OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Name: read; Type: TABLE; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

CREATE TABLE public.read (
    id uuid NOT NULL,
    book_id uuid,
    date date
);


ALTER TABLE public.read OWNER TO u9y4l14lq7ckl9panjm1;

--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.alembic_version (version_num) FROM stdin;
fb7786f152aa
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.author (id, key, name, origin, birth, death) FROM stdin;
00859cbf-4df7-4d44-9d15-641e61879d96	verlaine	Paul Verlaine	{fr}	1844	1896
d9199ccd-c1e1-4e85-a082-5f6cdf2f294d	begag	Azouz Begag	{fr}	1957	\N
62efc597-e0eb-4c86-a742-16a1f0bdbd03	gogol	Nicolas Gogol	{ru}	1809	1852
e437c67b-a6ab-43be-84df-9ca2dfda8ade	huysmans	Joris-Karl Huysmans	{fr}	1848	1907
692dd4c5-9266-4de6-ba6a-62960779c827	thoreau	Henry David Thoreau	{us}	1817	1862
aca89029-ab48-41d9-91c6-1f497b642981	waugh	Evelyn Waugh	{gb}	1903	1966
3d38162f-527d-4c97-a017-364aeb533114	safran	Serge Safran	{fr}	1950	\N
376d9a8f-ae49-4437-a4f8-320920daf37d	dumas	Alexandre Dumas	{fr}	1802	1870
d2086312-67c3-48f8-9adc-45cf1a632f32	viggers	Karen Viggers	{au}	1960	\N
987f906d-7b58-4611-b1b9-357e2717c933	stockett	Kathryn Stockett	{us}	1969	\N
bea0133e-bf22-4da3-8b0d-3dd6e65ce175	beigbeder	Frédéric Beigbeder	{fr}	1965	\N
95d323ba-c04e-4eff-a869-fc7f7b45cc0b	rahmy	Philippe Rahmy	{ch}	1965	2017
8b1f4205-237c-400a-9e3f-3eaba716ed16	senac	Philippe Sénac	{fr}	1952	\N
71d35a3b-3ed1-4151-9e78-2746a5b9c88d	gauthier	Yves Gauthier	{fr}	1960	\N
da151f9e-a48c-4b1e-a70f-d4913135cb66	maugham	Somerset Maugham	{gb}	1874	1965
d31fc1f8-ca18-4ef4-83ee-5a1d0e86ae8d	delorme	Olivier Delorme	{fr}	1958	\N
2d81ea2b-f106-4866-a6d3-7c7bfca4638e	deburon	Nicole De Buron	{fr}	1929	\N
90f0888e-016f-48de-8256-550adc89530b	mallarme	Stéphane Mallarmé	{fr}	1842	1898
70a313ce-d3ba-4dfc-a368-891634d7b4fc	checkhov	Anton Checkhov	{ru}	1860	1904
eee33f50-7cc8-4387-bf52-06e1df5da389	quatremer	Jean Quatremer	{fr}	1957	\N
cacfe6c8-10aa-44ad-ad0c-5e016c839297	fives	Carole Fives	{fr}	1971	\N
990ad5cc-da75-4014-b909-b9c110fe071b	drieularochelle	Pierre Drieu la Rochelle	{fr}	1893	1945
61cd03b6-29d2-46e6-b591-c864ae07f3c5	ferey	Caryl Férey	{fr}	1976	\N
b932cf5f-c0b5-44e0-92d8-c8224f079162	kaddour	Hédi Kaddour	{fr}	1945	\N
68ff266d-1fb1-4be0-a0c2-12dbfe8b84e6	fauvelle	François-Xavier Fauvelle	{fr}	1968	\N
ffcad7b5-2758-4f16-8432-5a3f5fa18333	dumaurier	Daphne du Maurier	{gb}	1907	1989
5d16a4d7-8e08-4687-8ee2-4ad4384dfebe	fontane	Theodor Fontane	{de}	1819	1898
c72dff9f-4bc7-4a3b-9672-7b6ab9c5bb46	cayrol	Jean Cayrol	{fr}	1911	2005
650fc72d-3cb2-423f-b917-df46a93f0e87	aimard	Gustave Aimard	{fr}	1818	1883
62fa4796-fe4c-4d01-bc38-ce4076b1f477	binet	Laurent Binet	{fr}	1972	\N
c7289612-b6fc-4505-9528-554ce431a42b	gary	Romain Gary	{fr}	1914	1980
863b4edb-7eec-41ba-9617-efde923344ea	jourde	Pierre Jourde	{fr}	1955	\N
00f76c44-371d-4b54-a15f-b5b72f92a423	hudson	William Henry Hudson	{gb}	1841	1922
d5974af7-1d45-4cc6-95cd-3ed82329a7d9	lancon	Philippe Lançon	{fr}	1963	\N
58ae36a8-3299-4c86-97ea-b513d93c44e4	caillie	René Caillié	{fr}	1799	1838
6778b106-9304-42aa-a330-df19c0d2cc71	miralles	Francesc Miralles	{es}	1968	\N
08c19247-83a5-4baa-83b7-0c77a453d395	josse	Gaëlle Josse	{fr}	1960	\N
6cd95891-2704-4ab8-9f1a-17f93df32079	apollinaire	Guillaume Apollinaire	{fr}	1880	1918
e714fabe-8810-4de1-9e7d-423cc2d4c0a9	tolstoi	Léon Tolstoï	{ru}	1828	1910
41b7c65c-5f22-4534-bbc0-81b5711cc142	politkovskaia	Anna Politkovskaïa	{ru}	1958	2006
49daba95-5478-4b9d-a98c-eb4682cb35aa	hopkirk	Peter Hopkirk	{gb}	1930	2014
01779c83-638b-419f-b7a9-c9b21e56d683	london	Jack London	{us}	1876	1916
36463497-edd5-494d-b0e9-e81091ded298	rioux	Jean-Pierre Rioux	{fr}	1939	\N
8f1545f9-6655-4df7-a709-0f5b8dacda31	besson	Philippe Besson	{fr}	1967	\N
b1fa172b-b2e9-4fd4-a0bf-69d2b87c95f3	schmitt	Éric-Emmanuel Schmitt	{fr}	1960	\N
0f0efe05-a27d-466a-a0cd-53c1082e193e	brami	Alma Brami	{fr}	1984	\N
a0b0c1e8-be2c-4718-b773-f4cc737856fd	rufin	Jean-Christophe Rufin	{fr}	1952	\N
54f69ef4-ec4e-483e-809e-6bca8da8f87b	nivatg	Georges Nivat	{fr}	1935	\N
b858bff5-615f-4b9b-b3e5-e3589e6f7df9	castino	Didier Castino	{fr}	1966	\N
fff85f91-9607-40c5-97ad-ba15fb296228	guppy	Shusha Guppy	{ir}	1935	2008
0a7c743a-6e36-4d2a-a60c-42ff342686cc	custine	Astolphe de Custine	{fr}	1790	1857
47e6c54d-84af-4ce1-be84-8193ca8898b2	guilloux	Louis Guilloux	{fr}	1899	1980
50e46bcd-ec17-4e87-a208-dacc2181631f	claudel	Philippe Claudel	{fr}	1962	\N
8b58f0c4-6a22-4f7d-b5c1-92795adab3ba	lermontov	Mikhail Lermontov	{ru}	1814	1841
c471ae0f-605e-4c1a-9191-c977816030ed	sand	George Sand	{fr}	1804	1876
18111712-d6ed-4e2b-a594-f194d46bee0a	bukowski	Charles Bukowski	{us}	1920	1994
30233609-7f01-4fb1-9d5f-33835544b2d7	colette	Colette	{fr}	1873	1954
7c592328-236b-4cb1-bff5-bb74a5e215a6	marquez	Gabriel García Marquez	{co}	1927	2014
9eac5b08-0def-4d12-b39d-48874866cb3a	euripide	Euripide	{gr}	-480	-406
4798489d-67a9-4444-a460-1c7631b7f315	barbeau	Anaïs Barbeau-Lavalette	{ca}	1979	\N
70254882-3ff9-46cc-a0af-7f8c1848a3e7	detambel	Régine Détambel	{fr}	1963	\N
ab36eee9-f07c-495b-baf6-a6d729176202	limonov	Édouard Limonov	{ru}	1943	\N
70b32a37-2eb2-4a3a-bb68-d20f369c1f99	valles	Jules Vallès	{fr}	1832	1885
38d1f7bc-e1b7-4929-a934-bf438139fb0f	charles_roux	Edmonde Charles-Roux	{fr}	1920	2016
1ce0dafb-c06d-4114-8988-c5de994336b0	fermor	Patrick Leigh Fermor	{gb}	1915	2011
c144544f-3e3c-4839-9367-124af696a8d4	vizinczey	Stephen Vizinczey	{hu,ca}	1933	\N
10f871b7-274f-4372-b7cd-f17d61ba2a2b	baudelaire	Charles Baudelaire	{fr}	1821	1867
114880ec-6541-4fb4-94a0-45a822ecdf85	davidneel	Alexandra David-Néel	{fr}	1868	1969
c061549d-e5a4-4c77-801d-ee41da4d38d5	gautier	Théophile Gautier	{fr}	1811	1872
816255f0-9fca-4624-85b5-17799d41a993	soljenitsyne	Alexandre Soljenitsyne	{ru}	1918	2008
cdef4b59-11da-472f-87fb-dee4e5ab9842	safak	Elif Şafak	{tr}	1971	\N
9d91615b-6a35-4af5-a951-95118d1ce5d2	ebadi	Shirin Ebadi	{ir}	1947	\N
41014684-16ab-4193-85a5-ee920e32dea2	lamartine	Alphonse de Lamartine	{fr}	1790	1869
56d0be8a-816a-4f65-a5cb-4c386c9f163b	ledig	Agnès Ledig	{fr}	1973	\N
43d70ff1-6965-4692-a55d-ab4c87ea05cd	bradbury	Ray Bradbury	{us}	1920	2012
9e35a9ee-9ef7-45c4-8abb-fe9a166ce69b	levy	Edmond Lévy	{fr}	1934	0
2d6d74f7-df5e-4e78-87dc-bbfac3775475	darien	Georges Darien	{fr}	1862	1921
7ba20a6b-e87d-4c24-9e3c-0332440ef512	herzen	Alexander Herzen	{ru}	1812	1870
cd3e4510-2c37-4dc9-ae1f-458e5b8db925	bordonove	Georges Bordonove	{fr}	1920	2007
a9c76308-d7c4-4b3d-9abb-b68995247fea	gorki	Maxime Gorki	{ru}	1868	1936
1237490d-346f-4c9e-86f7-ecce42e6505c	aksionov	Vassili Aksionov	{ru}	1932	2009
8ca1a191-00ee-49b8-9a54-bcfc42c6bcfd	azoulai	Nathalie Azoulai	{fr}	1966	\N
18b186aa-280f-45bc-bf57-baa8d350823f	junger	Ernst Jünger	{de}	1895	1998
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	polybe	Polybe	{gr}	-208	-126
f593fb2f-e8e4-4007-8a32-916e9fab3c46	may	Peter May	{gb}	1951	\N
ed577c74-8010-4c55-931f-68e88ec1285e	hunt	Laird Hunt	{us}	1968	\N
b4e51b03-73bc-4428-8611-78865370c603	monfreid	Henry de Monfreid	{fr}	1879	1974
435c9078-b116-4b80-8996-b74656376955	hansson	David Heinemeier Hansson	{dk}	1979	\N
67f42b96-d9e4-48bf-a0d0-7eb9d23c5d53	subrahmanyam	Sanjay Subrahmanyam	{in}	1961	\N
56306889-8a54-4965-aa1f-a6118dcd2fae	noel	Roden Noel	{gb}	1834	1894
9e891c2e-3d97-450d-aa02-456b47042738	guez	Olivier Guez	{fr}	1974	\N
ff522022-a630-4919-9450-55d5bee00a4e	anouilh	Jean Anouilh	{fr}	1910	1987
b83749fd-937a-4230-a395-97d28dac78c8	bergot	Erwan Bergot	{fr}	1930	1993
091c6fce-9e6d-42af-b732-d5382b1ec2a3	djian	Philippe Djian	{fr}	1949	\N
d187ab2f-2552-4d69-b5de-ef593f34e32e	nivat	Anne Nivat	{fr}	1969	\N
4dbe910c-7022-4f3b-8632-c3cfbd6028d5	pouchkine	Alexandre Pouchkine	{ru}	1799	1837
880257d4-ecc8-45e3-a716-5f01fb4618f8	michon	Pierre Michon	{fr}	1945	\N
57ed3d2a-c5c3-4047-bcd8-3af95530f39d	nemat	Marina Nemat	{ir}	1965	\N
68171579-f281-4f1e-94d3-53e9c86974b4	boulgakov	Mikhaïl Boulgakov	{ru}	1891	1940
fb964dd2-250b-4a4b-81dc-921b06aac933	adrian	Pierre Adrian	{fr}	1991	\N
030cd53a-c343-4e64-adae-7cb1eb3a0aa8	kaplan	Michel Kaplan	{fr}	1946	\N
7763b003-30bc-426a-b5f6-e176fcfd9de0	dostoievski	Fiodor Dostoïevski	{ru}	1821	1881
ca3e9afa-544d-4708-a73f-913f9e59e617	gaude	Laurent Gaudé	{fr}	1972	\N
97224bc5-56de-4019-8c67-ba1c58be74e0	kavvadias	Níkos Kavvadías	{gr}	1910	1975
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	carrere	Emmanuel Carrère	{fr}	1957	\N
fb3b2f08-5de1-4035-a494-65ba22d36d4d	shakespeare	William Shakespeare	{gb}	1564	1616
d08322e5-81e3-4b86-a0bc-67e358090836	baldwin	James Baldwin	{us}	1924	1987
6b74c313-da53-4983-bd8e-d835d2f5df73	grandpierre	Véronique Grandpierre	{fr}	1960	\N
ee3a3fc2-87f5-4459-a7ba-f96e20b7263e	dovlatov	Sergei Dovlatov	{ru}	1941	1990
7f49098e-43b7-442c-bd6a-15d13b891cb4	duroy	Lionel Duroy	{fr}	1949	\N
937a1474-dd56-4121-ab25-5315f8216799	ollivier	Bernard Ollivier	{fr}	1938	\N
228c91e9-bc9d-49e5-8017-ec691f62388c	miller	Henry Miller	{us}	1891	1980
79fdbd62-a1ff-42a3-bbec-870d4a1e825e	atwood	Margaret Atwood	{ca}	1939	\N
35c2e088-2552-4bd0-8b6f-eadbe7b6ed0b	renan	Ernest Renan	{fr}	1823	1892
cb721f56-84d5-40f1-abbf-581758b16f98	teule	Jean Teulé	{fr}	1953	\N
0e9d16e7-f485-4539-84ab-a5e36d746797	musset	Alfred de Musset	{fr}	1810	1857
325c682b-61ea-4349-bde7-36e4db21d20b	giono	Jean Giono	{fr}	1895	1970
7d762a30-3c59-440b-93c9-fc80240c1666	manfredi	Astrid Manfredi	{fr}	1970	\N
9ba08bfd-5e21-4b97-b2e1-52f33503ea3e	stowe	Harriet Beecher Stowe	{us}	1811	1896
a425fb3d-fa8f-4e5f-b05a-0f39f7abd59c	yourcenar	Marguerite Yourcenar	{fr}	1903	1987
6a2cd234-8b57-434b-8668-50f5948f3b25	hudson2	Kerry Hudson	{uk}	1980	\N
acb5ab4b-80b7-4aa2-ba4d-85e147b67fb7	erbland	Brice Erbland	{fr}	1984	\N
66b1ba9c-f2dc-4263-8a73-9f1e39acf831	fried	Jason Fried	{us}	1976	\N
b1ca2cfa-465a-4037-b18f-296c55504142	beckett	Samuel Beckett	{ie,fr}	1906	1989
643e9a56-8749-4734-ba95-9d744031e7f6	bouzou	Nicolas Bouzou	{fr}	1976	\N
7579bda0-0699-4770-8af4-0622559ae627	gaveriaux	Laura-Maï Gaveriaux	{fr}	1985	\N
35a5ad9b-6753-4cfd-a4a6-c1643cf55d24	robbegrillet	Alain Robbe-Grillet	{fr}	1922	2008
e0ddc9ec-b55d-421b-9191-37d832ca9011	segalen	Victor Segalen	{fr}	1878	1919
46e3034c-5773-42f8-b927-d4f851a2e672	cabanes	Pierre Cabanes	{fr}	1940	\N
cda33cc2-24d7-4465-af6f-32aa48b29ee4	tourgueniev	Ivan Tourguéniev	{ru}	1818	1883
92502279-79bc-4ac1-ace6-1e5a9d2f770f	pamuk	Orhan Pamuk	{tr}	1952	\N
c2cf9f78-fd3a-4338-8c0a-48d9ee9bb32d	morand	Paul Morand	{fr}	1888	1976
09f54bc1-1289-41cb-8196-5fc9f3adf275	fante	Dan Fante	{us}	1944	2015
8522089b-5ec2-4f5e-a006-2daea953775d	aragon	Louis Aragon	{fr}	1897	1982
0001c98a-baae-4f8f-b3d0-50b18e240e52	bloch	Marc Bloch	{fr}	1886	1944
75e92b4b-2944-4a33-80f8-96b80a681275	faye	Gaël Faye	{fr}	1982	\N
818c4260-450e-4575-ac44-1b3fe7a69bea	hourani	Albert Hourani	{gb}	1915	1993
299cdaac-773d-427b-a31d-284aa3fa315a	kertesz	Imre Kertész	{hu}	1929	2016
c1fa5306-bba7-4dfe-97f2-b3b7ba255812	arfi	Fabrice Arfi	{fr}	1981	\N
1580efeb-fb5a-4067-be30-e8c9dca75a0e	guenassia	Jean-Michel Guenassia	{fr}	1950	\N
253b8230-f151-4d47-93f9-3178896b11c5	gallegos	Rómulo Gallegos	{ve}	1884	1969
4ee50f48-ced5-4d90-8c6f-87461089444e	plutarch	Plutarch	{gr}	46	127
ecf2041f-2ff2-43f2-82e2-6ca6adb92582	simon	Claude Simon	{fr}	1913	2005
b81a4de3-dc39-44eb-8dbf-3f9e6be62051	jenni	Alexis Jenni	{fr}	1963	\N
fbd26898-4a46-4161-88c5-33c954a5e46f	monod	Théodore Monod	{fr}	1902	2000
6fe76c12-2751-4a70-bc48-71d46dbc5238	reclus	Élisée Reclus	{fr}	1830	1905
e30c74db-4596-44f8-8efe-1a4e52bcb5d7	cortazar	Julio Cortázar	{ar}	1914	1984
2b7f5b62-bd58-4aef-b631-40f600e481dd	soyinka	Wole Soyinka	{ng}	1934	\N
3d5e4612-e3c1-4a02-b249-eb2f18e437fe	desarthe	Agnès Desarthe	{fr}	1966	\N
c089c17c-4f99-4927-a91b-0e7fd5aacc7f	kacimi	Mohamed Kacimi	{dz}	1955	\N
3053f566-b5f4-4fea-b0f5-dd3addaa74a2	kovalevskaia	Sofia Kovalevskaïa	{ru}	1850	1891
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	gras	Cédric Gras	{fr}	1982	\N
0e933bbe-afcd-4daa-b6fd-61a7fc4186ab	becel	Anne Bécel	{fr}	1980	\N
642ce6c2-787c-4edf-ba04-38377ef9bcd5	vladimov	Gueorgui Vladimov	{ru}	1931	2003
f0677d0f-e1f1-4298-bc94-ab2dd17953fd	lawrence	D. H. Lawrence	{gb}	1885	1930
cc4730a6-e8af-49fa-9f82-e52cf90fe578	owl	Grey Owl	{gb,ca}	1888	1938
ea9154bd-0223-41b2-aaa4-eb6c0a603003	assouline	Pierre Assouline	{fr}	1953	\N
0f0c2b2e-9a93-493c-964e-72b6a096dc92	mauger	Léna Mauger	{fr}	1980	\N
6e62a8b9-2dac-48a4-aa64-64b6741c1a43	austen	Jane Austen	{gb}	1775	1817
b69a8adb-55d1-4b3a-97ac-d98518617905	delmaire	Julien Delmaire	{fr}	1977	\N
b4bfdf3d-8220-4210-8e5f-1277092bd295	ernaux	Annie Ernaux	{fr}	1940	\N
691fe3ca-3a90-4a4b-ba36-84aa4489e566	potocki	Romain Potocki	{fr}	1981	\N
ee9dac32-b54e-422a-b9d7-f4c4eca89f3c	constant	Benjamin Constant	{fr}	1767	1830
89566825-e8ba-442f-959f-9c8a1b321e79	collongues	Anne Collongues	{fr}	1985	\N
b9f42dca-d4cf-4762-9127-76e119df3f87	navai	Ramita Navai	{ir}	1973	\N
3ad031d7-8b77-4ae9-8701-314ab98fbdf6	whennewflowersbloomed		{cr,pa}	\N	\N
0373134b-be3b-42ba-964d-efab69052dbc	murger	Henry Murger	{fr}	1822	1861
ef96374e-15e7-415e-b1bb-f61f6c343364	oudghiri	Rémy Oudghiri	{fr}	1965	\N
cd995893-d17d-4027-aecf-c3c3610077e1	delaparra	Teresa de la Parra	{ve}	1889	1936
f2c5f486-e7c1-4f2f-9231-10a1c48dec12	despentes	Virginie Despentes	{fr}	1969	\N
e41ee89f-c73b-475c-bd57-8eecb673a84c	cusset	Catherine Cusset	{fr}	1963	\N
43b7a894-d5bc-4b49-b374-f5f08a22ba4b	martinez	Carole Martinez	{fr}	1966	\N
3a032e49-6dde-4068-a6e0-dc3e5d551d0f	reverdy	Thomas B. Reverdy	{fr}	1974	\N
dabeca6b-c70f-47ea-b61a-d43a0958e810	wharton	Edith Wharton	{us}	1862	1937
903dfa24-cc2c-4c87-ab71-512cd6b95b23	hedin	Sven Hedin	{se}	1865	1952
c7902670-3947-41b4-acc1-5e7ccf7c46c2	lessing	Doris Lessing	{gb}	1919	2013
c9b36e06-ce2f-482d-900d-fef7e7d505ab	ferrari	Jérôme Ferrari	{fr}	1968	\N
bb730e79-e994-4c63-b10c-1af636ab75d0	druon	Maurice Druon	{fr}	1918	2009
3413b046-555d-4719-bfe7-14fbecff0efb	eluard	Paul Éluard	{fr}	1895	1952
96f535b3-8b2c-4f44-a79e-3e72177f5bea	cohen	Albert Cohen	{ch}	1895	1981
5f2693e0-17cd-4daf-bb49-cb689c72565b	figes	Orlando Figes	{gb}	1959	\N
fe371ef4-179a-4069-a5a7-42fe5f46dbb3	bouida	Iouri Bouïda	{ru}	1954	\N
8c08c499-3d89-46d4-96a2-dd14a7138484	gavalda	Anna Gavalda	{fr}	1970	\N
5e416857-a666-40b6-bf79-0ed0447d3ede	delesalle	Nicolas Delesalle	{fr}	1972	\N
a8e58f8f-f516-4a0a-88f9-bc388d58c035	gard	Roger Martin du Gard	{fr}	1881	1958
a7d24ed8-7e87-4c70-bf91-93f09d0345c5	scott	Walter Scott	{gb}	1771	1832
7775e123-be48-4279-aa9c-14cd3cfcb361	koupriachina	Sofia Koupriachina	{ru}	1968	\N
94d815a4-0a3c-4a60-ae69-35863de3c632	compagnon	Antoine Compagnon	{fr}	1950	\N
4bebd3f0-19b1-4528-b24a-d86faf88548f	proust	Marcel Proust	{fr}	1871	1922
df4b0d52-77dd-4db0-8a01-e0897ab3a82c	barres	Maurice Barrès	{fr}	1862	1923
cf1cc071-01d6-4221-b582-b913053cbc0c	rousseau	Jean-Jacques Rousseau	{ch,fr}	1712	1778
87d8030c-1cf8-45db-8411-145e6416af28	minier	Bernard Minier	{fr}	1960	\N
92e723c1-dc9c-4d29-b061-d5f0ebef353c	laurens	Camille Laurens	{fr}	1957	\N
5ef1fef8-9567-4b24-83e2-22e065a46b00	hugo	Victor Hugo	{fr}	1802	1885
e093b426-e66b-4788-88b4-1e04638f351a	abecassis	Agnès Abécassis	{fr}	1972	\N
c1585e9f-0aa5-49d4-8911-dbc688818584	louis	Édouard Louis	{fr}	1992	\N
43fff914-5667-4cd5-9841-cf794c26988a	serge	Victor Serge	{fr}	1890	1947
9e2bdc0b-bb27-419e-a593-1319362d7d34	kipling	Rudyard Kipling	{gb}	1865	1936
f9550eaf-66cb-4724-a76c-f61142b0152f	boucheron	Patrick Boucheron	{fr}	1965	\N
5b64c951-35ee-4d26-ac9f-169c31f16dc0	cendrars	Blaise Cendrars	{fr}	1887	1961
d775e892-06fb-4c10-ac56-a23a49deb657	pipes	Richard Pipes	{pl,us}	1923	\N
c4a844d5-1ed9-4059-978f-5b2369a6de48	hawkins	Paula Hawkins	{gb}	1972	\N
8032374a-c2ca-44f8-a57c-058de7124ce0	reinhardt	Éric Reinhardt	{fr}	1965	\N
5839303d-02f9-41db-9547-e0353ae82e1b	schopenhauer	Arthur Schopenhauer	{de}	1788	1860
2a037ad2-ca9f-437f-a51a-4f811f166844	lapertot	Céline Lapertot	{fr}	1986	\N
b3d45b02-e568-4045-9126-737cd30bd55a	racine	Jean Racine	{fr}	1639	1699
9756aad6-9463-4773-a6aa-6e4272241052	cesbron	Gilbert Cesbron	{fr}	1913	1979
dd9ff335-3072-4184-9e61-f1d6612e0988	steinbeck	John Steinbeck	{us}	1902	1968
68b11835-e1ec-47a3-81b3-84f8bd4a8462	oulitskaia	Lioudmila Oulitskaïa	{fr}	1943	\N
bca1dad1-69df-4931-a4be-dafaea40fdb4	zeniter	Alice Zeniter	{fr}	1986	\N
24bea641-34aa-4606-bad4-ab86aba5e4bf	fedorovski	Vladimir Fédorovski	{fr,ru}	1950	\N
2bf54934-45c3-41b1-9d41-5b1f43b4982a	hobsbawm	Eric Hobsbawm	{uk}	1917	2012
5df815a3-f4df-4dcd-8582-adb63decb510	schine	Cathleen Schine	{us}	1953	\N
223ab5ea-c395-4f90-b61f-14417e93e3c7	casanova	Giacomo Casanova	{it}	1725	1798
efc76334-d9c3-4a75-9e68-106d390080ca	carver	Raymond Carver	{us}	1938	1988
f9e693f8-504d-4b18-9e97-fcf23f4feb75	tartt	Donna Tartt	{us}	1963	\N
8335c1d1-7e5a-4b9c-ba1c-d6aba69fe5de	kadare	Ismail Kadare	{fr}	1936	\N
6430a4f6-4e70-497b-831a-f052e4c9561f	lewis	Matthew Lewis	{gb}	1775	1818
be70c31a-f1a4-4590-82e5-526d534cd356	veyne	Paul Veyne	{fr}	1930	\N
cc115e29-6125-4584-baa0-00a966a501c4	chemin	Ariane Chemin	{fr}	1962	\N
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	martinlugand	Agnès Martin-Lugand	{fr}	1979	\N
a1a14583-15f3-4e74-81da-960d944021d7	makine	Andreï Makine	{ru,fr}	1957	\N
7d6668a8-f031-45b2-9d71-313c615d1bd2	peskov	Vassili Peskov	{ru}	1930	2012
2bb121e2-9063-4311-b406-982eced7a35f	laforgue	Jules Laforgue	{fr}	1860	1887
fd58a0ae-48a7-4f21-be03-826c97ca55e0	lee	Harper Lee	{us}	1926	\N
ad47fb4f-c2cf-4395-8fa7-dc7ed5df79d3	faulkner	William Faulkner	{us}	1897	1962
728fabeb-9d39-4ccb-978e-ec733a8f79b1	coher	Sylvain Coher	{fr}	1971	\N
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	kessel	Joseph Kessel	{fr}	1898	1979
a6cc532b-ed4b-4dbf-add7-1445e4c6c4ab	newby	Eric Newby	{gb}	1912	2006
62f5c73a-095d-445f-86b1-abd8c0e65a12	verne	Jules Verne	{fr}	1828	1905
972924d4-08b2-4f20-afa9-b453ceadbb41	kerangal	Maylis de Kerangal	{fr}	1967	\N
311dc8d2-18d6-4274-8b54-6f853598751b	ferrante	Elena Ferrante	{it}	1943	\N
bfb5a191-ca53-4818-817c-9d3d54435bfe	nemirovsky	Irène Némirovsky	{uk}	1903	1942
b42b815d-02d6-4601-adc6-1e3097c0b596	onoditbiot	Christophe Ono-dit-Biot	{fr}	1975	\N
58022538-9f5c-485a-961b-0ff2cd6d06e2	barbery	Muriel Barbery	{fr}	1969	\N
37b8dfac-ab07-48a1-9b69-1da776def5a8	laclos	Pierre Choderlos de Laclos	{fr}	1741	1803
e4114bfa-6cca-469e-b6f2-8501a57ba8e0	calvino	Italo Calvino	{it}	1923	1985
a2712911-d4f3-4cf0-837a-7846272852b3	darwish	Mahmoud Darwish	{ps}	1942	2008
b41d4e67-ed20-4d35-9398-c53a57081a5f	tournier	Michel Tournier	{fr}	1924	2016
9d76e580-53ac-4c80-9799-b6a9a1d06ef9	thubron	Colin Thubron	{gb}	1939	\N
ff9968af-d096-457a-8d2d-b06e1f8227f0	rambaud	Patrick Rambaud	{fr}	1946	\N
3f1563d0-5474-4c0b-8ad6-2bf3b5eee6e3	darwin	Charles Darwin	{gb}	1809	1882
9c9be7dc-e1c0-4ea4-bb16-162181e41d9b	seurat	Alexandre Seurat	{fr}	1970	\N
9196ebe2-b622-41c1-b1ef-8c4b468f5458	manzoni	Alessandro Manzoni	{it}	1785	1873
9f663ec8-cbb9-4f8d-9c4c-9c470b9fcbc4	marechaux	Laurent Maréchaux	{fr}	1952	\N
b7dab338-c788-4c10-8cf7-feea015b6266	hidalgo	Anne Hidalgo	{fr}	1959	\N
88a85141-a06d-4c07-8ade-7666b056a9e1	pennac	Daniel Pennac	{fr}	1944	\N
af667a65-f4ab-4621-958f-58d15dfff083	percin	Anne Percin	{fr}	1970	\N
1c3ac53a-1cd1-4096-86ff-5e2495ca1ef9	bernanos	Georges Bernanos	{fr}	1888	1948
ae394d46-f0c9-4836-9261-3c9f3ea69854	gazdanov	Gaito Gazdanov	{ru}	1903	1971
5dfd65e6-5935-48a4-9691-5f266de8c4d2	grimaldi	Virginie Grimaldi	{fr}	1980	\N
c5a33703-d2a0-4617-a52f-6663cc5019ee	espedal	Tomas Espedal	{no}	1961	\N
a730edc6-797a-48b3-a0fe-2874130b8d6d	camus	Albert Camus	{fr}	1913	1960
aa84b7a0-b41e-4e2a-ba71-ee2df3a8c1b3	bounine	Ivan Bounine	{ru}	1870	1953
823fd842-39a7-4a59-a2f2-06ea60e2be28	duras	Marguerite Duras	{fr}	1914	1996
0fed8857-f806-49e4-bfd4-35b1b27331bd	amette	Jacques-Pierre Amette	{fr}	1943	\N
53a56dd7-555b-4275-83e4-2e0f69fe0c80	glucksmann	Raphaël Glucksmann	{fr}	1979	\N
e2d27fac-a98a-4d55-a129-d72148a32037	schwarzenbach	Annemarie Schwarzenbach	{ch}	1908	1942
c908bdc4-9dd1-4b24-8354-f4c662ed79c8	kureishi	Hanif Kureishi	{gb}	1954	\N
7b5dc210-4c2d-42e3-957c-b7e9b55791ca	michel	Louise Michel	{fr}	1830	1905
ddb96561-d357-4b37-8bf2-44aacc0829b7	devigan	Delphine de Vigan	{fr}	1966	\N
58c87900-4530-4e90-926b-029879377715	loti	Pierre Loti	{fr}	1850	1923
959e5134-530d-477f-ae3c-6050f5484916	alard	Nelly Alard	{fr}	1962	\N
a4075340-4f73-44cc-a4ce-c34e61e2a7d9	rinkel	Blandine Rinkel	{fr}	1991	\N
ea73ffb5-26b6-4409-a4c4-68b4c65fa60f	fantejohn	John Fante	{us}	1909	1983
d9416023-545d-4e6b-bf40-386533b67c1e	leskov	Nikolai Leskov	{ru}	1831	1895
6b2a2b17-2e76-4ed8-8ea3-6364351514e9	oiseau	Florent Oiseau	{fr}	1989	\N
36ff3e4c-c6f9-4a3a-bed6-bbc896d677c0	deon	Michel Déon	{fr}	1919	\N
f5208658-3899-4d75-a117-345cd5e6b6ee	david	Jean-Michel David	{fr}	1947	\N
92125fb3-9d34-48f3-992f-6a61991a6252	hamsun	Knut Hamsun	{no}	1859	1952
18c43852-9221-4361-b739-fedc5a3e7a70	prevert	Jacques Prévert	{fr}	1900	1977
f39a62ac-6eb5-4cf1-ba96-8153145aae78	arseniev	Vladimir Arseniev	{ru}	1872	1930
c4508a1a-3515-4c3b-b047-ec41b61c9663	radiguet	Raymond Radiguet	{fr}	1903	1923
0aea7422-3b5e-475e-9921-509420560fdc	lapierre	Alexandra Lapierre	{fr}	1955	\N
a3a65eec-1f98-4761-be74-42cd5eb8e8e2	belezi	Mathieu Belezi	{fr}	1953	\N
4d5fba94-ff1f-45d4-878f-e5cb46f62c10	henley	William Ernest Henley	{uk}	1849	1903
c94e013c-3ab0-46ca-815d-0028750ec9b7	legoff	Jacques Le Goff	{fr}	1924	2014
c2daa87b-73fa-490b-97d7-398a38341689	greene	Graham Greene	{gb}	1904	1991
29f60c7b-056d-4b53-8097-bed09d260d8e	aleksievitch	Svetlana Aleksievitch	{by,ru}	1948	\N
2316dcdb-05a0-4eb3-8d40-9606732d4f76	doudet	Sophie Doudet	{fr}	1975	\N
2bea0e6e-ef59-41e7-a9e3-0e3c779efcf6	marivaux	Marivaux	{fr}	1688	1763
e738a33e-0026-4758-b9ee-f377bd4eecd5	glasgow	Ellen Glasgow	{us}	1873	1945
72e30a93-c86d-484d-9bee-667f27a3f599	flaubert	Gustave Flaubert	{fr}	1821	1880
d717e6cb-6ec9-4c5f-9095-97a349410bea	goncharov	Ivan Goncharov	{ru}	1812	1891
5f36ff0a-77ca-45df-9025-52cb277b1ba3	dejbar	Assia Djebar	{dz}	1936	2015
51c12ad9-e690-44f6-a392-e11babdab281	karlsson	Jonas Karlsson	{se}	1971	\N
35d5e442-c995-4b2b-9805-f9642d388c98	follett	Ken Follett	{uk}	1949	\N
4f97603c-17bc-4572-ad07-a3e706502e83	hemingway	Ernest Hemingway	{us}	1899	1961
db54a211-6c47-4e59-8eec-de1b039acd0a	maillart	Ella Maillart	{ch}	1903	1997
7bde5f83-f2d8-47d3-ab44-805555ef5c8d	carpenter	Don Carpenter	{us}	1931	1995
019acee5-0b82-45d2-882a-fef9dc0c5360	demarty	Pierre Demarty	{fr}	1976	\N
d49353db-eae7-4792-9b49-ac2f801cc8a3	bellanger	Aurélien Bellanger	{fr}	1980	\N
bd7999d9-1b3f-4c1a-a16a-f38c4f376337	bogdan	Henry Bogdan	{fr}	1936	\N
5eacd3a1-16ff-4f14-b98d-79040f4c1d11	deserable	François-Henri Désérable	{fr}	1987	\N
76ae296c-f5e5-412b-a37d-c54f6a080947	apulee	Apulée	{la}	123	170
6be89aeb-8a3c-4b52-a198-6a796c6eeedd	prilepine	Zakhar Prilepine	{ru}	1975	\N
c721ce2b-f1a5-4ba1-9a03-d75382ddb9ea	zarca	Johann Zarca	{fr}	1984	\N
5436d507-f986-4999-a8ab-a84729dda480	carrere_d_encausse	Hélène Carrère d'Encausse	{fr}	1929	\N
dd26d47f-e220-4f32-b867-5123e676ab0e	michelet	Jules Michelet	{fr}	1798	1874
77edc8d8-1e36-4546-a979-c706d314cfca	garde	François Garde	{fr}	1959	\N
4d9de49c-ff18-4446-9429-a0264f3ad55e	alameddine	Rabih Alameddine	{jo}	1959	\N
30c254de-6cb4-48a1-bebc-7cefc6f70085	vinau	Thomas Vinau	{fr}	1978	\N
79a3aa2f-24ae-48f1-a8ae-61cb0d576605	dana	Richard Henry Dana, Jr.	{us}	1815	1882
ac32062a-ae85-4091-b019-4288c7cf58d9	thomson	David Thomson	{fr}	1980	\N
61152273-bd25-4339-a6d8-969e51e1d90e	byron	Robert Byron	{gb}	1905	1941
118c1b2d-c625-42c9-a316-5b240fbe44d0	bellay	Joachim Du Bellay	{fr}	1522	1560
79bd2e3a-9363-43a1-aa51-ccfb30799a22	michaux	Henri Michaux	{be,fr}	1899	1984
f4af8818-2b83-4a09-902f-8db0a1231802	eliot	George Eliot	{gb}	1819	1880
64c9fd3a-23ad-4eff-a0c1-db5cec910d97	nerval	Gérard de Nerval	{fr}	1808	1855
aee2c5ed-f15e-4c27-9a0b-b7ebe34a29bd	montherlant	Henry de Montherlant	{fr}	1895	1972
998e6f3f-3c38-4ab0-96b3-2252df5df641	maalouf	Amin Maalouf	{lb,fr}	1949	\N
515d9aa3-3681-4744-bb7c-18b3ed10d7c1	houellebecq	Michel Houellebecq	{fr}	1956	\N
304154c5-7700-4bc2-96ad-31815887504a	darrieussecq	Marie Darrieussecq	{fr}	1969	\N
509fa7e2-d34f-4e84-b2d0-0f3f38b55b34	enard	Mathias Énard	{fr}	1972	\N
a169ec9a-2861-40ab-b3f6-f283cc65d7de	whitman	Walt Whitman	{us}	1819	1892
ec808293-f492-41d8-8e27-fc59e24425fc	plain	Belva Plain	{us}	1915	2010
3ebdd621-426f-4e29-838c-7b04ae57ea3a	herodote	Herodote	{gr}	-484	-425
c13b07e8-7dac-41f4-894d-dfd067472c8b	avit	Clélie Avit	{fr}	1986	\N
1f4be7d0-4257-4e7c-a6b0-3a60a95c09d6	diop	David Diop	{fr}	1966	\N
2fee2846-daf6-4af5-801d-e1ac2ce5df8d	savinkov	Boris Savinkov	{ru}	1879	1925
66727c51-8bcb-4593-aebf-ef6832a1d676	appanah	Nathacha Appanah	{fr}	1973	\N
1b575ebb-ca15-4da3-9370-26336065b206	tourault	Philippe Tourault	{fr}	1943	\N
b2ad0d27-39d4-41db-8d51-1db9a33892b1	vercors	Vercors	{fr}	1902	1991
614973fd-9b5d-445b-ab6c-a2f51237a1e8	saintsimon	Saint-Simon	{fr}	1675	1755
3bab7755-1071-46dc-9285-426e3b2940e6	roy	Olivier Roy	{fr}	1949	\N
c4b394e3-d83d-4b68-a5b2-44417fdf71f6	perrignon	Judith Perrignon	{fr}	1967	\N
92b52b52-86ec-4db1-b20a-8096d45387d1	lemorhedec	Erwan Le Morhedec	{fr}	1965	\N
602d7235-eed4-4258-a5ae-16764d527846	guyen	Mahir Guven	{fr}	1986	\N
0cbec6de-ec04-45a0-a422-7df35bd1b6ed	svevo	Italo Svevo	{it}	1861	1928
e671909d-474b-426c-9ae3-328809b9ceb9	bove	Emmanuel Bove	{fr}	1898	1945
15f50895-426d-4681-9752-c17fbc3d7fe4	achebe	Chinua Achebe	{ng}	1930	2013
b9225c72-8fe3-4284-955e-59bcb5931d74	kolarz	Walter Kolarz	{gb}	1912	1962
a4d15ef0-e290-4917-8dc3-a7a58b96670f	vidalnaquet	Pierre Vidal-Naquet	{fr}	1930	2006
efab33b7-d798-470f-86d7-7a5fa990374f	egloff	Joël Egloff	{fr}	1970	\N
760cc00e-59c2-4410-83cb-310879c0cf3a	coulon	Cécile Coulon	{fr}	1990	\N
96960d8a-1b85-41e9-b9e0-b9a8b37d5192	salvayre	Lydie Salvayre	{fr}	1948	\N
c30df06c-9ced-4b63-89f3-98f585b99e20	harari	Yuval Noah Harari	{ng}	1976	\N
38429efa-f26e-4317-ab47-ea01974e21f4	perrin	Jean-Pierre Perrin	{fr}	1951	\N
e48150b3-cfb4-4a07-b74f-31d6b9504013	poulain	Catherine Poulain	{fr}	1960	\N
0109e5be-3951-4288-a2a9-15955ebb74db	bailly	Jean-Christophe Bailly	{fr}	1949	\N
1fceafa3-61c1-4388-ac3c-dfc1c694cdfe	brunaux	Jean-Louis Brunaux	{fr}	1953	\N
62063af6-d596-4524-8520-888f471b6eab	liberati	Simon Liberati	{fr}	1960	\N
bb77d281-41fb-469b-81fb-00c628dc7446	caldwell	Erskine Caldwell	{us}	1903	1987
5de24e19-9f15-4740-b0b4-47a9a08043ec	bacque	Raphaëlle Bacqué	{fr}	1964	\N
e880c842-27ae-42cd-bb3e-737c318a7627	tesson	Sylvain Tesson	{fr}	1972	\N
32818e0a-ff2a-4568-b376-4c36feb2e034	sacks	Oliver Sacks	{gb}	1933	2015
69ac6628-bca3-4401-8bf2-c84b25808e91	marienske	Héléna Marienské	{fr}	1969	\N
db674a26-7dd2-44c1-a117-5e365fe905ec	delacourt	Grégoire Delacourt	{fr}	1960	\N
9a7b2f63-42bd-4f92-8356-6cbe30ca54d6	quintecurce	Quinte-Curce	{la}	20	80
bf35e02a-e5e4-4ca4-ab3a-b3e0220370bd	orth	Stephan Orth	{de}	1979	\N
82633675-f8f4-4df6-80ed-cee40e0805d5	aitmatov	Tchinguiz Aïtmatov	{kg}	1928	2008
b8777605-c1fb-42f5-bf4b-d6ec7de56bda	delerm	Philippe Delerm	{fr}	1950	\N
6fcc63ec-2791-42fe-8167-37f99e94cd16	hesse	Herman Hesse	{fr}	1877	1962
2d0561d6-e924-4e56-a99f-0bf0132c5d53	rimbaud	Arthur Rimbaud	{fr}	1854	1891
b1738c58-fd0a-4657-893e-303c5553382c	bartol	Vladimir Bartol	{si}	1903	1967
dbd4a0dc-28e8-4dc4-b20f-c58ea161380d	khadra	Yasmina Khadra	{dz}	1955	\N
8151bcee-3a79-47d9-a9b9-3398a9ef53ae	coloane	Francisco Coloane	{cl}	1910	2002
a0739990-a09c-4641-b7f2-6638f3f1aadc	adam	Olivier Adam	{fr}	1974	\N
78f5eeac-71cb-4db8-add5-b27dc9a59f8f	slimani	Leïla Slimani	{fr,mo}	1981	\N
c06e0376-59c3-4573-906e-b0f42cc61473	chalamov	Varlam Chalamov	{ru}	1907	1982
6eb61198-a93a-46b0-8108-15e33a9a4c0f	ibrahimovic	Zlatan Ibrahimovic	{se}	1981	\N
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	chalandon	Sorj Chalandon	{fr}	1952	\N
125fdc0a-4f36-49c8-9983-d4ba776f0d26	laske	Karl Laske	{fr}	1959	\N
a42bfa4d-6987-479a-ad90-01dcfde7a112	roth	Philip Roth	{us}	1933	2018
42b978c8-2f20-4c6e-9a09-85f117b7b535	mouchard	Christel Mouchard	{fr}	1954	\N
47c577aa-2519-45dd-8016-d99202eabe4b	garcia	Antoine Garcia	{es}	1947	\N
6b65d556-0780-4883-8e78-f1482ec7d56e	michelin	Jean Michelin	{fr}	1981	\N
ccd7b302-1694-4ea4-9552-74b877ffcc42	santos	Care Santos	{es}	1970	\N
9487adf9-4f10-4e56-9f17-40b94dd90496	mauvignier	Laurent Mauvignier	{fr}	1967	\N
df2b0cba-0140-4f38-9340-135c25f56952	vuillard	Éric Vuillard	{fr}	1968	\N
86c9d693-1af5-4d91-9cdc-ecf31e53822a	lemaitre	Pierre Lemaitre	{fr}	1951	\N
2b9d6bec-916d-4af1-906a-041f607f001c	benameur	Jeanne Benameur	{fr}	1952	\N
9f8ba42e-ce88-426f-abcb-98f95bb36c7d	lafontaine	Jean de La Fontaine	{fr}	1621	1695
e13b2365-0b05-406a-9ef0-8622e88a5fc6	zola	Émile Zola	{fr}	1840	1902
36b2c862-ce61-48e7-975f-30afa4c7d236	maris	Bernard Maris	{fr}	1946	2015
7ed7ed99-1fdf-4d12-bf6c-6f22abc96a29	seethaler	Robert Seethaler	{at}	1966	\N
3059f20d-546c-4fce-b804-1bc75a01ddaa	fleming	Peter Fleming	{gb}	1907	1971
06d7fdf4-7e41-4aa9-974f-1d1a48bbe1e8	joncour	Serge Joncour	{fr}	1961	\N
b3a505a1-0913-4498-8b69-3ebf3b2f6209	levy	Justine Lévy	{fr}	1972	\N
fe808251-e0ff-4560-b5cd-411a334858f4	stark	Freya Stark	{gb}	1893	1993
27be77a0-5890-4907-b62d-67f089a291a3	werth	Nicolas Werth	{fr}	1950	\N
af514059-6887-455e-a2bd-038f146b0fec	zweig	Stefan Zweig	{at}	1881	1942
e80b0074-5e5e-4af8-a376-f6b4bb7c3979	slocum	Joshua Slocum	{us}	1844	1909
81391576-1ca2-4aed-bb8b-41cad8b0adb2	volodine	Antoine Volodine	{fr}	1950	\N
573896fe-fd10-4f60-9424-0a6c738519e4	pasternak	Boris Pasternak	{ru}	1890	1960
ba5588d7-a6c9-44d3-bde1-c360145ec96e	lefevre	Jonathan Lefèvre	{fr}	1980	\N
980cc6fa-faca-4b7f-b8e2-25479643bee3	foenkinos	David Foenkinos	{fr}	1974	\N
35ff7e43-6958-4ac2-bf49-7889e57dae32	arcan	Nelly Arcan	{ca}	1973	2009
ec51c7b2-7f5d-424f-b87b-d7cd6e2a3451	frost	Robert Frost	{us}	1874	1963
8c560c80-44d4-4194-91d7-6bdc99b3176d	deram	Pierre Deram	{fr}	1989	\N
8a622ff8-c385-4695-b93c-3a1ef3df8053	mazetti	Katarina Mazetti	{se}	1944	\N
fbabe020-24ba-4b65-a302-d6af7d756cf5	bobin	Christian Bobin	{fr}	1951	\N
3b057e29-ef61-4757-ab33-2d67e1aef348	ladjali	Cécile Ladjali	{fr}	1971	\N
9851eb49-eb51-405e-b5ca-9957d7887cb8	daoud	Kamel Daoud	{dz}	1970	\N
bb29a849-ec54-4165-b105-cb7bfd7afcb8	fallada	Hans Fallada	{de}	1893	1947
6ee6f3e4-3922-42a6-9ef3-3721b0effe8e	dupondmonot	Clara Dupont-Monod	{fr}	1973	\N
87e571fb-eb02-4f8c-b084-2c837837b5d1	dickner	Nicolas Dickner	{ca}	1972	\N
9818faac-c37c-4ca4-9ff1-e21c8adef789	aljoundi	Darina Al Joundi	{lb}	1968	\N
8da5cf0b-c1c7-4d84-b9a1-f39ae46594ea	defunes	Julia De Funes	{fr}	1979	\N
5c04171b-a210-4790-bf18-703ab0eeac7e	diodore	Diodore Siculus	{la}	-60	-10
9d887938-c186-4dee-bf89-78c5e6fee01d	malraux	André Malraux	{fr}	1901	1976
ed29ad72-b7d7-4740-8524-5f3b05542db6	bougainville	Bougainville	{fr}	1729	1811
2096a358-a50d-4762-95a6-718df65a8277	dreiser	Theodore Dreiser	{gb}	1871	1945
279fd91e-7a59-400d-9d8e-84f109ad3fc7	sorente	Isabelle Sorente	{ng}	1973	\N
8a6b6e28-a25f-4260-9f06-3511cf876178	wendlandt	Astrid Wendlandt	{ca}	1975	\N
8bd06caf-3a7c-49d6-bc7e-c8e91bb680ca	maupassant	Guy de Maupassant	{fr}	1850	1893
1041b406-9aef-4175-959a-f42d9cc53c5b	andric	Ivo Andrić	{yu}	1892	1975
60ccd5ed-cbce-4ed3-ba28-954d1f550c6b	heredia	José-Maria de Heredia	{cu,fr}	1842	1905
406dda60-5a41-4b28-ab1d-1aa86c024ea1	boyden	Joseph Boyden	{ca}	1966	\N
54615765-55ef-4976-9cee-73ad7693f183	jouanna	Arlette Jouanna	{fr}	1936	\N
65bc3487-8313-4cba-a1fd-445ccb4631ee	chatwin	Bruce Chatwin	{gb}	1940	1989
978de174-7b57-44bf-ab16-ec05f32a5627	martinez_gros	Gabriel Martinez-Gros	{fr}	1950	\N
b3e8041e-5980-43a8-a9c6-aceb8de46216	rawicz	Slavomir Rawicz	{pl}	1915	2004
7ea92505-0278-46a1-8281-24c5b9f44e3a	orwell	George Orwell	{uk}	1903	1950
1ae38900-157a-4252-a276-c8276b08a3d2	ossendowski	Ferdinand Ossendowski	{pl}	1876	1945
f9eb61f2-8408-44ee-95e5-5a5c93970176	baricco	Alessandro Baricco	{it}	1958	\N
5d677c0c-ebf8-4cf4-bbe7-520125217e12	gilliard	Pierre Gilliard	{ch}	1879	1962
0fe54c68-5af4-463e-b41e-1943432ebd85	guelassimov	Andreï Guelassimov	{ru}	1966	\N
ac61af83-15b4-4625-9bf5-62ea2670e757	musiani	Elena Musiani	{it}	1970	\N
e039ef93-52f4-4971-b848-ea050bfee883	vaillant	Alain Vaillant	{fr}	1958	0
f721fae0-cbea-4c5f-8b51-54625e41bfd2	lefevref	Francois Lefèvre	{fr}	1965	\N
a0183cf3-1296-43b8-b86b-d52f629476f5	brion	Marcel Brion	{fr}	1895	1984
9cc5b758-2939-4cc4-8483-2ee6bf1d5a40	favier	Emmanuelle Favier	{fr}	1980	0
06ecbb8b-1eab-4b68-8951-e08832207eee	theis	Laurent Theis	{fr}	1948	0
1feb5233-f88c-4a95-a90c-5598ae6fa699	pascal	Camille Pascal	{fr}	1966	0
a003d630-f839-4866-8903-a6d8919fc3d6	laurens	Camille Laurens	{fr}	1957	0
4135d7ce-69bf-484d-b592-26c1c5840968	weil	Simone Weil	{fr}	1909	1943
ffcb6615-a749-4339-8074-e2ab2bceab59	hennion	Cécile Hennion	{fr}	1980	0
094ba2b3-fdde-4139-94fc-8748adf08ee2	hecht	Emmanuel Hecht	{fr}	1950	0
38ca09a8-c17e-4e69-a3b2-aa13deb91628	elayi	Josette Elayi	{fr}	1943	0
dc4a548d-aa8e-4513-b0c1-06bf523c30ac	melville	Herman Melville	{us}	1819	1891
78b69dea-dcc6-470f-b9f4-9957e7b4245e	raoulduval	Jacqueline Raoul-Duval	{fr}	1929	0
2e84f828-af80-4651-bcaf-265dabaa6bfe	albertini	Antoine Albertini	{fr}	1975	0
3c3292f9-c05f-40aa-860d-299f57b3f7be	grousset	René Grousset	{fr}	1885	1952
0b8202b2-07e9-4dc6-8dd0-f47199a7508f	schnerb	Bertrand Schnerb	{fr}	1957	0
d32310d0-ed4a-4784-afb2-918c2141946a	germain	Sylvie Germain	{fr}	1954	0
835f7b53-f572-4023-8a85-3abd5ce99437	gallay	Claudie Gallay	{fr}	1961	0
e433f265-f3a7-4878-9d9a-7a8c980e9b02	meyer	Éric Paul Meyer	{fr}	1943	0
faa48ada-8b02-437c-b53a-ee68bb81c00a	demurger	Alain Demurger	{fr}	1939	0
27acea6a-d064-4e81-b34f-4c3cd6d2c86a	doubinsky	Sébastien Doubinsky	{fr}	1963	0
010917f3-8b37-4df7-a7f6-6bf1bc6ee6b2	ferney	Alice Ferney	{fr}	1961	0
60b1698e-d2ef-489b-bff9-b8fe7ddb4580	debayle	Cécile Debayle	{fr}	1985	0
3ee89329-37cd-44fe-bb9a-a53bdf51d458	autissier	Isabelle Autissier	{fr}	1956	0
68fc3212-b3e4-4f70-a282-e9bea80af272	Autain	Clémentine Autain	{fr}	1973	0
1f69b844-945f-4685-aa5d-c203659fd688	dalloz	Jacques Dalloz	{fr}	1943	2005
cbc1b2a9-90d2-4b08-84a6-232dc19c0912	goby	Valentine Goby	{fr}	1974	0
f2639910-60d6-4f38-b66c-05b55af4767a	habibi	Faranguis Habibi	{ir,fr}	1947	0
6c68edcf-06fe-4034-ae1d-747305509a51	rahimi	Atiq Rahimi	{af,fr}	1962	0
ef55ab97-8b56-4e7b-ac59-cbd1c4cc6572	cage	Julia Cagé	{fr}	1984	0
fcd9cafd-24a7-4ec2-880b-bbc9ee668d46	esteve	Julie Estève	{fr}	1980	0
64320c4d-057d-462d-89de-70e73f55fa5b	dufour	Olivia Dufour	{fr}	1970	0
fd9087f9-e436-4189-a91d-cd8f6ce5eb8c	joyce	James Joyce	{ie}	1882	1941
4236eff3-50cb-451a-9ece-f93af9f517eb	foessel	Michaël Fœssel	{fr}	1974	0
639b62ab-f1e2-4782-8d95-1fe952fb8355	boltanski	Christophe Boltanski	{fr}	1962	0
ce20b257-5e89-40b4-900e-483d5ae74936	thilliez	Franck Thilliez	{fr}	1973	0
45ea8d37-76b7-413c-b456-f5fa2b0c4f7c	majdalani	Charif Majdalani	{lb}	1960	0
8b6df64c-b754-452d-ad81-2347c3bfc18e	dicker	Joël Dicker	{ch}	1985	0
723a5ceb-5c42-49db-b041-d6512e1d879c	gardner	Lisa Gardner	{us}	1970	0
4cb2d9f8-41b2-49ac-92c6-2ce81b15b400	amundsen	Roald Amundsen	{no}	1872	1928
ba2143da-53e1-4561-bc9c-f0d2c839c367	minoui	Delphine Minoui	{fr,ir}	1974	0
924476e5-d4be-46f5-874b-02dfe04ccbde	deroulet	Daniel de Roulet	{ch}	1944	0
f82b2bb1-53ca-4299-b19c-18153d7a75d1	derubrouck	Guillaume de Rubrouck	{fr}	1210	1295
f03421bf-3404-4e2e-966b-5122ea0b8806	smith	Stephen Smith	{us}	1956	0
2ec8a412-476f-443f-9d90-8f64818d4c17	nicolas	Grégory Nicolas	{fr}	1984	0
328ca6cf-b712-4e82-9f2a-7dd0c26f12a5	colic	Velibor Čolić	{ba}	1964	0
272c2afc-3281-4929-a348-46c85e835980	Carrisi	Donato Carrisi	{it}	1973	0
b79fe295-81ee-4821-9ad2-4e0f145e2b20	laget	Thierry Laget	{fr}	1959	0
a65061b6-da10-4d34-91d4-32b5a0df7540	beuglet	Nicolas Beuglet	{fr}	1974	0
ccced7c2-07fd-4db6-95ed-f32e9ac8730b	enia	Davide Enia	{it}	1974	0
3477e7ce-4825-42ad-b9e2-500d70f29447	phillips	Julia Phillips	{us}	1989	0
40c840b6-92c2-4379-acb6-a8bbc68b869e	sizun	Marie Sizun	{fr}	1940	0
cc64adbb-e2b8-4ed2-83c1-364a908e5506	jablonka	Ivan Jablonka	{fr}	1973	0
b2ef253d-298b-4c06-9799-907c6d926fda	bartelt	Franz Bartelt	{fr}	1949	0
a53abb4e-a4b0-4f37-9c6a-1fa294166ed2	snowden	Edward Snowden	{us}	1983	0
cdd672ec-f06a-4c19-84e0-4c7500ad5949	becker	Emma Becker	{fr}	1985	0
5c4f4a49-21b6-4c60-b19c-5e1835146973	rondeau	Daniel Rondeau	{fr}	1948	0
823f38c5-bd50-4cc4-bc63-1098781df265	modiano	Patrick Modiano	{fr}	1945	0
5f2773f7-a0f9-46d6-92ce-fa60c7313b48	ndiaye	Marie NDiaye	{fr}	1967	0
4b593ffd-14af-4f79-a9c9-89dd02402147	araud	Gérard Araud	{fr}	1953	0
9cafa381-c7b7-42b7-bf98-53b6ca869146	dufresne	David Dufresne	{fr}	1968	0
9dbbba0a-8235-4099-8dbd-a632d36f37c5	chambaz	Bernard Chambaz	{fr}	1949	0
4c45999e-6209-4eab-8d75-8bc639e9056d	prudhomme	Sylvain Prudhomme	{fr}	1979	0
9a5c4516-6faa-40f1-ab90-2f4e6c76d89e	dubois	Jean-Paul Dubois	{fr}	1950	0
4d76c43e-ee6a-4126-9717-1a2320770ff6	dorgeles	Roland Dorgelès	{fr}	1885	0
03ab9eaa-7112-49b8-87c4-6fc28b0751b1	heanel	Yannick Haenel	{fr}	1967	0
18926aa2-9475-4ec7-b533-27f31013a04e	cagnat	René Cagnat	{fr}	1950	0
455bb536-01da-4f50-9714-ed945ebc96bc	rytkheou	Iouri Rytkheou	{ru}	1930	0
c0adc384-0163-4e99-8671-94557c3bcac5	lang	Luc Lang	{fr}	1956	0
c5b1de3e-0cea-4f99-bbe1-64fe5261fed7	julia	Luc Julia	{fr}	1960	0
8bd67e9c-54b0-40dc-bfe7-87a3006b7b98	tuil	Karine Tuil	{fr}	1972	0
4eb07d78-7a22-4a05-a8c9-2dec65bb51ff	lebel	Nicolas Lebel	{fr}	1970	0
21abe394-9aa3-4536-a109-316c76dc6659	bouysse	Franck Bouysse	{fr}	1965	0
72e38da0-930a-496b-99ed-ee1f57fca666	littell	Jonathan Littell	{fr,us}	1967	0
94354119-ae0e-4512-b022-d019c2b834c8	mathieu	Nicolas Mathieu	{fr}	1978	0
1301093b-3c58-4f5a-8762-74ca91f1fc74	macarthur	Robin MacArthur	{us}	1978	0
ba4586a7-0d9d-4d56-ab0d-15fb294d1fd9	gowda	Shilpi Somaya Gowda	{ca}	1970	0
e1a1fc31-2d58-455e-a9e1-86e21b0cd02b	lecun	Yann Le Cun	{fr}	1960	0
e7ac20bb-f677-4f7d-8d28-82fadbe81a86	kundera	Milan Kundera	{fr,cs}	1929	0
6da496c7-5c5f-4571-98a9-73f29a42a20e	fourquet	Jérôme Fourquet	{fr}	1973	0
97c01c24-a097-402b-bf95-858da1d70643	roya	Arundhati Roy	{in}	1961	0
76c1230c-9fc5-40ac-8c31-cce24c8e767e	lopez	David Lopez	{fr}	1985	0
af1157e1-20e6-4299-9bc2-01bc08cdcfb3	norek	Olivier Norek	{fr}	1975	0
2174c047-ac99-4e3e-b388-098c1106f2ed	mares	Antoine Marès	{fr}	1950	0
6ef60997-9682-4171-a262-a505785bd187	grebe	Camilla Grebe	{se}	1968	0
07efb05a-c06b-426a-8ee8-7265aa91e84e	tokarczuk	Olga Tokarczuk	{pl}	1962	0
6056bc8b-c751-4b47-b651-460c6b9f947b	tymowski	Michal Tymowski	{pl}	1941	0
bcd74800-8fc1-4e60-8ad5-742335ac5a3f	saez	Emmanuel Saez	{fr}	1986	0
98d57e4c-61bb-4cb5-8025-ee1d7eb384e5	zucman	Gabriel Zucman	{fr}	1986	0
7c811218-be16-46f2-b704-9d05bc0773b9	mustapha	Leila Mustapha	{sy}	1988	0
47ba8d0c-5a6f-4c54-ba9e-cb5edf937e17	detilly	Marine de Tilly	{fr}	1980	0
89e7ec33-a267-4c92-bce4-e5575532f597	koening	Gaspard Koenig	{fr}	1982	0
2a23a79b-1c53-4dd7-96b0-47ad87173f41	fayeeric	Éric Faye	{fr}	1963	0
f0d60bb4-834b-48b5-b35c-b05529820ec9	leekaifu	Kai-Fu Lee	{tw,us}	1961	0
1dfb34c7-5796-4848-a4f7-21e20a958916	clermonttonnerre	Adélaïde de Clermont-Tonnerre	{fr}	1976	0
7c39f360-e226-48ec-a7bf-7abebcef7af6	cunningham	Michael Cunningham	{us}	1952	0
4154e67a-524a-473e-b428-eb26270ec949	remizov	Victor Remizov	{ru}	1958	0
02db2f11-b4f7-457e-a150-6e769f05456d	smithfarris	Michael Farris Smith	{us}	1970	0
20f9683f-4fcd-4af4-aac3-97c3067c08c6	kerr	Philip Kerr	{gb}	1956	2018
946958ab-84ca-4c71-a58c-09cd09d30129	qassim	Yahya Qassim	{sa}	1971	0
6999a3ab-5f36-4eb2-b4a3-2fd161f4195c	simenon	Georges Simenon	{be}	1903	1989
cc97689a-3c23-4128-bb55-51d56cc14f84	stefansson	Jón Kalman Stefánsson	{is}	1963	0
f164432f-144d-41a8-8884-8e9ce924a80e	balzac	Honoré de Balzac	{fr}	1799	1850
9ff6d650-d5cf-40d3-894a-296238ec351c	mccarthy	Cormac McCarthy	{us}	1933	0
b9d16c07-ecf8-47e6-acb7-b1897a3c555b	nafisi	Azar Nafisi	{ir}	1948	0
d0234b44-1fbe-49f5-a28b-7dcca8bd26fc	merault	Paul Merault	{fr}	1961	0
1d88da40-4e2f-411f-9250-f8ac0d156836	galien	Alexandre Galien	{fr}	1989	0
e8329a05-5f24-4321-86c9-98e2938a8147	towles	Amor Towles	{us}	1964	0
9d00b60c-821f-4cea-96c3-c1d0eda2ba06	kis	Danilo Kiš	{rs}	1935	1989
cca5f819-6aca-45d0-8bce-5c338c1a733f	forge	Sylvain Forge	{fr}	1971	0
a9654c5f-5c53-4754-980d-56cfefc37843	ferdowsi	Ferdowsi	{ir}	940	1020
6944f912-aa95-4679-ab2d-200aae25eecd	doughty	Charles Doughty	{uk}	1843	1926
439674b1-070f-48b4-8b8c-b9b7bd009bcb	fontanel	Béatrice Fontanel	{fr}	1957	0
73d7aa30-dc26-451c-a002-fb79fcebd699	tynianov	Iouri Tynianov	{ru}	1894	1943
df49cd54-3f58-49e0-b851-9aabbc8ec244	perrinv	Valérie Perrin	{fr}	1967	0
7f037e0e-b97a-4f2b-9d26-7b77ab75f28d	vitkine	Benoît Vitkine	{fr}	1983	0
e6d30249-5185-4d36-ae74-960c30f115ff	gilberti	Ghislain Gilberti	{fr}	1977	0
b1afb8e0-5041-4ec6-93aa-18bae4b0f0cd	brunet	Marion Brunet	{fr}	1976	0
b2edd41f-09c0-4e43-957d-4442a05a553f	marzano	Alex Marzano-Lesnevich	{us}	1980	0
5d95d6f3-70d3-4e82-8b7b-cc1cc3f92614	hein	Christoph Hein	{de}	1944	0
a8cab435-6770-4814-a95f-ed5df2a2036f	jonasson	Ragnar Jónasson	{is}	1976	0
6a5ff146-7b93-4a71-9a3e-e0a8c377e991	delzongle	Sonja Delzongle	{fr}	1967	0
06670aa6-ceb0-4478-b7f3-1fc8d65e1711	joy	David Joy	{us}	1983	0
dc1646e1-9e93-4e97-b880-122530bcce60	lighieri	Rebecca Lighieri	{fr}	1966	0
7621b949-4549-40a3-aea2-f4162343e7b3	schepp	Emelie Schepp	{se}	1979	0
fe7f9b23-219f-4ed9-b197-52bcc873dd53	whitehead	Colson Whitehead	{us}	1969	0
13635d11-982c-4d78-b518-bc9edab19667	derecondo	Léonor de Récondo	{fr}	1976	0
612316f1-887f-47bb-ba35-f409ae837c81	bonnefoy	Miguel Bonnefoy	{fr,ve}	1986	0
c61fc807-9341-48ad-990f-7232abd76f0a	gain	Patrice Gain	{fr}	1961	0
61f24ad5-4bf9-475a-82ff-fe712fe8689f	soltesz	Árpád Soltész	{sk}	1969	0
e5909b29-c32f-4036-8d16-1e175a269ea1	lafon	Marie-Hélène Lafon	{fr}	1962	0
4c397776-8cab-420e-aad8-73d8906950fe	simong	Gilles Simon	{fr}	1984	0
9eeefe68-8f88-4f0a-8d0a-3382ad12096a	taine	Hippolyte Taine	{fr}	1828	1893
109530b3-2236-4f02-8061-e584d3a959d7	ekberg	Anna Ekberg	{dk}	1980	0
f46946ac-5e8b-4284-aba9-c18eb65ec0eb	malo	Mo Malø	{fr}	1968	0
bf2c4055-9a05-4f62-9384-bfc264c9d19c	charcot	Jean-Baptiste Charcot	{fr}	1867	1936
9f099a8d-14bc-4b6f-b6a9-6e60967af34b	taubira	Christiane Taubira	{fr}	1952	0
24e75474-566e-4518-91cd-0a55416cf81b	fellowes	Julian Fellowes	{gb}	1949	0
32bca2e6-6295-4655-a585-3dd92d689b15	parry	Ambrose Parry	{gb}	1968	0
79f24de4-28fe-40f0-8a97-fc2be618d6ae	obama	Barack Obama	{us}	1961	0
8b252b06-0ebd-4e70-80a9-a0ad76f341b9	varesi	Valerio Varesi	{it}	1959	0
e4422d46-4528-4401-82bf-7b82bb36761c	duby	Georges Duby	{fr}	1919	1996
747c6c60-6b7d-4c90-a58d-99775afc5e0c	indridason	Arnaldur Indriðason	{is}	1961	0
7dc82372-baa3-4a86-88c7-9c6367257f3f	aurell	Martin Aurell	{fr}	1958	0
e594a2d2-b25e-4f6e-9deb-d6b6497cf36d	renand	Antoine Renand	{fr}	1979	0
1c408b8e-8c6d-4de8-bbf7-3ca04dbb1aac	laurent	Samuel Laurent	{fr}	1979	0
ce9ed216-afcc-4cf9-92f0-573c920f4ac8	coben	Harlan Coben	{us}	1962	0
7afeed22-3703-4c3a-ba9d-5a9b5edb49f4	neveux	François Neveux	{fr}	1944	0
a05affdf-9bfa-446a-8da1-51e7dabe5432	aubenas	Florence Aubenas	{fr}	1961	0
b77d5ec5-9ad0-44a6-be6d-36d5834f859b	cordier	Daniel Cordier	{fr}	1920	0
74550897-01bc-4aab-933d-d511af15c17e	ellory	R. J. Ellory	{gb}	1965	0
4b75ba0d-1cdb-4dc6-8d78-91308c454743	truc	Olivier Truc	{fr}	1964	0
5fb25155-f5be-44b6-9c8c-88d750cf7534	bronner	Luc Bronner	{fr}	1974	0
8f99e029-70bc-49e9-abc7-741dfc0aa6e1	dolan	Eva Dolan	{gb}	1980	0
44a26548-0f44-4763-9673-8d59673b9526	cantaloube	Thomas Cantaloube	{fr}	1971	0
df585108-c76d-401e-a898-059dfb040748	kristanadjaja	Gurvan Kristanadjaja	{fr}	1990	0
49076953-9dc1-43b6-a33c-080e130c5d3c	dacosta	Melissa Da Costa	{fr}	1985	0
62cf8c8b-3d95-400b-b01d-824ebc97bb51	severac	Benoît Séverac	{fr}	1966	0
64fed749-9da7-49b3-9377-de0560cd76c6	mishani	Dror Mishani	{il}	1975	0
556cdc24-e40a-47cc-8fb1-3510b86a14bb	pourchet	Maria Pourchet	{fr}	1980	0
8d4be0ed-22fa-43db-bb2d-45d4c35c0b51	letellier	Hervé Le Tellier	{fr}	1957	0
6a2ed9da-afad-44a9-8bd3-7b629d2540cb	springora	Vanessa Springora	{fr}	1972	0
7cd7e9ba-ea9d-4d60-9c94-1bce2eda67bc	laireche	Rachid Laïreche	{fr}	1982	0
9c83953e-5774-4a90-bbb9-ad00f22d3d18	campagne	Katia Campagne	{fr}	1982	0
4dd742b3-214f-468e-880d-31f80b085098	barnier	Michel Barnier	{fr}	1951	0
1abb1a61-0988-4de3-aa9a-af72266f3dab	iakhina	Gouzel Iakhina	{ru}	1977	0
ead8842b-1154-43e8-bdd5-8a3028808274	norwich	John Julius Norwich	{gb}	1929	0
d41c2c4b-7428-4542-904a-4574e9d1a156	mukherjee	Abir Mukherjee	{gb}	1974	0
bf9f0895-7409-4107-82da-044629474e51	gavat	Christophe Gavat	{fr}	1966	0
acb11be4-6ef4-4774-9e90-5d149cddb038	wauters	Antoine Wauters	{fr}	1981	0
1914f025-907d-4cc5-811f-8078ae5384c0	kennedy	Douglas Kennedy	{us}	1955	0
361c42b4-610f-4223-89eb-0b5078ec9784	horst	Jørn Lier Horst	{no}	1970	0
eeac6a69-d366-4ff4-b9aa-5bd9781c350e	george	Elizabeth George	{us}	1949	0
d66a1e65-d729-4481-ab5a-26a83964651b	empoli	Giuliano da Empoli	{it,ch}	1973	0
d5f285f5-592a-4f4d-b6d9-637363f728e1	celine	Louis-Ferdinand Céline	{fr}	1894	1961
88f8a419-39cb-4b3f-a189-3558bef9b080	larrea	Maria Larrea	{fr}	1979	0
49bf539d-b155-4948-b0c4-a64eb85c9c05	pasques	Jean-François Pasques	{fr}	1971	0
\.


--
-- Data for Name: author_book; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.author_book (author_id, book_id) FROM stdin;
dd26d47f-e220-4f32-b867-5123e676ab0e	fc666ebb-c483-497f-92fc-e690ae160ec5
c94e013c-3ab0-46ca-815d-0028750ec9b7	2f6642d8-ce67-4205-8c9a-cdbaaea138b1
2bea0e6e-ef59-41e7-a9e3-0e3c779efcf6	a1887b1e-d854-4b3d-9604-87bbc29b8741
bb730e79-e994-4c63-b10c-1af636ab75d0	910c8e9e-2f10-4e36-8515-32bca4e3b4c7
a4d15ef0-e290-4917-8dc3-a7a58b96670f	b0f32220-3368-41dd-a7a3-96d81a54f244
f593fb2f-e8e4-4007-8a32-916e9fab3c46	65b85473-ec6f-4579-9846-8a73a3dd3e49
cdef4b59-11da-472f-87fb-dee4e5ab9842	979034d1-49da-4772-b2b0-d75c23590e61
2b7f5b62-bd58-4aef-b631-40f600e481dd	c1bd0cda-bc68-47a6-918d-ce3bb9453a9a
0f0c2b2e-9a93-493c-964e-72b6a096dc92	2efecd3d-f115-444c-a7b4-2d96aef7dc95
da151f9e-a48c-4b1e-a70f-d4913135cb66	6cde16a9-407e-4553-8f85-16ce55c5f5e5
8032374a-c2ca-44f8-a57c-058de7124ce0	094424a2-facf-4c77-8d54-035a5bd6c816
8a6b6e28-a25f-4260-9f06-3511cf876178	c443c63c-1153-4938-9cc2-6f82fb8441b7
e2d27fac-a98a-4d55-a129-d72148a32037	99b8f2c5-7b21-42cf-945e-bfe7d3e7c4f2
c1585e9f-0aa5-49d4-8911-dbc688818584	58967342-9e55-4bf1-89b0-c290a9080f75
ddb96561-d357-4b37-8bf2-44aacc0829b7	b30277e5-89f4-42c9-b595-f9f1b18a0216
9851eb49-eb51-405e-b5ca-9957d7887cb8	79bacf17-a464-4f1f-91df-aee2afdeee44
304154c5-7700-4bc2-96ad-31815887504a	961178da-b2f8-4ece-93d6-8df9570c63e4
a730edc6-797a-48b3-a0fe-2874130b8d6d	5a650ae3-b125-4b02-a04b-54bf3081e091
72e30a93-c86d-484d-9bee-667f27a3f599	6a4d7a41-78f6-400a-9384-c65ec7b9641c
b4bfdf3d-8220-4210-8e5f-1277092bd295	5263c445-ecc9-470e-9731-a9d0ddc17c07
6fe76c12-2751-4a70-bc48-71d46dbc5238	5b1d8c6a-8256-41d1-825f-96c5b6d413ea
9d76e580-53ac-4c80-9799-b6a9a1d06ef9	6c696474-29f5-481f-adfd-eaa957ed51c9
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	a0943a95-81e1-44ac-ae09-4489f299f185
7763b003-30bc-426a-b5f6-e176fcfd9de0	77cb7fa6-1f33-4138-bffa-77be0476274f
959e5134-530d-477f-ae3c-6050f5484916	ef3b6a1d-9a6f-403d-939a-6173ef2b4f32
1c3ac53a-1cd1-4096-86ff-5e2495ca1ef9	f48e2d83-f35f-4408-b056-5ab93301d80c
2316dcdb-05a0-4eb3-8d40-9606732d4f76	5c2ccefd-ebb9-41b9-951e-27e26d7d9165
863b4edb-7eec-41ba-9617-efde923344ea	0af03ec6-d79b-40fa-ab3c-9f39f1d85e46
db674a26-7dd2-44c1-a117-5e365fe905ec	053601ae-5afc-4ae8-9b42-a0f5380f57d2
5d677c0c-ebf8-4cf4-bbe7-520125217e12	57232ada-6bba-464b-bc2c-48efb79ddcff
c089c17c-4f99-4927-a91b-0e7fd5aacc7f	5d1f75f7-f03e-4046-94ea-721f0139e001
9818faac-c37c-4ca4-9ff1-e21c8adef789	5d1f75f7-f03e-4046-94ea-721f0139e001
b3e8041e-5980-43a8-a9c6-aceb8de46216	3daa2772-04af-4fed-b372-0e9113c6eecd
3d38162f-527d-4c97-a017-364aeb533114	8e3db6d3-4402-42a4-a42b-a2ff54bbe22e
7763b003-30bc-426a-b5f6-e176fcfd9de0	a870bca3-48cd-4f23-8184-59fdc28fb17f
a4d15ef0-e290-4917-8dc3-a7a58b96670f	9951ab74-abca-41c7-9b76-eb7297b12090
b3d45b02-e568-4045-9126-737cd30bd55a	9c3cd095-c87d-4d69-a4b5-3de74d16e393
27be77a0-5890-4907-b62d-67f089a291a3	995a0045-f98a-43e1-98af-e7fd23d8219f
cb721f56-84d5-40f1-abbf-581758b16f98	e977643f-69e8-4a01-be35-0f494c662f95
e13b2365-0b05-406a-9ef0-8622e88a5fc6	a8c7aa70-2ce0-4545-a57e-acd19ce0a04c
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	ec637538-50fd-49df-a32d-a3bd0142c8b7
bea0133e-bf22-4da3-8b0d-3dd6e65ce175	be89a799-5898-458b-b033-a1a54c912ea9
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	ca3d7745-9b8d-44d0-8b3d-bdceb53a116f
62fa4796-fe4c-4d01-bc38-ce4076b1f477	788dfbad-ebd5-4348-aefe-9405a4a4dfdd
a1a14583-15f3-4e74-81da-960d944021d7	1a1ec043-cf04-4567-b555-6ffd836064e2
ea9154bd-0223-41b2-aaa4-eb6c0a603003	e38f3258-3133-4424-b91a-2496f4320fc0
e880c842-27ae-42cd-bb3e-737c318a7627	544ce2f8-4849-4ea8-976f-e93b13595bca
5c04171b-a210-4790-bf18-703ab0eeac7e	994bb4cf-736c-42d1-955e-d75420f009de
4798489d-67a9-4444-a460-1c7631b7f315	9868a286-2fe5-4ddc-94e3-72342c615b17
86c9d693-1af5-4d91-9cdc-ecf31e53822a	e8c0a6b7-1632-4218-83be-a2bce3e3d412
987f906d-7b58-4611-b1b9-357e2717c933	5ddfad28-a03b-4290-9d39-1feac578601c
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	d9a615a8-cd0a-40c6-82f8-15616b24d184
db674a26-7dd2-44c1-a117-5e365fe905ec	68bf163e-9287-4b2a-9c7f-219d1b7f1c45
a9c76308-d7c4-4b3d-9abb-b68995247fea	600fe94d-4c3b-47dd-a48b-77aaa6569390
a425fb3d-fa8f-4e5f-b05a-0f39f7abd59c	6b7a02de-c6bd-4851-8026-f2e4d2e7fdb9
2fee2846-daf6-4af5-801d-e1ac2ce5df8d	7d487a6b-be57-48b7-8f50-6784a92f5d6b
58ae36a8-3299-4c86-97ea-b513d93c44e4	70659e5e-6f9f-4657-bd11-7538f7ebaa1b
5ef1fef8-9567-4b24-83e2-22e065a46b00	6c830bc4-eb93-4583-ad14-784c7f799e00
d717e6cb-6ec9-4c5f-9095-97a349410bea	17d80c15-91d8-440f-9e96-70a7e755c9c2
b4e51b03-73bc-4428-8611-78865370c603	e31c6647-c5a5-46c6-af20-1a394fbc87a1
311dc8d2-18d6-4274-8b54-6f853598751b	6fa83d3b-7c7a-4664-b54b-e25f9fbe997f
a425fb3d-fa8f-4e5f-b05a-0f39f7abd59c	37e74a86-467f-438c-ad5a-d6a20f8396c3
4f97603c-17bc-4572-ad07-a3e706502e83	5f0af748-1547-47c8-a454-ed389efd5642
b83749fd-937a-4230-a395-97d28dac78c8	2b57f0ce-e3be-489e-8793-8591486a9c05
5d16a4d7-8e08-4687-8ee2-4ad4384dfebe	12c941fd-9971-42f5-9566-1fa0b369af42
18111712-d6ed-4e2b-a594-f194d46bee0a	d92d9ba1-1fb0-44f7-bd01-8627eb393414
e48150b3-cfb4-4a07-b74f-31d6b9504013	b7818b6e-a89e-43e8-b19c-34533df4bf71
cda33cc2-24d7-4465-af6f-32aa48b29ee4	78688171-33f4-49c2-affe-3b81045f5e18
36463497-edd5-494d-b0e9-e81091ded298	c0a95c0f-68dd-4a03-9d57-288cc7886675
53a56dd7-555b-4275-83e4-2e0f69fe0c80	7062175c-9d41-4b29-89d6-78fc44c454ea
0fe54c68-5af4-463e-b41e-1943432ebd85	99bc4cbe-002f-4a85-a9ae-77645e7d7948
e2d27fac-a98a-4d55-a129-d72148a32037	c621b38d-6fdc-40ab-8153-48c958cb09e0
c721ce2b-f1a5-4ba1-9a03-d75382ddb9ea	d6f61b93-04de-4ea2-bcb2-808a0000f92b
bfb5a191-ca53-4818-817c-9d3d54435bfe	0cedd785-cb06-42be-ba11-8db8f1bc0674
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	34b383e7-cfbb-407b-9432-d6d5cc69357d
47e6c54d-84af-4ce1-be84-8193ca8898b2	77e54f41-5f47-41d7-9f8a-f9c7a767219a
d775e892-06fb-4c10-ac56-a23a49deb657	56ad04c0-db88-4a03-b0fa-4a55ccacdee9
f2c5f486-e7c1-4f2f-9231-10a1c48dec12	e3b893d4-3c4e-4883-9698-2b3ee65a45a5
376d9a8f-ae49-4437-a4f8-320920daf37d	ab5d4007-4ba1-4c15-ab79-67c8f43526d9
3b057e29-ef61-4757-ab33-2d67e1aef348	816c228f-8960-4d36-80aa-d8d502489107
cc115e29-6125-4584-baa0-00a966a501c4	32d776bd-0235-4191-a5f1-f493bc84b18a
5de24e19-9f15-4740-b0b4-47a9a08043ec	32d776bd-0235-4191-a5f1-f493bc84b18a
b3a505a1-0913-4498-8b69-3ebf3b2f6209	742060e4-5960-45a4-a90b-9937e35b3b64
76ae296c-f5e5-412b-a37d-c54f6a080947	e339f1ef-3b27-40fb-a729-b964e73f21e7
a0b0c1e8-be2c-4718-b773-f4cc737856fd	2784d8b4-98b1-422d-8029-04108709ef92
92502279-79bc-4ac1-ace6-1e5a9d2f770f	6f2ac2a0-405e-4edd-8c35-3164d57bef89
9ba08bfd-5e21-4b97-b2e1-52f33503ea3e	4253ac2f-ecf0-4bfd-8c16-a2f685998cc7
cacfe6c8-10aa-44ad-ad0c-5e016c839297	f2ccad2d-512e-43d9-9190-0a49e0768d87
58c87900-4530-4e90-926b-029879377715	9a5364e6-7017-45ba-8b94-2641b3eb59ea
5b64c951-35ee-4d26-ac9f-169c31f16dc0	b12e3a0d-28f6-4cf4-9c1e-314d8b0cb054
ef96374e-15e7-415e-b1bb-f61f6c343364	d2745439-4f03-4c58-8864-ca4b1794640e
aee2c5ed-f15e-4c27-9a0b-b7ebe34a29bd	ae98b70f-d002-459e-b3e5-877b1ffaf4b9
f5208658-3899-4d75-a117-345cd5e6b6ee	8a9c1d86-bf42-4505-b029-797c1b99e9bd
bea0133e-bf22-4da3-8b0d-3dd6e65ce175	e42905a3-f1e3-484d-930e-018fad7fcde9
56306889-8a54-4965-aa1f-a6118dcd2fae	b3df4d34-adca-4273-9532-8361a7c00132
ea9154bd-0223-41b2-aaa4-eb6c0a603003	17971a26-c681-49e6-bc42-7c83590d006a
dabeca6b-c70f-47ea-b61a-d43a0958e810	d9355762-569d-48fb-88e7-bd424f86a058
c7289612-b6fc-4505-9528-554ce431a42b	3137ec66-568c-4d4c-a458-f5ca0887d2a5
643e9a56-8749-4734-ba95-9d744031e7f6	911b9dd9-cf0b-48c0-ae8f-02e152222d61
8da5cf0b-c1c7-4d84-b9a1-f39ae46594ea	911b9dd9-cf0b-48c0-ae8f-02e152222d61
223ab5ea-c395-4f90-b61f-14417e93e3c7	d1ea42a9-dc0a-4820-b558-d00194237424
7ea92505-0278-46a1-8281-24c5b9f44e3a	33587f62-f9ca-44d9-97b0-1a9c6a8095e9
311dc8d2-18d6-4274-8b54-6f853598751b	29851a54-499e-434c-81d7-368a41216656
5f36ff0a-77ca-45df-9025-52cb277b1ba3	10aa5fbe-5f5b-44d9-9a45-e2a52405bec8
998e6f3f-3c38-4ab0-96b3-2252df5df641	824685af-0ece-4682-8784-2e0081042154
b4bfdf3d-8220-4210-8e5f-1277092bd295	e9b769fe-f346-4ef1-a074-31bab730de4d
8335c1d1-7e5a-4b9c-ba1c-d6aba69fe5de	c10f75ac-d4ad-406d-a9dd-d3cabad61596
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	35a79698-fc05-4119-a4cb-c5c49ce92d1c
42b978c8-2f20-4c6e-9a09-85f117b7b535	5dbd805c-e600-46f6-9a7a-13bed624cc93
70b32a37-2eb2-4a3a-bb68-d20f369c1f99	97761cd5-8084-4f04-878e-150ece7027a8
2a037ad2-ca9f-437f-a51a-4f811f166844	1494b46d-91c5-4448-b368-bcecd605d489
cf1cc071-01d6-4221-b582-b913053cbc0c	26530f9f-8a20-416e-b791-caa2bd6b6d22
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	1b3f47e1-636d-4c67-bc14-11e9824d0573
5c04171b-a210-4790-bf18-703ab0eeac7e	e3af236d-ff4d-47d3-a51a-4adedc6d3fba
7579bda0-0699-4770-8af4-0622559ae627	46071270-cd42-4ca9-9c4e-f2e6293b0fda
43d70ff1-6965-4692-a55d-ab4c87ea05cd	b886b17f-487b-4945-9e12-c7d57634b134
5e416857-a666-40b6-bf79-0ed0447d3ede	b8d442fb-84f6-4333-99e8-f38cbaaf3dc1
6eb61198-a93a-46b0-8108-15e33a9a4c0f	4f184a71-58cd-4e65-82be-ba826e152aac
b2ad0d27-39d4-41db-8d51-1db9a33892b1	7ea397a2-b0b1-4a7d-9884-dfcdf5dcf754
e80b0074-5e5e-4af8-a376-f6b4bb7c3979	5e41ed5d-94f8-498f-93be-d56702a695ce
a0739990-a09c-4641-b7f2-6638f3f1aadc	5355274d-57f5-41e4-a349-e712a6b52971
0fed8857-f806-49e4-bfd4-35b1b27331bd	5c8b610c-cc3f-441f-8a62-bbe5c1694948
6ee6f3e4-3922-42a6-9ef3-3721b0effe8e	436c2bc8-d377-40a6-8592-74d40109ec64
311dc8d2-18d6-4274-8b54-6f853598751b	234f2f8e-49d8-4bde-90aa-9b27839f72ce
7763b003-30bc-426a-b5f6-e176fcfd9de0	16def6ca-52ef-4ead-892b-c8a794c00962
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	e1e1cd2d-f35c-4594-b5a7-399f1fd5f3d1
ca3e9afa-544d-4708-a73f-913f9e59e617	e5545862-4cbf-4a83-b819-2317d5295c35
5ef1fef8-9567-4b24-83e2-22e065a46b00	220d05dd-fedf-4aef-bcb5-019b017f6635
5b64c951-35ee-4d26-ac9f-169c31f16dc0	9ec35e7b-e3e0-43cf-aa47-92f6a3b33b3e
c4a844d5-1ed9-4059-978f-5b2369a6de48	9f270fdc-116b-4df8-b9e9-b6aa18832776
cdef4b59-11da-472f-87fb-dee4e5ab9842	bc361bda-f174-4ab3-89e3-c5b5fbba0361
1ae38900-157a-4252-a276-c8276b08a3d2	44943b9b-bd57-4c40-b24d-34c1eb3ef177
88a85141-a06d-4c07-8ade-7666b056a9e1	5df37081-0e59-4219-baa2-50197a3ebf63
d49353db-eae7-4792-9b49-ac2f801cc8a3	83fc243d-b0d7-4a16-867d-1cf35f98bb25
ed29ad72-b7d7-4740-8524-5f3b05542db6	9b3c6345-f886-4d05-b04e-1250ca32aefc
c9b36e06-ce2f-482d-900d-fef7e7d505ab	f90c7d04-c894-47d1-b611-3545776cbab8
691fe3ca-3a90-4a4b-ba36-84aa4489e566	39dd3afb-df8f-41fa-b669-c7dd3eaad56e
38d1f7bc-e1b7-4929-a934-bf438139fb0f	243a10dc-46ee-491c-80a5-53390df79d8a
18111712-d6ed-4e2b-a594-f194d46bee0a	9527f8d9-6625-47af-a260-33a8eea37dc5
94d815a4-0a3c-4a60-ae69-35863de3c632	2cbce142-4bcc-4040-b5dd-ef18762ac87c
5e416857-a666-40b6-bf79-0ed0447d3ede	99b0ff36-3f47-4557-9e5b-2049771c3a18
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	265553ed-408d-43dd-aa1f-dae8075fa93b
32818e0a-ff2a-4568-b376-4c36feb2e034	08426f19-069c-43f5-8e3b-7ec219d49b57
35c2e088-2552-4bd0-8b6f-eadbe7b6ed0b	2b01ec14-c76a-4ac0-8116-db6df24b0ca0
c4b394e3-d83d-4b68-a5b2-44417fdf71f6	a0bcb507-8119-43c8-acf8-77f9f99906d2
df4b0d52-77dd-4db0-8a01-e0897ab3a82c	b7815998-7bf6-44f7-8128-ab04fff343d2
980cc6fa-faca-4b7f-b8e2-25479643bee3	a25483a5-1f6d-48aa-8194-af7173fd0bea
68ff266d-1fb1-4be0-a0c2-12dbfe8b84e6	15eb11ba-f248-4d76-9259-7156c4bcc2bc
0001c98a-baae-4f8f-b3d0-50b18e240e52	cd0a611c-024f-4112-bd18-c82197433fe7
5c04171b-a210-4790-bf18-703ab0eeac7e	8ddb2798-f8ef-47ff-9714-b9d336a1444d
b1fa172b-b2e9-4fd4-a0bf-69d2b87c95f3	56a64fe3-dc1c-4e91-8f29-fe9f24b9646a
299cdaac-773d-427b-a31d-284aa3fa315a	2538229f-6cef-4655-8a98-97578765a494
8c08c499-3d89-46d4-96a2-dd14a7138484	a4bedbec-1afb-4411-a959-f1fcd822160f
70a313ce-d3ba-4dfc-a368-891634d7b4fc	17deaf6f-883c-4e0b-85c1-21feb77f04c6
35d5e442-c995-4b2b-9805-f9642d388c98	938a5fab-bd97-40ea-b766-6b226deabf4c
c1fa5306-bba7-4dfe-97f2-b3b7ba255812	63d0ad1e-9d87-46f3-ad0d-4e5a9eb7935c
125fdc0a-4f36-49c8-9983-d4ba776f0d26	63d0ad1e-9d87-46f3-ad0d-4e5a9eb7935c
36b2c862-ce61-48e7-975f-30afa4c7d236	962e1cd9-47d0-4fde-ab1a-d6372ab7ec3e
ed577c74-8010-4c55-931f-68e88ec1285e	01d925ec-cea5-47ad-91b8-794203da3814
dbd4a0dc-28e8-4dc4-b20f-c58ea161380d	a3dd34ac-3194-42c6-8687-be1ca6ece1ab
c2daa87b-73fa-490b-97d7-398a38341689	6307e505-4613-4ab5-9dd5-91a24cdb464b
ad47fb4f-c2cf-4395-8fa7-dc7ed5df79d3	9127b709-1f77-4c30-a2ce-1b89256bb77c
573896fe-fd10-4f60-9424-0a6c738519e4	eeeac744-b783-4896-bfee-244c07b95ccc
ca3e9afa-544d-4708-a73f-913f9e59e617	4ac9eedf-e54c-4aaf-bebe-085992dd4d1f
efab33b7-d798-470f-86d7-7a5fa990374f	248e2b39-40d1-4338-9955-054e6ef93f85
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	0941ac38-14d7-4b54-987c-de4ece3dbd3d
bb29a849-ec54-4165-b105-cb7bfd7afcb8	61a805be-64e7-4a8f-a5d8-a81b34f0f07a
e2d27fac-a98a-4d55-a129-d72148a32037	ffdd3f77-b5ac-425f-b011-ca2a856273e7
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	cfcfd7fb-838c-4304-91e1-1060e0ff3708
49daba95-5478-4b9d-a98c-eb4682cb35aa	fb4b4cb4-fb3b-4fee-af2d-511a41597887
ff9968af-d096-457a-8d2d-b06e1f8227f0	e2c8e01e-84c0-4402-8daf-6b3781c53c18
92e723c1-dc9c-4d29-b061-d5f0ebef353c	fe975bfd-6e5e-4546-b5ed-e90d30af4c1f
692dd4c5-9266-4de6-ba6a-62960779c827	6575ad04-e63a-4773-b674-023d57dd0e14
e093b426-e66b-4788-88b4-1e04638f351a	598a5ed3-69e2-4197-9b23-dd5eba659a05
2d6d74f7-df5e-4e78-87dc-bbfac3775475	7c667e0e-c0dd-4c6a-9c7c-5dd685bf43f7
af667a65-f4ab-4621-958f-58d15dfff083	b69d3705-cbc0-452a-931a-742c1db25ecf
2096a358-a50d-4762-95a6-718df65a8277	5263c804-dbef-4fc5-970d-8a0d0c88ba54
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	fbef2e11-ad7e-4973-9a61-90df387cebc5
54f69ef4-ec4e-483e-809e-6bca8da8f87b	11e70006-e066-4626-8f08-e693950ba81b
e2d27fac-a98a-4d55-a129-d72148a32037	b4c72217-758b-48d7-8be8-7a0279d2c4b4
89566825-e8ba-442f-959f-9c8a1b321e79	4c676892-4459-4afd-aba8-4015b21a81bd
e13b2365-0b05-406a-9ef0-8622e88a5fc6	ce65f3b3-8e29-4ba8-acbd-d0d928f97ef9
e738a33e-0026-4758-b9ee-f377bd4eecd5	f9e92bff-dfb4-4318-a488-a20bd13dfb3d
bea0133e-bf22-4da3-8b0d-3dd6e65ce175	47457c55-c29d-4c77-a180-f790ec8bcaa3
d31fc1f8-ca18-4ef4-83ee-5a1d0e86ae8d	6a4a4941-579f-48f9-b142-379dbca76726
be70c31a-f1a4-4590-82e5-526d534cd356	27fd4355-ca75-4df5-ac26-517502be7a3f
509fa7e2-d34f-4e84-b2d0-0f3f38b55b34	a3430d3a-687f-45f4-a301-9c597ddb2c84
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	61e7d0b7-7081-4fae-ab58-9f272e00bc44
7763b003-30bc-426a-b5f6-e176fcfd9de0	e05c4d60-fdd0-4660-82ba-6a327df5fdc7
aca89029-ab48-41d9-91c6-1f497b642981	a07b68d0-203b-4463-b76a-11b71f2848aa
3bab7755-1071-46dc-9285-426e3b2940e6	b9e0c91d-d357-4d87-92c1-6e575fb46510
43b7a894-d5bc-4b49-b374-f5f08a22ba4b	50b1beb4-bf56-4671-8d2d-c06816ac03bd
8a622ff8-c385-4695-b93c-3a1ef3df8053	4a230b72-b40e-41ee-ae9d-6d9ff7b191c9
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	534e2f21-058b-4e96-ba72-47cf99eeabaf
79bd2e3a-9363-43a1-aa51-ccfb30799a22	50420189-af05-4733-b41b-613b9a5dc2ea
86c9d693-1af5-4d91-9cdc-ecf31e53822a	7c16c86d-9e9c-440d-a084-8c00c5946e5c
af514059-6887-455e-a2bd-038f146b0fec	5e8bb34d-be60-4c2a-9b2c-94a0800342b5
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	7ec1dedb-2f94-4ff6-9a8c-a955227cfa99
2d6d74f7-df5e-4e78-87dc-bbfac3775475	77c6d1e5-02dc-4922-9ed3-ef1b1fa39c52
bd7999d9-1b3f-4c1a-a16a-f38c4f376337	ee07a849-a758-4ca2-984e-464ff31c282d
a730edc6-797a-48b3-a0fe-2874130b8d6d	63cf0ce3-3728-4673-9b34-f7246b7f7c6a
a0739990-a09c-4641-b7f2-6638f3f1aadc	e58dff4a-9917-4185-9774-50378395c3ce
0aea7422-3b5e-475e-9921-509420560fdc	1d67d4a1-649b-470a-b707-507a2b306923
56d0be8a-816a-4f65-a5cb-4c386c9f163b	a3481c03-6085-4933-85c0-412cd9bdead9
9756aad6-9463-4773-a6aa-6e4272241052	1ada3b04-36fd-4032-9636-ccdfc536955a
1580efeb-fb5a-4067-be30-e8c9dca75a0e	12f2044d-c5df-49f2-8733-9d013bfb01ea
ee9dac32-b54e-422a-b9d7-f4c4eca89f3c	e8605728-99bc-44a6-aeeb-96bc0c915cb5
376d9a8f-ae49-4437-a4f8-320920daf37d	032397d1-2bb2-4866-807b-5758450ef30c
f0677d0f-e1f1-4298-bc94-ab2dd17953fd	f3396bba-1626-40bc-9742-0b4fc781e3de
3b057e29-ef61-4757-ab33-2d67e1aef348	1d5b2010-d807-4c66-bc6f-c31255feebb0
18111712-d6ed-4e2b-a594-f194d46bee0a	8cc62860-1b8d-49f4-9995-77e9d55fd723
62efc597-e0eb-4c86-a742-16a1f0bdbd03	cd75020a-da9a-4009-8f43-25284c56dcf3
af514059-6887-455e-a2bd-038f146b0fec	d3a2f5da-1cc4-41bd-9462-b37c3bc7de82
ac61af83-15b4-4625-9bf5-62ea2670e757	ec2cfcf2-5e08-4e57-8c1a-c2e19c2bdaf6
35d5e442-c995-4b2b-9805-f9642d388c98	939f3fd1-009a-4c83-8c96-4f2d44b00cb2
af514059-6887-455e-a2bd-038f146b0fec	caf634bd-50ce-4602-94ad-6a042f905905
fb3b2f08-5de1-4035-a494-65ba22d36d4d	c7974150-bdd0-418b-b4a9-ecca4216bab6
b4bfdf3d-8220-4210-8e5f-1277092bd295	f0adc098-3d9c-4537-b066-d59b23da4b11
06d7fdf4-7e41-4aa9-974f-1d1a48bbe1e8	cedeca96-4752-45b5-8f78-69bfd805a706
e41ee89f-c73b-475c-bd57-8eecb673a84c	a8a181b1-de67-45a8-b5de-92377aa36735
4dbe910c-7022-4f3b-8632-c3cfbd6028d5	b747c7bd-94ce-4b9e-9bc7-71001daaedd9
3f1563d0-5474-4c0b-8ad6-2bf3b5eee6e3	7d71c7ff-9fbd-4603-a320-7a1be2e22ce9
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	90b10a6e-d33f-4346-a1a5-cc049f4c9872
92b52b52-86ec-4db1-b20a-8096d45387d1	864288bb-9d42-457b-9415-f689d93bd6c1
6b2a2b17-2e76-4ed8-8ea3-6364351514e9	9b666868-3587-40fb-b5d4-26c1b0043054
00859cbf-4df7-4d44-9d15-641e61879d96	d9114e37-4f2d-477f-864d-d9524ce49ac9
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	4f3b91a7-48e3-4c63-8fc7-0211f5c31a1c
35a5ad9b-6753-4cfd-a4a6-c1643cf55d24	df0867b6-9e5d-4beb-8e02-b65fd0fe492a
b932cf5f-c0b5-44e0-92d8-c8224f079162	b436a4de-7ca2-4fcd-80e5-0d75076261e4
325c682b-61ea-4349-bde7-36e4db21d20b	8b70002b-77db-4199-afa0-02f74c622da3
c13b07e8-7dac-41f4-894d-dfd067472c8b	34a1639d-cbb0-495a-a6fa-73afd90e6662
ffcad7b5-2758-4f16-8432-5a3f5fa18333	647133a9-3285-4692-86fe-7e1c9e3cb293
c061549d-e5a4-4c77-801d-ee41da4d38d5	29b30bbc-e460-45bc-9248-a0c0811796a0
b4bfdf3d-8220-4210-8e5f-1277092bd295	d348d6c4-03bc-4282-b20f-e9efc7a54721
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	42ebadc5-4ee7-40d7-8c81-156e38077fd6
b858bff5-615f-4b9b-b3e5-e3589e6f7df9	ed938624-0492-4d6d-b109-44e84a710f76
6be89aeb-8a3c-4b52-a198-6a796c6eeedd	c524d100-6539-456a-bfd5-0f60f60b5ba4
863b4edb-7eec-41ba-9617-efde923344ea	b94a3af0-25ca-40af-84ae-74932d2891f0
94d815a4-0a3c-4a60-ae69-35863de3c632	e1d38f31-10fe-4770-abd5-1d6d27e970a2
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	8d2bb40a-3fe7-4a19-935e-d748d6198e01
dd26d47f-e220-4f32-b867-5123e676ab0e	04de9787-07ea-4f85-9063-7f73f252b342
5c04171b-a210-4790-bf18-703ab0eeac7e	408e1598-e5e7-42eb-9363-4bbc5a6a1328
e13b2365-0b05-406a-9ef0-8622e88a5fc6	e5541872-30dd-40a2-aa41-0db4c21c2c13
c471ae0f-605e-4c1a-9191-c977816030ed	c3ecefa2-e4b6-4559-9719-c34b6659fa3c
eee33f50-7cc8-4387-bf52-06e1df5da389	e96c05f3-d991-496a-b0a3-bf597de58d28
ac32062a-ae85-4091-b019-4288c7cf58d9	41bcb257-f982-44e1-8fd2-563e26db5861
56d0be8a-816a-4f65-a5cb-4c386c9f163b	e8b54db2-59c6-4d24-a860-6a3ab6db68ef
29f60c7b-056d-4b53-8097-bed09d260d8e	4c9ec02c-83df-4657-8172-8f581e70d253
cd995893-d17d-4027-aecf-c3c3610077e1	247ec38e-b02a-4c3d-953f-b2f96573f11c
30233609-7f01-4fb1-9d5f-33835544b2d7	d13d015d-32a4-4225-859c-5947ced81de5
54615765-55ef-4976-9cee-73ad7693f183	b0cc8c3e-383a-4064-a43b-aaf558ef2bc6
b1ca2cfa-465a-4037-b18f-296c55504142	f014ff1d-4a42-4c4f-818a-23bcf07e19f4
68171579-f281-4f1e-94d3-53e9c86974b4	671768bc-77cb-4a09-ac37-cc34cf671cd2
b8777605-c1fb-42f5-bf4b-d6ec7de56bda	d3da48ce-e93b-49af-b700-423dff386ed1
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	266984f8-74d5-410d-9150-46958b1d73b3
72e30a93-c86d-484d-9bee-667f27a3f599	10a89048-5af6-4884-a620-eda1d7f5b636
c7289612-b6fc-4505-9528-554ce431a42b	7def2fac-f4af-49e6-8d43-b1909b1ae392
7ea92505-0278-46a1-8281-24c5b9f44e3a	a03b43b4-3c12-48ed-8949-0142d7c0374a
6b65d556-0780-4883-8e78-f1482ec7d56e	ad69b491-0952-43e0-81cd-27a8b9a37007
7c592328-236b-4cb1-bff5-bb74a5e215a6	49ad4033-78e3-4df6-86e8-83e6134ebd34
c06e0376-59c3-4573-906e-b0f42cc61473	4a0da5d5-4932-4294-b74c-b8d35d6b5377
435c9078-b116-4b80-8996-b74656376955	80457b69-8381-4aa3-a642-c6d8f9fa28f2
66b1ba9c-f2dc-4263-8a73-9f1e39acf831	80457b69-8381-4aa3-a642-c6d8f9fa28f2
c144544f-3e3c-4839-9367-124af696a8d4	bf49229b-2464-4374-a803-ba782feccaac
9f663ec8-cbb9-4f8d-9c4c-9c470b9fcbc4	968d2e2a-a6ec-4872-853a-d20da416b921
5839303d-02f9-41db-9547-e0353ae82e1b	15f7317a-661d-4d7d-86af-6f64f1ab709a
61cd03b6-29d2-46e6-b591-c864ae07f3c5	a98bad88-04fe-4d7c-9eca-b7cb047eb0be
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	58dc5c45-093b-47e4-bb84-658bfc2ccd50
7d762a30-3c59-440b-93c9-fc80240c1666	b276850b-9a02-4f3e-a43b-4f7540a448a2
8c560c80-44d4-4194-91d7-6bdc99b3176d	74844715-fafa-42dd-bae8-40a3cf3ff17e
db674a26-7dd2-44c1-a117-5e365fe905ec	e0944b1a-ea74-4d9a-aec3-a9905f997fa5
880257d4-ecc8-45e3-a716-5f01fb4618f8	0d72cd26-5132-4144-bbf5-6058ba208159
2d6d74f7-df5e-4e78-87dc-bbfac3775475	81df9fd4-e6e5-48c1-baaf-f927b68298e0
ddb96561-d357-4b37-8bf2-44aacc0829b7	c64e04b4-3fda-43bb-bd2b-7e45f02937fc
8f1545f9-6655-4df7-a709-0f5b8dacda31	184d82f2-0cad-4879-b252-2e8bb218c295
3059f20d-546c-4fce-b804-1bc75a01ddaa	164f2118-4e83-49ad-a3bd-e530ace485e6
6e62a8b9-2dac-48a4-aa64-64b6741c1a43	a1f20ad4-f058-4fd0-850c-23987b9c1247
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	c26aa759-53d2-46e6-a216-a7bbcf8e1b4b
f2c5f486-e7c1-4f2f-9231-10a1c48dec12	31c7a85b-cfa2-4534-9b2d-5f3ee3424693
b41d4e67-ed20-4d35-9398-c53a57081a5f	58de93fa-2e6b-422e-af67-bc9965384814
db54a211-6c47-4e59-8eec-de1b039acd0a	3c5e3a64-f6b8-4441-869b-abab4b4cb182
ba5588d7-a6c9-44d3-bde1-c360145ec96e	1eba402d-c425-4b59-9167-d2d07e20933c
d9416023-545d-4e6b-bf40-386533b67c1e	c0c524f5-00af-4001-b42e-481d6d08db12
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	00927287-b080-4a85-a1a4-27bf9136767d
fe371ef4-179a-4069-a5a7-42fe5f46dbb3	a6f7b75f-7028-4779-a716-028f9394adde
bb77d281-41fb-469b-81fb-00c628dc7446	d70b4c58-f26c-4d60-910c-f73fe631c672
880257d4-ecc8-45e3-a716-5f01fb4618f8	ffbd8b5b-7bde-4447-a0eb-89b26d859203
fff85f91-9607-40c5-97ad-ba15fb296228	bb591fca-83a0-45ea-993d-5df8203a3cae
8b1f4205-237c-400a-9e3f-3eaba716ed16	a2dc2912-d8e0-4e62-9927-7dc119bc2213
db674a26-7dd2-44c1-a117-5e365fe905ec	a879144b-0cc3-47bc-ba56-c0440959df9b
3ebdd621-426f-4e29-838c-7b04ae57ea3a	f7a1f3b6-8456-4751-b5cb-0bbbc15eb1e2
d9199ccd-c1e1-4e85-a082-5f6cdf2f294d	9773fc83-dbde-4f0c-ae87-af8712e37adc
c30df06c-9ced-4b63-89f3-98f585b99e20	f190fb53-c924-4154-be64-52a0f54e246f
65bc3487-8313-4cba-a1fd-445ccb4631ee	726e8726-757b-4d28-a118-405e4535554f
50e46bcd-ec17-4e87-a208-dacc2181631f	1b9fb3f2-56df-4c0f-a9c9-d2f5f8199cf8
2d81ea2b-f106-4866-a6d3-7c7bfca4638e	e6b948c7-83c7-4180-889e-ba2348766e18
0e9d16e7-f485-4539-84ab-a5e36d746797	b763794e-b688-4a2e-b88c-1882e2e04e5a
e2d27fac-a98a-4d55-a129-d72148a32037	39cf4f7b-e2d3-4666-8176-1b96bf5fbb81
c471ae0f-605e-4c1a-9191-c977816030ed	fca93847-5116-4012-b66c-f98ae08e43a8
5f2693e0-17cd-4daf-bb49-cb689c72565b	21e7f67e-480a-4bbf-a7d8-73e475a2ac0f
af667a65-f4ab-4621-958f-58d15dfff083	caa1fcde-d37d-4c33-be4b-d9f256ebb9bd
e714fabe-8810-4de1-9e7d-423cc2d4c0a9	e8b0aec2-7766-4eea-9c61-084b393256eb
92502279-79bc-4ac1-ace6-1e5a9d2f770f	be8d6be0-11d2-4f3c-a8c1-101492dcda26
2b9d6bec-916d-4af1-906a-041f607f001c	8c663d38-b7cf-44bd-be88-a811acd31985
6ee6f3e4-3922-42a6-9ef3-3721b0effe8e	2c2050c5-fb91-4f6a-8dbf-8207e7ae5ba8
5ef1fef8-9567-4b24-83e2-22e065a46b00	422b50d1-7b87-4ade-8e80-fb096007f52f
00f76c44-371d-4b54-a15f-b5b72f92a423	037fa276-e1dd-40aa-b5c8-e4628595bb0d
ae394d46-f0c9-4836-9261-3c9f3ea69854	1882e508-a78f-4df4-bfb8-cac07d2b5681
92125fb3-9d34-48f3-992f-6a61991a6252	a01d6983-b503-40f8-82e2-8cfbf421f7a5
8c08c499-3d89-46d4-96a2-dd14a7138484	45e11f2a-eb00-4d9f-834e-f84fcd6cd9d5
e13b2365-0b05-406a-9ef0-8622e88a5fc6	ebfc6006-8b7f-4aac-b6d7-73e83365a029
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	72b0629c-0317-4254-8919-4c6245f26ff3
311dc8d2-18d6-4274-8b54-6f853598751b	b3bf9db8-b9a9-49de-a0a2-34e56faa9c98
4ee50f48-ced5-4d90-8c6f-87461089444e	41d0e07f-bc8d-4212-89bd-af2a7304558a
a7d24ed8-7e87-4c70-bf91-93f09d0345c5	f41292f5-2c08-453b-80f6-8cee2e5fc00a
e4114bfa-6cca-469e-b6f2-8501a57ba8e0	7978782c-792f-4e61-bba4-201ebf5af637
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	e256147e-b774-42c4-aa25-8aa0a049daf0
aa84b7a0-b41e-4e2a-ba71-ee2df3a8c1b3	f22d8c7d-10fe-4311-8c25-314bac8ece72
0109e5be-3951-4288-a2a9-15955ebb74db	02f235d0-46bb-4f25-8b2a-f7296203d094
8c08c499-3d89-46d4-96a2-dd14a7138484	e8ece71b-4c80-429d-ac32-a39e7bcec4be
435c9078-b116-4b80-8996-b74656376955	ba253a7a-7fdb-4933-b347-ed3602fa95d7
66b1ba9c-f2dc-4263-8a73-9f1e39acf831	ba253a7a-7fdb-4933-b347-ed3602fa95d7
a1a14583-15f3-4e74-81da-960d944021d7	b8889b12-b525-4df2-bb4a-26e7fafa0d2a
7d6668a8-f031-45b2-9d71-313c615d1bd2	24aeb891-1015-4599-92cc-eba1676a73e0
a0739990-a09c-4641-b7f2-6638f3f1aadc	3bf3e30a-9cf3-4406-b7fc-455d65da1080
e13b2365-0b05-406a-9ef0-8622e88a5fc6	2d5d8ea9-3d3e-462e-b808-24f79973036e
56d0be8a-816a-4f65-a5cb-4c386c9f163b	a879a855-6c09-465a-a171-b4706c8887e2
51c12ad9-e690-44f6-a392-e11babdab281	1c67971a-4375-4d3f-b012-7938b63847b0
db674a26-7dd2-44c1-a117-5e365fe905ec	9e61550f-4fe7-48b0-85b2-e99e294a0160
e437c67b-a6ab-43be-84df-9ca2dfda8ade	3048ce24-8d91-4f35-bb41-91fd93e49316
38429efa-f26e-4317-ab47-ea01974e21f4	a0b1220b-a072-4bdf-a1d5-5f3b43aae647
4d9de49c-ff18-4446-9429-a0264f3ad55e	0cb4aefc-eef0-4c54-90e6-a0bec9f0c87d
61152273-bd25-4339-a6d8-969e51e1d90e	c545bf30-b3f6-4501-8e09-887f1f420a20
279fd91e-7a59-400d-9d8e-84f109ad3fc7	0ebdd804-69a7-47ea-a15b-4c08386e5a6d
b1ca2cfa-465a-4037-b18f-296c55504142	461dd474-6d48-4fc7-a72a-ef2cdccde075
49daba95-5478-4b9d-a98c-eb4682cb35aa	9fff0ecb-f91f-49c7-907d-078ee9bfc8e8
e880c842-27ae-42cd-bb3e-737c318a7627	30348922-56b5-4290-8151-cda365a328fe
71d35a3b-3ed1-4151-9e78-2746a5b9c88d	55dc03c2-7d0d-4daa-ad9e-08257fd90f7d
47c577aa-2519-45dd-8016-d99202eabe4b	55dc03c2-7d0d-4daa-ad9e-08257fd90f7d
937a1474-dd56-4121-ab25-5315f8216799	322d294e-b432-414d-a82d-1988535eb180
972924d4-08b2-4f20-afa9-b453ceadbb41	ca146b23-479b-4cc4-9e83-a5da939458be
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	a3a412d9-987b-48bf-a6d3-96c9f2053757
998e6f3f-3c38-4ab0-96b3-2252df5df641	eab669d5-ca76-4147-83b3-03cb4c086952
c7902670-3947-41b4-acc1-5e7ccf7c46c2	8d504c62-8a13-4f82-af12-88d1856dd4d2
030cd53a-c343-4e64-adae-7cb1eb3a0aa8	a3d9c2eb-161a-4c4b-bcde-94cc0196e0de
0f0efe05-a27d-466a-a0cd-53c1082e193e	476179f2-f569-4791-826f-5fd41af85f1e
e671909d-474b-426c-9ae3-328809b9ceb9	b84fc9a5-9f75-4a86-93d8-619a29ce6946
87d8030c-1cf8-45db-8411-145e6416af28	a6615bf1-2d9b-4937-8f6c-57dd08d65167
70a313ce-d3ba-4dfc-a368-891634d7b4fc	19c255a3-e151-43a7-b185-103e1255bc3e
a2712911-d4f3-4cf0-837a-7846272852b3	096c4ce6-8faa-4651-8869-802583227c7c
3053f566-b5f4-4fea-b0f5-dd3addaa74a2	02047a7b-dee7-45d9-99c2-48b3adec1ce3
1ae38900-157a-4252-a276-c8276b08a3d2	2f403681-cc7c-4b16-a860-1d932a5d3869
97224bc5-56de-4019-8c67-ba1c58be74e0	61080a91-637a-4d71-86d3-66f6d6eab5aa
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	72ca2702-f88e-4ac8-9996-b439fd8f9c5e
72e30a93-c86d-484d-9bee-667f27a3f599	fc85f61b-1450-42c2-ab19-83fe1a6bffab
e30c74db-4596-44f8-8efe-1a4e52bcb5d7	7a692db5-d7b4-4e35-9d30-49a8673d4d92
114880ec-6541-4fb4-94a0-45a822ecdf85	4e40e478-6783-4d34-9066-c4418c42e989
823fd842-39a7-4a59-a2f2-06ea60e2be28	2ed36115-36e4-4b2e-a4d1-459db2933b2d
68b11835-e1ec-47a3-81b3-84f8bd4a8462	298eefac-ed33-40b1-8db6-8e3ee52ad8f0
ee9dac32-b54e-422a-b9d7-f4c4eca89f3c	b2fdc115-0135-42f9-ab16-d8bd00e3a9f0
7f49098e-43b7-442c-bd6a-15d13b891cb4	c0131cba-615e-4db6-9c8c-fdeb904211d6
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	aaaa815a-f044-4e36-8f37-a83478a72a49
e13b2365-0b05-406a-9ef0-8622e88a5fc6	6f0e6924-9e15-4d0c-a61d-df2d5b1cb40f
fe808251-e0ff-4560-b5cd-411a334858f4	075fad07-f583-441c-8cb5-cf28c70d1f09
c7289612-b6fc-4505-9528-554ce431a42b	82620208-3f31-4d93-a95b-85ed98a224f1
a0739990-a09c-4641-b7f2-6638f3f1aadc	5489ed14-69c0-46d6-aebb-9bcf00752041
e880c842-27ae-42cd-bb3e-737c318a7627	0400c557-84d4-4f96-a145-823f9d27f292
406dda60-5a41-4b28-ab1d-1aa86c024ea1	0964fe77-f0c3-4eec-ae06-c9ce0c646eb4
18111712-d6ed-4e2b-a594-f194d46bee0a	74be9c6b-a336-476a-8c4e-eb4b3f63e29b
3a032e49-6dde-4068-a6e0-dc3e5d551d0f	55eafbdb-7ba6-47de-a2ce-47232182801d
a8e58f8f-f516-4a0a-88f9-bc388d58c035	eda3ba6f-fff3-447a-8d06-4460a67056ad
70254882-3ff9-46cc-a0af-7f8c1848a3e7	862832e9-20d2-4d61-918e-cc2c18d8faa5
6778b106-9304-42aa-a330-df19c0d2cc71	3f07f2c6-9c39-4143-a069-d9494e91fd3f
ccd7b302-1694-4ea4-9552-74b877ffcc42	3f07f2c6-9c39-4143-a069-d9494e91fd3f
df2b0cba-0140-4f38-9340-135c25f56952	240b9d86-3ce2-496b-b847-bb6d19bc4a3e
a730edc6-797a-48b3-a0fe-2874130b8d6d	65c54f99-8d70-4664-8b82-9bc0d7fe2252
35d5e442-c995-4b2b-9805-f9642d388c98	062826bf-4784-4167-9014-372fb1eef678
a0739990-a09c-4641-b7f2-6638f3f1aadc	773f4592-d509-4d8f-8320-c34a5e1876d5
b7dab338-c788-4c10-8cf7-feea015b6266	a18f3d3c-16f3-4177-adab-932b3b218e4a
f2c5f486-e7c1-4f2f-9231-10a1c48dec12	10f4fec4-efc2-46c3-b448-850a07bb55ee
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	f95b7152-3085-4dae-99f3-f15bafaa8013
c9b36e06-ce2f-482d-900d-fef7e7d505ab	1035379e-6265-4493-a08e-1eba9f1a4526
0373134b-be3b-42ba-964d-efab69052dbc	838f79eb-67a1-4c87-b031-83d47a6b2407
509fa7e2-d34f-4e84-b2d0-0f3f38b55b34	ce667a31-26c5-4899-8482-a54e64392b83
990ad5cc-da75-4014-b909-b9c110fe071b	b2e98d50-07b1-44b0-94f4-9db170bad3bb
dd9ff335-3072-4184-9e61-f1d6612e0988	62a4e7a4-880c-4637-ace6-fd9fb62a7c92
f9550eaf-66cb-4724-a76c-f61142b0152f	7d92d5f2-f6d4-4289-a3a5-f61a261ab381
1fceafa3-61c1-4388-ac3c-dfc1c694cdfe	0bb14e76-75f8-45ee-b3b3-fdb14bf6f236
cc4730a6-e8af-49fa-9f82-e52cf90fe578	5684d760-581c-4df8-92ae-321a4e7f6ab6
1041b406-9aef-4175-959a-f42d9cc53c5b	99a8f733-d76e-4c3e-8582-92f02dd541a8
903dfa24-cc2c-4c87-ab71-512cd6b95b23	07c50a9d-6ff1-40c9-9ae6-5a06231c269f
c471ae0f-605e-4c1a-9191-c977816030ed	074d44fa-4fbe-47f6-9eb4-7c4331cfc46f
c4508a1a-3515-4c3b-b047-ec41b61c9663	0444a20a-99e2-48a2-b674-2ac6b7307c71
ddb96561-d357-4b37-8bf2-44aacc0829b7	bf5ab47a-b03c-41f9-855e-3c4dbf15cb53
c061549d-e5a4-4c77-801d-ee41da4d38d5	a2123ab9-535f-41d7-a56a-848212171e7f
b4bfdf3d-8220-4210-8e5f-1277092bd295	90fc9883-beb3-48b6-8c86-222a80e5cdf6
d2086312-67c3-48f8-9adc-45cf1a632f32	84e4ae31-dc95-45dd-af42-8b99aaa09170
7ba20a6b-e87d-4c24-9e3c-0332440ef512	fd665453-35ad-4720-afe2-a7228ff7ab3e
b4bfdf3d-8220-4210-8e5f-1277092bd295	591667dc-1da2-4b19-9810-c3240f8f3912
a730edc6-797a-48b3-a0fe-2874130b8d6d	6c02e51c-8d02-4e2e-849f-2fd05f420853
9d887938-c186-4dee-bf89-78c5e6fee01d	b711e6f6-3826-4701-b1ce-26c6a04136b1
b4bfdf3d-8220-4210-8e5f-1277092bd295	6bb040d7-1c24-4651-b9d0-d8d55b6b17a3
9c9be7dc-e1c0-4ea4-bb16-162181e41d9b	fb67eb4b-ef39-47c4-9c43-757332e724e1
6430a4f6-4e70-497b-831a-f052e4c9561f	dfe78a25-e59c-4850-942f-aa1f2369a58e
bea0133e-bf22-4da3-8b0d-3dd6e65ce175	5ac6b369-741d-4686-aea5-747b783f787d
92502279-79bc-4ac1-ace6-1e5a9d2f770f	e4d8d32c-02c8-4c6a-b460-8e872aeb1a06
bb730e79-e994-4c63-b10c-1af636ab75d0	8794906b-9384-42b8-a25b-6834f2a36178
7763b003-30bc-426a-b5f6-e176fcfd9de0	7544f2d6-ee75-47f2-9eb1-049363018317
46e3034c-5773-42f8-b927-d4f851a2e672	7296aec1-0450-4bae-94f2-d3c1c1c2c332
79a3aa2f-24ae-48f1-a8ae-61cb0d576605	e6949d9a-0d62-442e-92bd-0c1eb7dad92d
1580efeb-fb5a-4067-be30-e8c9dca75a0e	0cca0303-b849-44f3-b5f6-d17b7053c47e
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	617c9ead-04b3-46cc-8f43-daa460d237e8
5eacd3a1-16ff-4f14-b98d-79040f4c1d11	cd495f12-4343-4000-9cd1-a8776285f2e1
18b186aa-280f-45bc-bf57-baa8d350823f	a0a737d9-affc-4f8d-ab3e-289906296e8f
c908bdc4-9dd1-4b24-8354-f4c662ed79c8	26fb0398-7ccc-4d9e-9c95-a5bc5dcd4d80
8b58f0c4-6a22-4f7d-b5c1-92795adab3ba	c1f592cf-82fc-45b6-9538-5b7221fda1da
4f97603c-17bc-4572-ad07-a3e706502e83	13b50f14-30dd-4e0e-8cec-72ed942b8ffc
9196ebe2-b622-41c1-b1ef-8c4b468f5458	c9a17e73-099d-4bc9-a459-536b3e1a923f
ddb96561-d357-4b37-8bf2-44aacc0829b7	38871e45-269f-4cc1-a2f4-70714efd2f36
7b5dc210-4c2d-42e3-957c-b7e9b55791ca	84b3ba64-9c76-4580-b2e3-66aa76655f3a
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	5b0ba3d9-d5dd-4436-a7cc-343af32d993c
96960d8a-1b85-41e9-b9e0-b9a8b37d5192	46135ae0-0d62-4a2d-9234-aff3c2878944
5f2693e0-17cd-4daf-bb49-cb689c72565b	18376f90-3b8c-4135-8966-c1201e42c150
30233609-7f01-4fb1-9d5f-33835544b2d7	769c3b25-4561-408e-809d-4a4d50f097bb
253b8230-f151-4d47-93f9-3178896b11c5	093bf8e7-8770-4242-a7a3-6a9abdb2c254
cc115e29-6125-4584-baa0-00a966a501c4	eb0050e6-cdf7-4533-8ed7-ac2a41951205
d5974af7-1d45-4cc6-95cd-3ed82329a7d9	e9f7c1a3-7d07-48bf-8535-42ec16f01c1e
d187ab2f-2552-4d69-b5de-ef593f34e32e	8cb88684-c88e-42f9-b345-4a79b58eafc3
efc76334-d9c3-4a75-9e68-106d390080ca	2b51fe18-35dc-4196-8b9a-66aef65914c0
ff522022-a630-4919-9450-55d5bee00a4e	3e3086d7-24f8-4ad8-95e7-629e773ec17d
b69a8adb-55d1-4b3a-97ac-d98518617905	457410d9-4f3b-4404-b0c9-3114c780897f
ea73ffb5-26b6-4409-a4c4-68b4c65fa60f	5307bdb9-0c63-45e7-b412-e84bf53c2438
66727c51-8bcb-4593-aebf-ef6832a1d676	eaf98b92-8911-43a8-875a-5f200dfdeaa8
6fcc63ec-2791-42fe-8167-37f99e94cd16	c779e8d9-e00e-41b1-bc1b-3a713a4dab27
67f42b96-d9e4-48bf-a0d0-7eb9d23c5d53	6f59396d-742c-4e40-8ce4-319c005f3601
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	e4a196ae-808f-4c74-97d7-d7ac5b02698a
311dc8d2-18d6-4274-8b54-6f853598751b	e750fa49-143c-4b40-acf6-82c6aaec2ef0
77edc8d8-1e36-4546-a979-c706d314cfca	a3a440eb-b7c2-46e3-9fc5-80da3a2e8987
1237490d-346f-4c9e-86f7-ecce42e6505c	85473c40-9b22-40e9-b98c-aaff231ac037
816255f0-9fca-4624-85b5-17799d41a993	63ef13a1-aa3b-4ae8-9dc5-2494208e51e2
602d7235-eed4-4258-a5ae-16764d527846	d499d0bc-850a-478f-a8ca-e8bbc98ddae4
a42bfa4d-6987-479a-ad90-01dcfde7a112	bfa56d20-7171-4ad0-bf30-4b88c1257fb5
e41ee89f-c73b-475c-bd57-8eecb673a84c	64ad279b-86c6-4b82-88fc-e927e1545860
4f97603c-17bc-4572-ad07-a3e706502e83	f0d119f4-6bdd-4c3a-a606-98fb10ea2bb6
cd3e4510-2c37-4dc9-ae1f-458e5b8db925	6c539db8-391f-474b-a5fb-e61f7b904f49
7763b003-30bc-426a-b5f6-e176fcfd9de0	bbe7c59b-5931-4614-a4ec-5136955bc9e4
3059f20d-546c-4fce-b804-1bc75a01ddaa	97d8ae65-e268-4593-bd4d-397dceca78ba
614973fd-9b5d-445b-ab6c-a2f51237a1e8	3ce0b34c-2ff2-4ec8-9ba3-773709a32f84
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	8929f4c2-8081-4a71-bfa6-bfdb0b3ca7ad
58022538-9f5c-485a-961b-0ff2cd6d06e2	d183cf1a-ad88-4c25-a7fe-5765dc5bc96d
6a2cd234-8b57-434b-8668-50f5948f3b25	52c238c9-958b-4595-bff8-98d12d67e692
6ee6f3e4-3922-42a6-9ef3-3721b0effe8e	b78768bf-c9c2-42b4-bcdd-208bcf90965f
cb721f56-84d5-40f1-abbf-581758b16f98	241e9480-873c-4094-ae76-341c63c0b30d
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	0637e35d-3e55-401d-9ecd-6db9528c4ae1
58022538-9f5c-485a-961b-0ff2cd6d06e2	ecca7d22-a553-4130-afd6-f72b218f9413
6b74c313-da53-4983-bd8e-d835d2f5df73	3b52cf6f-a3a5-4fe2-9863-4b7f9830d280
cda33cc2-24d7-4465-af6f-32aa48b29ee4	9b57772c-c7f8-407b-abb8-773a4bed39c0
01779c83-638b-419f-b7a9-c9b21e56d683	110acc42-107e-48f8-b66f-5debd9118146
ecf2041f-2ff2-43f2-82e2-6ca6adb92582	f1a32f2d-bd16-4493-9543-7e80dbeba7b7
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	b7fa4291-e542-4317-9500-3c8aad11e7ee
30c254de-6cb4-48a1-bebc-7cefc6f70085	0b5eb225-0de6-405f-92a5-4bea810920bf
70b32a37-2eb2-4a3a-bb68-d20f369c1f99	c12c49de-b8fb-47f3-91e0-4a9a0f84ab25
9e891c2e-3d97-450d-aa02-456b47042738	e5c44fe4-1238-40db-8937-3e7984386707
091c6fce-9e6d-42af-b732-d5382b1ec2a3	4db1fea4-5b66-4fc0-a942-1218b93ebabf
728fabeb-9d39-4ccb-978e-ec733a8f79b1	bb953eba-363f-4508-aa96-c42dc038c7df
cda33cc2-24d7-4465-af6f-32aa48b29ee4	3c96737b-576f-4c1e-9267-0f2deff88719
fbabe020-24ba-4b65-a302-d6af7d756cf5	f39f9498-f480-4bd4-b79b-6bd1ac54c7e6
8151bcee-3a79-47d9-a9b9-3398a9ef53ae	0f668c17-24c6-4188-a2b7-7623c5e02974
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	af0f6e95-d70f-43ae-ab29-59b3a3d5d0ff
8c08c499-3d89-46d4-96a2-dd14a7138484	70939403-8555-4ddd-ac53-422e6899bad3
36ff3e4c-c6f9-4a3a-bed6-bbc896d677c0	5b3ca15b-8137-4967-b98b-6118f704ec00
58ae36a8-3299-4c86-97ea-b513d93c44e4	08c7a8ed-92b1-4a48-936c-693a37778fd8
fbd26898-4a46-4161-88c5-33c954a5e46f	ff1184ec-055e-4def-845f-56095b2db290
998e6f3f-3c38-4ab0-96b3-2252df5df641	5c2a6b28-1d83-4378-8984-1ebd52e52bae
3059f20d-546c-4fce-b804-1bc75a01ddaa	8ed1d8b4-e9b5-4b72-8660-7d76e50fde94
3d5e4612-e3c1-4a02-b249-eb2f18e437fe	2677237f-49fc-48c9-bb56-99df1b710f0f
5ef1fef8-9567-4b24-83e2-22e065a46b00	915842b9-6057-4b3a-a210-312e45e3f8cd
7ed7ed99-1fdf-4d12-bf6c-6f22abc96a29	97767e3d-879a-435e-b2ae-17c9c916b29e
af514059-6887-455e-a2bd-038f146b0fec	d6215f55-1604-4770-993b-ad24e5078350
bea0133e-bf22-4da3-8b0d-3dd6e65ce175	be3273ec-7a5b-444a-b82b-c935b5acc513
ab36eee9-f07c-495b-baf6-a6d729176202	ac4110a7-2701-4dcd-b7a5-617bcecf64dc
d08322e5-81e3-4b86-a0bc-67e358090836	cad0a59c-8c65-4e5d-b8ee-16f544948cbd
9e2bdc0b-bb27-419e-a593-1319362d7d34	d575d540-6ce5-412f-88a9-dcf5938e5df3
5b64c951-35ee-4d26-ac9f-169c31f16dc0	b80749eb-76d7-41d0-968b-d09b65174cea
a0b0c1e8-be2c-4718-b773-f4cc737856fd	bf6408d6-2ea0-43e0-9720-3431d9f20829
acb5ab4b-80b7-4aa2-ba4d-85e147b67fb7	8ee0e71a-2ada-46ec-bd3b-f88898d98c9c
a3a65eec-1f98-4761-be74-42cd5eb8e8e2	90fd6505-dd66-49e7-929b-96d306980bef
e714fabe-8810-4de1-9e7d-423cc2d4c0a9	ad3ff075-8231-4935-bca4-0e642844c4ea
1ce0dafb-c06d-4114-8988-c5de994336b0	d943bbf0-4997-40fb-9a8f-7981d18c5dad
ee3a3fc2-87f5-4459-a7ba-f96e20b7263e	23842a0c-e730-4ef0-a643-309634461ec7
515d9aa3-3681-4744-bb7c-18b3ed10d7c1	0a6768a0-0fcf-44dd-96fc-6de3932d6b46
24bea641-34aa-4606-bad4-ab86aba5e4bf	7d9298ca-2087-4c24-8030-bfe8b0bf9fc9
75e92b4b-2944-4a33-80f8-96b80a681275	26beb5c3-f0bc-4730-b3c8-c01ef793056a
dbd4a0dc-28e8-4dc4-b20f-c58ea161380d	88d6f4e6-7fa5-41b2-9c15-c77e5780a0d4
7ea92505-0278-46a1-8281-24c5b9f44e3a	ce193c00-de04-49cb-853b-91d1e2049276
e880c842-27ae-42cd-bb3e-737c318a7627	94da7b7f-7076-4aa3-9f38-31f9528f3ef9
db54a211-6c47-4e59-8eec-de1b039acd0a	3112157f-216d-4c91-812b-4d5d22c6ec11
1237490d-346f-4c9e-86f7-ecce42e6505c	9d2fd838-e821-4c58-b890-d8fd53c5eae0
e880c842-27ae-42cd-bb3e-737c318a7627	46e46016-d41b-4667-be0c-18880fbfaa15
db54a211-6c47-4e59-8eec-de1b039acd0a	dcc8ee80-d941-4c8f-a4e0-190425f774bf
78f5eeac-71cb-4db8-add5-b27dc9a59f8f	c1e41bf8-7b80-4528-ab9b-a0cbf7a71828
bca1dad1-69df-4931-a4be-dafaea40fdb4	d8b41482-f039-436f-8242-07f648a068cc
7ea92505-0278-46a1-8281-24c5b9f44e3a	a2ef1648-aa8f-4dac-909f-e05cf5ee3f1a
41b7c65c-5f22-4534-bbc0-81b5711cc142	c3c578fc-9c31-4102-947f-6eb3027c5e46
af514059-6887-455e-a2bd-038f146b0fec	6ce3e992-ea51-4488-9547-0e06ca3e1d12
8c08c499-3d89-46d4-96a2-dd14a7138484	5d83aee4-5930-4030-9882-7db417f8d43d
15f50895-426d-4681-9752-c17fbc3d7fe4	c6fdfd5c-c84b-4b75-919f-740e220d9f2f
29f60c7b-056d-4b53-8097-bed09d260d8e	ca56903e-453d-4a5e-89e2-439693d326fe
35d5e442-c995-4b2b-9805-f9642d388c98	d075640a-1632-4eb9-91c7-b7158a2b5b24
fbabe020-24ba-4b65-a302-d6af7d756cf5	128663a4-f584-4e26-9524-db97765fff08
3d5e4612-e3c1-4a02-b249-eb2f18e437fe	8135bbe4-2bfe-4737-9257-f7bc5f9fb371
fe808251-e0ff-4560-b5cd-411a334858f4	146a4da7-7662-44b8-9b65-bcadc4f75356
3ad031d7-8b77-4ae9-8701-314ab98fbdf6	c0b0ac0d-747a-46b4-bc63-e9fe65df8969
2096a358-a50d-4762-95a6-718df65a8277	c1319869-571f-41ab-ab7d-8961fc94303f
515d9aa3-3681-4744-bb7c-18b3ed10d7c1	89d1e80d-728b-4c00-940a-37feb74e83b3
c5a33703-d2a0-4617-a52f-6663cc5019ee	b218a877-4d3f-4c0f-8bbc-6c130993416d
760cc00e-59c2-4410-83cb-310879c0cf3a	54348213-79b0-4190-9550-eba6ba9418fb
01779c83-638b-419f-b7a9-c9b21e56d683	16281d89-8fb7-46df-949f-c58d6d4c8065
1ae38900-157a-4252-a276-c8276b08a3d2	023f6922-565c-43a4-8862-923c82b9131d
5dfd65e6-5935-48a4-9691-5f266de8c4d2	61b78e9e-ea9d-4f2f-9f4a-9432c55e1d71
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	6f0bdf04-fdb7-4541-a649-6d600c9be9b6
f39a62ac-6eb5-4cf1-ba96-8153145aae78	34f5a4a2-a825-45ec-a6d3-e60270cea259
57ed3d2a-c5c3-4047-bcd8-3af95530f39d	3ff458cc-d1e0-45c0-9802-17889ecae7dd
86c9d693-1af5-4d91-9cdc-ecf31e53822a	539f4208-e75d-4b80-a67e-a2016678d838
cf1cc071-01d6-4221-b582-b913053cbc0c	3c9fa184-eed3-437b-a23c-cc5f266cbe56
7ea92505-0278-46a1-8281-24c5b9f44e3a	2f81bcbf-cfa0-4a92-bc58-45826c63fa58
e2d27fac-a98a-4d55-a129-d72148a32037	47e44efa-c107-4658-9243-1972af3fb37e
f9e693f8-504d-4b18-9e97-fcf23f4feb75	b2ea3bd0-9838-4a41-8bf2-96d070be3241
82633675-f8f4-4df6-80ed-cee40e0805d5	2f326504-c2df-4f1c-8d11-af5982f29820
7763b003-30bc-426a-b5f6-e176fcfd9de0	164be0f9-7599-4d9b-b48b-baaf353cb788
650fc72d-3cb2-423f-b917-df46a93f0e87	f1b4bee8-25ea-49e5-b461-b9bb37405836
5c04171b-a210-4790-bf18-703ab0eeac7e	7dfcd55b-eaea-496e-bdc8-0b7793ac015f
980cc6fa-faca-4b7f-b8e2-25479643bee3	79a85d99-7a36-4438-974d-486968a9578f
a6cc532b-ed4b-4dbf-add7-1445e4c6c4ab	07144edb-086f-4913-b9ea-a5356c026d23
cf1cc071-01d6-4221-b582-b913053cbc0c	8f2ba756-bd73-422d-8c3a-dcc7d7e9c870
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	818b9589-9c95-4b97-aaa7-48abed88f8a1
818c4260-450e-4575-ac44-1b3fe7a69bea	bae83243-6b66-4d51-9893-45db59e45e78
5df815a3-f4df-4dcd-8582-adb63decb510	ed61be15-f5a4-4a0d-b8e0-5e20d8410605
aa84b7a0-b41e-4e2a-ba71-ee2df3a8c1b3	141c20ea-ac60-4977-b1f9-198e383b155e
69ac6628-bca3-4401-8bf2-c84b25808e91	5ab556f1-f690-491d-861a-74bd8ddd2f89
1580efeb-fb5a-4067-be30-e8c9dca75a0e	8b5828ec-1d3b-4dbd-8e29-d5f1af63cd3f
c471ae0f-605e-4c1a-9191-c977816030ed	ede08c90-8a06-410a-96c9-ce796e2f858b
9eac5b08-0def-4d12-b39d-48874866cb3a	6184ef2d-58f1-43bb-9abf-e7468c2442c0
fb964dd2-250b-4a4b-81dc-921b06aac933	6d353d72-2cf0-4321-9c47-88420fe14563
a4075340-4f73-44cc-a4ce-c34e61e2a7d9	92d381b1-a866-479c-9eef-f3d35df06403
0e9d16e7-f485-4539-84ab-a5e36d746797	3d599cb7-a24d-4cbe-b95b-853d32abd038
22b6d6a0-baa8-4b2f-b28c-6b315bf18d2a	9b8cb9d5-b085-432a-8631-ced56fe242a0
da151f9e-a48c-4b1e-a70f-d4913135cb66	5e514f44-3e75-4fd1-8ee6-530a912b5c17
a730edc6-797a-48b3-a0fe-2874130b8d6d	7b8d7d3a-724f-4ada-8239-c892483bf4c4
8bd06caf-3a7c-49d6-bc7e-c8e91bb680ca	f8c9adfd-1aba-49d0-8c3e-94afa2fee243
08c19247-83a5-4baa-83b7-0c77a453d395	6a8c2e8f-95aa-4a7b-aa3d-770bec438678
a1a14583-15f3-4e74-81da-960d944021d7	327f2ca4-a582-4ebf-9178-01e08735e785
37b8dfac-ab07-48a1-9b69-1da776def5a8	fceb4a80-def3-417a-a873-96a92b0a56d5
4bebd3f0-19b1-4528-b24a-d86faf88548f	f0aeeee6-241c-4674-98d5-27fd9201bce3
642ce6c2-787c-4edf-ba04-38377ef9bcd5	7a3ea319-a164-4297-b1b0-dae3ad8b8b3a
09f54bc1-1289-41cb-8196-5fc9f3adf275	6dba5243-e2a5-445f-b1f1-f7fae60d3347
7775e123-be48-4279-aa9c-14cd3cfcb361	20662beb-2b4d-4193-b4c5-387f862d0b97
e13b2365-0b05-406a-9ef0-8622e88a5fc6	31fa8581-4540-4b80-a1ab-0f96846184fb
f4af8818-2b83-4a09-902f-8db0a1231802	6119edec-7373-4a9f-8513-c2f21de60ff4
978de174-7b57-44bf-ab16-ec05f32a5627	ecbcce2d-ff12-41d6-94ae-1a28334b2e9a
24bea641-34aa-4606-bad4-ab86aba5e4bf	ffb490f7-1521-4e62-8db5-d920c68a6256
62063af6-d596-4524-8520-888f471b6eab	f266eeae-89c6-497d-ad77-3e9cdd08b6ec
509fa7e2-d34f-4e84-b2d0-0f3f38b55b34	86b6e660-7b1b-4bbf-96e2-cdfcda8c645f
e0ddc9ec-b55d-421b-9191-37d832ca9011	e307e093-fbba-4833-979f-13d9f7dad28b
b3a505a1-0913-4498-8b69-3ebf3b2f6209	22a25cee-f4e0-46cf-82f7-572604b47457
1b575ebb-ca15-4da3-9370-26336065b206	9885cd4b-9946-4c38-b7fa-5bbd93abb53e
c1fa5306-bba7-4dfe-97f2-b3b7ba255812	10671a3f-60a1-43b9-9d27-aa5797b8c1b9
1f4be7d0-4257-4e7c-a6b0-3a60a95c09d6	8db24da6-1346-47f2-ba3f-8c86d3ff41f7
692dd4c5-9266-4de6-ba6a-62960779c827	dedb2bad-ad5b-4b35-b362-996c0babf929
c2cf9f78-fd3a-4338-8c0a-48d9ee9bb32d	dd57ec67-8ec2-47e3-9496-be725128d468
3ebdd621-426f-4e29-838c-7b04ae57ea3a	cf774c32-9388-4ae6-a274-390334c0dadf
9a7b2f63-42bd-4f92-8356-6cbe30ca54d6	a954d352-86f3-4211-bffe-3205019bd38f
2bf54934-45c3-41b1-9d41-5b1f43b4982a	5875c511-23f1-4b4e-b310-5a3bd786d5d3
c7289612-b6fc-4505-9528-554ce431a42b	41e79aad-b033-431d-a1b9-18d113b40e0a
db54a211-6c47-4e59-8eec-de1b039acd0a	dc7b8723-cd90-4d8d-8117-dd7a2960b283
bca1dad1-69df-4931-a4be-dafaea40fdb4	cadb5f82-4a9d-47ae-a1f5-9cb2700d6bb5
f9eb61f2-8408-44ee-95e5-5a5c93970176	3f88afc9-0335-4c9f-b6af-7532dccde178
5e416857-a666-40b6-bf79-0ed0447d3ede	9be44c45-a560-4221-bd2d-09372ca15317
c1585e9f-0aa5-49d4-8911-dbc688818584	66464c4e-f68f-4107-8a63-3069f5c59a53
3059f20d-546c-4fce-b804-1bc75a01ddaa	48381d54-976c-4135-98b4-d1f71212e136
990ad5cc-da75-4014-b909-b9c110fe071b	0197b61c-939b-4673-9804-84791f47a33b
c2daa87b-73fa-490b-97d7-398a38341689	da889a54-90f2-4f06-a2d7-0b8c5beb903d
bf35e02a-e5e4-4ca4-ab3a-b3e0220370bd	d396d32c-9224-4539-9d8b-64f241a768f6
9f8ba42e-ce88-426f-abcb-98f95bb36c7d	4b72d129-61c3-4d42-b6fa-9e1d0bfcc07c
35ff7e43-6958-4ac2-bf49-7889e57dae32	7715952d-9a18-49a6-8eec-40c768d71848
f2c5f486-e7c1-4f2f-9231-10a1c48dec12	c9986c67-e210-4ea9-86cc-5b08ed30fbf5
7bde5f83-f2d8-47d3-ab44-805555ef5c8d	89add01b-256f-4641-8953-d28ce4f563eb
b9225c72-8fe3-4284-955e-59bcb5931d74	b2325154-464c-44bb-bb0a-21bd61fc241e
a0739990-a09c-4641-b7f2-6638f3f1aadc	9a7ccedb-2990-471b-9fe4-e6a05036e45d
515d9aa3-3681-4744-bb7c-18b3ed10d7c1	817869c0-42d6-4d16-9b5a-1657a714b190
e714fabe-8810-4de1-9e7d-423cc2d4c0a9	d4969561-1ed5-486e-a630-d72007ccfc39
96f535b3-8b2c-4f44-a79e-3e72177f5bea	c2f0bebc-0440-43a6-b00d-575133641266
24bea641-34aa-4606-bad4-ab86aba5e4bf	fd5e5692-f0e3-41fe-99c2-f53877a232dd
8ca1a191-00ee-49b8-9a54-bcfc42c6bcfd	6207c00f-7338-401d-aba5-bfe6e6859e43
e13b2365-0b05-406a-9ef0-8622e88a5fc6	e1e129b3-83f8-4ee1-bafd-ea0d5ab3414b
228c91e9-bc9d-49e5-8017-ec691f62388c	4b2ddca5-7330-40bf-9983-309dbc9f92f9
0e933bbe-afcd-4daa-b6fd-61a7fc4186ab	9f5392a0-6ecc-4b30-8788-2699f5d643ef
b1738c58-fd0a-4657-893e-303c5553382c	2b7d3584-6365-4f57-b273-1294e7a6a6a5
95d323ba-c04e-4eff-a869-fc7f7b45cc0b	cf43712d-639c-4ebe-9ed4-8c45a3edc918
18111712-d6ed-4e2b-a594-f194d46bee0a	dfd0a2d1-4563-459d-afaa-eeacf1e36c13
62efc597-e0eb-4c86-a742-16a1f0bdbd03	d7be4efe-a1f6-4b50-bc5e-5e037281bbfd
70a313ce-d3ba-4dfc-a368-891634d7b4fc	a078711c-0f53-49dd-8619-2ba358757219
ca3e9afa-544d-4708-a73f-913f9e59e617	48ff86cc-fefd-41e9-86ce-2c7782fc3c0f
816255f0-9fca-4624-85b5-17799d41a993	77734a7f-7458-47f0-9872-ee576722a55a
af514059-6887-455e-a2bd-038f146b0fec	da94fb23-0d5c-4049-80a1-fdf3aec9843d
43fff914-5667-4cd5-9841-cf794c26988a	db1da131-57d9-45d7-91a3-b7e61e6104d3
9d91615b-6a35-4af5-a951-95118d1ce5d2	772e6ea5-7c25-4022-b499-ad184b9732f8
9487adf9-4f10-4e56-9f17-40b94dd90496	59248088-b936-4ad2-9e13-db6ec670c297
af514059-6887-455e-a2bd-038f146b0fec	231ba3ac-6f4d-4ae8-a248-0613862bd33d
b42b815d-02d6-4601-adc6-1e3097c0b596	30cba47b-8863-411a-8f5e-44d9c4ab4009
0a7c743a-6e36-4d2a-a60c-42ff342686cc	8ee950fc-c11a-45f3-8d1e-b5fe639ae983
af514059-6887-455e-a2bd-038f146b0fec	e26162cf-8784-49eb-8f47-505159211110
87e571fb-eb02-4f8c-b084-2c837837b5d1	2c8a37bf-5ff2-4886-a944-304ac4d8394b
b81a4de3-dc39-44eb-8dbf-3f9e6be62051	5e204eac-e474-4f0b-b5ea-e511574ef373
f9550eaf-66cb-4724-a76c-f61142b0152f	37cffc15-4e1f-41da-88ba-793c9e723581
88a85141-a06d-4c07-8ade-7666b056a9e1	8c83d5cb-8be2-406d-baa2-b6084e15aa7b
972924d4-08b2-4f20-afa9-b453ceadbb41	2326a93f-d2c8-4d1c-a092-e22eaced26cb
db54a211-6c47-4e59-8eec-de1b039acd0a	447f02f9-f895-489f-ab6e-9b009a218a72
78f5eeac-71cb-4db8-add5-b27dc9a59f8f	a238bf1f-b835-4d4a-87bb-e267afe9f47d
81391576-1ca2-4aed-bb8b-41cad8b0adb2	26871e60-cc76-4ea3-8500-05e532c18fc1
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	bab9e24c-c3bf-4e9f-82d5-f06f451c9ccf
e714fabe-8810-4de1-9e7d-423cc2d4c0a9	5dfd536a-e57c-4f69-9bf4-33351a89e001
0cbec6de-ec04-45a0-a422-7df35bd1b6ed	56e160ca-41a5-4673-8eab-7529886f6eb0
79fdbd62-a1ff-42a3-bbec-870d4a1e825e	40f2480e-a855-4fb8-a4f1-625be546a348
e13b2365-0b05-406a-9ef0-8622e88a5fc6	4e902b07-e116-41b8-af60-453feb7a4ba7
b9f42dca-d4cf-4762-9127-76e119df3f87	15f120f0-b123-4074-ac55-f5661ad7e7e3
fd58a0ae-48a7-4f21-be03-826c97ca55e0	ba900db9-1e97-4e1e-ad90-041d8365b733
c72dff9f-4bc7-4a3b-9672-7b6ab9c5bb46	65c62d85-6f7a-440c-a5b5-cf8a0a3883ef
5436d507-f986-4999-a8ab-a84729dda480	21ce7538-d641-4e8b-b47a-0ea409b57da0
ec808293-f492-41d8-8e27-fc59e24425fc	8fc47994-bce3-4e03-969c-61eec84749fa
8bd06caf-3a7c-49d6-bc7e-c8e91bb680ca	275d0aec-9c16-4c09-8f05-5e12cd71e9db
e039ef93-52f4-4971-b848-ea050bfee883	7b4cc449-7d42-4af7-8dc9-d61b40e5e507
f721fae0-cbea-4c5f-8b51-54625e41bfd2	7ae07f50-7de0-4241-abec-5cc383884bc4
9e2bdc0b-bb27-419e-a593-1319362d7d34	b44f105e-85e2-4a0c-be96-dbea5d8c9e4d
a0183cf3-1296-43b8-b86b-d52f629476f5	7585d60e-1018-4387-8051-93753b032bad
9cc5b758-2939-4cc4-8483-2ee6bf1d5a40	dd7b40d8-4582-4ae2-85e3-5d659040ec34
ddb96561-d357-4b37-8bf2-44aacc0829b7	042b962c-0120-4eab-8193-936b089387eb
06ecbb8b-1eab-4b68-8951-e08832207eee	eb271634-8e7d-4b61-9d3e-45302ee79d97
ddb96561-d357-4b37-8bf2-44aacc0829b7	0aa2b5a1-c9f7-4799-832d-250a584df749
68171579-f281-4f1e-94d3-53e9c86974b4	205afabd-e6ed-4641-9036-e81d5907bf49
1feb5233-f88c-4a95-a90c-5598ae6fa699	0761fa0e-e6c4-4e9e-a2d3-c8a7a9deebe5
a003d630-f839-4866-8903-a6d8919fc3d6	b83a3267-cbf4-4e84-8d50-723513e5413b
0fe54c68-5af4-463e-b41e-1943432ebd85	1f2cc05a-266c-4066-8207-88249c480640
4135d7ce-69bf-484d-b592-26c1c5840968	9f2cc9e8-f0af-4011-8d4d-87bf56d2a2f4
ffcb6615-a749-4339-8074-e2ab2bceab59	3d36dd55-5cd8-45c2-b9f5-21fbe19c748b
094ba2b3-fdde-4139-94fc-8748adf08ee2	3cadd4af-785d-40aa-9c9d-f76086d5734b
5436d507-f986-4999-a8ab-a84729dda480	301cf9f0-1d08-42fd-8626-091f4d727d42
db674a26-7dd2-44c1-a117-5e365fe905ec	1852efd3-69df-4f68-9a67-8e4b8d3553e9
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	6fbac38e-bd61-4e5c-91e7-74efd7abb11c
38ca09a8-c17e-4e69-a3b2-aa13deb91628	aba9ddb3-585e-47ec-9f8c-accc1955d907
56d0be8a-816a-4f65-a5cb-4c386c9f163b	a7a65070-f26e-4b1a-a04e-f4710d1009e3
dc4a548d-aa8e-4513-b0c1-06bf523c30ac	09c075a9-47a0-4442-ae75-b54ab8d38d48
ca3e9afa-544d-4708-a73f-913f9e59e617	201b2092-0782-47c0-9b48-e9f7c2fc64cb
78b69dea-dcc6-470f-b9f4-9957e7b4245e	6f9684ef-2007-4e64-a49d-0680f124f0fb
2e84f828-af80-4651-bcaf-265dabaa6bfe	f8f77fbb-be06-4ac5-832b-78800f9496b4
325c682b-61ea-4349-bde7-36e4db21d20b	7b43fbc5-5c29-46ab-b072-72fe120a4007
3c3292f9-c05f-40aa-860d-299f57b3f7be	5eeddefe-5b4f-426a-95d0-da5bf352dfd6
0b8202b2-07e9-4dc6-8dd0-f47199a7508f	327d049a-378b-450a-9115-e89f6eb48e9f
d32310d0-ed4a-4784-afb2-918c2141946a	5dae2e6e-e0c2-48ef-9a3f-95f655e1b047
9e35a9ee-9ef7-45c4-8abb-fe9a166ce69b	05a2c563-90d1-420b-9920-1fa35a74e20f
835f7b53-f572-4023-8a85-3abd5ce99437	919a978c-eb8d-4069-8c2c-cfa83c3807ba
e433f265-f3a7-4878-9d9a-7a8c980e9b02	2bed343a-671a-40a0-b081-d2e84f5fee56
43b7a894-d5bc-4b49-b374-f5f08a22ba4b	d2e3656d-9fb8-4e3b-a8bd-70ac2006c691
faa48ada-8b02-437c-b53a-ee68bb81c00a	d95cd7ff-651a-46fb-830a-f794b03fa9df
27acea6a-d064-4e81-b34f-4c3cd6d2c86a	25f77346-254c-40c8-b093-cc835088c656
010917f3-8b37-4df7-a7f6-6bf1bc6ee6b2	76913dc8-0a35-4559-81bb-f219f317f3df
ddb96561-d357-4b37-8bf2-44aacc0829b7	1b92608b-30b8-4b9c-90f4-6ec9d1e3722f
60b1698e-d2ef-489b-bff9-b8fe7ddb4580	a066ffa4-bf74-489e-b4c0-58c65ddbb721
3ee89329-37cd-44fe-bb9a-a53bdf51d458	be53c052-2d7e-45f3-8b6a-607ade848bf5
68fc3212-b3e4-4f70-a282-e9bea80af272	6d47a8cb-bdd3-49a0-af97-0718863e19f2
1f69b844-945f-4685-aa5d-c203659fd688	1f0275a7-72e2-4a01-970f-33d53ea837e7
cbc1b2a9-90d2-4b08-84a6-232dc19c0912	6c78c5f2-79a9-46e7-9a95-573bd4a2af04
f2639910-60d6-4f38-b66c-05b55af4767a	9115b79a-ba8b-4cc4-8001-a53c17819a95
6c68edcf-06fe-4034-ae1d-747305509a51	a70a8735-523f-4808-9941-6897260ec06d
92502279-79bc-4ac1-ace6-1e5a9d2f770f	3cdc7ce5-9c20-40e6-b3cd-56084f689add
ef55ab97-8b56-4e7b-ac59-cbd1c4cc6572	9ac1ef6c-a627-43da-93dd-e2b2fb665442
fcd9cafd-24a7-4ec2-880b-bbc9ee668d46	dc656efe-15be-4e8f-8b36-12055d1f5389
64320c4d-057d-462d-89de-70e73f55fa5b	d5dbc8d4-edee-4cc8-8125-1d27300f94ac
fd9087f9-e436-4189-a91d-cd8f6ce5eb8c	50213b63-824c-4e5a-a2b6-34059ac92ec7
4236eff3-50cb-451a-9ece-f93af9f517eb	7be006d4-9d37-4c60-abed-d19ff74f9a33
639b62ab-f1e2-4782-8d95-1fe952fb8355	1ad7f14d-880a-41b0-9cb2-37aed587ed7a
ce20b257-5e89-40b4-900e-483d5ae74936	b222db95-23ab-403b-9c17-7ffcef79bfa6
45ea8d37-76b7-413c-b456-f5fa2b0c4f7c	15e46904-4848-4b68-8ba4-ecc6d67680aa
8b6df64c-b754-452d-ad81-2347c3bfc18e	26e16db8-13f1-4077-8d26-ef88eadb7ef2
723a5ceb-5c42-49db-b041-d6512e1d879c	1368f426-915a-4565-9a4b-7754d82da7fe
71d35a3b-3ed1-4151-9e78-2746a5b9c88d	35424c72-fe5b-47f0-85b4-3f2fdf91e689
47c577aa-2519-45dd-8016-d99202eabe4b	35424c72-fe5b-47f0-85b4-3f2fdf91e689
62f5c73a-095d-445f-86b1-abd8c0e65a12	e28f80f4-f121-4431-813c-5927dbd9b5bd
1580efeb-fb5a-4067-be30-e8c9dca75a0e	e620530f-6971-4b3c-b69a-de65516a26ac
71d35a3b-3ed1-4151-9e78-2746a5b9c88d	91f8ce91-522f-43a8-99b2-c421f0af6a50
1580efeb-fb5a-4067-be30-e8c9dca75a0e	18e089b8-185a-40f3-be1b-c2201bddb0b7
4cb2d9f8-41b2-49ac-92c6-2ce81b15b400	1ba51b4e-002f-4a42-9fd1-002017d45292
ba2143da-53e1-4561-bc9c-f0d2c839c367	be57208f-b1d7-4d3e-b0dd-c174421d748b
924476e5-d4be-46f5-874b-02dfe04ccbde	9d1a3cb2-f533-4a60-b4b1-2096d8379816
8b6df64c-b754-452d-ad81-2347c3bfc18e	6bc27f54-e174-48b6-b9b5-f20e89bfb52b
f82b2bb1-53ca-4299-b19c-18153d7a75d1	0f795279-6cff-4a9a-9841-2c44f45ec890
f03421bf-3404-4e2e-966b-5122ea0b8806	2f525110-bfab-4799-8a64-1671db5b30d7
2ec8a412-476f-443f-9d90-8f64818d4c17	e43fe49e-1585-4f90-8cd5-e39a5eaa634c
8b6df64c-b754-452d-ad81-2347c3bfc18e	448505e1-ec30-4b4e-932b-a321d546c517
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	79faad62-2d12-4471-a744-2801a31c35c7
328ca6cf-b712-4e82-9f2a-7dd0c26f12a5	fd34ad6b-6fba-483f-8798-2c434ca0d2a4
272c2afc-3281-4929-a348-46c85e835980	28c1ab16-b008-4b8e-b27b-9eba64c390a9
b79fe295-81ee-4821-9ad2-4e0f145e2b20	e71a02c9-13ae-4bad-b839-2b8d914ee147
a65061b6-da10-4d34-91d4-32b5a0df7540	70f7f48a-18e5-4cb0-aa0b-064bf5196b7e
ccced7c2-07fd-4db6-95ed-f32e9ac8730b	2ed78bf2-683f-4958-a601-0c2cfeb9cd8e
a0739990-a09c-4641-b7f2-6638f3f1aadc	17a2108f-80b4-4d4a-bba5-7c568f09cd13
3477e7ce-4825-42ad-b9e2-500d70f29447	d15a43e8-edc5-4e6f-a8e6-af8f04b2d9ff
40c840b6-92c2-4379-acb6-a8bbc68b869e	8fea223c-20ab-4a30-829d-c3a49f8d941d
cc64adbb-e2b8-4ed2-83c1-364a908e5506	1a9af808-13f4-4287-a3d8-9250df328b34
cc64adbb-e2b8-4ed2-83c1-364a908e5506	407aa58c-e904-42dd-abe0-d4b15df7c98a
b2ef253d-298b-4c06-9799-907c6d926fda	64554a09-cdd1-4ad0-a289-7ee7e23a9e5a
ce20b257-5e89-40b4-900e-483d5ae74936	32faf080-f4f9-4a73-9bf8-149cb4adadef
a53abb4e-a4b0-4f37-9c6a-1fa294166ed2	23a0d1e3-e3e1-40cf-be3d-712239b9abdd
cdd672ec-f06a-4c19-84e0-4c7500ad5949	7c02d6c1-1e97-4563-a75a-335a5c654cb3
e13b2365-0b05-406a-9ef0-8622e88a5fc6	f060d8ff-9dd3-46c8-b170-71fc99cfbda1
cc64adbb-e2b8-4ed2-83c1-364a908e5506	93319ec2-8ebc-443a-902f-ea43d7fd09dd
c9b36e06-ce2f-482d-900d-fef7e7d505ab	8ad760ee-47f8-4c6f-ae82-5986315029fc
e13b2365-0b05-406a-9ef0-8622e88a5fc6	6a224fe8-e8c5-48c1-bebd-7eff5d731809
5c4f4a49-21b6-4c60-b19c-5e1835146973	1c38e5c0-349c-4820-951c-79326b0840c8
ce20b257-5e89-40b4-900e-483d5ae74936	32b5bd00-b2be-48bf-b013-35903286a5b9
823f38c5-bd50-4cc4-bc63-1098781df265	ba8b0a91-d14a-4ab8-ac0b-20bd3749b7fb
5f2773f7-a0f9-46d6-92ce-fa60c7313b48	c5bba6b3-16f7-47a5-9b74-9e9d7e792543
4b593ffd-14af-4f79-a9c9-89dd02402147	b35b9db4-1dca-48f5-bc3e-c8ec5a1be6ac
5e416857-a666-40b6-bf79-0ed0447d3ede	50112d99-9d5c-46e8-9014-fae1d651ce31
9cafa381-c7b7-42b7-bf98-53b6ca869146	1e80bd98-69ba-4351-934f-7cd8792c1c3c
61cd03b6-29d2-46e6-b591-c864ae07f3c5	b93f79f1-5b98-458e-ad6b-22da27776e52
9dbbba0a-8235-4099-8dbd-a632d36f37c5	6972439f-434b-46c5-a4a6-03d7295e5037
62fa4796-fe4c-4d01-bc38-ce4076b1f477	2a50a910-a19b-4a71-9131-fd9001366eea
4c45999e-6209-4eab-8d75-8bc639e9056d	d6dbeaa1-fa7c-4308-9b8b-46ee4cc31289
61cd03b6-29d2-46e6-b591-c864ae07f3c5	a470ab66-d287-4276-9eda-729834b2c749
9a5c4516-6faa-40f1-ab90-2f4e6c76d89e	f3d7a504-cb8c-45fd-8049-1393cce35d88
4d76c43e-ee6a-4126-9717-1a2320770ff6	c4d1cf95-791f-4cc1-b51f-75a1ab194e14
03ab9eaa-7112-49b8-87c4-6fc28b0751b1	a1ae4912-91b7-4c25-9ba3-66440a84e857
18926aa2-9475-4ec7-b533-27f31013a04e	3985f3c2-1776-4bc7-b4d0-19b87d91047a
455bb536-01da-4f50-9714-ed945ebc96bc	2d3af2cb-b627-4d84-8c15-f840baf15b3c
823f38c5-bd50-4cc4-bc63-1098781df265	e330af0f-1d6c-44f3-844a-fc9eb4cd9efd
c0adc384-0163-4e99-8671-94557c3bcac5	c71b3cf7-6110-4726-b849-9220d94d3e31
61cd03b6-29d2-46e6-b591-c864ae07f3c5	cc65b87e-2064-42a9-bbf6-18130029ae54
c5b1de3e-0cea-4f99-bbe1-64fe5261fed7	b1ac62b9-e88d-437d-a7ea-3c6072526c30
8bd67e9c-54b0-40dc-bfe7-87a3006b7b98	03f74872-f178-4e33-970d-5cc161de8724
4eb07d78-7a22-4a05-a8c9-2dec65bb51ff	8c5db432-9b90-4eed-984a-432ed3167750
21abe394-9aa3-4536-a109-316c76dc6659	5f368a43-4233-4a05-855a-08afd76a5fb9
72e38da0-930a-496b-99ed-ee1f57fca666	d85da9ac-0440-4c13-8ffe-cffbdd1606b3
94354119-ae0e-4512-b022-d019c2b834c8	785005fc-606e-4c16-b31e-b20e461dd4ae
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	963ec1af-ec05-4903-9559-b606067725e7
94354119-ae0e-4512-b022-d019c2b834c8	56183e0d-af6b-46b5-ba17-9b470415a8cd
1301093b-3c58-4f5a-8762-74ca91f1fc74	338538ce-442f-4ab7-bb21-4939a1043326
ba4586a7-0d9d-4d56-ab0d-15fb294d1fd9	0895d091-f08c-4b66-a1e4-8dfaee92e90a
86c9d693-1af5-4d91-9cdc-ecf31e53822a	475ea291-a1ef-4950-a43f-7418a72a48bf
e1a1fc31-2d58-455e-a9e1-86e21b0cd02b	527342db-2ec0-4c1d-b087-cee16406d0f5
e7ac20bb-f677-4f7d-8d28-82fadbe81a86	a64f42a8-14ac-43c4-b1f4-2e17e4b2eae6
6da496c7-5c5f-4571-98a9-73f29a42a20e	ab047371-b424-433b-bd25-6a875d3b2c62
97c01c24-a097-402b-bf95-858da1d70643	46b32fe7-b76f-4bdd-9cfe-ca2b10aba06e
76c1230c-9fc5-40ac-8c31-cce24c8e767e	2abdb4e8-5128-4bfe-b99d-5e5a7b06e9c7
af1157e1-20e6-4299-9bc2-01bc08cdcfb3	1750a7e3-1716-4b51-85ca-5542cc0af7aa
2174c047-ac99-4e3e-b388-098c1106f2ed	b2814d5c-5536-47a2-a000-2ed40898a939
6ef60997-9682-4171-a262-a505785bd187	7544ad77-c050-4b67-baa2-1dfefb0ec8b4
07efb05a-c06b-426a-8ee8-7265aa91e84e	ff275986-d27e-4217-aaf8-cb22f1316980
56d0be8a-816a-4f65-a5cb-4c386c9f163b	d45c867f-2c57-4eef-b6b7-ae06a900b99b
6056bc8b-c751-4b47-b651-460c6b9f947b	5c600499-1b81-4f2b-937d-1669f7a84676
86c9d693-1af5-4d91-9cdc-ecf31e53822a	75c648c2-fee9-4dfe-8a77-e3e2c4029f0b
98d57e4c-61bb-4cb5-8025-ee1d7eb384e5	02b28999-0f70-4edc-b151-ca5dea2c8fd3
bcd74800-8fc1-4e60-8ad5-742335ac5a3f	02b28999-0f70-4edc-b151-ca5dea2c8fd3
47ba8d0c-5a6f-4c54-ba9e-cb5edf937e17	889df142-9489-40c3-a1a4-9edb3ba1a4cc
7c811218-be16-46f2-b704-9d05bc0773b9	889df142-9489-40c3-a1a4-9edb3ba1a4cc
9a5c4516-6faa-40f1-ab90-2f4e6c76d89e	d57e75ad-f845-4959-9b5e-263947b99bf1
89e7ec33-a267-4c92-bce4-e5575532f597	d5453710-9873-4472-9162-19a0c965f488
2a23a79b-1c53-4dd7-96b0-47ad87173f41	97cf04b7-201f-49d1-8656-540e590f7880
f0d60bb4-834b-48b5-b35c-b05529820ec9	a7179541-a190-4517-815a-995305770714
1dfb34c7-5796-4848-a4f7-21e20a958916	8e3a69fc-444f-4036-b886-a845459c8c66
b81a4de3-dc39-44eb-8dbf-3f9e6be62051	1afff601-b84e-4f61-b735-242198165a39
72e30a93-c86d-484d-9bee-667f27a3f599	4e67a85b-5adb-40b1-abbb-509d5506b681
78f5eeac-71cb-4db8-add5-b27dc9a59f8f	302e464f-1427-4344-acc3-caeb91068ad7
7c39f360-e226-48ec-a7bf-7abebcef7af6	0a007c6d-735e-480b-bd62-673a2b33c580
4154e67a-524a-473e-b428-eb26270ec949	83f98616-2bd4-4ec4-baf4-b5c1c5163408
02db2f11-b4f7-457e-a150-6e769f05456d	32041092-9861-42bb-8faf-0101bb582b8a
20f9683f-4fcd-4af4-aac3-97c3067c08c6	febfb962-d308-4c0f-adc3-31efcad3889c
946958ab-84ca-4c71-a58c-09cd09d30129	7be7b69a-d558-4196-b114-c59fdf19b0b8
56d0be8a-816a-4f65-a5cb-4c386c9f163b	8383edbf-a3d4-441f-990e-452d4741b02e
6999a3ab-5f36-4eb2-b4a3-2fd161f4195c	dfdc0997-d7cc-42e8-8f82-c9272c21ff68
cc97689a-3c23-4128-bb55-51d56cc14f84	f4a53073-01a4-4403-a9f5-2644e1bc9590
e41ee89f-c73b-475c-bd57-8eecb673a84c	eaa9e672-4c70-4dcc-9994-66fc7a1d4573
f164432f-144d-41a8-8884-8e9ce924a80e	996e1b5f-40c4-474a-9e1e-9909a0bcf328
a0b0c1e8-be2c-4718-b773-f4cc737856fd	bf8d31d6-ebc9-4467-acf3-73af1190bca5
4dbe910c-7022-4f3b-8632-c3cfbd6028d5	1980c151-e56f-4956-89e7-2fb3fffd8ca0
9ff6d650-d5cf-40d3-894a-296238ec351c	bd606dcd-1d0f-4e88-85a7-4b843cc71538
b9d16c07-ecf8-47e6-acb7-b1897a3c555b	adaec6b2-a946-4c58-aa11-29694d61fdfa
2e84f828-af80-4651-bcaf-265dabaa6bfe	2ff6ee7a-15c8-4a70-ace8-f39908ed9276
af1157e1-20e6-4299-9bc2-01bc08cdcfb3	865f56b5-c213-4220-adfc-964222a2884b
d0234b44-1fbe-49f5-a28b-7dcca8bd26fc	4d1f8fb6-8f8b-4ed2-9e4d-df324b239512
1d88da40-4e2f-411f-9250-f8ac0d156836	b64dcd51-f25f-4ded-be6c-588737fb9574
ff9968af-d096-457a-8d2d-b06e1f8227f0	35b0a666-8a06-4910-a39d-a9c1ba7e0e85
db674a26-7dd2-44c1-a117-5e365fe905ec	a1d8af43-e280-4ae3-9c8c-85b8702e5187
3ee89329-37cd-44fe-bb9a-a53bdf51d458	1452e866-d72a-4e69-93e6-22cfacd9b2ff
e8329a05-5f24-4321-86c9-98e2938a8147	53df3cc0-d2be-481f-a5dc-651bdd881f94
9d00b60c-821f-4cea-96c3-c1d0eda2ba06	19dbe9f6-68e5-472c-a6a6-ae65ae6aa740
3ee89329-37cd-44fe-bb9a-a53bdf51d458	0a838297-4be7-4fdb-b39b-ae52c61468b0
af1157e1-20e6-4299-9bc2-01bc08cdcfb3	4625ca50-e7e4-4ef1-8108-1a38f98773ad
cca5f819-6aca-45d0-8bce-5c338c1a733f	39d57ac6-8c4b-4f1a-bdf5-68ee0fece19a
a9654c5f-5c53-4754-980d-56cfefc37843	507a1d95-fc84-4490-a087-c5140372cf51
6944f912-aa95-4679-ab2d-200aae25eecd	142a63a5-051b-4175-ba6d-673053f1aa4d
e8329a05-5f24-4321-86c9-98e2938a8147	23e03aaa-9e5a-4621-a9fd-c67d9e42b6e3
21abe394-9aa3-4536-a109-316c76dc6659	b1a732a6-f5cc-45ee-80e6-009cd990ed01
439674b1-070f-48b4-8b8c-b9b7bd009bcb	3023bab7-5468-4e0e-b900-4d00b482bb52
73d7aa30-dc26-451c-a002-fb79fcebd699	36c90b9b-e4f6-4541-bc09-2227f410f182
df49cd54-3f58-49e0-b851-9aabbc8ec244	55a670f7-450c-4f05-9a14-be51a1d6ade4
7f037e0e-b97a-4f2b-9d26-7b77ab75f28d	19e91253-54c3-42e7-87c5-dd00d473e767
e6d30249-5185-4d36-ae74-960c30f115ff	9ee494b2-a589-412a-a167-beeba8f07bb1
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	0a0a6e88-8c1d-44a5-be23-b0e9cd4cedf2
b1afb8e0-5041-4ec6-93aa-18bae4b0f0cd	36f8a6e2-f8be-4c78-b6bb-9639149825f2
f0110b1b-f50b-44bb-9619-15ac6af4c9f8	991b31bc-150a-43b7-8665-6e19467e2e87
b2edd41f-09c0-4e43-957d-4442a05a553f	59440b9a-4280-4651-ab06-f66a69f9102f
5d95d6f3-70d3-4e82-8b7b-cc1cc3f92614	ff2f3143-78d8-4d9b-bf99-03387313963f
a8cab435-6770-4814-a95f-ed5df2a2036f	e2ec478f-1b3b-4fdb-a6d7-34ad6ab9ee2c
010917f3-8b37-4df7-a7f6-6bf1bc6ee6b2	205b6df0-8f67-4337-9ca3-363cf876b2bf
6a5ff146-7b93-4a71-9a3e-e0a8c377e991	331a5fff-d643-4470-9109-e845980cb103
06670aa6-ceb0-4478-b7f3-1fc8d65e1711	77e88f00-45fe-465c-adad-8d15eb74daac
dc1646e1-9e93-4e97-b880-122530bcce60	13bd0d48-8774-493d-8411-3366f5f2efd4
ce20b257-5e89-40b4-900e-483d5ae74936	9a2967e5-2419-4e76-83ab-f9a45f297a70
7621b949-4549-40a3-aea2-f4162343e7b3	f3c42bd9-efe9-420a-b408-92b338fc80fc
010917f3-8b37-4df7-a7f6-6bf1bc6ee6b2	8598ba28-8270-48d2-9171-5263bf73463e
fe7f9b23-219f-4ed9-b197-52bcc873dd53	e60c381e-e878-46a1-9a06-8d1183fce76c
dbc10d8f-dd33-49de-b0cf-7da7e0392f9f	4171c433-5c7b-49e6-a516-bccee754799a
13635d11-982c-4d78-b518-bc9edab19667	f5df211a-7e6a-4763-a86d-fb3915d8101d
d9f7e5a2-42c1-4434-aab4-33c06b0f2976	d8efa237-1ebe-431b-9500-40d389fb4118
13635d11-982c-4d78-b518-bc9edab19667	f157b2c4-70c4-4c15-8d47-0d27c5bd9372
bca1dad1-69df-4931-a4be-dafaea40fdb4	7a26cd05-cd74-4e58-aaeb-8fda5b295bec
612316f1-887f-47bb-ba35-f409ae837c81	e9c5045b-5144-461d-bb4c-f6262071cc4b
03ab9eaa-7112-49b8-87c4-6fc28b0751b1	07fc9069-f53b-447b-b3b1-77f1464a1ba3
c61fc807-9341-48ad-990f-7232abd76f0a	c8f68559-86dd-4939-9319-d0904c70b407
35d5e442-c995-4b2b-9805-f9642d388c98	f2b06015-68d2-46df-ae62-deca569ad4ac
61f24ad5-4bf9-475a-82ff-fe712fe8689f	f029842c-c577-4c7d-ba7f-52d5744c70e1
e5909b29-c32f-4036-8d16-1e175a269ea1	d26095f8-a3cf-4011-ace1-ae82fb51fdd6
8b6df64c-b754-452d-ad81-2347c3bfc18e	d75476e2-3cf9-49be-8804-5eac4b9dc3d3
4c397776-8cab-420e-aad8-73d8906950fe	188058df-02b5-46eb-86fb-953c7cc6c0e6
dbd4a0dc-28e8-4dc4-b20f-c58ea161380d	e83ae58a-bb35-4441-bb7e-9a5c0893e05c
db674a26-7dd2-44c1-a117-5e365fe905ec	16b70fbd-3fe1-4b57-9926-9560cdd0968a
639b62ab-f1e2-4782-8d95-1fe952fb8355	5ef25501-c2c9-43c9-89ba-2ffb56992881
9eeefe68-8f88-4f0a-8d0a-3382ad12096a	d005dba3-066c-4cc8-95c7-8b44f6c21ae4
109530b3-2236-4f02-8061-e584d3a959d7	11f41a84-5571-49d6-86de-9c00d6d7313a
f46946ac-5e8b-4284-aba9-c18eb65ec0eb	53008321-db71-4a12-8ff3-714ade0f24d5
bf2c4055-9a05-4f62-9384-bfc264c9d19c	6a34fbda-066f-4d53-990d-a2218a69ece3
9f099a8d-14bc-4b6f-b6a9-6e60967af34b	67bc91dc-3307-4a7d-bd0a-a7f2fc0165ac
24e75474-566e-4518-91cd-0a55416cf81b	ce557cf5-465c-4998-802a-c162712a3306
32bca2e6-6295-4655-a585-3dd92d689b15	f55ee1ac-819c-4de7-98b1-a076ce92d2ee
32bca2e6-6295-4655-a585-3dd92d689b15	8b1e185a-e076-4368-a5f9-080be5774d61
61cd03b6-29d2-46e6-b591-c864ae07f3c5	81f2be0b-4b10-47b3-9b76-d924e175b7c3
af1157e1-20e6-4299-9bc2-01bc08cdcfb3	9d22f279-6b60-4b24-a1cb-1cc655c8f801
79f24de4-28fe-40f0-8a97-fc2be618d6ae	c8a627e7-30fb-4fb0-8122-252fa02b963e
61cd03b6-29d2-46e6-b591-c864ae07f3c5	6c50570e-ea5f-4f8b-942e-1047b4057e2f
8b252b06-0ebd-4e70-80a9-a0ad76f341b9	d77c3cee-e43b-415e-92e6-1d86917218ee
e4422d46-4528-4401-82bf-7b82bb36761c	b153c8fc-2172-4995-b663-410bf2842373
747c6c60-6b7d-4c90-a58d-99775afc5e0c	06361686-ea16-4421-b558-c8812762f816
24e75474-566e-4518-91cd-0a55416cf81b	0e8ee306-3727-4128-b9a9-8df2dbe55491
7dc82372-baa3-4a86-88c7-9c6367257f3f	76fed520-9528-44ff-8e02-5726d9b1e2d9
bd7999d9-1b3f-4c1a-a16a-f38c4f376337	5c334744-f9ef-493c-92ff-bc2d7730531b
e594a2d2-b25e-4f6e-9deb-d6b6497cf36d	79212d50-99a6-4de5-ace7-565c7cd97764
723a5ceb-5c42-49db-b041-d6512e1d879c	ce3227eb-deee-4cdd-8997-bf447f7cabb0
61cd03b6-29d2-46e6-b591-c864ae07f3c5	f8e46ae3-b2f7-4552-97d0-5b60e8faf8b8
1c408b8e-8c6d-4de8-bbf7-3ca04dbb1aac	9ca2c7b2-97a2-4c89-9da1-556834242bc0
61cd03b6-29d2-46e6-b591-c864ae07f3c5	594fdce9-e9bc-4e96-b623-a7d742549150
1580efeb-fb5a-4067-be30-e8c9dca75a0e	4d0e31e8-88f6-4930-8891-dca88fd79d7d
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	4370f717-830c-42ec-a036-f72bae7fd0d5
ce9ed216-afcc-4cf9-92f0-573c920f4ac8	aa88b6b9-22c4-4c0a-9424-7935b29161d6
7afeed22-3703-4c3a-ba9d-5a9b5edb49f4	11a864bc-ba13-42dc-8881-3ee9c67e93f5
a05affdf-9bfa-446a-8da1-51e7dabe5432	3c5ca9f9-eb5e-49f8-a4d7-84779331886b
b77d5ec5-9ad0-44a6-be6d-36d5834f859b	0fa0dbf8-9bda-454a-9fba-9d15b60765f3
74550897-01bc-4aab-933d-d511af15c17e	c7dd3322-fe63-480b-9cda-cd57542c0c1d
be70c31a-f1a4-4590-82e5-526d534cd356	607f9946-06e9-4169-8377-854c3001a568
509fa7e2-d34f-4e84-b2d0-0f3f38b55b34	245dfb0a-a699-4282-910f-9534a57e5e10
4b75ba0d-1cdb-4dc6-8d78-91308c454743	fdb61675-1382-44e7-aecf-8b2a7af76ee7
5fb25155-f5be-44b6-9c8c-88d750cf7534	4ca7cccc-bac0-4e58-9025-246195598f6f
8f99e029-70bc-49e9-abc7-741dfc0aa6e1	6803736f-3cee-4556-8acc-1be1af681016
44a26548-0f44-4763-9673-8d59673b9526	38977259-544d-467c-b3cf-ff57be7428b1
df585108-c76d-401e-a898-059dfb040748	448881e1-ff81-4f69-b77e-97d4b0b886d9
49076953-9dc1-43b6-a33c-080e130c5d3c	21a19ac1-b193-4e00-85a2-ba4fea0762a1
47ff46c4-7e55-4fc6-9a70-4ff92c8082c3	fc3bd55d-dfe6-4402-af49-b9f3f20761f1
723a5ceb-5c42-49db-b041-d6512e1d879c	1ee46e4a-55f6-484d-b074-cc5146e12eed
62cf8c8b-3d95-400b-b01d-824ebc97bb51	0fae78a3-4958-4260-b6ae-fc9e2babb0b9
64fed749-9da7-49b3-9377-de0560cd76c6	77ca6b71-aabe-44ab-8455-6ef7f6ff0610
556cdc24-e40a-47cc-8fb1-3510b86a14bb	344ab04a-57f5-4075-8612-a9a087a0b584
8d4be0ed-22fa-43db-bb2d-45d4c35c0b51	169ff5ac-7575-423e-b2f5-628e8fae8270
6a2ed9da-afad-44a9-8bd3-7b629d2540cb	5f760988-33b8-47f8-a33a-80ffea3d8f54
13635d11-982c-4d78-b518-bc9edab19667	6ec23e92-9dc8-49c9-94ca-a2611b7e9c03
7cd7e9ba-ea9d-4d60-9c94-1bce2eda67bc	fdd4f092-cb59-444e-9bf6-fe70a45a9829
9c83953e-5774-4a90-bbb9-ad00f22d3d18	5cd74975-268c-4ad3-ae77-3bacf1469f3e
4dd742b3-214f-468e-880d-31f80b085098	9fb77418-a40e-4e63-977e-54c83f13289e
1abb1a61-0988-4de3-aa9a-af72266f3dab	14998e30-abee-4425-8b31-52f62aff2d74
ead8842b-1154-43e8-bdd5-8a3028808274	f51963e1-c3cd-4b05-8f03-fde7bbc1896c
6da496c7-5c5f-4571-98a9-73f29a42a20e	4b481323-baba-423a-b109-33f0b4912d35
b81a4de3-dc39-44eb-8dbf-3f9e6be62051	ada85870-7461-4543-82ce-8bcd12464c4e
53a56dd7-555b-4275-83e4-2e0f69fe0c80	6bea7bd7-261b-4499-a750-dc59d937a6c7
d41c2c4b-7428-4542-904a-4574e9d1a156	c0478fde-331c-4da9-9f2a-4d1199614835
760cc00e-59c2-4410-83cb-310879c0cf3a	829029ef-e382-4226-816f-b3da8f5b1edb
1abb1a61-0988-4de3-aa9a-af72266f3dab	52452dbd-fcfd-4dd3-ad76-ff6543edc99d
723a5ceb-5c42-49db-b041-d6512e1d879c	73c33237-d8f1-4e84-a7bb-47225cebb2fb
723a5ceb-5c42-49db-b041-d6512e1d879c	94d7530d-8d91-47a6-84bc-528462fd3cd4
bf9f0895-7409-4107-82da-044629474e51	4049be05-628c-47eb-bc36-7818f97f2467
94354119-ae0e-4512-b022-d019c2b834c8	6b327f58-32ab-4c80-8f69-ccd68c3d93b5
86c9d693-1af5-4d91-9cdc-ecf31e53822a	357fdf10-5adf-47f0-a691-f382691e9ed2
7f037e0e-b97a-4f2b-9d26-7b77ab75f28d	9bd52fec-bc0c-42e3-b765-54ae16532dba
d31fc1f8-ca18-4ef4-83ee-5a1d0e86ae8d	41cdd0a0-6d02-47cb-aa75-4a16baacce2f
df49cd54-3f58-49e0-b851-9aabbc8ec244	1d74e898-aae5-4132-b591-7c69d672a98c
98dad8a4-78e6-4baf-8e6c-0a25cdd10a7a	8aae224d-036e-4686-b1a6-cb5704b90ba2
6b65d556-0780-4883-8e78-f1482ec7d56e	7bacf499-ac59-4cce-b995-87146dc83216
ce20b257-5e89-40b4-900e-483d5ae74936	f0dd4787-0f2b-42c4-9574-87618f83e382
74550897-01bc-4aab-933d-d511af15c17e	57db1fe5-7ceb-432a-b6d4-4591250a98f3
8b6df64c-b754-452d-ad81-2347c3bfc18e	208095ef-ec88-4be7-857f-e11678cd70a6
acb11be4-6ef4-4774-9e90-5d149cddb038	57bd095b-bea3-4b59-ab8e-54fc28be7f8d
21abe394-9aa3-4536-a109-316c76dc6659	bbabd4b9-cd41-4f51-b48a-75a126981bee
5eacd3a1-16ff-4f14-b98d-79040f4c1d11	24ab3c4d-74f8-4ea7-8469-2d0e51328adb
1914f025-907d-4cc5-811f-8078ae5384c0	f299357f-20b1-46ce-a655-3040ade48a85
361c42b4-610f-4223-89eb-0b5078ec9784	2d823678-815f-4898-a4ec-475be246f087
eeac6a69-d366-4ff4-b9aa-5bd9781c350e	84fbccb4-72b8-4874-8441-fceae28953aa
361c42b4-610f-4223-89eb-0b5078ec9784	bb3f9330-86f2-4fc9-80f7-e236f83366c4
d66a1e65-d729-4481-ab5a-26a83964651b	641a0c9c-642b-4f19-9644-0d41b32c26e4
d5f285f5-592a-4f4d-b6d9-637363f728e1	3f2f5b00-18ae-4095-981c-155406b6467b
88f8a419-39cb-4b3f-a189-3558bef9b080	80c95025-9cf5-4db7-b8c4-595ec5bdba50
d41c2c4b-7428-4542-904a-4574e9d1a156	7bff7d85-cfb1-4d94-aa4b-ce61451e9add
8d4be0ed-22fa-43db-bb2d-45d4c35c0b51	c547ce26-9648-4fc5-8fef-f6dbfce24761
ce9ed216-afcc-4cf9-92f0-573c920f4ac8	54388ee9-5789-41f8-b661-967d18148065
ddb96561-d357-4b37-8bf2-44aacc0829b7	924ae1e1-a6e9-48c6-a48d-292d74465430
49bf539d-b155-4948-b0c4-a64eb85c9c05	8a8a9936-6bb3-48a3-b9b9-99ca994e4620
1feb5233-f88c-4a95-a90c-5598ae6fa699	e088a486-f506-4c54-9aa9-4b9b359923e0
\.


--
-- Data for Name: author_poem; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.author_poem (author_id, poem_id) FROM stdin;
00859cbf-4df7-4d44-9d15-641e61879d96	ca982c94-d85a-4cb6-b361-3ac06257dc09
10f871b7-274f-4372-b7cd-f17d61ba2a2b	fa300944-828b-483a-b415-d5ad030ac801
10f871b7-274f-4372-b7cd-f17d61ba2a2b	a2b22ffc-038f-4cca-8948-20162e360ef0
10f871b7-274f-4372-b7cd-f17d61ba2a2b	6e8d6a96-7a41-420d-82eb-88fac45260e0
118c1b2d-c625-42c9-a316-5b240fbe44d0	1cf01c49-b7f6-48a1-b524-25db354436fc
10f871b7-274f-4372-b7cd-f17d61ba2a2b	39ad3235-4072-4f9b-9081-53456751c3c0
41014684-16ab-4193-85a5-ee920e32dea2	ba6e66e8-9ce6-4c7a-aa6a-907820f2b43f
a169ec9a-2861-40ab-b3f6-f283cc65d7de	a98c2874-2019-4419-817a-5d8329d54b1d
60ccd5ed-cbce-4ed3-ba28-954d1f550c6b	5e45dcc2-2dc5-475b-b942-4450dda83db0
18c43852-9221-4361-b739-fedc5a3e7a70	186dd2dd-6444-4925-a711-aaf2fd7cd80f
10f871b7-274f-4372-b7cd-f17d61ba2a2b	e472e964-d478-4305-bc36-3812d05154ac
2d0561d6-e924-4e56-a99f-0bf0132c5d53	61362bc3-c41b-4dc5-be53-39b7ca848c0e
61152273-bd25-4339-a6d8-969e51e1d90e	2b2466a1-7cda-465c-852d-4b71856681eb
00859cbf-4df7-4d44-9d15-641e61879d96	075c4f70-e473-49de-b0af-c838ca3eb282
10f871b7-274f-4372-b7cd-f17d61ba2a2b	8f61c4df-b96f-4cb5-8db3-7f47f05a2967
10f871b7-274f-4372-b7cd-f17d61ba2a2b	6324d004-368c-4dfd-916c-aa2e2edf1da1
10f871b7-274f-4372-b7cd-f17d61ba2a2b	69630997-321f-44ef-b38f-b7bded0e0c24
10f871b7-274f-4372-b7cd-f17d61ba2a2b	1205e821-8c3b-47fa-af05-25849ca48d05
5ef1fef8-9567-4b24-83e2-22e065a46b00	e763ddcd-597c-4f31-b143-eeaa0b0eacb7
00859cbf-4df7-4d44-9d15-641e61879d96	1faf03f6-97ee-49b9-83af-0d3ffec70d90
6cd95891-2704-4ab8-9f1a-17f93df32079	00b36178-607a-4ec8-a293-9b4b37717602
00859cbf-4df7-4d44-9d15-641e61879d96	375c9f83-dd10-49a7-85c9-e77276c7e1cc
0e9d16e7-f485-4539-84ab-a5e36d746797	25fa8b90-d286-4a55-902f-17ab741ef961
10f871b7-274f-4372-b7cd-f17d61ba2a2b	baf73840-f03e-449b-884e-0e222d0b87f6
00859cbf-4df7-4d44-9d15-641e61879d96	92dd27db-2ccc-4fae-a33e-f47b2fa81c74
10f871b7-274f-4372-b7cd-f17d61ba2a2b	006d8daa-fe75-462c-b6a3-e73f469ff4bb
10f871b7-274f-4372-b7cd-f17d61ba2a2b	9f1473ee-7711-4cf7-b889-1920e968a7b1
2d0561d6-e924-4e56-a99f-0bf0132c5d53	45734aa8-515f-44e6-bd1f-5a436967539b
10f871b7-274f-4372-b7cd-f17d61ba2a2b	c1fb8719-cfc2-424c-8d4e-9678aee90a85
10f871b7-274f-4372-b7cd-f17d61ba2a2b	5475512d-2335-4065-8550-19b9790e8d99
10f871b7-274f-4372-b7cd-f17d61ba2a2b	2bed8bf9-9443-43cb-b7ea-f64790864449
00859cbf-4df7-4d44-9d15-641e61879d96	b777a5ae-1b53-4084-b108-3391845633ae
10f871b7-274f-4372-b7cd-f17d61ba2a2b	fb2b1755-877c-4ff6-8c9a-7d9bbf24cb02
10f871b7-274f-4372-b7cd-f17d61ba2a2b	01c73d16-8119-4f6d-805d-12982f85872e
2d0561d6-e924-4e56-a99f-0bf0132c5d53	3526ef5b-fab3-4083-b449-332cbc7699d4
10f871b7-274f-4372-b7cd-f17d61ba2a2b	51fdee8b-3b19-42ec-92d3-47dcbf686662
64c9fd3a-23ad-4eff-a0c1-db5cec910d97	5c9dfca3-ffee-4e7d-92b7-0ce3a778a70c
10f871b7-274f-4372-b7cd-f17d61ba2a2b	e6745d77-d608-455a-a306-a222780f958f
2d0561d6-e924-4e56-a99f-0bf0132c5d53	eaea801b-3858-4648-9743-ed32ca63f2bd
7b5dc210-4c2d-42e3-957c-b7e9b55791ca	58a3a652-fa7d-4ab7-8e43-74dcd69a8487
10f871b7-274f-4372-b7cd-f17d61ba2a2b	5f4ef3ed-a50f-4be6-96c2-fc0ec842a990
10f871b7-274f-4372-b7cd-f17d61ba2a2b	1442c049-3be6-4f2d-8901-ec79d5a55101
10f871b7-274f-4372-b7cd-f17d61ba2a2b	903e61df-5cb9-4434-b968-d61d78a2d55d
0e9d16e7-f485-4539-84ab-a5e36d746797	70532b70-b9bd-40fd-bd9e-6e3e87c36043
10f871b7-274f-4372-b7cd-f17d61ba2a2b	6efae0bb-22ce-402b-b186-f46e7b7eeb9b
2d0561d6-e924-4e56-a99f-0bf0132c5d53	e171d4d6-8cd7-40d8-ac12-42cfe2a34a7d
2d0561d6-e924-4e56-a99f-0bf0132c5d53	0aba031d-454a-4146-a8e7-74af781b21ba
10f871b7-274f-4372-b7cd-f17d61ba2a2b	e1c14e39-c6d9-4dd1-b3f1-eca413be1d9e
00859cbf-4df7-4d44-9d15-641e61879d96	19e31bdc-5d57-4753-9c47-555dc828eaec
2d0561d6-e924-4e56-a99f-0bf0132c5d53	1433a8dc-c195-456b-9e01-31b20d5f80c0
10f871b7-274f-4372-b7cd-f17d61ba2a2b	6113f650-efb7-4402-8f87-948d28c2fbc5
41014684-16ab-4193-85a5-ee920e32dea2	5fd1b7a7-475f-4d47-8b76-da17e63b951e
2d0561d6-e924-4e56-a99f-0bf0132c5d53	e75ff2d3-181c-4a4f-a73a-3a0bb15487c2
18c43852-9221-4361-b739-fedc5a3e7a70	3dc5577d-0915-4178-bea7-872be8d99868
0e9d16e7-f485-4539-84ab-a5e36d746797	3cbe65be-fde3-4e12-8597-fd88b3da820a
2bb121e2-9063-4311-b406-982eced7a35f	4cae4f33-5104-4672-913e-c660b3187191
00859cbf-4df7-4d44-9d15-641e61879d96	1835c381-d546-40c2-8404-4c754f16d9c9
10f871b7-274f-4372-b7cd-f17d61ba2a2b	463d8dca-904f-4bb1-830e-2f77ffaceb4b
00859cbf-4df7-4d44-9d15-641e61879d96	0e6cac69-02a4-4d9d-8a63-2b0b9d9782f2
00859cbf-4df7-4d44-9d15-641e61879d96	73c754a3-483a-4aa9-807c-4f24af5fcda3
8522089b-5ec2-4f5e-a006-2daea953775d	1148e9a3-f7ef-401f-9950-c5f890792cab
41014684-16ab-4193-85a5-ee920e32dea2	817d63a1-2906-45d3-ba3b-887946ced33e
0e9d16e7-f485-4539-84ab-a5e36d746797	c7a7dd45-35f8-4e7d-916e-a6b8a08f0cca
10f871b7-274f-4372-b7cd-f17d61ba2a2b	0f413c6c-7f62-4a34-921e-600193cac4da
10f871b7-274f-4372-b7cd-f17d61ba2a2b	3d3b137b-eaa3-41a1-b43d-63c7d0c12648
10f871b7-274f-4372-b7cd-f17d61ba2a2b	83369bcd-f4c7-4774-9688-116341da921b
64c9fd3a-23ad-4eff-a0c1-db5cec910d97	facfa3e1-6fd5-47ef-a53f-125b4da5f667
3413b046-555d-4719-bfe7-14fbecff0efb	204f214a-e8f6-42bb-9f26-bcbf8bde3c44
10f871b7-274f-4372-b7cd-f17d61ba2a2b	4668e4fc-bbcd-4339-b4be-e0837588c592
18c43852-9221-4361-b739-fedc5a3e7a70	984902d4-b019-406f-87e5-51484b8de04a
10f871b7-274f-4372-b7cd-f17d61ba2a2b	343bf85e-a7c8-4b2a-8279-1770bdcdb247
10f871b7-274f-4372-b7cd-f17d61ba2a2b	3fbc5433-ff4f-401c-a0d7-6cb459217bde
18c43852-9221-4361-b739-fedc5a3e7a70	c91f2e70-856b-41ef-b538-be666639b75e
3413b046-555d-4719-bfe7-14fbecff0efb	d69e8bcb-2704-450a-b938-4992cfb1a1b9
41014684-16ab-4193-85a5-ee920e32dea2	e98c0080-a1b8-4f6d-a76a-37df28934e2e
90f0888e-016f-48de-8256-550adc89530b	1ec5605c-2c56-43fc-970f-c47e5494094a
00859cbf-4df7-4d44-9d15-641e61879d96	07155517-18de-46f6-af01-856e0cec2c41
10f871b7-274f-4372-b7cd-f17d61ba2a2b	5e169664-44f0-49e1-b9cc-7d3353ea84da
10f871b7-274f-4372-b7cd-f17d61ba2a2b	f2da43f5-2331-439e-8399-1333724627ca
9e2bdc0b-bb27-419e-a593-1319362d7d34	7ae1a739-5773-446b-bc29-1ca55afa493e
10f871b7-274f-4372-b7cd-f17d61ba2a2b	889989ed-45da-4653-bf84-4e24f689c9eb
3413b046-555d-4719-bfe7-14fbecff0efb	5537634c-6e64-404a-98b3-286396eb79ce
0e9d16e7-f485-4539-84ab-a5e36d746797	b0ebee4e-9587-40e3-aaea-a0294c717d14
4d5fba94-ff1f-45d4-878f-e5cb46f62c10	9699f299-d4ca-4270-9471-ba6bf2c5dd39
10f871b7-274f-4372-b7cd-f17d61ba2a2b	6fa88f37-5629-49cb-bef7-645c98bea7d5
10f871b7-274f-4372-b7cd-f17d61ba2a2b	f9d26e05-bbb2-4c7f-a3b3-3996e2b516bc
90f0888e-016f-48de-8256-550adc89530b	00425c33-a173-410b-883e-c9ca808372b4
ec51c7b2-7f5d-424f-b87b-d7cd6e2a3451	1416e639-23b1-49ea-b3c2-10c5b7ccd30a
3413b046-555d-4719-bfe7-14fbecff0efb	15fabc07-87d5-404a-a8a6-8f8b9d32d6e8
10f871b7-274f-4372-b7cd-f17d61ba2a2b	694fe219-d7c0-420a-aac2-5b0e1a05dcf9
18c43852-9221-4361-b739-fedc5a3e7a70	6f960ed8-3b63-4966-a8d9-da8ec46b0660
00859cbf-4df7-4d44-9d15-641e61879d96	5e0e9fd7-3e8b-46b1-96c4-02385cdcc671
00859cbf-4df7-4d44-9d15-641e61879d96	6435e69c-ff6a-46b8-9563-d5f179dbaa9d
\.


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.book (id, title, subtitle, title_original, subtitle_original, year, year_translation, editor, series, npages, isbn10, isbn13, lang, ebook, html, epub, pdf) FROM stdin;
5f0af748-1547-47c8-a454-ed389efd5642	Across the river and into the trees				1950	0			308			en	f			\N
cad0a59c-8c65-4e5d-b8ee-16f544948cbd	Go Tell It on the Mountain				1953	0	Dell Publishing		221			en	f			\N
8ee0e71a-2ada-46ec-bd3b-f88898d98c9c	Dans les griffes du Tigre				2011	0	Belles Lettres		101	2251310045	978-2251310046	fr	f			\N
23842a0c-e730-4ef0-a643-309634461ec7	Ours				1983	1989	Weidenfeld & Nicolson		133			en	f			\N
88d6f4e6-7fa5-41b2-9c15-c77e5780a0d4	Dieu n'habite pas La Havane				2016	0			193			fr	t			\N
9d2fd838-e821-4c58-b890-d8fd53c5eae0	Une saga moscovite II				1992	0	Gallimard	Folio	608	2070403092	978-2070403097	fr	f			\N
d8b41482-f039-436f-8242-07f648a068cc	L'Art de perdre				2017	0	Flammarion		506	2081395533	978-2081395534	fr	f			\N
ca56903e-453d-4a5e-89e2-439693d326fe	La fin de l'homme rouge	Ou le temps du désenchantement			2013	0	Actes Sud		544			fr	t			\N
c0b0ac0d-747a-46b4-bc63-e9fe65df8969	When new flowers bloomed				1991	0			191			en	f			\N
b218a877-4d3f-4c0f-8bbc-6c130993416d	Marcher ou l'art de mener une vie déréglée et poétique				2006	0	Actes sud		249	2330039476	978-2330039479	fr	f			\N
d6215f55-1604-4770-993b-ad24e5078350	Nietzsche				1925	0	Stock		88	2234057019	978-2234057012	fr	t			\N
b0f32220-3368-41dd-a7a3-96d81a54f244	Les Assassins de la mémoire				2005	0			238			fr	t			\N
094424a2-facf-4c77-8d54-035a5bd6c816	L'Amour et les Forêts				2014	0	Gallimard		373		978-2072646546	fr	t			\N
6a4d7a41-78f6-400a-9384-c65ec7b9641c	Madame Bovary				1857	0	Gallimard	Bibliothèque de la Pléiade	319			fr	f			\N
f48e2d83-f35f-4408-b056-5ab93301d80c	Sous le soleil de satan				1926	0	Gallimard	Bibliothèque de la Pléiade	249	2070100677	978-2070100675	fr	f			\N
8e3db6d3-4402-42a4-a42b-a2ff54bbe22e	Carnet du Ladakh				2003	0			98			fr	t			\N
e38f3258-3133-4424-b91a-2496f4320fc0	Vies de Job				2011	0	Gallimard	Folio	492	2070448258	978-2070448258	fr	f			\N
68bf163e-9287-4b2a-9c7f-219d1b7f1c45	La femme qui ne vieillissait pas				2018	0	Éditions Jean-Claude Lattès		247	2709661837	978-2709661836	fr	f			\N
12c941fd-9971-42f5-9566-1fa0b369af42	Effi Briest				1894	1995	Angel Books		221	0946162441	978-0946162444	en	f			\N
7062175c-9d41-4b29-89d6-78fc44c454ea	Notre France				2016	0	Allary Eds		253		978-2370730770	fr	f			\N
be89a799-5898-458b-b033-a1a54c912ea9	Mémoires d'un jeune homme dérangé				1990	0			103			fr	t			\N
fb4b4cb4-fb3b-4fee-af2d-511a41597887	The Great Game	The Struggle for Empire in Central Asia			1990	0	Kodansha International		524			en	f			\N
b4c72217-758b-48d7-8be8-7a0279d2c4b4	Hiver au Proche-Orient				2008	0	Payot	Petite Bibliothèque Payot	236	2228902950	978-2228902953	fr	f			\N
b9e0c91d-d357-4d87-92c1-6e575fb46510	En quête de l’Orient perdu				2014	0	Seuil		314	2020556693	978-2020556699	fr	f			\N
1d67d4a1-649b-470a-b707-507a2b306923	Moura				2016	0			563			fr	t			\N
8cc62860-1b8d-49f4-9995-77e9d55fd723	The People Look Like Flowers At Last				2007	0	ecco		299	0060577088	978-0060577087	en	f			\N
9b666868-3587-40fb-b5d4-26c1b0043054	Je vais m'y mettre				2016	0	Pocket		186	2266275658	978-2266275651	fr	f			\N
41bcb257-f982-44e1-8fd2-563e26db5861	Les revenants				2016	0	Seuil		290	202134939X	978-2021349399	fr	f			\N
7def2fac-f4af-49e6-8d43-b1909b1ae392	Charge d'âme				1977	0	Gallimard		227			fr	t			\N
8d2bb40a-3fe7-4a19-935e-d748d6198e01	Hors d'atteinte ?				1988	0	Gallimard	Folio	277	2070382044	978-2070382040	fr	f			\N
7d71c7ff-9fbd-4603-a320-7a1be2e22ce9	The Voyage of the Beagle				1839	0	Everyman's library		487			en	f			\N
00927287-b080-4a85-a1a4-27bf9136767d	Histoires - Livre I		Ἱστορίαι		-150	1969	Les Belles Lettres	Universités de France	137		978-2251002736	fr	f			\N
e8b0aec2-7766-4eea-9c61-084b393256eb	Les récits de Sébastopol				1856	0	Payot		209	2228899674	978-2228899673	fr	f			\N
ba253a7a-7fdb-4933-b347-ed3602fa95d7	Remote : office not required				2013	0	Ebury Digital		108		978-1448176861	en	t			\N
15f7317a-661d-4d7d-86af-6f64f1ab709a	The World as Will and Representation				1859	1966	Dover Publications		412			en	f			\N
322d294e-b432-414d-a82d-1988535eb180	 La vie commence à 60 ans 				2012	0	Libretto		224		978-2752907622	fr	t			\N
298eefac-ed33-40b1-8db6-8e3ee52ad8f0	Les Pauvres Parents				2005	0	Gallimard	Folio	261	2070307042	978-2070307043	fr	f			\N
b2e98d50-07b1-44b0-94f4-9db170bad3bb	Le feu follet				1931	0	Gallimard	NRF	205			fr	f			\N
b711e6f6-3826-4701-b1ce-26c6a04136b1	Les Conquérants				1928	0	Gallimard	Bibliothèque de la Pléiade	178			fr	f			\N
773f4592-d509-4d8f-8320-c34a5e1876d5	Je vais bien, ne t'en fais pas				2000	0	Le Dilettante	pocket	156	2266168525	978-2266168526	fr	f			\N
58dc5c45-093b-47e4-bb84-658bfc2ccd50	Un Roman Russe				2007	0			399			fr	f			\N
84b3ba64-9c76-4580-b2e3-66aa76655f3a	Mémoires de Louise Michel	écrits par elle-meme			1976	0	Francois Maspero		335			fr	f			\N
8cb88684-c88e-42f9-b345-4a79b58eafc3	Un continent derrière Poutine ?				2018	0	Seuil		179	202139235X	978-2021392357	fr	f			\N
6f59396d-742c-4e40-8ce4-319c005f3601	L'empire portugais d'Asie : 1500-1700				1993	0	Points		463	2757835726	978-2757835722	fr	f			\N
d499d0bc-850a-478f-a8ca-e8bbc98ddae4	Grand frère				2017	0	Philippe Rey		264	2848766247	978-2848766249	fr	f			\N
d183cf1a-ad88-4c25-a7fe-5765dc5bc96d	Une gourmandise				2000	0			117			fr	t			\N
0b5eb225-0de6-405f-92a5-4bea810920bf	Le camp des autres				2017	0	10/18		187	2264072679	978-2264072672	fr	f			\N
08c7a8ed-92b1-4a48-936c-693a37778fd8	Voyage à Tombouctou - II				1830	0	La découverte		393	2707153591	978-2707153593	fr	f			\N
ecca7d22-a553-4130-afd6-f72b218f9413	L'Élégance du hérisson				2006	0	Gallimard	Folio	410	2070464326	978-2070464326	fr	f			\N
0f668c17-24c6-4188-a2b7-7623c5e02974	Le sillage de la baleine		El camino de la ballena		1962	1998	Edition Phébus	Libretto	279	2859405283	978-2859405281	fr	f			\N
d575d540-6ce5-412f-88a9-dcf5938e5df3	Kim				1901	0	Norton Critical Edition		240		978-0393966503	en	f			\N
ad3ff075-8231-4935-bca4-0e642844c4ea	Guerre et Paix				1869	0			1500			fr	t			\N
0a6768a0-0fcf-44dd-96fc-6de3932d6b46	La carte et le territoire				2010	0			313			fr	t			\N
ce193c00-de04-49cb-853b-91d1e2049276	Nineteen Eighty-Four				1949	0			265			en	t			\N
46e46016-d41b-4667-be0c-18880fbfaa15	Petit traité sur l'immensité du monde				2005	0			89			fr	t			\N
a2ef1648-aa8f-4dac-909f-e05cf5ee3f1a	Burmese Days				1934	0			259			en	t			\N
128663a4-f584-4e26-9524-db97765fff08	Le Très-Bas				1992	0	Gallimard		84		978-2072495496	fr	t			\N
54348213-79b0-4190-9550-eba6ba9418fb	Trois saisons d'orage				2017	0	Points		272	2757869345	978-2757869345	fr	f			\N
5d83aee4-5930-4030-9882-7db417f8d43d	Des vies en mieux				2014	0			442			fr	f			\N
c1319869-571f-41ab-ab7d-8961fc94303f	Sister Carrie				1900	0	Norton Critical Edition		355		B008UZ2DXO	en	f			\N
34f5a4a2-a825-45ec-a6d3-e60270cea259	 Dersou Ouzala				1923	0	Payot		384	2228901776	978-2228901772	fr	f			\N
b2ea3bd0-9838-4a41-8bf2-96d070be3241	The Goldfinch				2013	0			737			en	t			\N
5489ed14-69c0-46d6-aebb-9bcf00752041	A l'abri de rien				2007	0	L'Olivier		174		978-2823604665	fr	t			\N
bae83243-6b66-4d51-9893-45db59e45e78	Histoire des peuples arabes				1991	0	Points		599	2020200015	978-2020200011	fr	f			\N
6d353d72-2cf0-4321-9c47-88420fe14563	Des âmes simples				2017	0	Gallimard	Folio	210	2072750717	978-2072750717	fr	f			\N
327f2ca4-a582-4ebf-9178-01e08735e785	Requiem pour l'Est				2000	0	Gallimard	Folio	362	2070418081	978-2070418084	fr	f			\N
6119edec-7373-4a9f-8513-c2f21de60ff4	Mill on the floss				1860	0	Everyman's library		492			en	f			\N
9885cd4b-9946-4c38-b7fa-5bbd93abb53e	La Bretagne et la France				2018	0	Perrin		345	2262076006	978-2262076009	fr	f			\N
cf774c32-9388-4ae6-a274-390334c0dadf	L'Enquête (Livres I à IV)		Ἱστορίαι		-445	1964	Gallimard	Folio	451		978-2070376513	fr	f			\N
86b6e660-7b1b-4bbf-96e2-cdfcda8c645f	Parle-leur de batailles, de rois et d'éléphants				2010	0	Actes Sud		168	2330015062	978-2330015060	fr	f			\N
79a85d99-7a36-4438-974d-486968a9578f	Charlotte				2014	0	Gallimard		221	2070145689	978-2070145683	fr	f			\N
26fb0398-7ccc-4d9e-9c95-a5bc5dcd4d80	The buddha of suburbia				1990	0	Viking Press		284		978-1135779801	en	f			\N
093bf8e7-8770-4242-a7a3-6a9abdb2c254	Doña Bárbara				1929	0			440			en	f			\N
eaf98b92-8911-43a8-875a-5f200dfdeaa8	Tropique de la violence				2016	0	Gallimard	Folio	183	2072764572	978-2072764578	fr	f			\N
bfa56d20-7171-4ad0-bf30-4b88c1257fb5	La contrevie				1986	0	Gallimard	Folio	452	2072747457	978-2072747458	fr	f			\N
52c238c9-958b-4595-bff8-98d12d67e692	La couleur de l'eau				2015	0	10/18		381	2264068922	978-2264068927	fr	f			\N
c12c49de-b8fb-47f3-91e0-4a9a0f84ab25	L'insurgé				1886	0	Gallimard	Folio	335			fr	f			\N
5c2a6b28-1d83-4378-8984-1ebd52e52bae	Samarcande				1988	0	Librairie générale française	Le Livre de Poche	312	2253051209	978-2253051206	fr	f			\N
110acc42-107e-48f8-b66f-5debd9118146	Profession écrivain				1900	0	Les Belles Lettres		366		978-2251901251	en	t			\N
af0f6e95-d70f-43ae-ab29-59b3a3d5d0ff	Désolée, je suis attendue				2016	0			269			fr	t			\N
0197b61c-939b-4673-9804-84791f47a33b	Gilles				1939	0	Gallimard	NRF	484			fr	f			\N
b2325154-464c-44bb-bb0a-21bd61fc241e	The peoples of the Soviet Far East				1954	0	Archon Books		186			en	t			\N
2b7d3584-6365-4f57-b273-1294e7a6a6a5	Alamut				1938	0	Phebus		578	2752906269	978-2752906267	fr	f			\N
a078711c-0f53-49dd-8619-2ba358757219	Uncle Vanya				1897	0			36			en	f			\N
231ba3ac-6f4d-4ae8-a248-0613862bd33d	Tolstoï				1942	0	Buchet-Chastel	Les Auteurs De Ma Vie	205	2283030641	978-2283030646	fr	t			\N
447f02f9-f895-489f-ab6e-9b009a218a72	 Parmi la jeunesse russe				1932	0	Payot	Petite Bibliothèque Payot	214	2228897167	978-2228897167	fr	f			\N
ba900db9-1e97-4e1e-ad90-041d8365b733	To Kill a Mokingbird				1960	0			296			en	f			\N
8fc47994-bce3-4e03-969c-61eec84749fa	Les saisons du bonheur				2004	0	Pocket		474	2266159577	978-2266159579	fr	f			\N
c2f0bebc-0440-43a6-b00d-575133641266	Belle du Seigneur				1968	0	Gallimard	Folio	1110	2070404021	978-2070404025	fr	f			\N
3ff458cc-d1e0-45c0-9802-17889ecae7dd	Prisonnière à Téhéran				2006	0	Pocket		363	2266185705	978-2266185707	fr	f			\N
2f326504-c2df-4f1c-8d11-af5982f29820	Il fut un blanc navire				1970	0	Edition Phébus	Libretto	178	2752906587	978-2752906588	fr	f			\N
818b9589-9c95-4b97-aaa7-48abed88f8a1	Fortune Carrée				1932	0	Pocket		317	2266128809	978-2266128803	fr	t			\N
8b5828ec-1d3b-4dbd-8e29-d5f1af63cd3f	La vie rêvée d'Ernesto G.				2012	0	Librairie générale française	Le Livre de Poche	567	2253194166	978-2253194163	fr	f			\N
5e514f44-3e75-4fd1-8ee6-530a912b5c17	Of human bondage				1915	0	Modern Library		766			en	f			\N
20662beb-2b4d-4193-b4c5-387f862d0b97	La reine des terminus				2006	0	10/18		191	226407163X	978-2264071637	fr	f			\N
e307e093-fbba-4833-979f-13d9f7dad28b	Gauguin dans sons dernier décor				1878	0			141			fr	f			\N
41e79aad-b033-431d-a1b9-18d113b40e0a	La Vie devant soi				1975	0			167			fr	t			\N
ffb490f7-1521-4e62-8db5-d920c68a6256	Le Roman de Saint-Pétersbourg				2003	0			289	2253156108	978-2253156109	fr	f			\N
023f6922-565c-43a4-8862-923c82b9131d	Asie fantôme	À travers la Sibérie sauvage 1898-1905	Man and Mystery in Asia		1923	1996	Edition Phébus	Libretto	308	2369140127	978-2369140122	fr	f			\N
66464c4e-f68f-4107-8a63-3069f5c59a53	En finir avec Eddy Bellegueule				2014	0	Points		204	2757852973	978-2757852972	fr	f			\N
c9986c67-e210-4ea9-86cc-5b08ed30fbf5	Vernon Subutex, 1				2015	0	Librairie générale française	Le Livre de Poche	229	2253087661	978-2253087663	fr	t			\N
fd5e5692-f0e3-41fe-99c2-f53877a232dd	Le Roman du Kremlin				2004	0			243	2253110876	978-2253110873	fr	f			\N
cf43712d-639c-4ebe-9ed4-8c45a3edc918	Béton armé				2016	0	Gallimard	Folio	181	2070458725	978-2070458721	fr	f			\N
772e6ea5-7c25-4022-b499-ad184b9732f8	Iranienne et libre				2006	0	La découverte		270	2707150932	978-2707150936	fr	f			\N
37cffc15-4e1f-41da-88ba-793c9e723581	Histoire mondiale de la France				2017	0	Seuil		766	2021336298	978-2021336290	fr	f			\N
4e902b07-e116-41b8-af60-453feb7a4ba7	La curée				1871	0	Gallimard	Folio	338	2070411419	978-2070411412	fr	f			\N
77e54f41-5f47-41d7-9f8a-f9c7a767219a	La maison du peuple				1927	0	Grasset		93		9782246129998	fr	t			\N
26871e60-cc76-4ea3-8500-05e532c18fc1	Des anges mineurs				1999	0			188			fr	t			\N
3f88afc9-0335-4c9f-b6af-7532dccde178	Novecento : Pianiste				1994	1997	Gallimard	Folio	84			fr	f			\N
4253ac2f-ecf0-4bfd-8c16-a2f685998cc7	Uncle Tom's Cabin; or, Life Among the Lowly				1852	0	Vintage Books - The Library of America		519			en	f			\N
b3df4d34-adca-4273-9532-8361a7c00132	Life of Lord Byron				1890	0	Port Washington, N.Y., Kennikat Press		204	0804616051		en	f			\N
c10f75ac-d4ad-406d-a9dd-d3cabad61596	Les tambours de la pluie				1970	0	Gallimard	Folio	322	2070371425	978-2070371426	fr	f			\N
46071270-cd42-4ca9-9c4e-f2e6293b0fda	Sales guerres - De prof de philo à grand reporter				2018	0	Éditions de L'observatoire		337	103290285X	979-1032902851	fr	f			\N
e5545862-4cbf-4a83-b819-2317d5295c35	Ecoutez nos défaites				2016	0			206			fr	t			\N
08426f19-069c-43f5-8e3b-7ec219d49b57	A Leg to Stand On				1984	0			222			en	f			\N
17deaf6f-883c-4e0b-85c1-21feb77f04c6	The Seagull				1896	0			82			en	f			\N
962e1cd9-47d0-4fde-ab1a-d6372ab7ec3e	Marx, ô Marx, pourquoi m'as-tu abandonné ?				2010	0			92			fr	t			\N
15eb11ba-f248-4d76-9259-7156c4bcc2bc	Le rhinocéros d'or				2013	0	Gallimard	Folio Histoire	348	207045455X	978-2070454556	fr	f			\N
c621b38d-6fdc-40ab-8153-48c958cb09e0	Loin de New York				1938	0	Payot	Petite Bibliothèque Payot	140	2228893137	978-2228893138	fr	f			\N
539f4208-e75d-4b80-a67e-a2016678d838	Sacrifices				2012	0			214			fr	t			\N
164be0f9-7599-4d9b-b48b-baaf353cb788	Crime et châtiment		Преступление и наказание		1866	1995	Gallimard	Folio Classique	577	2070392538	978-2070392537	fr	f			\N
ed61be15-f5a4-4a0d-b8e0-5e20d8410605	The Three Weissmanns of Westport				2010	0			292	031268052X	978-0312680527	en	f			\N
3d599cb7-a24d-4cbe-b95b-853d32abd038	On ne badine pas avec l'amour 				1834	0	Gallimard	Bibliothèque de la Pléiade	81	2070111806	978-2070111800	fr	f			\N
fceb4a80-def3-417a-a873-96a92b0a56d5	Les liaisons dangereuses				1782	0	Gallimard	Bibliothèque de la Pléiade	388	2070109372	978-2070109371	fr	f			\N
ecbcce2d-ff12-41d6-94ae-1a28334b2e9a	 Fascination du djihad 				2016	0	Puf		98	2130750133	978-2130750130	fr	f			\N
dedb2bad-ad5b-4b35-b362-996c0babf929	Walden				1854	0	W. W. Norton & Company		354		978-0393930900	en	f			\N
a954d352-86f3-4211-bffe-3205019bd38f	Histoire d'Alexandre		Historiae Alexandri Magni		0	2007	Gallimard	Folio	364		978-2070304882	fr	f			\N
6f0bdf04-fdb7-4541-a649-6d600c9be9b6	Limonov				2011	0	Gallimard	Folio	489	2070450899	978-2070450893	fr	t			\N
2efecd3d-f115-444c-a7b4-2d96aef7dc95	Les évaporés du Japon				2014	0	Les Arenes Eds		121		978-2352043997	fr	t			\N
b30277e5-89f4-42c9-b595-f9f1b18a0216	Les Loyautés				2018	0	Éditions Jean-Claude Lattès		130		9782709661249	fr	t			\N
6c696474-29f5-481f-adfd-eaa957ed51c9	Derrière la Grande Muraille		Behind the Wall: A Journey through China		1987	1991	Payot	Petite Bibliothèque Payot	492	2228895016	978-2228895019	fr	f			\N
57232ada-6bba-464b-bc2c-48efb79ddcff	Treize années à la cour de Russie				1921	0	Payot	Petite Bibliothèque Payot	304	2228910104	978-2228910101	fr	f			\N
995a0045-f98a-43e1-98af-e7fd23d8219f	La route de la Kolyma				2012	0	Belin		221	2701198011	978-2701198019	fr	f			\N
5ddfad28-a03b-4290-9d39-1feac578601c	The Help				2009	0	Berkley		530	0425232204	978-0425232200	en	f			\N
e31c6647-c5a5-46c6-af20-1a394fbc87a1	La Croisière du hachich				1933	0	Grasset		302	978-2234057012	978-2246027041	fr	t			\N
2b57f0ce-e3be-489e-8793-8591486a9c05	Deuxième classe à Dien-Bien-Phu				1964	0			271			fr	t			\N
6b7a02de-c6bd-4851-8026-f2e4d2e7fdb9	Mémoires d'Hadrien				1951	0			307			fr	t			\N
a1887b1e-d854-4b3d-9604-87bbc29b8741	Le Jeu de l'amour et du hasard				1730	0			50			fr	f			\N
d396d32c-9224-4539-9d8b-64f241a768f6	Derrière les portes closes				2015	0	Payot		281	222891567X	978-2228915670	fr	f			\N
d4969561-1ed5-486e-a630-d72007ccfc39	Anna Karénine				1877	0	Librairie générale française	Le Livre de Poche	858	2253098388	978-2253098386	fr	f			\N
4b2ddca5-7330-40bf-9983-309dbc9f92f9	Tropique du Capricorne				1939	0	Librairie générale française	Le Livre de Poche	412	2253008257	978-2253008255	fr	f			\N
48ff86cc-fefd-41e9-86ce-2c7782fc3c0f	Le Soleil des Scorta				2004	0			123			fr	t			\N
8ee950fc-c11a-45f3-8d1e-b5fe639ae983	Lettres de Russie				1843	0	Gallimard	Folio	387	2070366898	978-2070366897	fr	f			\N
2326a93f-d2c8-4d1c-a092-e22eaced26cb	Réparer les vivants				2014	0	Verticales Phase Deux		212	2070144135	978-2070144136	fr	t			\N
65c62d85-6f7a-440c-a5b5-cf8a0a3883ef	Je vivrai l'amour des autres 				1947	0	Seuil		388			fr	f			\N
21ce7538-d641-4e8b-b47a-0ea409b57da0	La Russie inachevée				2000	0	Librairie générale française	Le Livre de Poche	234			fr	f			\N
59248088-b936-4ad2-9e13-db6ec670c297	Continuer				2016	0	Les Éditions de Minuit		239	2707329835	978-2707329837	fr	f			\N
0d72cd26-5132-4144-bbf5-6058ba208159	Vies minuscules				1984	0	Gallimard	Folio	249	978-2070401185	2070401189	fr	f			\N
bb591fca-83a0-45ea-993d-5df8203a3cae	Un jardin à Téhéran				1988	0	Libretto		343	2752908954	978-2752908957	fr	f			\N
037fa276-e1dd-40aa-b5c8-e4628595bb0d	Sous le vent de la Pampa		Tales of the Pampas		1916	2002	Payot	Petite Bibliothèque Payot	225		978-2228896191	fr	f			\N
2d5d8ea9-3d3e-462e-b808-24f79973036e	Paris				1898	0	Gallimard	Folio	636	2070417247	978-2070417247	fr	f			\N
ca146b23-479b-4cc4-9e83-a5da939458be	Naissance d'un pont				2010	0	Gallimard	Folio	336	2070445321	978-2070445325	fr	f			\N
fc85f61b-1450-42c2-ab19-83fe1a6bffab	Salammbô				1862	0	Gallimard	Folio Classique	468	2070308782	978-2070308781	fr	f			\N
f95b7152-3085-4dae-99f3-f15bafaa8013	Anthracite				2016	0	Stock		229	2234079780	978-2234079786	fr	t			\N
dfe78a25-e59c-4850-942f-aa1f2369a58e	The monk				1796	0	Oxford University Press		442		978-192553621	en	f			\N
55eafbdb-7ba6-47de-a2ce-47232182801d	Il était une ville				2015	0			199			fr	t			\N
0bb14e76-75f8-45ee-b3b3-fdb14bf6f236	Les Celtes				2014	0	Belin		356	2410009360	978-2410009361	fr	f			\N
e339f1ef-3b27-40fb-a729-b964e73f21e7	L'Ane d'or ou les Métamorphoses				160	0	Gallimard	Folio Classique	284	2070366294	978-2070366293	fr	f			\N
8a9c1d86-bf42-4505-b029-797c1b99e9bd	La République romaine	Nouvelle histoire de l'Antiquité - De la deuxième guerre punique à la bataille d'Actium 218-31 Tome 7			2000	0	Points		264			fr	f			\N
e9b769fe-f346-4ef1-a074-31bab730de4d	Regarde les lumières mon amour				2014	0			50			fr	t			\N
e3af236d-ff4d-47d3-a51a-4adedc6d3fba	The library of history V - Book XII - XIII		Βιβλιοθήκη ἱστορική		-60	1960	Harvard University Press	The Loeb Classical Library	447			en	f			\N
9ec35e7b-e3e0-43cf-aa47-92f6a3b33b3e	Bourlinguer				1948	0	Gallimard	Folio	499	2070366022	978-2070366026	fr	t			\N
39dd3afb-df8f-41fa-b669-c7dd3eaad56e	 L'homme itinérant 				2013	0			200	2750907616	978-2750907617	fr	t			\N
938a5fab-bd97-40ea-b766-6b226deabf4c	Fall of Giants				2010	0			792			en	t			\N
4ac9eedf-e54c-4aaf-bebe-085992dd4d1f	La Porte des Enfers				2008	0			232			fr	t			\N
99b0ff36-3f47-4557-9e5b-2049771c3a18	Le goût du large				2016	0	Préludes		212		978-2253107767	fr	t			\N
816c228f-8960-4d36-80aa-d8d502489107	Shâb ou la nuit				2013	0	Actes sud		302		978-2330061227	fr	f			\N
b69d3705-cbc0-452a-931a-742c1db25ecf	Bonheur fantôme				2009	0	Actes Sud		238	2330078803	978-2330078805	fr	f			\N
47457c55-c29d-4c77-a180-f790ec8bcaa3	Windows On The World				2003	0			307			fr	t			\N
50b1beb4-bf56-4671-8d2d-c06816ac03bd	Le Cœur cousu				2007	0			368			fr	t			\N
a3481c03-6085-4933-85c0-412cd9bdead9	Juste avant le bonheur				2013	0			252			fr	t			\N
a8a181b1-de67-45a8-b5de-92377aa36735	L'Autre qu'on adorait				2016	0	Gallimard	Folio	315	207276193X	978-2072761935	fr	f			\N
29b30bbc-e460-45bc-9248-a0c0811796a0	Mademoiselle de Maupin				1835	0	Gallimard	Bibliothèque de la Pléiade	301	2070113949	978-2070113941	fr	f			\N
e8b54db2-59c6-4d24-a860-6a3ab6db68ef	Pars avec lui				2014	0			287			fr	t			\N
a03b43b4-3c12-48ed-8949-0142d7c0374a	Homage to Catalonia				1938	0			194			en	t			\N
04de9787-07ea-4f85-9063-7f73f252b342	Histoire de la révolution française, tome 1				1850	0	Gallimard	Bibliothèque de la Pléiade	1290	2070103560	978-2070103560	fr	f			\N
d9114e37-4f2d-477f-864d-d9524ce49ac9	Les poètes maudits				1884	0	Cisalpino Goliardica Ed.		101			fr	f			\N
1eba402d-c425-4b59-9167-d2d07e20933c	L'obsession du service client				2018	0	Dunod		192		978-2100790203	fr	t			\N
be8d6be0-11d2-4f3c-a8c1-101492dcda26	Istanbul	souvenirs d'une ville			2008	0	Gallimard	Folio	540	2070358607	978-2070358601	fr	f			\N
f22d8c7d-10fe-4311-8c25-314bac8ece72	La vie d'Arseniev				1933	0	Librairie générale française	Le Livre de Poche	492	2253083984	978-2253083986	fr	f			\N
1c67971a-4375-4d3f-b012-7938b63847b0	La Facture				2011	0	Actes Sud		189	2330090714	978-2330090715	fr	f			\N
a3a412d9-987b-48bf-a6d3-96c9f2053757	Histoires - Livre II		Ἱστορίαι		-150	1969	Les Belles Lettres	Universités de France	123		978-2251002743	fr	f			\N
62a4e7a4-880c-4637-ace6-fd9fb62a7c92	 Des souris et des hommes 				1937	0	Gallimard		190			fr	f			\N
74844715-fafa-42dd-bae8-40a3cf3ff17e	Djibouti				2015	0	Gallimard	Folio	138			fr	f			\N
81df9fd4-e6e5-48c1-baaf-f927b68298e0	Biribi	Discipline militaire			1888	0	Edition Ebooks libres et gratuits		244		427-0000000159	fr	t			\N
b276850b-9a02-4f3e-a43b-4f7540a448a2	La petite barbare				2016	0	Pocket		132	2266267256	978-2266267250	fr	f			\N
c9a17e73-099d-4bc9-a459-536b3e1a923f	The Betrothed				1827	0			720			en	f			\N
eb0050e6-cdf7-4533-8ed7-ac2a41951205	Toute une époque				2018	0	Robert Laffont		345	2221157788	978-2221157787	fr	f			\N
c779e8d9-e00e-41b1-bc1b-3a713a4dab27	Siddhartha				1922	0	Librairie générale française	Le Livre de Poche	158	2253008486	978-2253008484	fr	f			\N
63ef13a1-aa3b-4ae8-9dc5-2494208e51e2	Le Premier Cercle				1968	0			816			fr	t			\N
8929f4c2-8081-4a71-bfa6-bfdb0b3ca7ad	La Passante du Sans-Souci				1936	0	Gallimard	Folio	217	2070374890	978-2070374892	fr	t			\N
3b52cf6f-a3a5-4fe2-9863-4b7f9830d280	Histoire de la Mésopotamie				2010	0	Gallimard	Folio Histoire	417	2070396053	978-2070396054	fr	f			\N
3c96737b-576f-4c1e-9267-0f2deff88719	Mémoires d'un chasseur		Записки охотника		1874	1953	Gallimard	Folio	564		978-2070372645	fr	f			\N
5b3ca15b-8137-4967-b98b-6118f704ec00	Un taxi mauve				1973	0	Gallimard	NRF	314			fr	f			\N
3e3086d7-24f8-4ad8-95e7-629e773ec17d	Antigone				1944	0			85			fr	f			\N
61b78e9e-ea9d-4f2f-9f4a-9432c55e1d71	Tu comprendras quand tu seras plus grande				2016	0			370			fr	t			\N
47e44efa-c107-4658-9243-1972af3fb37e	La mort en Perse				1998	0	Payot	Petite Bibliothèque Payot	168	2228894249	978-2228894241	fr	f			\N
07144edb-086f-4913-b9ea-a5356c026d23	Un petit tour dans l'Hindou Kouch		A Short Walk in the Hindu Kush		1958	2002	Payot	Petite Bibliothèque Payot	329		978-2228895408	fr	f			\N
ede08c90-8a06-410a-96c9-ce796e2f858b	Elle et lui				1859	0			310			fr	f			\N
f8c9adfd-1aba-49d0-8c3e-94afa2fee243	La Main gauche				1889	0	Gallimard	Folio	189	2070402312	978-2070402311	fr	f			\N
6dba5243-e2a5-445f-b1f1-f7fae60d3347	Rien dans les poches				1996	0	Points		224	2757841009	978-2757841006	fr	f			\N
10671a3f-60a1-43b9-9d27-aa5797b8c1b9	D'argent et de sang				2018	0	Seuil		205		978-2021354454	fr	t			\N
dc7b8723-cd90-4d8d-8117-dd7a2960b283	Oasis interdites				1937	0	Payot	Petite Bibliothèque Payot	352	2228895172	978-2228895170	fr	f			\N
9b8cb9d5-b085-432a-8631-ced56fe242a0	Histoires - Livre III		Ἱστορίαι		-150	1969	Les Belles Lettres	Universités de France	185		978-2251002750	fr	f			\N
f0aeeee6-241c-4674-98d5-27fd9201bce3	Du côté de chez Swann				1913	0	Gallimard	Folio Classique	420	2070379248	978-2070379248	fr	f			\N
2f81bcbf-cfa0-4a92-bc58-45826c63fa58	Down and Out in Paris and London				1933	0			200			en	t			\N
f1b4bee8-25ea-49e5-b461-b9bb37405836	Les Trappeurs de l'Arkansas				1858	0			271			fr	t			\N
141c20ea-ac60-4977-b1f9-198e383b155e	Collected Stories				1953	0			399			en	t			\N
6184ef2d-58f1-43bb-9abf-e7468c2442c0	The Trojan Women				-415	0			71			en	f			\N
6a8c2e8f-95aa-4a7b-aa3d-770bec438678	L'ombre de nos nuits				2016	0	J'ai lu		190	2290138908	978-2290138908	fr	f			\N
31fa8581-4540-4b80-a1ab-0f96846184fb	Le Ventre de Paris				1873	0			294			fr	t			\N
8db24da6-1346-47f2-ba3f-8c86d3ff41f7	Frère d'âme				2018	0	Seuil		175	2021398242	978-2021398243	fr	f			\N
5875c511-23f1-4b4e-b310-5a3bd786d5d3	L'ère des révolutions				1962	0	Hachette	Pluriel	99	2818501873	978-2818501870	fr	f			\N
8f2ba756-bd73-422d-8c3a-dcc7d7e9c870	Les Rêveries du promeneur solitaire				1782	0	Droz		174			fr	f			\N
910c8e9e-2f10-4e36-8515-32bca4e3b4c7	Les Rois Maudits				1977	0	Plon		1308	2259228135	978-2259228138	fr	f			\N
c443c63c-1153-4938-9cc2-6f82fb8441b7	L'Oural en plein coeur	des Steppes à la Taiga sibérienne 			2014	0	Albin Michel		174	2226256814	978-2226256812	fr	t			\N
961178da-b2f8-4ece-93d6-8df9570c63e4	Etre ici est une splendeur				2016	0	Gallimard	Folio	142	2072733758	978-2072733758	fr	f			\N
77cb7fa6-1f33-4138-bffa-77be0476274f	Les nuits blanches				1848	0			49			fr	t			\N
3daa2772-04af-4fed-b372-0e9113c6eecd	A marche forcée		The Long Walk		1956	2002	Edition Phébus	Libretto	326		978-2752905598	fr	f			\N
1a1ec043-cf04-4567-b555-6ffd836064e2	Confession d'un porte-drapeau déchu				1992	0			79			fr	t			\N
7d487a6b-be57-48b7-8f50-6784a92f5d6b	Le cheval blême				1909	0	Phebus	Libretto	188	2752903545	978-2752903549	fr	f			\N
b7818b6e-a89e-43e8-b19c-34533df4bf71	Le grand marin				2016	0	Points		369	2757864475	978-2757864470	fr	f			\N
d9a615a8-cd0a-40c6-82f8-15616b24d184	J'ai toujours cette musique dans la tête				2017	0	Michel Lafon		361	2749929016	978-2749929019	fr	f			\N
6fa83d3b-7c7a-4664-b54b-e25f9fbe997f	Celle qui fuit et celle qui reste				2013	0			513			fr	t			\N
ab5d4007-4ba1-4c15-ab79-67c8f43526d9	La Reine Margot				1845	0			585			fr	t			\N
b12e3a0d-28f6-4cf4-9c1e-314d8b0cb054	Moravagine				1926	0			193			fr	t			\N
3137ec66-568c-4d4c-a458-f5ca0887d2a5	La Promesse de l'aube				1960	0	Gallimard	Folio	391			fr	f			\N
5dbd805c-e600-46f6-9a7a-13bed624cc93	Gertrude Bell				2015	0	Librairie générale française	Le Livre de Poche	352	2253186236	978-2253186236	fr	f			\N
4f184a71-58cd-4e65-82be-ba826e152aac	Moi, Zlatan Ibrahimovic				2011	0	Éditions Jean-Claude Lattès	Le Livre de Poche	469	225317758X	978-2253177586	fr	f			\N
44943b9b-bd57-4c40-b24d-34c1eb3ef177	Bêtes, hommes et dieux	A travers la mongolie interdite (1920-1921)	Beasts, Men, and Gods		1924	1995	Edition Phébus	Libretto	308		978-2752906205	fr	f			\N
2b01ec14-c76a-4ac0-8116-db6df24b0ca0	Souvenirs d'enfance et de jeunesse				1883	0	Gallimard	Folio Classique	212	207037453X	978-2070374533	fr	f			\N
248e2b39-40d1-4338-9955-054e6ef93f85	L'Étourdissement				2005	0	Buchet-Chastel		92		9782283026212	fr	t			\N
243a10dc-46ee-491c-80a5-53390df79d8a	Oublier Palerme				1933	0	Grasset		376		978-2246433798	fr	t			\N
e1e1cd2d-f35c-4594-b5a7-399f1fd5f3d1	La Steppe rouge				1922	0			166			fr	t			\N
c1bd0cda-bc68-47a6-918d-ce3bb9453a9a	The interpreters				1964	0	Panther Books		252			en	f			\N
99b8f2c5-7b21-42cf-945e-bfe7d3e7c4f2	Où est la terre des promesses ?				1940	0	Payot	Petite Bibliothèque Payot	178	2228898538	978-2228898539	fr	f			\N
5263c445-ecc9-470e-9731-a9d0ddc17c07	Ce qu'ils disent ou rien				1977	0			40			fr	t			\N
0af03ec6-d79b-40fa-ab3c-9f39f1d85e46	Festins secrets				2005	0	L'Esprit des Péninsules		511			fr	f			\N
ca3d7745-9b8d-44d0-8b3d-bdceb53a116f	La Légende de nos pères				2009	0	Librairie générale française	Le Livre de Poche	254	2253134694	978-2253134695	fr	f			\N
600fe94d-4c3b-47dd-a48b-77aaa6569390	Les Vagabonds				1936	0			244		978-2226052957	fr	f			\N
c0a95c0f-68dd-4a03-9d57-288cc7886675	Jean Jaurès				2005	0	Perrin		288	2262028265	978-2262028268	fr	f			\N
1b3f47e1-636d-4c67-bc14-11e9824d0573	Profession du père				2015	0			282	2253066257	978-2253066255	fr	f			\N
e8c0a6b7-1632-4218-83be-a2bce3e3d412	Au revoir là-haut				2013	0	Librairie générale française	Le Livre de Poche	615	2253194611	978-2253194613	fr	f			\N
e977643f-69e8-4a01-be35-0f494c662f95	Mangez-le si vous voulez				2009	0	Pocket		316	2266198467	978-2266198462	fr	f			\N
da889a54-90f2-4f06-a2d7-0b8c5beb903d	The third man & Loser takes all				1949	0	Viking Press		308			en	f			\N
89add01b-256f-4641-8953-d28ce4f563eb	Un dernier verre au bar sans nom				1994	0	10/18		452	2264065273	978-2264065278	fr	f			\N
6207c00f-7338-401d-aba5-bfe6e6859e43	Titus n'aimait pas Bérénice				2015	0			320			fr	t			\N
dfd0a2d1-4563-459d-afaa-eeacf1e36c13	The Roominghouse Madrigals				1950	0	Black Sparrow Press		256	0876857322	978-0876857328	en	f			\N
77734a7f-7458-47f0-9872-ee576722a55a	L'Archipel du Goulag	édition abrégée inédite			1973	0	Fayard		778		978-2213684611	fr	t			\N
2c8a37bf-5ff2-4886-a944-304ac4d8394b	Nikolski				2005	0			243			fr	f			\N
15f120f0-b123-4074-ac55-f5661ad7e7e3	Vivre et mentir à Téhéran				2014	0	10/18		355	226406806X	978-2264068064	fr	f			\N
ac4110a7-2701-4dcd-b7a5-617bcecf64dc	Kiev Kaputt				2017	0	Manufacture De Livres		319	2358871478	978-2358871471	fr	f			\N
5dfd536a-e57c-4f69-9bf4-33351a89e001	Les Insurgés				1880	0	Gallimard	Folio Classique	225	2070792323	978-2070792320	fr	f			\N
30cba47b-8863-411a-8f5e-44d9c4ab4009	Plonger				2013	0	Gallimard		350		9782072580482	fr	t			\N
32d776bd-0235-4191-a5f1-f493bc84b18a	La communauté				2018	0	Albin Michel		330	2226319107	978-2226319104	fr	f			\N
d6f61b93-04de-4ea2-bcb2-808a0000f92b	Paname Underground				2017	0	Goutte D'or		144		979-1096906055	fr	t			\N
d1ea42a9-dc0a-4820-b558-d00194237424	Histoire de ma vie				1798	0	Librairie générale française	Le Livre de Poche	555	2253089117	978-2253089117	fr	f			\N
97761cd5-8084-4f04-878e-150ece7027a8	L'enfant				1879	0			409			fr	f			\N
234f2f8e-49d8-4bde-90aa-9b27839f72ce	Poupée Volée				2006	0	Gallimard		151		9782072733819	fr	t			\N
5df37081-0e59-4219-baa2-50197a3ebf63	Comme un roman				1992	0			83			fr	t			\N
8ddb2798-f8ef-47ff-9714-b9d336a1444d	The library of history II - Book II - IV		Βιβλιοθήκη ἱστορική		-60	1960	Harvard University Press	The Loeb Classical Library	533			en	f			\N
eeeac744-b783-4896-bfee-244c07b95ccc	Le docteur Jivago		Доктор Живаго		1957	1958	Gallimard	Folio	696		978-2070360796	fr	f			\N
f90c7d04-c894-47d1-b611-3545776cbab8	Où j'ai laissé mon âme				2010	0			142			fr	t			\N
2538229f-6cef-4655-8a98-97578765a494	Fatelessness				1975	0			200			en	t			\N
2784d8b4-98b1-422d-8029-04108709ef92	La salamandre				2005	0	Gallimard	Folio	190		978-2070328765	fr	f			\N
d2745439-4f03-4c58-8864-ca4b1794640e	Petit éloge de la fuite hors du monde				2017	0	Arlea		189	2363081277	978-2363081278	fr	f			\N
33587f62-f9ca-44d9-97b0-1a9c6a8095e9	Animal Farm				1945	0			80			en	t			\N
1494b46d-91c5-4448-b368-bcecd605d489	Des femmes qui dansent sous les bombes				2016	0			160			fr	t			\N
436c2bc8-d377-40a6-8592-74d40109ec64	La Folie du roi Marc				2000	0	Librairie générale française	Le Livre de Poche	225	2253153214	978-2253153214	fr	f			\N
9b3c6345-f886-4d05-b04e-1250ca32aefc	Voyage autour du monde				1771	0	Gallimard	Folio	433		978-2070373857	fr	f			\N
63d0ad1e-9d87-46f3-ad0d-4e5a9eb7935c	Avec les compliments du guide				2017	0	Fayard		391	2213687048	978-2213687049	fr	f			\N
34b383e7-cfbb-407b-9432-d6d5cc69357d	Le coeur et les confins				2014	0	Phebus		112		978-2752909893	fr	t			\N
cd0a611c-024f-4112-bd18-c82197433fe7	L'étrange défaite				1940	0	Gallimard	Folio Histoire	236			fr	f			\N
7ea397a2-b0b1-4a7d-9884-dfcdf5dcf754	Le silence de la mer et autres récits				1942	0	Albin Michel		187		B0000DTQG0	fr	f			\N
f2ccad2d-512e-43d9-9190-0a49e0768d87	Tenir jusqu’à l’aube				2018	0	Gallimard		106		978-2072797408	fr	t			\N
17971a26-c681-49e6-bc42-7c83590d006a	Double vie				2000	0	Gallimard	Folio	265	2070421600	978-2070421602	fr	f			\N
824685af-0ece-4682-8784-2e0081042154	Les Identités meurtrières				1998	0	Librairie générale française	Le Livre de Poche	189	2253150053	978-2253150053	fr	f			\N
b886b17f-487b-4945-9e12-c7d57634b134	Fahrenheit 451				1953	0			150			en	f			\N
9f270fdc-116b-4df8-b9e9-b6aa18832776	La fille du train				2015	0	Pocket		452	2266254480	978-2266254489	fr	f			\N
a0bcb507-8119-43c8-acf8-77f9f99906d2	Victor Hugo vient de mourir				2015	0	Pocket		165	2266273361	978-2266273367	fr	f			\N
a3dd34ac-3194-42c6-8687-be1ca6ece1ab	Qu'attendent les singes				2014	0	Pocket		316	2266253883	978-2070377220	fr	f			\N
9527f8d9-6625-47af-a260-33a8eea37dc5	Mockingbird Wish Me Luck				1972	0	Black Sparrow Press		159	0876851383	978-0876851388	en	f			\N
be166af0-7a04-4ba7-9a3e-3611b7a2149b	L'Iran, des perses à nos jours				2012	0	Hachette	Pluriel	231	2818502225	978-2818502228	fr	f			\N
fe975bfd-6e5e-4546-b5ed-e90d30af4c1f	Celle que vous croyez				2016	0			181			fr	t			\N
f9e92bff-dfb4-4318-a488-a20bd13dfb3d	Virginia				1913	0	Doubleday Doran, Country Life Press; Old Dominion Edition edition		478			en	f			\N
5e8bb34d-be60-4c2a-9b2c-94a0800342b5	Le wagon plombé				1927	0	Payot	Petite Bibliothèque Payot	167	2228917680	978-2228917681	fr	t			\N
12f2044d-c5df-49f2-8733-9d013bfb01ea	Le Club des incorrigibles optimistes				2009	0	Librairie générale française	Le Livre de Poche	731	2253159646	978-2253159643	fr	f			\N
d3a2f5da-1cc4-41bd-9462-b37c3bc7de82	Paul Verlaine				1942	0	Librairie générale française	Le Livre de Poche	128	2253183210	978-2253183211	fr	t			\N
4f3b91a7-48e3-4c63-8fc7-0211f5c31a1c	Entre mes mains le bonheur se faufile				2014	0	Michel Lafon		202		978-2749923666	fr	t			\N
e1d38f31-10fe-4770-abd5-1d6d27e970a2	La classe de rhéto				2012	0	Gallimard	Folio	344	2070456277	978-2070456277	fr	f			\N
266984f8-74d5-410d-9150-46958b1d73b3	Les gens heureux lisent et boivent du café				2013	0	Pocket		187	2266243535	978-2266243537	fr	f			\N
cfcfd7fb-838c-4304-91e1-1060e0ff3708	Saisons du voyage				2018	0	Stock		202	2234083397	978-2234083394	fr	f			\N
e5541872-30dd-40a2-aa41-0db4c21c2c13	L'argent				1891	0	Librairie générale française	Le Livre de Poche	500	2253003670	978-2253003670	fr	f			\N
5263c804-dbef-4fc5-970d-8a0d0c88ba54	Twelve Men				1919	0	University of Pennsylvania Press	The University of Pennsylvania Dreiser Edition	360		978-0812233636	en	f			\N
a3430d3a-687f-45f4-a301-9c597ddb2c84	Rue des Voleurs				2012	0			378			fr	t			\N
7c16c86d-9e9c-440d-a084-8c00c5946e5c	Trois jours et une vie				2016	0			172			fr	t			\N
1ada3b04-36fd-4032-9636-ccdfc536955a	Notre prison est un royaume				1948	0	Robert Laffont		333			fr	f			\N
f0adc098-3d9c-4537-b066-d59b23da4b11	Mémoire de fille				2016	0			99			fr	t			\N
d348d6c4-03bc-4282-b20f-e9efc7a54721	La femme gelée				1981	0	Gallimard	Folio	182	2070378187	978-2070378180	fr	f			\N
4c9ec02c-83df-4657-8172-8f581e70d253	La supplication	Tchernobyl, chroniques du monde après l'apocalypse			1998	0	Lattes		281	2709619148	978-2709619141	fr	t			\N
d3da48ce-e93b-49af-b700-423dff386ed1	La Première Gorgée de bière et autres plaisirs minuscules				1997	0	L'arpenteur		91		978-2070744831	fr	f			\N
cd75020a-da9a-4009-8f43-25284c56dcf3	Taras Boulba				1835	0	Gallimard	Folio Classique	224	2070383830	978-2070383832	fr	f			\N
b747c7bd-94ce-4b9e-9bc7-71001daaedd9	Eugène Onéguine		Евгений Онегин		1832	1996	Gallimard	Folio	266		978-2070388981	fr	f			\N
fbef2e11-ad7e-4973-9a61-90df387cebc5	Il est avantageux d'avoir où aller				2016	0			397			fr	t			\N
4a230b72-b40e-41ee-ae9d-6d9ff7b191c9	Ma vie de pingouin				2008	0	Actes Sud		315	2330070489	978-2330070489	fr	f			\N
e8605728-99bc-44a6-aeeb-96bc0c915cb5	Adolphe				1816	0	Droz		99			fr	f			\N
939f3fd1-009a-4c83-8c96-4f2d44b00cb2	Edge of Eternity				2014	0			959			en	t			\N
8b70002b-77db-4199-afa0-02f74c622da3	Le désastre de Pavie				1963	0	Gallimard		414	2070449262	978-2070449262	fr	f			\N
c3ecefa2-e4b6-4559-9719-c34b6659fa3c	Mauprat				1837	0			434			fr	f			\N
4a0da5d5-4932-4294-b74c-b8d35d6b5377	Récits de la Kolyma		Колымские рассказы		1973	2013	Editions Verdier	Verdier Poche	192		978-2864327363	fr	f			\N
34a1639d-cbb0-495a-a6fa-73afd90e6662	Je suis là				2015	0			160			fr	t			\N
50420189-af05-4733-b41b-613b9a5dc2ea	Un barbare en asie				1931	0	Gallimard	NRF	132		978-2070706228	fr	f			\N
58de93fa-2e6b-422e-af67-bc9965384814	Le Roi des aulnes				1970	0	Gallimard		451	2070366561	978-2070366569	fr	t			\N
f7a1f3b6-8456-4751-b5cb-0bbbc15eb1e2	L'Enquête (Livres V à IX)		Ἱστορίαι		-445	1964	Gallimard	Folio	451		978-2070382231	fr	f			\N
1882e508-a78f-4df4-bfb8-cac07d2b5681	Chemins nocturnes				1941	0	Viviane Hamy		265	2878582667	978-2878582666	fr	f			\N
b8889b12-b525-4df2-bb4a-26e7fafa0d2a	La Fille d'un héros de l'Union soviétique				1990	0			127			fr	t			\N
a6615bf1-2d9b-4937-8f6c-57dd08d65167	Le Cercle				2012	0	Pocket		785		978-2266242806	fr	f			\N
6f0e6924-9e15-4d0c-a61d-df2d5b1cb40f	Le Rêve				1888	0	Gallimard	Folio Classique	233	2070377466	978-2070377466	fr	f			\N
5684d760-581c-4df8-92ae-321a4e7f6ab6	Pilgrims of the Wild				1934	0	Charles Scribner's sons		282			en	f			\N
5ac6b369-741d-4686-aea5-747b783f787d	Vacances dans le coma				1994	0			121			fr	t			\N
a0b1220b-a072-4bdf-a1d5-5f3b43aae647	Le Djihad contre le rêve d'Alexandre				2017	0	Seuil		292	2021342131	978-2021342130	fr	f			\N
7a692db5-d7b4-4e35-9d30-49a8673d4d92	A Certain Lucas		Un tal Lucas		1979	0			160			en	f			\N
c26aa759-53d2-46e6-a216-a7bbcf8e1b4b	A la lumière du petit matin				2018	0	Michel Lafon		298		9782749936567	fr	t			\N
726e8726-757b-4d28-a118-405e4535554f	In Patagonia				1977	0	Summit Books		199			en	f			\N
02f235d0-46bb-4f25-8b2a-f7296203d094	Le Dépaysement				2011	0	Seuil		468		978-2021049558	fr	t			\N
9e61550f-4fe7-48b0-85b2-e99e294a0160	Danser au bord de l'abîme				2017	0	Librairie générale française	Le Livre de Poche	284	2253071382	978-2253071389	fr	f			\N
eab669d5-ca76-4147-83b3-03cb4c086952	Le Rocher de Tanios				1993	0			277			fr	t			\N
3f07f2c6-9c39-4143-a069-d9494e91fd3f	Le plus bel endroit du monde est ici		El mejor lugar del mundo es aquí mismo		2008	0	12-21		116		978-2265092808	fr	t			\N
84e4ae31-dc95-45dd-af42-8b99aaa09170	La maison des hautes falaises				2015	0			245			fr	t			\N
7544f2d6-ee75-47f2-9eb1-049363018317	Les Démons				1872	0	Gallimard	Folio Classique	1013	2070394166	978-2070394166	fr	f			\N
fca93847-5116-4012-b66c-f98ae08e43a8	La mare au diable				1846	0			205			fr	f			\N
2f403681-cc7c-4b16-a860-1d932a5d3869	Lénine				1931	1932	Libretto		557	236914081X	978-2369140818	fr	f			\N
3c5e3a64-f6b8-4441-869b-abab4b4cb182	La Voie Cruelle				1947	0	Payot		312	2228915718	978-2228915717	fr	f			\N
e6b948c7-83c7-4180-889e-ba2348766e18	C'est quoi, ce petit boulot				1988	0			236			fr	t			\N
7978782c-792f-4e61-bba4-201ebf5af637	The Baron in the Trees				1957	1959	Mariner Books	Harbrace Paperbound Library	217	0156106809	978-0156106801	en	f			\N
0cb4aefc-eef0-4c54-90e6-a0bec9f0c87d	Les vies de papier				2014	0	10/18		349	2264069961	978-2264069962	fr	f			\N
8d504c62-8a13-4f82-af12-88d1856dd4d2	Le Carnet d'Or		The Golden Notebook		1962	1976	Librairie générale française	Le Livre de Poche	945		978-2253025320	fr	f			\N
0400c557-84d4-4f96-a145-823f9d27f292	Sur les chemins noirs				2016	0	Gallimard		142	2070146375	978-2070146376	fr	t			\N
07c50a9d-6ff1-40c9-9ae6-5a06231c269f	The trail of war	On the Track of Big Horse in Central Asia			1936	0	Tauris Parke Paperbacks		248	1845117026	978-1845117023	en	f			\N
591667dc-1da2-4b19-9810-c3240f8f3912	Les Années				2008	0	Gallimard	Folio	254	2070402479	978-2070402472	fr	f			\N
1035379e-6265-4493-a08e-1eba9f1a4526	Le principe				2015	0	Actes Sud		161	2330065566	978-2330065560	fr	t			\N
caa1fcde-d37d-4c33-be4b-d9f256ebb9bd	Les singuliers				2014	0	Actes Sud		298	2330066791	978-2330066796	fr	f			\N
11e70006-e066-4626-8f08-e693950ba81b	Les Trois Âges Russes				2015	0	Fayard		308	2213685681	978-2213685687	fr	f			\N
a07b68d0-203b-4463-b76a-11b71f2848aa	A tourist in Africa				1960	0	Chapman & Hall		167			en	f			\N
77c6d1e5-02dc-4922-9ed3-ef1b1fa39c52	Le Voleur				1897	0	Bibebook		458	9782824703954	978-2824703954	fr	t			\N
1d5b2010-d807-4c66-bc6f-c31255feebb0	Illettré				2016	0	Actes sud		212	2330090617	978-2330090616	fr	f			\N
90b10a6e-d33f-4346-a1a5-cc049f4c9872	L’Hiver aux trousses				2015	0	Gallimard	Folio	267	2070467945	978-2070467945	fr	f			\N
c524d100-6539-456a-bfd5-0f60f60b5ba4	Des chaussures pleines de vodka chaude				2008	0	Actes Sud		181	233008160X	978-2330081607	fr	f			\N
b0cc8c3e-383a-4064-a43b-aaf558ef2bc6	La Saint-Barthélemy				2007	0	Gallimard	Folio Histoire	376	2072748860	978-2072748868	fr	f			\N
80457b69-8381-4aa3-a642-c6d8f9fa28f2	It Doesn't Have to Be Crazy at Work				2018	0	Harper Business		107		978-0062874795	en	t			\N
0941ac38-14d7-4b54-987c-de4ece3dbd3d	Le Quatrième Mur				2013	0	Le Livre de Poche		327	2253179825	978-2253179825	fr	f			\N
61a805be-64e7-4a8f-a5d8-a81b34f0f07a	Du bonheur d’être morphinomane				1991	0	Gallimard	Folio	310	2070793486	978-2070793488	fr	f			\N
d70b4c58-f26c-4d60-910c-f73fe631c672	God's Little Acre				1933	0	The University of Georgia Press		211			en	f			\N
39cf4f7b-e2d3-4666-8176-1b96bf5fbb81	Orient exils				2000	0	Payot	Petite Bibliothèque Payot	210	2228897175	978-2228897174	fr	f			\N
b3bf9db8-b9a9-49de-a0a2-34e56faa9c98	L'Amie prodigieuse				2011	0			381			fr	t			\N
c545bf30-b3f6-4501-8e09-887f1f420a20	The Road to Oxiana				1937	0	Oxford University Press		286	0195030672	978-0195030679	en	f			\N
61080a91-637a-4d71-86d3-66f6d6eab5aa	Le quart				1954	0	Gallimard	Folio	340	2070359476	978-2070359479	fr	f			\N
0964fe77-f0c3-4eec-ae06-c9ce0c646eb4	Le Chemin des âmes				2005	0	Librairie générale française	Le Livre de Poche	471	2253119849	978-2253119845	fr	f			\N
fd665453-35ad-4720-afe2-a7228ff7ab3e	My Past and Thoughts		Былое и думы		1870	0			676			en	f			\N
6bb040d7-1c24-4651-b9d0-d8d55b6b17a3	La Place				1984	0	Gallimard	Folio	114	2070377229	978-2070377220	fr	f			\N
240b9d86-3ce2-496b-b847-bb6d19bc4a3e	Conquistadors				2009	0	Éditions Léo Scheer		389	2330053223	978-2330053222	fr	f			\N
65c54f99-8d70-4664-8b82-9bc0d7fe2252	Les Justes				1949	0	Gallimard	NRF	183			fr	f			\N
c64e04b4-3fda-43bb-bd2b-7e45f02937fc	Rien ne s'oppose à la nuit				2011	0	Éditions Jean-Claude Lattès	Le Livre de Poche	401	2253164267	978-2253164265	fr	f			\N
9773fc83-dbde-4f0c-ae87-af8712e37adc	Le Gone du Chaâba				1986	0	Points		231	2020800322	978-2020800327	fr	f			\N
45e11f2a-eb00-4d9f-834e-f84fcd6cd9d5	Je l'aimais				2002	0	J'ai lu		157			fr	f			\N
3bf3e30a-9cf3-4406-b7fc-455d65da1080	Peine Perdue				2014	0			409	2290109509	978-2290109502	fr	f			\N
476179f2-f569-4791-826f-5fd41af85f1e	J’aurais dû apporter des fleurs				2014	0	Gallimard	Folio	170	2070469697	978-2070469697	fr	f			\N
b2fdc115-0135-42f9-ab16-d8bd00e3a9f0	En face				2016	0	Librairie générale française	Le Livre de Poche	187	2253069248	978-2253069249	fr	f			\N
a18f3d3c-16f3-4177-adab-932b3b218e4a	Respirer				2018	0	Éditions de L'observatoire		84	1032903511	979-1032903513	fr	f			\N
7296aec1-0450-4bae-94f2-d3c1c1c2c332	Le monde hellénistique				1995	0	Points		235	2020131307	978-2020131308	fr	f			\N
062826bf-4784-4167-9014-372fb1eef678	Une colonne de feu				2017	0			934			fr	t			\N
bf5ab47a-b03c-41f9-855e-3c4dbf15cb53	D'après une histoire vraie				2015	0			288			fr	t			\N
13b50f14-30dd-4e0e-8cec-72ed942b8ffc	Paris est une fête				1964	0	Gallimard	Folio	241	2070437442	978-2070437443	fr	f			\N
769c3b25-4561-408e-809d-4a4d50f097bb	Claudine en ménage				1902	0	Klincksieck		159		978-8257301217	fr	f			\N
457410d9-4f3b-4404-b0c9-3114c780897f	Frère des astres				2016	0	Librairie générale française	Le Livre de Poche	190	2253070173	978-2253070177	fr	f			\N
e750fa49-143c-4b40-acf6-82c6aaec2ef0	L'Enfant perdue				2014	0	Gallimard		550	2072699312	978-2072699313	fr	f			\N
bbe7c59b-5931-4614-a4ec-5136955bc9e4	Les Carnets du sous-sol		Записки из подполья		1864	1992	Actes Sud	Babel	165	2868697992	978-2868697998	fr	f			\N
9b57772c-c7f8-407b-abb8-773a4bed39c0	Pères et Fils		Отцы и дети		1862	1982	Gallimard	Folio	287		978-2070344871	fr	f			\N
70939403-8555-4ddd-ac53-422e6899bad3	Fendre l'armure				2017	0	Le Dilettante		285	2842639138	978-2842639136	fr	f			\N
ff1184ec-055e-4def-845f-56095b2db290	Méharées				1937	0			325			fr	f			\N
617c9ead-04b3-46cc-8f43-daa460d237e8	La Moustache				1986	0			183			fr	f			\N
164f2118-4e83-49ad-a3bd-e530ace485e6	One's company				1936	0	The Book Club		319			en	f			\N
f190fb53-c924-4154-be64-52a0f54e246f	Sapiens				2014	0	Albin Michel		492	2226257012	978-2226257017	fr	f			\N
ebfc6006-8b7f-4aac-b6d7-73e83365a029	La Fortune des Rougon				1871	0	Gallimard	Folio	382			fr	f			\N
461dd474-6d48-4fc7-a72a-ef2cdccde075	Malone meurt				1951	0			217			fr	f			\N
b84fc9a5-9f75-4a86-93d8-619a29ce6946	Le Pressentiment				1935	0	Points		150	2757812262	978-2757812266	fr	f			\N
c0131cba-615e-4db6-9c8c-fdeb904211d6	L'hiver des hommes				2012	0	Julliard		295		978-2260020660	fr	t			\N
10f4fec4-efc2-46c3-b448-850a07bb55ee	Bye Bye Blondie				2004	0			190			fr	t			\N
3ce0b34c-2ff2-4ec8-9ba3-773709a32f84	Mémoires I				1755	0	Gallimard	Folio	99	2070382346	978-2070382347	fr	f			\N
968d2e2a-a6ec-4872-853a-d20da416b921	Ecrivains voyageurs				2011	0	Arthaud		210	2081245655	978-2081245655	fr	f			\N
90fc9883-beb3-48b6-8c86-222a80e5cdf6	L'occupation				2002	0			40			fr	t			\N
7c667e0e-c0dd-4c6a-9c7c-5dd685bf43f7	Bas les coeurs !				1889	0	Petite plume Edition		191		123-0000830584	fr	t			\N
6a4a4941-579f-48f9-b142-379dbca76726	 La Grèce et les Balkans				2013	0	Gallimard	Folio Histoire	647	2070396061	978-2070396061	fr	f			\N
7ec1dedb-2f94-4ff6-9a8c-a955227cfa99	Hong-Kong et Macao				1957	0	Gallimard	Folio	250		978-2070440641	fr	f			\N
032397d1-2bb2-4866-807b-5758450ef30c	Les Trois Mousquetaires				1844	0			631			fr	t			\N
cedeca96-4752-45b5-8f78-69bfd805a706	Chien-Loup				2018	0	Flammarion		405			fr	t			\N
df0867b6-9e5d-4beb-8e02-b65fd0fe492a	La Maison de rendez-vous				1965	0	Les Éditions de Minuit		215		978-2707301031	fr	f			\N
408e1598-e5e7-42eb-9363-4bbc5a6a1328	The library of history IV - Book IX - XII		Βιβλιοθήκη ἱστορική		-60	1960	Harvard University Press	The Loeb Classical Library	461			en	f			\N
ad69b491-0952-43e0-81cd-27a8b9a37007	Jonquille				2017	0	Gallimard		367	2072738644	978-2072738647	fr	f			\N
61e7d0b7-7081-4fae-ab58-9f272e00bc44	La piste fauve				1954	0	Gallimard	Folio	385	2070456951	978-2070456956	fr	f			\N
247ec38e-b02a-4c3d-953f-b2f96573f11c	Mama Blanca's Memoirs				1929	0			115			en	f			\N
31c7a85b-cfa2-4534-9b2d-5f3ee3424693	Vernon Subutex, 3				2017	0	Grasset		399	2246861268	978-2246861263	fr	t			\N
1b9fb3f2-56df-4c0f-a9c9-d2f5f8199cf8	Les Âmes grises				2003	0	Livre de poche		280	2253109088	978-2253109082	fr	f			\N
e8ece71b-4c80-429d-ac32-a39e7bcec4be	Je voudrais que quelqu'un m'attende quelque part				1999	0	J'ai lu		157	2298059594	978-2298059595	fr	f			\N
9fff0ecb-f91f-49c7-907d-078ee9bfc8e8	Setting the East Ablaze	Lenin's Dream of an Empire in Asia			1984	0			242			en	f			\N
19c255a3-e151-43a7-b185-103e1255bc3e	The island: a journey to Sakhalin				1894	0	Washington Square Press	The Russian Library	371			en	f			\N
aaaa815a-f044-4e36-8f37-a83478a72a49	Vladivostok	Neiges et moussons			2011	0	Edition Phébus	Libretto	217	2752908733	978-2752908735	fr	f			\N
6c02e51c-8d02-4e2e-849f-2fd05f420853	La Chute				1956	0	Gallimard	Folio	153			fr	f			\N
e6949d9a-0d62-442e-92bd-0c1eb7dad92d	Two Years Before the Mast				1840	0			183			en	t			\N
74be9c6b-a336-476a-8c4e-eb4b3f63e29b	Dangling in the Tournefortia				1981	0	Black Sparrow Press		281	0876855257	978-0876855256	en	f			\N
9be44c45-a560-4221-bd2d-09372ca15317	Mille Soleils				2018	0	Préludes		244	2253107875	978-2253107873	fr	f			\N
4b72d129-61c3-4d42-b6fa-9e1d0bfcc07c	Fables	Fables choisies, mises en vers par M. de La Fontaine			1694	0	Oxford University Press		164			fr	f			\N
817869c0-42d6-4d16-9b5a-1657a714b190	Les Particules élémentaires				1998	0			304			fr	t			\N
9f5392a0-6ecc-4b30-8788-2699f5d643ef	 L'invention du voyage				2016	0	Le Passeur	Chemins D'etoiles	170	2368903534	978-2368903537	fr	t			\N
da94fb23-0d5c-4049-80a1-fdf3aec9843d	Amok ou le fou de Malaisie				1922	0			118			fr	t			\N
e26162cf-8784-49eb-8f47-505159211110	Conscience contre violence				1936	0	Librairie générale française	Le Livre de Poche	263	2253153710	978-2253153719	fr	f			\N
bab9e24c-c3bf-4e9f-82d5-f06f451c9ccf	Avec les alcooliques anonymes				1960	0	Gallimard		294	2070453553	978-2070453559	fr	t			\N
5355274d-57f5-41e4-a349-e712a6b52971	Les lisières				2012	0	Flammarion	J'ai lu	505		978-2290068489	fr	f			\N
8c83d5cb-8be2-406d-baa2-b6084e15aa7b	Chagrin d'école				2007	0			255			fr	t			\N
56e160ca-41a5-4673-8eab-7529886f6eb0	A life				1892	0			398			en	f			\N
a0a737d9-affc-4f8d-ab3e-289906296e8f	The Storm of Steel				1920	0	Chatto & Windus		319			en	f			\N
46135ae0-0d62-4a2d-9234-aff3c2878944	Pas Pleurer				2014	0			156			fr	t			\N
e9f7c1a3-7d07-48bf-8535-42ec16f01c1e	Le lambeau				2018	0	Gallimard		510	2072689074	978-2072689079	fr	f			\N
e4a196ae-808f-4c74-97d7-d7ac5b02698a	La vie est facile, ne t'inquiète pas				2015	0	Michel Lafon		201		9782749926681	fr	t			\N
64ad279b-86c6-4b82-88fc-e927e1545860	Un brillant avenir				2008	0	Gallimard	Folio	366	2070402584	978-2070402588	fr	f			\N
241e9480-873c-4094-ae76-341c63c0b30d	Je, François Villon				2006	0			316			fr	t			\N
4db1fea4-5b66-4fc0-a942-1218b93ebabf	Oh...				2012	0	Gallimard	Folio	248	2070456285	978-2070456284	fr	f			\N
8ed1d8b4-e9b5-4b72-8660-7d76e50fde94	News from Tartary				1936	0	Charles Scribner's sons		381			en	f			\N
b7fa4291-e542-4317-9500-3c8aad11e7ee	Le nord c'est l'est				2013	0	Edition Phébus	Littérature française	214	275290875X	978-2752906205	fr	f			\N
38871e45-269f-4cc1-a2f4-70714efd2f36	Les heures souterraines				2009	0	Éditions Jean-Claude Lattès		170		978-2709635851	fr	t			\N
c0c524f5-00af-4001-b42e-481d6d08db12	Le voyageur enchanté				1873	0	Rivages		260	2743622776	978-2743622770	fr	f			\N
b763794e-b688-4a2e-b88c-1882e2e04e5a	Lorenzaccio				1834	0	Gallimard	Bibliothèque de la Pléiade	150	2070111806	978-2070111800	fr	f			\N
72b0629c-0317-4254-8919-4c6245f26ff3	D'autres vies que la mienne				2009	0			334			fr	f			\N
a879a855-6c09-465a-a171-b4706c8887e2	On regrettera plus tard				2016	0			239			fr	t			\N
a3d9c2eb-161a-4c4b-bcde-94cc0196e0de	Pourquoi Byzance ?				2005	0	Gallimard	Folio	371	2070341003	978-2070341009	fr	f			\N
4e40e478-6783-4d34-9066-c4418c42e989	Voyage d'une Parisienne à Lhassa				1927	0			250			fr	f			\N
838f79eb-67a1-4c87-b031-83d47a6b2407	Scènes de la vie de bohème				1851	0	Gallimard	Folio	432		978-2070380558	fr	f			\N
fb67eb4b-ef39-47c4-9c43-757332e724e1	La Maladroite				2015	0			124			fr	t			\N
eda3ba6f-fff3-447a-8d06-4460a67056ad	Les Thibault 				1939	0	Gallimard	Bibliothèque de la Pléiade	1798		978-2070103430	fr	f			\N
99a8f733-d76e-4c3e-8582-92f02dd541a8	Le Pont sur la Drina				1945	0	Librairie générale française	Le Livre de Poche	370	225393321X	978-2253933212	fr	f			\N
b80749eb-76d7-41d0-968b-d09b65174cea	Emmène-moi au bout du monde !				1956	0			216			fr	t			\N
90fd6505-dd66-49e7-929b-96d306980bef	Un faux pas dans la vie d'Emma Picard				2015	0	Librairie générale française	Le Livre de Poche	282	2253066036	978-2253066033	fr	f			\N
7d9298ca-2087-4c24-8030-bfe8b0bf9fc9	Le Roman de la Russie insolite	Du Transsibérien à la Volga			2004	0			263	2253118311	978-2253118312	fr	f			\N
94da7b7f-7076-4aa3-9f38-31f9528f3ef9	Berezina				2015	0			145			fr	t			\N
c1e41bf8-7b80-4528-ab9b-a0cbf7a71828	Dans le jardin de l’ogre				2014	0	Gallimard	Folio	228	2070468186	978-2070468188	fr	f			\N
6ce3e992-ea51-4488-9547-0e06ca3e1d12	Fouché				1929	0	Librairie générale française	Le Livre de Poche	279	2253147966	978-2253147961	fr	t			\N
146a4da7-7662-44b8-9b65-bcadc4f75356	The Valleys of the Assassins	and Other Persian Travels			1934	0	Modern Library	Modern Library Paperbacks	292	0375757538	978-0375757532	en	f			\N
16281d89-8fb7-46df-949f-c58d6d4c8065	The Road				1907	0	Peregrine Smith, Inc.		224			en	f			\N
d075640a-1632-4eb9-91c7-b7158a2b5b24	Winter of the World				2012	0			740			en	t			\N
be3273ec-7a5b-444a-b82b-c935b5acc513	Une vie sans fin				2018	0	Grasset		236		978-2246812623	fr	t			\N
48381d54-976c-4135-98b4-d1f71212e136	Bayonets to Lhasa	The First Full Account of the British Invasion of the Tibet in 1904			1961	0	Harper & Brothers		309			en	f			\N
9a7ccedb-2990-471b-9fe4-e6a05036e45d	Chanson de la ville silencieuse				2018	0			217	2081422034	978-2081422032	fr	f			\N
e1e129b3-83f8-4ee1-bafd-ea0d5ab3414b	L'Assommoir				1876	0			412			fr	t			\N
d7be4efe-a1f6-4b50-bc5e-5e037281bbfd	Nouvelles de Pétersbourg				1843	0	Gallimard	Folio Classique	277	2070406229	978-2070406227	fr	f			\N
db1da131-57d9-45d7-91a3-b7e61e6104d3	Vie et mort de Léon Trotsky				1951	0	La découverte		316	2707166413	978-2707166418	fr	f			\N
5e204eac-e474-4f0b-b5ea-e511574ef373	L'Art français de la guerre				2011	0	Gallimard		631			fr	t			\N
40f2480e-a855-4fb8-a4f1-625be546a348	La Servante écarlate				1985	0	Robert Laffont		520	2221139264	978-2221139264	fr	f			\N
7b8d7d3a-724f-4ada-8239-c892483bf4c4	Caligula				1944	0	Gallimard	Bibliothèque de la Pléiade	108			fr	f			\N
a238bf1f-b835-4d4a-87bb-e267afe9f47d	Chanson douce				2016	0	Gallimard		176		9782072681578	fr	t			\N
7715952d-9a18-49a6-8eec-40c768d71848	Putain				2001	0	Points		187	2020557177	978-2020557177	fr	f			\N
c1f592cf-82fc-45b6-9538-5b7221fda1da	Un héros de notre temps		Герой нашего времени		1840	1998	Gallimard	Folio bilingue	450		978-2070401611	fr	f			\N
18376f90-3b8c-4135-8966-c1201e42c150	The Whisperers				2007	0			701			en	t			\N
5307bdb9-0c63-45e7-b412-e84bf53c2438	Grosse Faim				2000	0	10/18		326	2264034157	978-2264034151	fr	f			\N
a3a440eb-b7c2-46e3-9fc5-80da3a2e8987	Marcher à Kerguelen				2018	0	Gallimard		236	2070148858	978-2070148851	fr	f			\N
97d8ae65-e268-4593-bd4d-397dceca78ba	The Fate of Admiral Kolchak				1963	0			237			en	f			\N
0637e35d-3e55-401d-9ecd-6db9528c4ae1	Le Royaume				2014	0			630			fr	t			\N
bb953eba-363f-4508-aa96-c42dc038c7df	Nord-nord-ouest				2015	0	Actes Sud		266	2330078161	978-2330078164	fr	f			\N
2677237f-49fc-48c9-bb56-99df1b710f0f	La chance de leur vie				2018	0	L'Olivier		257		978-2823610383	fr	t			\N
f0d119f4-6bdd-4c3a-a606-98fb10ea2bb6	L'adieu aux armes				1929	0			316			fr	f			\N
0cca0303-b849-44f3-b5f6-d17b7053c47e	Trompe-la-mort				2016	0	Librairie générale française	Le Livre de Poche	408	2253068675	978-2253068679	fr	f			\N
65b85473-ec6f-4579-9846-8a73a3dd3e49	L'Homme de Lewis		The Lewis Man		2011	2011	Actes Sud	Babel Noir	380		978-2330014414	fr	f			\N
79bacf17-a464-4f1f-91df-aee2afdeee44	Meursault, contre-enquête				2013	0			112			fr	t			\N
a0943a95-81e1-44ac-ae09-4489f299f185	La mer des cosmonautes				2017	0	Paulsen		184	291655274X	978-2916552743	fr	f			\N
053601ae-5afc-4ae8-9b42-a0f5380f57d2	On ne voyait que le bonheur				2013	0	Éditions Jean-Claude Lattès		306	2253182869	978-2253182863	fr	f			\N
9c3cd095-c87d-4d69-a4b5-3de74d16e393	Phèdre				1677	0	Les Belles Lettres		78			fr	f			\N
9868a286-2fe5-4ddc-94e3-72342c615b17	La femme qui fuit				2015	0	Librairie générale française	Le Livre de Poche	380	2253070750	978-2253070757	fr	f			\N
17d80c15-91d8-440f-9e96-70a7e755c9c2	Oblomov		Обломов		1859	1986	Librairie générale française	Le Livre de Poche	668		978-2070429288	fr	f			\N
78688171-33f4-49c2-affe-3b81045f5e18	 Premier amour - Un Nid de gentilhomme 				1860	1953	Gallimard	Folio	349	2070376192	978-2070376193	fr	f			\N
2f6642d8-ce67-4205-8c9a-cdbaaea138b1	La civilisation de l'Occident médiéval				1984	0	Flammarion		313	2081212943	978-2081212947	fr	f			\N
e3b893d4-3c4e-4883-9698-2b3ee65a45a5	Vernon Subutex, 2				2015	0	Librairie générale française	Le Livre de Poche	405	225308767X	978-2253087670	fr	t			\N
742060e4-5960-45a4-a90b-9937e35b3b64	La gaieté				2014	0			131			fr	t			\N
ae98b70f-d002-459e-b3e5-877b1ffaf4b9	Les jeunes filles				1939	0	Gallimard	Bibliothèque de la Pléiade	631	2070103765	978-2070103768	en	f			\N
10aa5fbe-5f5b-44d9-9a45-e2a52405bec8	L'Amour, la fantasia				1985	0	Librairie générale française	Le Livre de Poche	314	2253151270	978-2253151272	fr	f			\N
16def6ca-52ef-4ead-892b-c8a794c00962	Récits de la maison des morts				1862	0	Flammarion		427	2081306476	978-2081306479	fr	f			\N
83fc243d-b0d7-4a16-867d-1cf35f98bb25	Le grand Paris				2017	0			397			fr	t			\N
56a64fe3-dc1c-4e91-8f29-fe9f24b9646a	La Part de l'autre				2001	0			373			fr	t			\N
9127b709-1f77-4c30-a2ce-1b89256bb77c	The Wild Palms				1939	0	Vintage Books		339			en	f			\N
0cedd785-cb06-42be-ba11-8db8f1bc0674	Les Feux de l'automne				1957	0			213			fr	t			\N
56ad04c0-db88-4a03-b0fa-4a55ccacdee9	Histoire de la Russie des tsars				1974	0	Perrin	Tempus	581	2262069697	978-2262069698	fr	f			\N
9a5364e6-7017-45ba-8b94-2641b3eb59ea	Pêcheur d'Islande				1886	0			134			fr	t			\N
e42905a3-f1e3-484d-930e-018fad7fcde9	Un roman français				2009	0	Le Livre de Poche		246	2253134414	978-2253134411	fr	f			\N
29851a54-499e-434c-81d7-368a41216656	Le Nouveau Nom				2012	0			571			fr	t			\N
26530f9f-8a20-416e-b791-caa2bd6b6d22	Profession de foi du vicaire savoyard 				1762	0	J. Vrin		51	B0014M7RMW		fr	f			\N
bc361bda-f174-4ab3-89e3-c5b5fbba0361	The Saint of Incipient Insanities				2004	0	Farrar, Straus and Giroux		351	0374253579	978-0374253578	en	f			\N
265553ed-408d-43dd-aa1f-dae8075fa93b	Mon traître				2008	0			141			fr	t			\N
a4bedbec-1afb-4411-a959-f1fcd822160f	L'Échappée belle				2001	0	Le Dilettante		166	2298030995	978-2298030990	fr	f			\N
6307e505-4613-4ab5-9dd5-91a24cdb464b	The Heart of the Matter				1948	0			320			en	f			\N
911b9dd9-cf0b-48c0-ae8f-02e152222d61	La Comédie (in)humaine				2018	0	Éditions de l'Observatoire		215		979-1032903988	fr	t			\N
a25483a5-1f6d-48aa-8194-af7173fd0bea	Le Potentiel érotique de ma femme				2004	0	Gallimard	Folio	179	2070309770	978-2070309771	fr	f			\N
6f2ac2a0-405e-4edd-8c35-3164d57bef89	Le Musée de l'innocence		Masumiyet Müzesi		2008	2011	Gallimard	Folio	812		978-2070448326	fr	f			\N
d9355762-569d-48fb-88e7-bd424f86a058	The Age of Innocence				1920	0	Oxford University Press	Oxford World's Classis	254			en	f			\N
35a79698-fc05-4119-a4cb-c5c49ce92d1c	Histoires - Livre V		Ἱστορίαι		-150	1969	Les Belles Lettres	Universités de France	176		978-2251002774	fr	f			\N
b8d442fb-84f6-4333-99e8-f38cbaaf3dc1	Un Parfum d'herbe coupée				2015	0	Préludes		285	2253191116	978-2253191117	fr	f			\N
220d05dd-fedf-4aef-bcb5-019b017f6635	Ruy Blas				1838	0	Gallimard	Bibliothèque de la Pléiade	140	2070102661	978-2070102662	fr	f			\N
b7815998-7bf6-44f7-8128-ab04fff343d2	Les Déracinés				1897	0	Plon		552			fr	f			\N
01d925ec-cea5-47ad-91b8-794203da3814	Neverhome				2014	0	Actes Sud		256			fr	f			\N
2cbce142-4bcc-4040-b5dd-ef18762ac87c	Un été avec Montaigne				2013	0	Éditions des Équateurs		168	2849902446	978-2849902448	fr	f			\N
5c8b610c-cc3f-441f-8a62-bbe5c1694948	La Maîtresse de Brecht				2003	0			175			fr	t			\N
979034d1-49da-4772-b2b0-d75c23590e61	La Bâtarde d'Istanbul				2007	0	10/18		375	2264052481	978-2264052483	fr	f			\N
58967342-9e55-4bf1-89b0-c290a9080f75	Histoire de la violence				2016	0	Points		227	2757864815	978-2757864814	fr	f			\N
5b1d8c6a-8256-41d1-825f-96c5b6d413ea	L’Anarchie				1894	0	Mille Et Une Nuits		20		978-2755502763	fr	t			\N
5c2ccefd-ebb9-41b9-951e-27e26d7d9165	Churchill				2013	0	Gallimard	Folio Biographies	237	2070447413	978-2070447411	fr	f			\N
a870bca3-48cd-4f23-8184-59fdc28fb17f	Les Frères Karamazov				1880	0	Gallimard	Folio Classique	953	2070389626	978-2070389629	fr	f			\N
788dfbad-ebd5-4348-aefe-9405a4a4dfdd	La Septième Fonction du langage				2015	0	Librairie générale française	Le Livre de Poche	478	2253066249	978-2253066248	fr	f			\N
6c830bc4-eb93-4583-ad14-784c7f799e00	Le dernier jour d'un condamné				1829	0	Gallimard	Folio	140	2070413101	978-2070413102	fr	f			\N
99bc4cbe-002f-4a85-a9ae-77645e7d7948	La soif				2002	0	Actes Sud		127	2742762825	978-2742762828	fr	f			\N
544ce2f8-4849-4ea8-976f-e93b13595bca	Dans les forêts de Sibérie				2011	0	Gallimard	Folio	290	207045150X	978-2070451500	fr	f			\N
a8c7aa70-2ce0-4545-a57e-acd19ce0a04c	Lourdes				1894	0	Gallimard	Folio	579	2070388786	978-2070388783	fr	f			\N
6cde16a9-407e-4553-8f85-16ce55c5f5e5	On a chinese screen				1922	0	Heinemann		214			en	f			\N
5a650ae3-b125-4b02-a04b-54bf3081e091	La Peste				1947	0	Gallimard	NRF	337			fr	f			\N
ef3b6a1d-9a6f-403d-939a-6173ef2b4f32	Moment d'un couple				2013	0	Gallimard		289		978-2072574993	fr	t			\N
5d1f75f7-f03e-4046-94ea-721f0139e001	Le jour où Nina Simone a cessé de chanter				2008	0	Actes sud		158	2742793100	978-2742793105	fr	f			\N
ec637538-50fd-49df-a32d-a3bd0142c8b7	Une promesse				2006	0	Librairie générale française	Le Livre de Poche	217	2253121142	978-2253121145	fr	f			\N
994bb4cf-736c-42d1-955e-d75420f009de	The library of history III - Book IV - VIII		Βιβλιοθήκη ἱστορική		-60	1960	Harvard University Press	The Loeb Classical Library	427			en	f			\N
37e74a86-467f-438c-ad5a-d6a20f8396c3	L'Œuvre au noir				1968	0	Gallimard	Folio	443	2072376542	9782072376542	fr	f			\N
d92d9ba1-1fb0-44f7-bd01-8627eb393414	The Continual Condition				2009	0	ecco		127	9780061771200		en	f			\N
70659e5e-6f9f-4657-bd11-7538f7ebaa1b	Voyage à Tombouctou - I				1830	0	La découverte		367	9782707153586	978-2707153586	fr	f			\N
fc666ebb-c483-497f-92fc-e690ae160ec5	Histoire de la révolution française, tome 2				1850	0	Gallimard	Bibliothèque de la Pléiade	996	2070103579	978-2070103577	fr	f			\N
598a5ed3-69e2-4197-9b23-dd5eba659a05	Chouette, une ride !				2009	0	Librairie générale française	Le Livre de Poche	284	 2253129348	978-2253129349	fr	f			\N
27fd4355-ca75-4df5-ac26-517502be7a3f	Palmyre, l'irremplaçable trésor				2015	0	Albin Michel		82	222631511X	978-2226315113	fr	t			\N
ee07a849-a758-4ca2-984e-464ff31c282d	La guerre de Trente Ans				1999	0	Perrin		284	2262023972	978-2262023973	fr	f			\N
f3396bba-1626-40bc-9742-0b4fc781e3de	Sons and lovers				1913	0			423			fr	f			\N
c7974150-bdd0-418b-b4a9-ecca4216bab6	Romeo and Juliet				1597	0			84			en	f			\N
647133a9-3285-4692-86fe-7e1c9e3cb293	Rebecca				1938	0			444			fr	f			\N
e96c05f3-d991-496a-b0a3-bf597de58d28	Les salauds de l'Europe				2017	0	Calmann-Levy		311	2702160883	978-2702160886	fr	f			\N
10a89048-5af6-4884-a620-eda1d7f5b636	L'Éducation sentimentale				1869	0			480			fr	t			\N
ffdd3f77-b5ac-425f-b011-ca2a856273e7	Le refuge des cimes				1999	0	Payot	Petite Bibliothèque Payot	253	2228908525	978-2228908528	fr	f			\N
e0944b1a-ea74-4d9a-aec3-a9905f997fa5	La Première Chose qu'on regarde				2013	0			115			fr	t			\N
ffbd8b5b-7bde-4447-a0eb-89b26d859203	Rimbaud le fils				1991	0	Gallimard	Folio	120	2070388085	978-2070388080	fr	f			\N
8c663d38-b7cf-44bd-be88-a811acd31985	Les Insurrections singulières				2011	0	Actes Sud		228	2742795308	978-2742795307	fr	f			\N
41d0e07f-bc8d-4212-89bd-af2a7304558a	Plutarch's lives VIII				100	1919	Harvard University Press		411			en	f			\N
0ebdd804-69a7-47ea-a15b-4c08386e5a6d	La Faille				2015	0			526			fr	t			\N
72ca2702-f88e-4ac8-9996-b439fd8f9c5e	Histoires - Livre IV		Ἱστορίαι		-150	1969	Les Belles Lettres	Universités de France	137		978-2251002767	fr	f			\N
50213b63-824c-4e5a-a2b6-34059ac92ec7	Gens de Dublin				1914	0	Pocket		250			fr	f			
e4d8d32c-02c8-4c6a-b460-8e872aeb1a06	Le château blanc				1991	0	Gallimard	Folio	259	2070411060	978-2070411061	fr	f			\N
075fad07-f583-441c-8cb5-cf28c70d1f09	A winter in Arabia				1940	0	Tauris Parke Paperbacks		302			en	f			\N
074d44fa-4fbe-47f6-9eb4-7c4331cfc46f	Histoire de ma vie				1855	0	Stock		346			fr	f			\N
6575ad04-e63a-4773-b674-023d57dd0e14	La Vie sans principe				1863	0	Mille Et Une Nuits		49	2842058526	978-2842058524	fr	f			\N
ce65f3b3-8e29-4ba8-acbd-d0d928f97ef9	Germinal				1885	0			447			fr	t			\N
534e2f21-058b-4e96-ba72-47cf99eeabaf	En Syrie				1927	0			62			fr	t			\N
e58dff4a-9917-4185-9774-50378395c3ce	La renverse				2016	0			190			fr	t			\N
caf634bd-50ce-4602-94ad-6a042f905905	La Confusion des sentiments		Verwirrung der Gefühle		1927	1991	Librairie générale française	Le Livre de Poche	124		978-2253061434	fr	f			\N
b436a4de-7ca2-4fcd-80e5-0d75076261e4	Les Prépondérants				2015	0	Gallimard	Folio	534	2072713587	978-2072713583	fr	f			\N
f014ff1d-4a42-4c4f-818a-23bcf07e19f4	Fin de partie				1957	0	Les Éditions de Minuit		124			fr	f			\N
bf49229b-2464-4374-a803-ba782feccaac	Éloge des femmes mûres	Les souvenirs amoureux d'András Vajda	In Praise of Older Women	The amorous recollections of András Vajda	1965	2001	Gallimard	Folio	284	2070336557	978-2070336555	fr	f			\N
ed938624-0492-4d6d-b109-44e84a710f76	Après le silence				2016	0	Liana levi		262	2867468361	978-2867468360	fr	f			\N
671768bc-77cb-4a09-ac37-cc34cf671cd2	Le Maître et Marguerite				1940	0	Robert Laffont	Pavillons poche	640	2221189965	978-2221189962	fr	f			\N
e2c8e01e-84c0-4402-8daf-6b3781c53c18	La Bataille				1997	0	Livre de poche		270	2253146463	978-2253146469	fr	f			\N
4c676892-4459-4afd-aba8-4015b21a81bd	Ce qui nous sépare				2016	0	Actes sud		169	2330060548	978-2330060541	fr	f			\N
e05c4d60-fdd0-4660-82ba-6a327df5fdc7	Les annales de Pétersbourg				1847	0	Actes sud		75	2742731962	978-2742731961	fr	f			\N
63cf0ce3-3728-4673-9b34-f7246b7f7c6a	La Mort heureuse				1938	0	Gallimard	Folio	172	2070402460	978-2070402465	fr	f			\N
ec2cfcf2-5e08-4e57-8c1a-c2e19c2bdaf6	Faire une nation				2018	0	Gallimard	Folio Histoire	296	2072744458	978-2072744457	fr	f			\N
864288bb-9d42-457b-9415-f689d93bd6c1	Identitaire	Le mauvais génie du christianisme			2017	0	Éditions du Cerf		158	9782204115360	978-2204115360	fr	f			\N
b94a3af0-25ca-40af-84ae-74932d2891f0	Paradis noirs				2009	0	Gallimard	Folio	279	2070459578	978-2070459575	fr	f			\N
49ad4033-78e3-4df6-86e8-83e6134ebd34	Cent ans de solitude		Cien años de soledad		1967	1968	Seuil	Points	461		978-2020238113	fr	f			\N
42ebadc5-4ee7-40d7-8c81-156e38077fd6	La Vallée des rubis				1955	0	Gallimard	Folio	254	2070388468	978-2070388462	fr	f			\N
d13d015d-32a4-4225-859c-5947ced81de5	Paris de ma fenêtre				1944	0	Le Livre de Poche		158		978-2253012092	fr	f			\N
a6f7b75f-7028-4779-a716-028f9394adde	Le Train zéro				1994	0	Gallimard		127	2070136795	978-2070136797	fr	f			\N
21e7f67e-480a-4bbf-a7d8-73e475a2ac0f	A People's Tragedy	The Russian Revolution: 1891–1924			1996	0			1005			en	t			\N
f41292f5-2c08-453b-80f6-8cee2e5fc00a	Quentin Durward				1823	0			477			en	f			\N
3048ce24-8d91-4f35-bb41-91fd93e49316	En ménage				1881	0	10/18		447	2264010827	978-2264010827	fr	f			\N
096c4ce6-8faa-4651-8869-802583227c7c	La Palestine comme métaphore				2002	0	Actes Sud	Babel	179	2742739459	978-2742739455	fr	f			\N
862832e9-20d2-4d61-918e-cc2c18d8faa5	La Splendeur				2014	0	Actes Sud		187	2330090722	978-2330090722	fr	f			\N
7d92d5f2-f6d4-4289-a3a5-f61a261ab381	Histoire du monde au XVe siècle				2009	0	Hachette	Pluriel	737	2818501938	978-2818501931	fr	f			\N
5e41ed5d-94f8-498f-93be-d56702a695ce	Sailing Alone Around the World				1900	0			294			en	f			\N
a01d6983-b503-40f8-82e2-8cfbf421f7a5	La faim				1890	0	Librairie générale française	Le Livre de Poche	295	2253049638	978-2253049630	fr	f			\N
184d82f2-0cad-4879-b252-2e8bb218c295	Un instant d'abandon				2005	0	10/18		1909	2264072784	978-2264072788	fr	f			\N
a2dc2912-d8e0-4e62-9927-7dc119bc2213	 Charlemagne et Mahomet	En Espagne (VIIIe - IXe siècles)			2015	0	Gallimard	Folio Histoire	272	2070357945	978-2070357949	fr	f			\N
2c2050c5-fb91-4f6a-8dbf-8207e7ae5ba8	La Passion selon Juette				2007	0	Le Livre de Poche		176	225312561X	978-2253125617	fr	f			\N
e28f80f4-f121-4431-813c-5927dbd9b5bd	Michel Strogoff				1876	0	Librairie générale française		435	225300586X	978-2253005865	fr	f			
30348922-56b5-4290-8151-cda365a328fe	S'abandonner à vivre				2015	0	Gallimard		162		978-2072580246	fr	t			\N
02047a7b-dee7-45d9-99c2-48b3adec1ce3	Une nihiliste				1890	0	Edition Phébus	Libretto	147	2369141883	978-2369141884	fr	f			\N
82620208-3f31-4d93-a95b-85ed98a224f1	Chien blanc				1969	0			204			fr	t			\N
0444a20a-99e2-48a2-b674-2ac6b7307c71	Le Diable au corps				1923	0			176			fr	f			\N
a2123ab9-535f-41d7-a56a-848212171e7f	Le Capitaine Fracasse				1863	0	Gallimard	Bibliothèque de la Pléiade	466	2070106721	978-2070106721	fr	f			\N
a98bad88-04fe-4d7c-9eca-b7cb047eb0be	Norilsk				2018	0	Paulsen		157	2375020243	978-2375020241	fr	f			\N
cd495f12-4343-4000-9cd1-a8776285f2e1	Évariste				2015	0	Gallimard	Blanche	165	2070147045	978-2070147045	fr	f			\N
5b0ba3d9-d5dd-4436-a7cc-343af32d993c	Le jour d'avant				2017	0	Grasset		326	2246813808	978-2246813804	fr	f			\N
2b51fe18-35dc-4196-8b9a-66aef65914c0	What we talk about when we talk about love				1981	0			159			en	f			\N
85473c40-9b22-40e9-b98c-aaff231ac037	Une saga moscovite I				1992	0	Gallimard	Folio	1031	2070402223	978-2070402229	fr	f			\N
6c539db8-391f-474b-a5fb-e61f7b904f49	Les Rois qui ont fait la France : Saint-louis				1984	0	J'ai lu		383	2290334057	978-2290334058	fr	f			\N
b78768bf-c9c2-42b4-bcdd-208bcf90965f	Le roi disait que j’étais diable				2014	0			240			fr	t			\N
e5c44fe4-1238-40db-8937-3e7984386707	La disparition de Josef Mengele				2017	0	Grasset		184		978-2246855880	fr	t			\N
915842b9-6057-4b3a-a210-312e45e3f8cd	Quatrevingt-treize				1874	0			473			fr	t			\N
f1a32f2d-bd16-4493-9543-7e80dbeba7b7	La Route des Flandres				1960	0			314			fr	f			\N
f39f9498-f480-4bd4-b79b-6bd1ac54c7e6	 La grande vie 				2014	0	Gallimard		52		978-2072621161	fr	t			\N
bf6408d6-2ea0-43e0-9720-3431d9f20829	Rouge Brésil				2001	0	Gallimard		444			fr	t			\N
d943bbf0-4997-40fb-9a8f-7981d18c5dad	A Time of Gifts				1977	0			287			en	f			\N
26beb5c3-f0bc-4730-b3c8-c01ef793056a	Petit pays				2016	0	Grasset		217		978-2246857334	fr	f			\N
3112157f-216d-4c91-812b-4d5d22c6ec11	Croisières et caravanes				1951	0	Payot	Petite Bibliothèque Payot	235	222889446X	978-2228894463	fr	f			\N
dcc8ee80-d941-4c8f-a4e0-190425f774bf	Ti-puss				1951	0	Payot	Petite Bibliothèque Payot	236	2228895563	978-2228895569	fr	f			\N
c3c578fc-9c31-4102-947f-6eb3027c5e46	La Russie selon Poutine				2004	0	Gallimard		375	2070309924	978-2070309924	fr	f			\N
8135bbe4-2bfe-4737-9257-f7bc5f9fb371	Ce cœur changeant				2015	0			338			fr	t			\N
89d1e80d-728b-4c00-940a-37feb74e83b3	Soumission				2015	0			266			fr	t			\N
c6fdfd5c-c84b-4b75-919f-740e220d9f2f	Things fall apart				1958	0	Heinemann		148		978-0435905255	en	f			\N
97767e3d-879a-435e-b2ae-17c9c916b29e	Une vie entière				2014	0	Gallimard	Folio	145	2070793435	978-2070793433	fr	f			\N
3c9fa184-eed3-437b-a23c-cc5f266cbe56	Julie ou la Nouvelle Héloïse				1761	0	Garnier-Flammarion		596			fr	f			\N
7dfcd55b-eaea-496e-bdc8-0b7793ac015f	The library of history I - Book I - II		Βιβλιοθήκη ἱστορική		-60	1960	Harvard University Press	The Loeb Classical Library	465			en	f			\N
5ab556f1-f690-491d-861a-74bd8ddd2f89	Les ennemis de la vie ordinaire				2015	0	Gallimard	Folio	370	2072705029	978-2072705021	fr	f			\N
92d381b1-a866-479c-9eef-f3d35df06403	L'abandon des prétentions				2017	0	Le Livre de Poche		214	2253071366	978-2253071365	fr	f			\N
7a3ea319-a164-4297-b1b0-dae3ad8b8b3a	Le fidèle Rouslan				1982	0	10/18		237	2264064943	978-2264064943	fr	f			\N
f266eeae-89c6-497d-ad77-3e9cdd08b6ec	Eva				2015	0	Librairie générale française	Le Livre de Poche	122	2253045292	978-2253045298	fr	f			\N
dd57ec67-8ec2-47e3-9496-be725128d468	Fouquet ou le Soleil offusqué				1961	0	Gallimard	Folio Histoire	179	2070323145	978-2070323142	fr	f			\N
cadb5f82-4a9d-47ae-a1f5-9cb2700d6bb5	Juste avant l'Oubli				2015	0	Flammarion		211		978-2081363090	fr	t			\N
22a25cee-f4e0-46cf-82f7-572604b47457	Rien de grave				2004	0	Stock		221	2253111821	978-2253111825	fr	f			\N
a1f20ad4-f058-4fd0-850c-23987b9c1247	Pride and Prejudice				1813	0			279			en	t			\N
a879144b-0cc3-47bc-ba56-c0440959df9b	La liste de mes envies				2012	0	Éditions Jean-Claude Lattès		184	225316853X	978-2253168539	fr	f			\N
422b50d1-7b87-4ade-8e80-fb096007f52f	Les Misérables				1862	0	Bibebook		1806		978-2824710808	fr	t			\N
24aeb891-1015-4599-92cc-eba1676a73e0	Ermites dans la taïga		Таёжный тупик		1992	1995	Actes Sud	Babel	298		978-2742705467	fr	f			\N
55dc03c2-7d0d-4daa-ad9e-08257fd90f7d	L'Air et le feu	Les Français vus par les Russes			2014	0	La Bibliotheque		180	2909688356	978-2909688350	fr	t			\N
2ed36115-36e4-4b2e-a4d1-459db2933b2d	L'amant				1984	0			84			fr	t			\N
ce667a31-26c5-4899-8482-a54e64392b83	Boussole				2015	0	Actes Sud		378	2330053126	978-2330053123	fr	t			\N
8794906b-9384-42b8-a25b-6834f2a36178	Les rois maudits, tome 1 : Le Roi de fer				1955	0	Librairie générale française	Le Livre de Poche	292	2253011010	978-2253011019	fr	f			\N
6f9684ef-2007-4e64-a49d-0680f124f0fb	Kafka, l'éternel fiancé	\N	\N	\N	2011	\N	Flammarion		252	2081255251	978-2081255258	fr	\N	\N	\N	\N
f8f77fbb-be06-4ac5-832b-78800f9496b4	Malamorte	\N	\N	\N	2019	\N	Lattes		359	2709663430	978-2709663434	fr	\N	\N	\N	\N
275d0aec-9c16-4c09-8f05-5e12cd71e9db	Le Horla	\N	\N	\N	1887	\N	Gallimard	Folio	245	\N	\N	fr	f	\N	\N	\N
7b4cc449-7d42-4af7-8dc9-d61b40e5e507	Qu'est-ce que le romantisme ?	\N	\N	\N	2016	0	CNRS Éditions	Biblis	217	2271093473	978-2271093479	fr	f	\N	\N	\N
7ae07f50-7de0-4241-abec-5cc383884bc4	Histoire du monde grec antique	\N	\N	\N	2007	0	Librairie générale française	Le Livre de Poche	491	2253113735	978-2253113737	fr	f	\N	\N	\N
b44f105e-85e2-4a0c-be96-dbea5d8c9e4d	The Jungle Book	\N	\N	\N	1894	0	Collins Classics		183			en	f	\N	\N	\N
7585d60e-1018-4387-8051-93753b032bad	Attila	\N	\N	\N	1928	0	Tallandier	TEXTO	251	1021017388	1021017388	fr	f	\N	\N	\N
dd7b40d8-4582-4ae2-85e3-5d659040ec34	Le courage qu'il faut aux rivières	\N	\N	\N	2017	0	Librairie générale française	Le Livre de Poche	209	2253259691	978-2253259695	fr	f	\N	\N	\N
e620530f-6971-4b3c-b69a-de65516a26ac	De l’influence de David Bowie sur la destinée des jeunes filles				2017	0	Librairie générale française	Le Livre de Poche	301	2253237914	978-2253237914	fr	f			
eb271634-8e7d-4b61-9d3e-45302ee79d97	Robert le Pieux	\N	\N	\N	1999	0	CNRS. Editions	Biblis	247	2271117984	978-2271117984	fr	f	\N	\N	\N
0aa2b5a1-c9f7-4799-832d-250a584df749	Un soir de décembre	\N	\N	\N	2005	0	Points		195	2757802712	978-2757802717	fr	f	\N	\N	\N
7b43fbc5-5c29-46ab-b072-72fe120a4007	Les Âmes fortes	\N	\N	\N	1950	\N	Gallimard	Folio	370	2070362493	978-2070362493	fr	\N	\N	\N	\N
205afabd-e6ed-4641-9036-e81d5907bf49	Récits d'un jeune médecin	\N	\N	\N	1963	0	Librairie générale française	Le Livre de Poche	158	225393254X	978-2253932543	fr	f	\N	\N	\N
0761fa0e-e6c4-4e9e-a2d3-c8a7a9deebe5	L'Été des quatre rois	\N	\N	\N	2018	0	Plon		657	2259248438	978-2259248433	fr	f	\N	\N	\N
b83a3267-cbf4-4e84-8d50-723513e5413b	 Dans ces bras-là 	\N	\N	\N	2000	0	Gallimard	Folio	310	2072778735	978-2072778735	fr	f	\N	\N	\N
1f2cc05a-266c-4066-8207-88249c480640	L'année du mensonge	\N	\N	\N	2003	0	Actes Sud		375	2742763694	978-2742763696	fr	f	\N	\N	\N
9f2cc9e8-f0af-4011-8d4d-87bf56d2a2f4	Une vie	\N	\N	\N	2007	0	Librairie générale française	Le Livre de Poche	343	2253127760	978-2253127765	fr	f	\N	\N	\N
3d36dd55-5cd8-45c2-b9f5-21fbe19c748b	Le fil de nos vies brisées	\N	\N	\N	2019	0	Anne Carriere		513	2843378796	978-2843378799	fr	f	\N	\N	\N
3cadd4af-785d-40aa-9c9d-f76086d5734b	La russie des Tsars	\N	\N	\N	2017	0	Perrin	Tempus	419	2262072221	978-2262072223	fr	f	\N	\N	\N
301cf9f0-1d08-42fd-8626-091f4d727d42	Six années qui ont changé le monde	\N	\N	\N	2015	0	Hachette	Pluriel	380	2818505917	978-2818505915	fr	f	\N	\N	\N
1852efd3-69df-4f68-9a67-8e4b8d3553e9	Mon Père	\N	\N	\N	2019	0	Lattes		220	2709665336	978-2709665339	fr	f	\N	\N	\N
6fbac38e-bd61-4e5c-91e7-74efd7abb11c	Une évidence	\N	\N	\N	2019	0	Michel Lafon		372	274993477X	978-2749934778	fr	f	\N	\N	\N
aba9ddb3-585e-47ec-9f8c-accc1955d907	Histoire de la Phénicie	\N	\N	\N	2013	0	Perrin	Tempus	425	2262074461	978-2262074463	fr	f	\N	\N	\N
a7a65070-f26e-4b1a-a04e-f4710d1009e3	De tes nouvelles	\N	\N	\N	2017	0	Albin Michel		341	2226396357	978-2226396358	fr	f	\N	\N	\N
09c075a9-47a0-4442-ae75-b54ab8d38d48	Taipi	\N	\N	\N	1846	0	Gallimard		372	2070375269	978-2070375264	fr	f	\N	\N	\N
201b2092-0782-47c0-9b48-e9f7c2fc64cb	La Mort du roi Tsongor	\N	\N	\N	2002	\N	Librairie générale française	Le Livre de Poche	219	2253108618	978-2253108610	fr	\N	\N	\N	\N
5eeddefe-5b4f-426a-95d0-da5bf352dfd6	L'épopée des croisades	\N	\N	\N	1939	\N	Perrin		308	226206976X	 978-2262069766	fr	\N	\N	\N	\N
327d049a-378b-450a-9115-e89f6eb48e9f	Armagnacs et Bourguignons : la maudite guerre	\N	\N	\N	1988	\N	Perrin	Tempus	389	2262027323	978-2262027322	fr	\N	\N	\N	\N
5dae2e6e-e0c2-48ef-9a3f-95f655e1b047	Magnus	\N	\N	\N	2005	\N	Gallimard	Folio	265	2070336484	978-2070336487	fr	\N	\N	\N	\N
05a2c563-90d1-420b-9920-1fa35a74e20f	Sparte. Histoire politique et sociale jusqu'à la conquête romaine	\N	\N	\N	2003	\N	Points	Histoire	309	2020324539	978-2020324533	fr	\N	\N	\N	\N
919a978c-eb8d-4069-8c2c-cfa83c3807ba	Seule Venise	\N	\N	\N	2004	\N	Actes Sud	Babel	302	274275573X	978-2742755738	fr	\N	\N	\N	\N
2bed343a-671a-40a0-b081-d2e84f5fee56	Une histoire de l'Inde : les Indiens face à leur passé	\N	\N	\N	2007	\N	Albin Michel		335	2226441743 	978-2226441744	fr	\N	\N	\N	\N
d2e3656d-9fb8-4e3b-a8bd-70ac2006c691	Du domaine des Murmures	\N	\N	\N	2011	\N	Gallimard	Folio	226	207045049X 	978-2070450497	fr	\N	\N	\N	\N
d95cd7ff-651a-46fb-830a-f794b03fa9df	Vie et mort de l'ordre du temple	\N	\N	\N	1989	\N	Points	Hitoire	352	2020104822	978-2020104821	fr	\N	\N	\N	\N
25f77346-254c-40c8-b093-cc835088c656	Les Vies parallèles de Nicolaï Bakhmaltov	\N	\N	\N	1993	\N	Actes sud		118	2742700994	978-2742700998	fr	\N	\N	\N	\N
76913dc8-0a35-4559-81bb-f219f317f3df	Grâce et Dénuement				1997	0	Actes sud	Babel	289	2330026757	978-2330026752	fr	f			
1b92608b-30b8-4b9c-90f4-6ec9d1e3722f	Les gratitudes				2019	0	Lattes		173	2709663961	978-2709663960	fr	f			
a066ffa4-bf74-489e-b4c0-58c65ddbb721	Baudelaire et Apollonie				2019	0	Arlea		155	2363081900	978-2363081902	fr	f			
be53c052-2d7e-45f3-8b6a-607ade848bf5	Soudain, seuls				2015	0	Librairie générale française	Le Livre de Poche	217	225309899X	978-2253098997	fr	f			
6d47a8cb-bdd3-49a0-af97-0718863e19f2	Dites-lui que je l'aime				2019	0	Grasset		159	2246813956	978-2246813958	fr	f			
1f0275a7-72e2-4a01-970f-33d53ea837e7	La Guerre d'Indochine : 1945-1954				1987	0	Points	Histoire	277	2020094835	978-2020094832	fr	f			
6c78c5f2-79a9-46e7-9a95-573bd4a2af04	Banquises				2011	0	Librairie générale française	Le Livre de Poche	210	2253176761	978-2253176763	fr	f			
9115b79a-ba8b-4cc4-8001-a53c17819a95	La guerre m'a parlé de loin				2019	0	Stock		170	2234087171	978-2234087170	fr	f			
a70a8735-523f-4808-9941-6897260ec06d	Les Porteurs d'eau				2019	0	P.O.L.		285	281803812X	978-2818038123	fr	f			
3cdc7ce5-9c20-40e6-b3cd-56084f689add	La Femme aux cheveux roux				2019	0	Gallimard		298	2072720044	978-2072720048	fr	f			
9ac1ef6c-a627-43da-93dd-e2b2fb665442	Le prix de la démocratie				2018	0	Fayard		441	2213704619	978-2213704616	fr	f			
dc656efe-15be-4e8f-8b36-12055d1f5389	Simple				2018	0	Stock	La Bleue	203	2234083249	978-2234083240	fr	f			
d5dbc8d4-edee-4cc8-8125-1d27300f94ac	Justice une faillite française ?				2018	0	Librairie générale de droit et de jurisprudence		305	227505720X	978-2275057200	fr	f			
7be006d4-9d37-4c60-abed-d19ff74f9a33	Récidive. 1938				2019	0	Puf		173	2130817505	978-2130817505	fr	f			
1ad7f14d-880a-41b0-9cb2-37aed587ed7a	La cache				2015	0	Gallimard	Folio	329	2070468712	978-2070468713	fr	f			
b222db95-23ab-403b-9c17-7ffcef79bfa6	Le Manuscrit inachevé				2018	0	Pocket		601	2266293001	978-2266293006	fr	f			
15e46904-4848-4b68-8ba4-ecc6d67680aa	Des vies possibles				2019	0	Seuil		185	2021413144	978-2021413144	fr	f			
26e16db8-13f1-4077-8d26-ef88eadb7ef2	Le Livre des Baltimore				2015	0	De Fallois		593	2877069737	978-2877069731	fr	f			
1368f426-915a-4565-9a4b-7754d82da7fe	Famille parfaite				2013	0	Librairie générale française	Le Livre de Poche	568	2253237086	978-2253237082	fr	f			
35424c72-fe5b-47f0-85b4-3f2fdf91e689	L'exploration de la Sibérie				2014	0	Transboreal		557	236157070X	978-2361570705	fr	f			
9951ab74-abca-41c7-9b76-eb7297b12090	La démocratie grecque vue d'ailleurs				1990	0	Flammarion		324	2081228238	978-2081228238	fr	t			\N
042b962c-0120-4eab-8193-936b089387eb	Les Jolis Garçons	\N	\N	\N	2005	0	Librairie générale française	Le Livre de Poche	149	2253259691	978-2253259695	fr	f	\N	\N	\N
e256147e-b774-42c4-aa25-8aa0a049daf0	Histoires - Livre VI		Ἱστορίαι		-150	1969	Les Belles Lettres	Universités de France	144		978-2251002781	fr	f			\N
91f8ce91-522f-43a8-99b2-c421f0af6a50	Vladimir Vyssotski - un cri dans le ciel russe				2015	0	Transboreal		165	2361570831	978-2361570835	fr	f			
18e089b8-185a-40f3-be1b-c2201bddb0b7	La Valse des arbres et du ciel				2016	0	Librairie générale française	Le Livre de Poche	279	2253073717	978-2253073710	fr	f			
1ba51b4e-002f-4a42-9fd1-002017d45292	De l'Atlantique au Pacifique par les glaces de l'Arctique				1928	0	Arthaud	Arthaud Poche	229	2081474131	978-2081474130	fr	f			
be57208f-b1d7-4d3e-b0dd-c174421d748b	Je vous écris de Téhéran				2015	0	Points		353	2757858823	978-2757858820	fr	f			
9d1a3cb2-f533-4a60-b4b1-2096d8379816	Dix petites anarchistes				2018	0	Buchet-Chastel		135	2283031788	978-2283031780	fr	f			
6bc27f54-e174-48b6-b9b5-f20e89bfb52b	La Vérité sur l'affaire Harry Quebert				2012	0	De Fallois		665	2877068161	978-2877068161	fr	f			
0f795279-6cff-4a9a-9841-2c44f45ec890	Voyage dans l'empire mongol				1260	0	Payot		423	2228923893	978-2228923897	fr	f			
2f525110-bfab-4799-8a64-1671db5b30d7	La ruée vers l'Europe				2018	0	Grasset		220	2246803500	978-2246803508	fr	f			
e43fe49e-1585-4f90-8cd5-e39a5eaa634c	Equipiers				2019	0	 Hugo Sport		279	2755641711	978-2755641714	fr	f			
448505e1-ec30-4b4e-932b-a321d546c517	La Disparition de Stephanie Mailer				2018	0	De Fallois		834	1032102233	979-1032102237	fr	f			
79faad62-2d12-4471-a744-2801a31c35c7	Une joie féroce				2018	0	Grasset		312	2246821231	978-2246821236	fr	f			
fd34ad6b-6fba-483f-8798-2c434ca0d2a4	Manuel d'exil				2016	0	Gallimard	Folio	230	2072744725	978-2072744723	fr	f			
28c1ab16-b008-4b8e-b27b-9eba64c390a9	Malefico				2014	0	Librairie générale française	Le Livre de Poche	531	2253111996	978-2253111993	fr	f			
e71a02c9-13ae-4bad-b839-2b8d914ee147	Proust, prix Goncourt				2019	0	Gallimard	Blanche	210	2072846781	978-2072846786	fr	f			
70f7f48a-18e5-4cb0-aa0b-064bf5196b7e	Le cri				2016	0	Pocket		556	2266279866	978-2266279864	fr	f			
2ed78bf2-683f-4958-a601-0c2cfeb9cd8e	Sur cette terre comme au ciel				2012	0	Librairie générale française	Le Livre de Poche	427	2253074020	978-2253074021	fr	f			
17a2108f-80b4-4d4a-bba5-7c568f09cd13	Une partie de badminton				2019	0	Flammarion		377	2081382474	978-2081382473	fr	f			
d15a43e8-edc5-4e6f-a8e6-af8f04b2d9ff	Dégels				2019	0	Autrement		383	2746751364	978-2746751361	fr	f			
8fea223c-20ab-4a30-829d-c3a49f8d941d	La Gouvernante suédoise				2016	0	Arléa		307	2363081161	978-2363081162	fr	f			
1a9af808-13f4-4287-a3d8-9250df328b34	Laëtitia ou la Fin des hommes				2016	0	Points		420	2757868500	978-2757868508	fr	f			
407aa58c-e904-42dd-abe0-d4b15df7c98a	En camping-car				2018	0	Points		167	2757875450	978-2757875452	fr	f			
64554a09-cdd1-4ad0-a289-7ee7e23a9e5a	Le Fémur de Rimbaud				2013	0	Gallimard	Folio	285	2070462897	978-2070462896	fr	f			
32faf080-f4f9-4a73-9bf8-149cb4adadef	Vertige				2011	0			280			fr	t			
23a0d1e3-e3e1-40cf-be3d-712239b9abdd	Permanent Record				2019	0	Metropolitan Books		354		978-1250237231	en	t			
7c02d6c1-1e97-4563-a75a-335a5c654cb3	La Maison				2019	0	Flammarion		368		978-2081470415	fr	t			
f060d8ff-9dd3-46c8-b170-71fc99cfbda1	Au Bonheur des Dames				1883	0			393			fr	t			
93319ec2-8ebc-443a-902f-ea43d7fd09dd	Des hommes justes				2019	0	Le Seuil		386		9782021401578	fr	t			
8ad760ee-47f8-4c6f-ae82-5986315029fc	Le Sermon sur la chute de Rome				2012	0			166			fr	t			
6a224fe8-e8c5-48c1-bebd-7eff5d731809	Nana				1880	0			379			fr	t			
1c38e5c0-349c-4820-951c-79326b0840c8	Mécaniques du chaos				2017	0	Grasset		521		978-2246853787	fr	t			
32b5bd00-b2be-48bf-b013-35903286a5b9	Le Syndrome E				2010	0			399			fr	t			
ba8b0a91-d14a-4ab8-ac0b-20bd3749b7fb	Rue des Boutiques obscures				1978	0			161			fr	t			
c5bba6b3-16f7-47a5-9b74-9e9d7e792543	Trois femmes puissantes				2009	0			309			fr	t			
b35b9db4-1dca-48f5-bc3e-c8ec5a1be6ac	Passeport diplomatique	Quarante ans au Quai d'Orsay			2019	0	Grasset		378	2246821118	978-2246821113	fr	f			
50112d99-9d5c-46e8-9014-fae1d651ce31	N'habite plus à l'adresse indiquée				2019	0	Préludes		221	2253107972	978-2253107972	fr	f			
1e80bd98-69ba-4351-934f-7cd8792c1c3c	Dernière Sommation				2019	0	Grasset		226	2246857910	978-2246857914	fr	f			
b93f79f1-5b98-458e-ad6b-22da27776e52	Mapuche				2012	0	Gallimard	Folio Policier	549	2070784959	978-2070784950	fr	f			
6972439f-434b-46c5-a4a6-03d7295e5037	Un autre Eden				2019	0	Seuil		339	202133127X	978-2021331271	fr	f			
2a50a910-a19b-4a71-9131-fd9001366eea	Civilizations				2019	0	Grasset		379	2246813093	978-2246813095	fr	f			
d6dbeaa1-fa7c-4308-9b8b-46ee4cc31289	Par les routes				2019	0	L'arbalete Gallimard		296	207274038X	978-2072740381	fr	f			
a470ab66-d287-4276-9eda-729834b2c749	Zulu				2008	0	Gallimard		454	2070437574	978-2070437573	fr	f			
f3d7a504-cb8c-45fd-8049-1393cce35d88	Une vie française				2004	0	Points		401	2020826011	978-2020826013	fr	f			
c4d1cf95-791f-4cc1-b51f-75a1ab194e14	Les Croix de bois				1919	0	Librairie générale française	Le Livre de Poche	285	2253003131	978-2253003137	fr	f			
a1ae4912-91b7-4c25-9ba3-66440a84e857	Tiens ferme ta couronne				2017	0	Gallimard	Folio	359	2072823978	978-2072823978	fr	f			
3985f3c2-1776-4bc7-b4d0-19b87d91047a	La Rumeur des steppes				2012	0	Payot		281	2228907383	978-2228907385	fr	f			
2d3af2cb-b627-4d84-8c15-f840baf15b3c	Unna				1977	0	Actes sud 		254	2742752579	978-2742752577	fr	f			
e330af0f-1d6c-44f3-844a-fc9eb4cd9efd	Dimanches d'août				1986	0	Gallimard	Folio	186			fr	f			
c71b3cf7-6110-4726-b849-9220d94d3e31	La Tentation				2019	0	Stock		354	2234087384	978-2234087385	fr	f			
cc65b87e-2064-42a9-bbf6-18130029ae54	Condor				2018	0	Gallimard	Folio Policier	500	2072747686	978-2072747687	fr	f			
b1ac62b9-e88d-437d-a7ea-3c6072526c30	L'intelligence artificielle n'existe pas				2019	0	First		175		978-2412046746	fr	t			
03f74872-f178-4e33-970d-5cc161de8724	Les Choses humaines				2019	0	Gallimard	Blanche	342	2072729335	978-2072729331	fr	f			
8c5db432-9b90-4eed-984a-432ed3167750	L'Heure des fous				2013	0	Librairie générale française	Le Livre de Poche	379	2253259993	978-2253259992	fr	f			
5f368a43-4233-4a05-855a-08afd76a5fb9	Glaise				2017	0	Librairie générale française	Le Livre de Poche	436	2253086460	978-2253086468	fr	f			
d85da9ac-0440-4c13-8ffe-cffbdd1606b3	Une vieille histoire. Nouvelle version				2018	0	Gallimard	Folio	386	2072864593	978-2072864599	fr	f			
785005fc-606e-4c16-b31e-b20e461dd4ae	Aux animaux la guerre				2014	0	Actes sud	Babel Noir	444	2330058640	978-2330058647	fr	f			
963ec1af-ec05-4903-9559-b606067725e7	Le Lion				1958	0	Gallimard	Folio	243	2070368084	978-2070368082	fr	f			
56183e0d-af6b-46b5-ba17-9b470415a8cd	Leurs enfants après eux				2018	0	Actes Sud		426	2330108710	978-2330108717	fr	f			
338538ce-442f-4ab7-bb21-4939a1043326	Le Cœur sauvage				2016	0	Librairie générale française	Le Livre de Poche	231	2253240648	978-2253240648	fr	f			
0895d091-f08c-4b66-a1e4-8dfaee92e90a	Un fils en or				2016	0	Gallimard	Folio	527	207269972X	978-2072699726	fr	f			
475ea291-a1ef-4950-a43f-7418a72a48bf	Couleurs de l'incendie				2018	0	Librairie générale française	Le Livre de Poche	541	2253100412	978-2253100416	fr	f			
527342db-2ec0-4c1d-b087-cee16406d0f5	Quand la machine apprend				2019	0	Odile Jacob		326		978-2738149329	fr	t			
7544ad77-c050-4b67-baa2-1dfefb0ec8b4	L'ombre de la baleine				2018	0	Librairie générale française	Le Livre de Poche	473	2253260142	978-2253260141	fr	f			
b2814d5c-5536-47a2-a000-2ed40898a939	Histoire des Tchèques et des Slovaques				1995	0	Perrin	Tempus 	459	2262023239	978-2262023232	fr	f			
1750a7e3-1716-4b51-85ca-5542cc0af7aa	Entre deux mondes				2017	0	Michel Lafon		371		978-2749935072	fr	f			
2abdb4e8-5128-4bfe-b99d-5e5a7b06e9c7	Fief				2017	0	Points		237	2757871544	978-2757871546	fr	f			
46b32fe7-b76f-4bdd-9cfe-ca2b10aba06e	Le Dieu des Petits Riens				1997	0	Gallimard	Folio	439	2070411729	978-2070411726	fr	f			
ab047371-b424-433b-bd25-6a875d3b2c62	L'archipel français				2019	0	Seuil		379	2021406024	978-2021406023	fr	f			
a64f42a8-14ac-43c4-b1f4-2e17e4b2eae6	Le Livre du rire et de l'oubli				1979	0	Gallimard	Folio	366	2070378314	978-2070378319	fr	f			
ff275986-d27e-4217-aaf8-cb22f1316980	Dieu, le temps, les hommes et les anges				1996	0	Robert Laffont	Pavillons poche	391	2221240863	978-2221240861	fr	f			
d45c867f-2c57-4eef-b6b7-ae06a900b99b	Dans le murmure des feuilles qui dansent				2018	0	Albin Michel		241		978-2226429957	fr	t			
5c600499-1b81-4f2b-937d-1669f7a84676	Une histoire de la pologne				2003	0	Noir Sur Blanc		185	2882501234	978-2882501233	fr	t			
75c648c2-fee9-4dfe-8a77-e3e2c4029f0b	Miroir de nos peines				2020	0	Albin Michel		387		978-2226449757	fr	t			
02b28999-0f70-4edc-b151-ca5dea2c8fd3	Le Triomphe de l'injustice	Richesse, évasion fiscale et démocratie			2020	0	Le Seuil		277		978-2021412130	fr	t			
889df142-9489-40c3-a1a4-9edb3ba1a4cc	La femme, la vie, la liberté				2020	0	Stock		135		978-2234087958	fr	t			
d57e75ad-f845-4959-9b5e-263947b99bf1	Tous les hommes n'habitent pas le monde de la même façon				2019	0	L'Olivier		215		978-2823615173	fr	t			
d5453710-9873-4472-9162-19a0c965f488	La fin de l'individu	Voyage d'un philosophe au pays de l'intelligence artificielle			2019	0	Editions De l'Observatoire		315		979-1032907221	fr	t			
97cf04b7-201f-49d1-8656-540e590f7880	Nagasaki				2010	0	Stock		63		978-2234068957	fr	t			
a7179541-a190-4517-815a-995305770714	I.A. La Plus Grande Mutation de l'Histoire				2018	0	Les Arènes		302		979-1037500335	fr	t			
8e3a69fc-444f-4036-b886-a845459c8c66	Le Dernier des nôtres				2016	0	Grasset		390		978-2246861904	fr	t			
1afff601-b84e-4f61-b735-242198165a39	La Conquête des îles de la Terre Ferme				2016	0	Gallimard	Folio	449	2072824575	978-2072824579	fr	f			
4e67a85b-5adb-40b1-abbb-509d5506b681	L'Éducation sentimentale				1869	0	Gallimard	Folio	449	2072824575	978-2072824579	fr	t			
302e464f-1427-4344-acc3-caeb91068ad7	Le pays des autres				2020	0	Gallimard	Blance	366	2072887992	978-2072887994	fr	f			
0a007c6d-735e-480b-bd62-673a2b33c580	Les heures				1998	0	Pocket		222	2266102621	978-2266102629	fr	f			
83f98616-2bd4-4ec4-baf4-b5c1c5163408	Devouchki				2016	0	10/18		479	2264075406	978-2264075406	fr	f			
32041092-9861-42bb-8faf-0101bb582b8a	Le pays des oubliés				2018	0	10/18		259	2264075090	978-2264075093	fr	f			
febfb962-d308-4c0f-adc3-31efcad3889c	Bleu de Prusse				2018	0	Points		660	2757875493	978-2757875490	fr	f			
7be7b69a-d558-4196-b114-c59fdf19b0b8	La patte du corbeau				2008	0	Sindbad-Actes Sud		356	2330118007	978-2330118006	fr	f			
8383edbf-a3d4-441f-990e-452d4741b02e	Se le dire enfin				2020	0	Flammarion		304		978-2081510616	fr	t			
dfdc0997-d7cc-42e8-8f82-c9272c21ff68	Les demoiselles de Concarneau				1936	0	Gallimard	Folio	149			fr	f			
f4a53073-01a4-4403-a9f5-2644e1bc9590	D’ailleurs, les poissons n’ont pas de pieds				2015	0	Gallimard	Folio	467	2072704553	978-2072704550	fr	f			
eaa9e672-4c70-4dcc-9994-66fc7a1d4573	Le Problème avec Jane				1999	0	Gallimard	Folio	459			fr	f			
996e1b5f-40c4-474a-9e1e-9909a0bcf328	Le Lys dans la vallée				1836	0	Gallimard	Folio	329			fr	f			
bf8d31d6-ebc9-4467-acf3-73af1190bca5	L'Abyssin				1997	0	Gallimard	Folio	699	2070458032	978-2072851087	fr	f			
1980c151-e56f-4956-89e7-2fb3fffd8ca0	Boris Godounov				1825	0	Gallimard	Folio Theatre	172	2072743036	978-2072743030	fr	f			
bd606dcd-1d0f-4e88-85a7-4b843cc71538	La Route				2006	0	L'Olivier		245	2879295912	978-2879295916	fr	f			
adaec6b2-a946-4c58-aa11-29694d61fdfa	Lire Lolita à Téhéran				2003	0	10/18		468			fr	f			
2ff6ee7a-15c8-4a70-ace8-f39908ed9276	Banditi				2020	0	Éditions Jean-Claude Lattès		268		978-2709665858	fr	t			
865f56b5-c213-4220-adfc-964222a2884b	Surface				2019	0	Michel Lafon		268		978-2749940182	fr	t			
4d1f8fb6-8f8b-4ed2-9e4d-df324b239512	Le Cercle des impunis				2018	0	Fayard		186		978-2213710679	fr	t			
35b0a666-8a06-4910-a39d-a9c1ba7e0e85	Le Chat botté				2006	0	Grasset		223		978-2246671596	fr	t			
a1d8af43-e280-4ae3-9c8c-85b8702e5187	Les Quatre Saisons de l'été				2015	0	Éditions Jean-Claude Lattès		134		978-2709649773	fr	t			
1452e866-d72a-4e69-93e6-22cfacd9b2ff	Oublier Klara				2019	0	Stock		231		978-2234083141	fr	t			
53df3cc0-d2be-481f-a5dc-651bdd881f94	Un gentleman à Moscou				2016	0	Fayard		509		978-2213704296	fr	t			
19dbe9f6-68e5-472c-a6a6-ae65ae6aa740	Le Cirque de famille				1972	0	Gallimard		491	2070716759	978-2070716753	fr	f			
0a838297-4be7-4fdb-b39b-ae52c61468b0	L'Amant de Patagonie				2012	0	Grasset		180		978-2246783626	fr	t			
4625ca50-e7e4-4ef1-8108-1a38f98773ad	Surtensions				2016	0	Michel Lafon		310		978-2749929705	fr	t			
39d57ac6-8c4b-4f1a-bdf5-68ee0fece19a	Tension extrême				2017	0	Fayard		187		978-2213706818	fr	t			
507a1d95-fc84-4490-a087-c5140372cf51	Livre des Rois				1010	0	Sindbad-Actes Sud		293	2742738320	978-27427383282	fr	f			
8b1e185a-e076-4368-a5f9-080be5774d61	L'Art de mourir				2019	0	Seuil		414	2021450627	978-2021450620	fr	f			
81f2be0b-4b10-47b3-9b76-d924e175b7c3	Paz				2019	0	Gallimard	Folio Policier	594	2072922143	978-2072922145	fr	f			
b64dcd51-f25f-4ded-be6c-588737fb9574	Les Cicatrices de la nuit				2019	0	Fayard		210		978-2213715353	fr	t			
142a63a5-051b-4175-ba6d-673053f1aa4d	Arabia Deserta				1888	0	Payot	Petite Bibliothèque Payot	457	2228918725	978-2228918725	fr	f			
23e03aaa-9e5a-4621-a9fd-c67d9e42b6e3	Les Règles du jeu				2011	0	Albin Michel		354		978-2226270306	fr	t			
b1a732a6-f5cc-45ee-80e6-009cd990ed01	Grossir le ciel				2014	0	Le Livre de Poche		179		978-2253110545	fr	t			
3023bab7-5468-4e0e-b900-4d00b482bb52	Dans la tête de mon maître				2020	0	Stock		226		978-2234082915	fr	t			
36c90b9b-e4f6-4541-bc09-2227f410f182	La Mort du Vazir-Moukhtar				1928	0	Gallimard	Folio	706	2072710820	978-2072710827	fr	f			
55a670f7-450c-4f05-9a14-be51a1d6ade4	Changer l'eau des fleurs				2018	0	Albin Michel		432		978-2226429537	fr	t			
19e91253-54c3-42e7-87c5-dd00d473e767	Donbass				2020	0	Les Arènes		219		979-1037501448	fr	t			
9ee494b2-a589-412a-a167-beeba8f07bb1	Le Festin du serpent				2013	0	Éditions Anne Carrière		471		978-2380820867	fr	t			
0a0a6e88-8c1d-44a5-be23-b0e9cd4cedf2	Nos résiliences				2020	0	Michel Lafon		244		978-2749943725	fr	t			
36f8a6e2-f8be-4c78-b6bb-9639149825f2	L'Été circulaire				2018	0	Librairie générale française	Le Livre de Poche	248		978-2749943725	fr	f			
991b31bc-150a-43b7-8665-6e19467e2e87	Alpinistes de Staline				2020	0	Stock		317	2234086132	978-2234086135	fr	f			
59440b9a-4280-4651-ab06-f66a69f9102f	L'empreinte				2019	0	10/18		432	226407504X	978-2264075048	fr	f			
ff2f3143-78d8-4d9b-bf99-03387313963f	L'Ombre d'un père				2019	0	Éditions Métailié		408	102260838X	979-1022608381	fr	f			
e2ec478f-1b3b-4fdb-a6d7-34ad6ab9ee2c	Vik	Les enquêtes de Siglufjördur			2013	0	Points		282	2757882139	978-2757882139	fr	f			
205b6df0-8f67-4337-9ca3-363cf876b2bf	Les Bourgeois				2017	0	Actes sud	Babel	474	2330124309	978-2330124304	fr	f			
331a5fff-d643-4470-9109-e845980cb103	Cataractes				2019	0	Gallimard	Folio Policier	440	2072893445	978-2072893445	fr	f			
77e88f00-45fe-465c-adad-8d15eb74daac	Là où les lumières se perdent				2015	0	10/18		286	2264066458	978-2264066459	fr	f			
13bd0d48-8774-493d-8411-3366f5f2efd4	Husbands				2013	0	Folio Policier		442			fr	f			
9a2967e5-2419-4e76-83ab-f9a45f297a70	Il était deux fois				2020	0	12-21		665			fr	t			
f3c42bd9-efe9-420a-b408-92b338fc80fc	La marque du père				2017	0	Harpercollins		486			fr	t			
8598ba28-8270-48d2-9171-5263bf73463e	Le Règne du vivant				2014	0	Éditions actes sud		284			fr	t			
e60c381e-e878-46a1-9a06-8d1183fce76c	Underground Railroad				2016	0	Librairie générale française	Le Livre de Poche	409			fr	f			
4171c433-5c7b-49e6-a516-bccee754799a	Mermoz				1938	0	Gallimard	Folio	433			fr	f			
f5df211a-7e6a-4763-a86d-fb3915d8101d	Amours				2015	0	Points		207	2757855107	978-2757855102	fr	f			
d8efa237-1ebe-431b-9500-40d389fb4118	Yoga				2020	0	Éditions P.O.L		392	281805138X	978-2818051382	fr	f			
f157b2c4-70c4-4c15-8d47-0d27c5bd9372	Point cardinal				2017	0	Points		178	2757868063	978-2757868065	fr	f			
7a26cd05-cd74-4e58-aaeb-8fda5b295bec	Comme un empire dans un empire				2020	0	Flammarion		391	2081515431	978-2081515437	fr	f			
e9c5045b-5144-461d-bb4c-f6262071cc4b	Héritage				2020	0	Rivages		207	274365094X	978-2743650940	fr	f			
07fc9069-f53b-447b-b3b1-77f1464a1ba3	La Solitude Caravage				2019	0	Gallimard	Folio	319	2072863295	978-2072863295	fr	f			
c8f68559-86dd-4939-9319-d0904c70b407	Terres fauves				2018	0	Librairie générale française	Le Livre de Poche	255	2253181447	978-2253181446	fr	f			
f2b06015-68d2-46df-ae62-deca569ad4ac	Le Crépuscule et l'Aube				2020	0	Robert Laffont		848	2221157702	978-2221157701	fr	f			
f029842c-c577-4c7d-ba7f-52d5744c70e1	Il était une fois dans l'Est				2017	0	Points		418	2757885529	978-2757885529	fr	f			
d26095f8-a3cf-4011-ace1-ae82fb51fdd6	Nos vies				2017	0	Gallimard	Folio	151	2072788765	978-2072788765	fr	f			
d75476e2-3cf9-49be-8804-5eac4b9dc3d3	L'Énigme de la Chambre 622				2020	0	De Fallois		669	1032102381	979-1032102381	fr	f			
188058df-02b5-46eb-86fb-953c7cc6c0e6	Ce sport qui rend fou				2020	0	Flammarion		221	1032102381	978-2081429352	fr	t			
e83ae58a-bb35-4441-bb7e-9a5c0893e05c	L'Outrage fait à Sarah Ikker				2019	0	Pocket		238	2266306944	978-2266306942	fr	f			
16b70fbd-3fe1-4b57-9926-9560cdd0968a	Un jour viendra couleur d'orange				2020	0	Grasset		263	2246824915	978-2246824916	fr	f			
5ef25501-c2c9-43c9-89ba-2ffb56992881	Le guetteur				2018	0	Gallimard	Folio	294	2072829178	978-2072829178	fr	f			
d005dba3-066c-4cc8-95c7-8b44f6c21ae4	Par nos villes et nos campagnes				1866	0	Libretto		237	2369145773	978-2369145776	fr	f			
11f41a84-5571-49d6-86de-9c00d6d7313a	La femme secrète				2018	0	10/18		549	2264072725	978-2264072726	fr	f			
53008321-db71-4a12-8ff3-714ade0f24d5	Qaanaaq				2018	0	Points		548	2757875701	978-2757875704	fr	f			
6a34fbda-066f-4d53-990d-a2218a69ece3	Le Français au pôle Sud				1906	0	Pocket		343	2266308238	978-2266308236	fr	f			
67bc91dc-3307-4a7d-bd0a-a7f2fc0165ac	Gran Balan				2020	0	Plon		360	2259305016	978-2259305013	fr	f			
ce557cf5-465c-4998-802a-c162712a3306	Snobs				2004	0	10/18		405	2264071400	978-2264071408	fr	f			
f55ee1ac-819c-4de7-98b1-a076ce92d2ee	Le Coeur et la Chair				2018	0	Points		495	275787912X	978-2757879122	fr	f			
9d22f279-6b60-4b24-a1cb-1cc655c8f801	Impact				2020	0	Michel Lafon		322	2749938643	978-2749938646	fr	f			
c8a627e7-30fb-4fb0-8122-252fa02b963e	A Promised Land				2020	0	Penguin		1469		9780241991411	en	t			
6c50570e-ea5f-4f8b-942e-1047b4057e2f	Lëd				2021	0	Les Arenes		524	1037502787	979-1037502780	fr	f			
d77c3cee-e43b-415e-92e6-1d86917218ee	Le Fleuve des brumes				2003	0	Points		284	2757864327	978-2757864326	fr	f			
b153c8fc-2172-4995-b663-410bf2842373	Guerriers et paysans				1973	0	Gallimard	Folio Histoire	436	2072917654	978-2072917653	fr	f			
06361686-ea16-4421-b558-c8812762f816	Les Roses de la nuit				1998	0	Points		284	275788171X	978-2757881712	fr	f			
0e8ee306-3727-4128-b9a9-8df2dbe55491	Passé imparfait				2009	0	10/18		644	226406501X	978-2264065018	fr	f			
76fed520-9528-44ff-8e02-5726d9b1e2d9	L'empire des Plantagenêt				2003	0	Perrin		297	2262022828	978-2262022822	fr	f			
5c334744-f9ef-493c-92ff-bc2d7730531b	Les chevaliers teutoniques				1995	0	Perrin		219	226201891X	978-2262018917	fr	f			
79212d50-99a6-4de5-ace7-565c7cd97764	 L'Empathie				2019	0	Pocket		489	2266297384	978-2266297387	fr	f			
ce3227eb-deee-4cdd-8997-bf447f7cabb0	A même la peau				2014	0	Librairie générale française	Le Livre de Poche	567	2253079251	978-2253079255	fr	f			
f8e46ae3-b2f7-4552-97d0-5b60e8faf8b8	Utu				2004	0	Gallimard	Folio Policier	468	2070466337	978-2072927607	fr	f			
9ca2c7b2-97a2-4c89-9da1-556834242bc0	J'ai vu naître le monstre	Twitter va-t-il tuer la #démocratie ?			2021	0	Les Arènes		224	1037502876	979-1037502872	fr	f			
594fdce9-e9bc-4e96-b623-a7d742549150	Haka				1998	0	Gallimard	Folio Policier	435	2070466329	978-2072927591	fr	f			
4d0e31e8-88f6-4930-8891-dca88fd79d7d	Les Terres promises				2021	0	Albin Michel		612	2226454071	978-2226454072	fr	f			
4370f717-830c-42ec-a036-f72bae7fd0d5	La Datcha				2021	0	Michel Lafon		345	2749941636	978-2749941639	fr	f			
aa88b6b9-22c4-4c0a-9424-7935b29161d6	Ne t'enfuis plus				2019	0	Pocket		478	2266307649	978-2266307642	fr	f			
11a864bc-ba13-42dc-8881-3ee9c67e93f5	L'aventure des Normands, VIIIe-XIIIe siècle				2006	0	Perrin	Tempus	232	2262029814	978-2262029814	fr	f			
3c5ca9f9-eb5e-49f8-a4d7-84779331886b	L'Inconnu de la poste				2021	0	L'olivier 		237	2823609857	978-2823609851	fr	f			
0fa0dbf8-9bda-454a-9fba-9d15b60765f3	Alias Caracalla				2009	0	Gallimard	Folio	1124	2070440451	978-2070440450	fr	f			
c7dd3322-fe63-480b-9cda-cd57542c0c1d	Les Fantômes de Manhattan				2004	0	Librairie générale française	Le Livre de Poche	545	2253184411	978-2253184416	fr	f			
607f9946-06e9-4169-8377-854c3001a568	Quand notre monde est devenu chrétien				2007	0	Librairie générale française	Le Livre de Poche	272	2253129992	978-2253129998	fr	f			
245dfb0a-a699-4282-910f-9534a57e5e10	Le Banquet annuel de la confrérie des fossoyeurs				2020	0	Actes sud		426	2330135505	978-2330135508	fr	f			
fdb61675-1382-44e7-aecf-8b2a7af76ee7	Le Dernier Lapon				2012	0	Points		527	2757836064	978-2757836064	fr	f			
4ca7cccc-bac0-4e58-9025-246195598f6f	Chaudun, la montagne blessée				2020	0	Seuil		211		978-2021439557	fr	t			
6803736f-3cee-4556-8acc-1be1af681016	Les Oubliés de Londres				2020	0	Points		427	2757887297	978-2757887295	fr	f			
38977259-544d-467c-b3cf-ff57be7428b1	Requiem pour une République				2019	0	Gallimard	Folio Policier	536	2072922518	978-2072922510	fr	f			
448881e1-ff81-4f69-b77e-97d4b0b886d9	Ubérisation, piège à cons !				2021	0	Robert Laffont		341	2221253132	978-2072922510	fr	f			
21a19ac1-b193-4e00-85a2-ba4fea0762a1	Les Lendemains				2020	0	Librairie générale française	Le Livre de Poche	379	2253079901	978-2253079903	fr	f			
fc3bd55d-dfe6-4402-af49-b9f3f20761f1	Enfant de salaud				2021	0	Grasset		363		978-2246828167	fr	t			
1ee46e4a-55f6-484d-b074-cc5146e12eed	Arrêtez-moi				2012	0	Librairie générale française	Le Livre de Poche	595	2253112038	978-2253112037	fr	f			
0fae78a3-4958-4260-b6ae-fc9e2babb0b9	Tuer le fils				2020	0	Pocket		362	2266313843	978-2266313841	fr	f			
77ca6b71-aabe-44ab-8455-6ef7f6ff0610	Une deux trois				2018	0	Gallimard	Folio Policier	337	2072922844	978-2072922848	fr	f			
344ab04a-57f5-4075-8612-a9a087a0b584	Feu				2021	0	Fayard		358	2213720789	978-2213720784	fr	f			
169ff5ac-7575-423e-b2f5-628e8fae8270	Toutes les familles heureuses				2017	0	Librairie générale française	Le Livre de Poche	186	2253074179	978-2253074175	fr	f			
5f760988-33b8-47f8-a33a-80ffea3d8f54	Le Consentement				2020	0	Librairie générale française	Le Livre de Poche	213	2253101567	978-2253101567	fr	f			
6ec23e92-9dc8-49c9-94ca-a2611b7e9c03	Revenir à toi				2021	0	Grasset		176	2246826829	978-2246826828	fr	f			
fdd4f092-cb59-444e-9bf6-fe70a45a9829	François Ruffin - La revanche des bouseux				2021	0	Les Arenes		231	1037504682	979-1037504685	fr	f			
5cd74975-268c-4ad3-ae77-3bacf1469f3e	American Witches				2021	0	Hugo Poche		396	2755686189	978-2755686180	fr	f			
9fb77418-a40e-4e63-977e-54c83f13289e	La grande illusion. Journal secret du Brexit (2016-2020)				2021	0	Gallimard		813		978-2072880032	fr	t			
14998e30-abee-4425-8b31-52f62aff2d74	Zouleikha ouvre les yeux				2017	0	Libretto		546	2369145951	978-2369145950	fr	f			
f51963e1-c3cd-4b05-8f03-fde7bbc1896c	Histoire de Byzance				1999	0	Perrin	Tempus	434	2369145951	978-2262018900	fr	f			
4b481323-baba-423a-b109-33f0b4912d35	La France sous nos yeux				2021	0	Seuil		671		978-2021481570	fr	t			
ada85870-7461-4543-82ce-8bcd12464c4e	J'aurais pu devenir millionnaire, j'ai choisi d'être vagabond				2020	0	Paulsen		221	2375020898	978-2375020890	fr	f			
6bea7bd7-261b-4499-a750-dc59d937a6c7	Lettre à la génération qui va tout changer				2021	0	Allary		194	2370731400	978-2370731401	fr	t			
c0478fde-331c-4da9-9f2a-4d1199614835	Les Princes de Sambalpur				2017	0	Gallimard	Folio Policier	406	2072923034	978-2072923036	fr	f			
829029ef-e382-4226-816f-b3da8f5b1edb	Une bête au paradis				2019	0	Librairie générale française	Le Livre de Poche	283	2253261947	978-2253261940	fr	f			
52452dbd-fcfd-4dd3-ad76-ff6543edc99d	Les Enfants de la Volga				2019	0	Noir Sur Blanc		501	2882506945	978-2882506948	fr	f			
73c33237-d8f1-4e84-a7bb-47225cebb2fb	La Maison d'à côté				2011	0	Librairie générale française	Le Livre de Poche Thriller	517	2253167150	978-2253167150	fr	f			
94d7530d-8d91-47a6-84bc-528462fd3cd4	La Fille cachée				2001	0	Librairie générale française	Le Livre de Poche Thriller	507	2253167150	978-2253181644	fr	f			
4049be05-628c-47eb-bc36-7818f97f2467	Cap Canaille				2020	0	Fayard		404	2213717648	978-2213717647	fr	f			
6b327f58-32ab-4c80-8f69-ccd68c3d93b5	Connemara				2022	0	Actes Sud		396	2330159706	978-2330159702	fr	f			
357fdf10-5adf-47f0-a691-f382691e9ed2	Le Grand Monde				2022	0	Calmann-Levy		579	2702180817	978-2702180815	fr	f			
9bd52fec-bc0c-42e3-b765-54ae16532dba	Les Loups				2022	0	Les Arenes		315	1037505808	979-1037505804	fr	f			
41cdd0a0-6d02-47cb-aa75-4a16baacce2f	Anne de Kiev				2015	0	Lexio		262	2204152501	978-2204152501	fr	f			
1d74e898-aae5-4132-b591-7c69d672a98c	Trois				2021	0	Librairie générale française	Le Livre de Poche	761	2253936146	978-2253936145	fr	f			
8aae224d-036e-4686-b1a6-cb5704b90ba2	La Déraison				2022	0	Michel Lafon		276	2749941644	978-2749941646	fr	f			
7bacf499-ac59-4cce-b995-87146dc83216	Ceux qui restent				2022	0	Heloise Ormesson		230	2350877892	978-2350877891	fr	f			
f0dd4787-0f2b-42c4-9574-87618f83e382	1991				2021	0	Pocket	Pocket Thriller	535	2266324748	978-2266324748	fr	f			
57db1fe5-7ceb-432a-b6d4-4591250a98f3	Le Carnaval des ombres				2014	0	Sonatine		764	2355843740	978-2355843747	fr	f			
208095ef-ec88-4be7-857f-e11678cd70a6	L'Affaire Alaska Sanders				2022	0	Rosie & Wolfe		846		978-2889730018	fr	t			
57bd095b-bea3-4b59-ab8e-54fc28be7f8d	Mahmoud ou la montée des eaux				2021	0	Verdier		132		978-2378561239	fr	t			
bbabd4b9-cd41-4f51-b48a-75a126981bee	L'Homme peuplé				2022	0	Albin Michel		317		978-2226477194	fr	t			
24ab3c4d-74f8-4ea7-8469-2d0e51328adb	Mon maître et mon vainqueur				2021	0	Gallimard		228		978-2072900976	fr	t			
f299357f-20b1-46ce-a655-3040ade48a85	Les hommes ont peur de la lumière				2021	0	Belfond		354		978-2714497741	fr	t			
2d823678-815f-4898-a4ec-475be246f087	L'usurpateur				2013	0	Gallimard	Folio Policier	445	2072884241	978-2072884245	fr	f			
84fbccb4-72b8-4874-8441-fceae28953aa	Une chose à cacher				2022	0	Presses De La Cite	Sang d'Encre	650	2258195586	978-2258195585	fr	f			
bb3f9330-86f2-4fc9-80f7-e236f83366c4	Le code de Katharina				2017	0	Gallimard	Folio Policier	455	2072967007	978-2072967009	fr	f			
641a0c9c-642b-4f19-9644-0d41b32c26e4	Le mage du Kremlin				2022	0	Gallimard	Blanche	280	2072958164	978-2072958168	fr	f			
3f2f5b00-18ae-4095-981c-155406b6467b	Guerre				2022	0	Gallimard	Blanche	175	2072983223	978-2072983221	fr	f			
80c95025-9cf5-4db7-b8c4-595ec5bdba50	Les gens de Bilbao naissent où ils veulent				2022	0	Grasset		216	2246831962	978-2246831969	fr	f			
7bff7d85-cfb1-4d94-aa4b-ce61451e9add	L'attaque du Calcutta-Darjeeling				2017	0	Gallimard	Folio Policier	454	2072914701	978-2072914706	fr	f			
c547ce26-9648-4fc5-8fef-f6dbfce24761	L'anomalie				2020	0	Gallimard	Folio	397	2072965829	978-2072965821	fr	f			
54388ee9-5789-41f8-b661-967d18148065	Gagner n'est pas jouer				2021	0	Pocket	Thriller	426	2266323660	978-2266323666	fr	f			
924ae1e1-a6e9-48c6-a48d-292d74465430	Les enfants sont rois				2021	0	Gallimard	Folio	364	2072977371	978-2072977374	fr	f			
8a8a9936-6bb3-48a3-b9b9-99ca994e4620	Fils de personne				2022	0	Fayard	Policier	414	2213725101	978-2213725109	fr	f			
e088a486-f506-4c54-9aa9-4b9b359923e0	L'Air était tout en feu				2022	0	Robert Laffont		333	2221263707	978-2221263709	fr	f			
\.


--
-- Data for Name: poem; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.poem (id, key, title, content) FROM stdin;
70532b70-b9bd-40fd-bd9e-6e3e87c36043	fortunio	Chanson de Fortunio	{<p>,"Si vous croyez que je vais dire<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Qui j’ose aimer,<br />","Je ne saurais, pour un empire,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Vous la nommer.<br />",</p>,"",<p>,"Nous allons chanter à la ronde,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Si vous voulez,<br />","Que je l’adore et qu’elle est blonde<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Comme les blés.<br />",</p>,"",<p>,"Je fais ce que sa fantaisie<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Veut m’ordonner,<br />","Et je puis, s’il lui faut ma vie,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"La lui donner.<br />",</p>,"",<p>,"Du mal qu’une amour ignorée<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Nous fait souffrir,<br />","J’en porte l’âme déchirée<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Jusqu’à mourir.<br />",</p>,"",<p>,"Mais j’aime trop pour que je die<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Qui j’ose aimer,<br />","Et je veux mourir pour ma mie<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent;\\">xxxx</span>",</span>,"Sans la nommer.<br />",</p>}
c1fb8719-cfc2-424c-8d4e-9678aee90a85	ennemi	L'ennemi	{<p>,"Ma jeunesse ne fut qu’un ténébreux orage,<br />","Traversé çà et là par de brillants soleils ;<br />","Le tonnerre et la pluie ont fait un tel ravage,<br />","Qu’il reste en mon jardin bien peu de fruits vermeils.<br />",</p>,"",<p>,"Voilà que j’ai touché l’automne des idées,<br />","Et qu’il faut employer la pelle et les râteaux<br />","Pour rassembler à neuf les terres inondées,<br />","Où l’eau creuse des trous grands comme des tombeaux.<br />",</p>,"",<p>,"Et qui sait si les fleurs nouvelles que je rêve<br />","Trouveront dans ce sol lavé comme une grève<br />","Le mystique aliment qui ferait leur vigueur ?<br />",</p>,"",<p>,"— Ô douleur ! ô douleur ! Le Temps mange la vie,<br />","Et l’obscur Ennemi qui nous ronge le cœur<br />","Du sang que nous perdons croît et se fortifie !<br />",</p>}
01c73d16-8119-4f6d-805d-12982f85872e	sterile	Avec ses vêtements ondoyants et nacrés	{<p>,"Avec ses vêtements ondoyants et nacrés,<br />","Même quand elle marche on croirait qu’elle danse,<br />","Comme ces longs serpents que les jongleurs sacrés<br />","Au bout de leurs bâtons agitent en cadence.<br />",</p>,"",<p>,"Comme le sable morne et l’azur des déserts,<br />","Insensibles tous deux à l’humaine souffrance,<br />","Comme les longs réseaux de la houle des mers,<br />","Elle se développe avec indifférence.<br />",</p>,"",<p>,"Ses yeux polis sont faits de minéraux charmants,<br />","Et dans cette nature étrange et symbolique<br />","Où l’ange inviolé se mêle au sphinx antique,<br />",</p>,"",<p>,"Où tout n’est qu’or, acier, lumière et diamants,<br />","Resplendit à jamais, comme un astre inutile,<br />","La froide majesté de la femme stérile.<br />",</p>}
903e61df-5cb9-4434-b968-d61d78a2d55d	vin	Le vin du solitaire	{<p>,"Le regard singulier d’une femme galante<br />","Qui se glisse vers nous comme le rayon blanc<br />","Que la lune onduleuse envoie au lac tremblant,<br />","Quand elle y veut baigner sa beauté nonchalante ;<br />",</p>,"",<p>,"Le dernier sac d’écus dans les doigts d’un joueur ;<br />","Un baiser libertin de la maigre Adeline ;<br />","Les sons d’une musique énervante et câline,<br />","Semblable au cri lointain de l’humaine douleur,<br />",</p>,"",<p>,"Tout cela ne vaut pas, ô bouteille profonde,<br />","Les baumes pénétrants que ta panse féconde<br />","Garde au cœur altéré du poëte pieux ;<br />",</p>,"",<p>,"Tu lui verses l’espoir, la jeunesse et la vie,<br />","— Et l’orgueil, ce trésor de toute gueuserie,<br />","Qui nous rend triomphants et semblables aux Dieux.<br />",</p>}
3cbe65be-fde3-4e12-8597-fd88b3da820a	seulement	Se voir le plus possible	{<p>,"Se voir le plus possible et s'aimer seulement,<br />","Sans ruse et sans détours, sans honte ni mensonge,<br />","Sans qu'un désir nous trompe, ou qu'un remords nous ronge,<br />","Vivre à deux et donner son coeur à tout moment ;<br />",</p>,"",<p>,"Respecter sa pensée aussi loin qu'on y plonge,<br />","Faire de son amour un jour au lieu d'un songe,<br />","Et dans cette clarté respirer librement -<br />","Ainsi respirait Laure et chantait son amant.<br />",</p>,"",<p>,"Vous dont chaque pas touche à la grâce suprême,<br />","Cest vous, la tête en fleurs, qu'on croirait sans souci,<br />","C'est vous qui me disiez qu'il faut aimer ainsi.<br />",</p>,"",<p>,"Et c'est moi, vieil enfant du doute et du blasphème,<br />","Qui vous écoute, et pense, et vous réponds ceci :<br />","Oui, l'on vit autrement, mais c'est ainsi qu'on aime.<br />",</p>}
075c4f70-e473-49de-b0af-c838ca3eb282	soleil_moins_ardent	Épilogue - I	{<p>,"Le soleil, moins ardent, luit clair au ciel moins dense.<br />","Balancés par un vent automnal et berceur,<br />","Les rosiers du jardin s’inclinent en cadence.<br />","L’atmosphère ambiante a des baisers de sœur.<br />",</p>,"",<p>,"La Nature a quitté pour cette fois son trône<br />","De splendeur, d’ironie et de sérénité :<br />","Clémente, elle descend, par l’ampleur de l’air jaune,<br />","Vers l’homme, son sujet pervers et révolté.<br />",</p>,"",<p>,"Du pan de son manteau que l’abîme constelle,<br />","Elle daigne essuyer les moiteurs de nos fronts,<br />","Et son âme éternelle et sa forme immortelle<br />","Donnent calme et vigueur à nos cœurs mous et prompts.<br />",</p>,"",<p>,"Le frais balancement des ramures chenues,<br />","L’horizon élargi plein de vagues chansons,<br />","Tout, jusqu’au vol joyeux des oiseaux et des nues,<br />","Tout, aujourd’hui, console et délivre. - Pensons.<br />",</p>}
1835c381-d546-40c2-8404-4c754f16d9c9	femme	À une femme	{<p>,"À vous ces vers, de par la grâce consolante<br />","De vos grands yeux où rit et pleure un rêve doux,<br />","De par votre âme, pure et toute bonne, à vous<br />","Ces vers du fond de ma détresse violente.<br />",</p>,"",<p>,"C’est qu’hélas ! le hideux cauchemar qui me hante<br />","N’a pas de trêve et va furieux, fou, jaloux,<br />","Se multipliant comme un cortège de loups<br />","Et se pendant après mon sort qu’il ensanglante.<br />",</p>,"",<p>,"Oh ! je souffre, je souffre affreusement, si bien<br />","Que le gémissement premier du premier homme<br />","Chassé d’Éden n’est qu’une églogue au prix du mien !<br />",</p>,"",<p>,"Et les soucis que vous pouvez avoir sont comme<br />","Des hirondelles sur un ciel d’après-midi,<br />","— Chère, — par un beau jour de septembre attiédi.<br />",</p>}
6efae0bb-22ce-402b-b186-f46e7b7eeb9b	chiffonniers	Le vin des chiffonniers	{<p>,"Souvent, à la clarté rouge d’un réverbère<br />","Dont le vent bat la flamme et tourmente le verre,<br />","Au cœur d’un vieux faubourg, labyrinthe fangeux<br />","Où l’humanité grouille en ferments orageux,<br />",</p>,"",<p>,"On voit un chiffonnier qui vient, hochant la tête,<br />","Buttant, et se cognant aux murs comme un poëte,<br />","Et, sans prendre souci des mouchards, ses sujets,<br />","Épanche tout son cœur en glorieux projets.<br />",</p>,"",<p>,"Il prête des serments, dicte des lois sublimes,<br />","Terrasse les méchants, relève les victimes,<br />","Et sous le firmament comme un dais suspendu<br />","S’enivre des splendeurs de sa propre vertu.<br />",</p>,"",<p>,"Oui, ces gens harcelés de chagrins de ménage,<br />","Moulus par le travail et tourmentés par l’âge,<br />","Éreintés et pliant sous un tas de débris,<br />","Vomissement confus de l’énorme Paris,<br />",</p>,"",<p>,"Reviennent, parfumés d’une odeur de futailles,<br />","Suivis de compagnons, blanchis dans les batailles,<br />","Dont la moustache pend comme les vieux drapeaux.<br />","Les bannières, les fleurs et les arcs triomphaux<br />",</p>,"",<p>,"Se dressent devant eux, solennelle magie !<br />","Et dans l’étourdissante et lumineuse orgie<br />","Des clairons, du soleil, des cris et du tambour,<br />","Ils apportent la gloire au peuple ivre d’amour !<br />",</p>,"",<p>,"C’est ainsi qu’à travers l’Humanité frivole<br />","Le vin roule de l’or, éblouissant Pactole ;<br />","Par le gosier de l’homme il chante ses exploits<br />","Et règne par ses dons ainsi que les vrais rois.<br />",</p>,"",<p>,"Pour noyer la rancœur et bercer l’indolence<br />","De tous ces vieux maudits qui meurent en silence,<br />","Dieu, touché de remords, avait fait le sommeil ;<br />","L’Homme ajouta le Vin, fils sacré du Soleil !<br />",</p>}
3fbc5433-ff4f-401c-a0d7-6cb459217bde	invitation	L'invitation au voyage	{<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Mon enfant, ma sœur,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Songe à la douceur<br />","D’aller là-bas vivre ensemble !<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Aimer à loisir,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Aimer et mourir<br />","Au pays qui te ressemble !<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Les soleils mouillés<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"De ces ciels brouillés<br />","Pour mon esprit ont les charmes<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Si mystérieux<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"De tes traîtres yeux,<br />","Brillant à travers leurs larmes.<br />",</p>,"",<p>,"Là, tout n’est qu’ordre et beauté,<br />","Luxe, calme et volupté.<br />",</p>,"",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Des meubles luisants,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Polis par les ans,<br />","Décoreraient notre chambre ;<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Les plus rares fleurs<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Mêlant leurs odeurs<br />","Aux vagues senteurs de l’ambre,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Les riches plafonds,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Les miroirs profonds,<br />","La splendeur orientale,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Tout y parlerait<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"À l’âme en secret<br />","Sa douce langue natale.<br />",</p>,"",<p>,"Là, tout n’est qu’ordre et beauté,<br />","Luxe, calme et volupté.<br />",</p>,"",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Vois sur ces canaux<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Dormir ces vaisseaux<br />","Dont l’humeur est vagabonde ;<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"C’est pour assouvir<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Ton moindre désir<br />","Qu’ils viennent du bout du monde.<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"— Les soleils couchants<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Revêtent les champs,<br />","Les canaux, la ville entière,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"D’hyacinthe et d’or ;<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Le monde s’endort<br />","Dans une chaude lumière.<br />",</p>,"",<p>,"Là, tout n’est qu’ordre et beauté,<br />","Luxe, calme et volupté.<br />",</p>}
b777a5ae-1b53-4084-b108-3391845633ae	nevermore	Nevermore	{<p>,"Souvenir, souvenir, que me veux-tu ? L’automne<br />","Faisait voler la grive à travers l’air atone,<br />","Et le soleil dardait un rayon monotone<br />","Sur le bois jaunissant où la bise détone.<br />",</p>,"",<p>,"Nous étions seul à seule et marchions en rêvant,<br />","Elle et moi, les cheveux et la pensée au vent.<br />","Soudain, tournant vers moi son regard émouvant :<br />","« Quel fut ton plus beau jour ! » fit sa voix d’or vivant,<br />",</p>,"",<p>,"Sa voix douce et sonore, au frais timbre angélique.<br />","Un sourire discret lui donna la réplique,<br />","Et je baisai sa main blanche, dévotement.<br />",</p>,"",<p>,"— Ah ! les premières fleurs qu’elles sont parfumées !<br />","Et qu’il bruit avec un murmure charmant<br />","Le premier oui qui sort de lèvres bien-aimées !<br />",</p>}
6324d004-368c-4dfd-916c-aa2e2edf1da1	ideal	L'idéal	{<p>,"Ce ne seront jamais ces beautés de vignettes,<br />","Produits avariés, nés d’un siècle vaurien,<br />","Ces pieds à brodequins, ces doigts à castagnettes,<br />","Qui sauront satisfaire un cœur comme le mien.<br />",</p>,"",<p>,"Je laisse à Gavarni, poëte des chloroses,<br />","Son troupeau gazouillant de beautés d’hôpital,<br />","Car je ne puis trouver parmi ces pâles roses<br />","Une fleur qui ressemble à mon rouge idéal.<br />",</p>,"",<p>,"Ce qu’il faut à ce cœur profond comme un abîme,<br />","C’est vous, Lady Macbeth, âme puissante au crime,<br />","Rêve d’Eschyle éclos au climat des autans ;<br />",</p>,"",<p>,"Ou bien toi, grande Nuit, fille de Michel-Ange,<br />","Qui tors paisiblement dans une pose étrange<br />","Tes appas façonnés aux bouches des Titans !<br />",</p>}
5475512d-2335-4065-8550-19b9790e8d99	chevelure	La chevelure	{<p>,"Ô toison, moutonnant jusque sur l’encolure !<br />","Ô boucles ! Ô parfum chargé de nonchaloir !<br />","Extase ! Pour peupler ce soir l’alcôve obscure<br />","Des souvenirs dormant dans cette chevelure,<br />","Je la veux agiter dans l’air comme un mouchoir !<br />",</p>,"",<p>,"La langoureuse Asie et la brûlante Afrique,<br />","Tout un monde lointain, absent, presque défunt,<br />","Vit dans tes profondeurs, forêt aromatique !<br />","Comme d’autres esprits voguent sur la musique,<br />","Le mien, ô mon amour ! nage sur ton parfum.<br />",</p>,"",<p>,"J’irai là-bas où l’arbre et l’homme, pleins de sève,<br />","Se pâment longuement sous l’ardeur des climats ;<br />","Fortes tresses, soyez la houle qui m’enlève !<br />","Tu contiens, mer d’ébène, un éblouissant rêve<br />","De voiles, de rameurs, de flammes et de mâts :<br />",</p>,"",<p>,"Un port retentissant où mon âme peut boire<br />","À grands flots le parfum, le son et la couleur ;<br />","Où les vaisseaux, glissant dans l’or et dans la moire,<br />","Ouvrent leurs vastes bras pour embrasser la gloire<br />","D’un ciel pur où frémit l’éternelle chaleur.<br />",</p>,"",<p>,"Je plongerai ma tête amoureuse d’ivresse<br />","Dans ce noir océan où l’autre est enfermé ;<br />","Et mon esprit subtil que le roulis caresse<br />","Saura vous retrouver, ô féconde paresse,<br />","Infinis bercements du loisir embaumé !<br />",</p>,"",<p>,"Cheveux bleus, pavillon de ténèbres tendues,<br />","Vous me rendez l’azur du ciel immense et rond ;<br />","Sur les bords duvetés de vos mèches tordues<br />","Je m’enivre ardemment des senteurs confondues<br />","De l’huile de coco, du musc et du goudron.<br />",</p>,"",<p>,"Longtemps ! toujours ! ma main dans ta crinière lourde<br />","Sèmera le rubis, la perle et le saphir,<br />","Afin qu’à mon désir tu ne sois jamais sourde !<br />","N’es-tu pas l’oasis où je rêve, et la gourde<br />","Où je hume à longs traits le vin du souvenir ?<br />",</p>}
e171d4d6-8cd7-40d8-ac12-42cfe2a34a7d	bateau	Le bateau ivre	{<p>,"Comme je descendais des Fleuves impassibles,<br />","Je ne me sentis plus guidé par les haleurs ;<br />","Des Peaux-Rouges criards les avaient pris pour cibles,<br />","Les ayant cloués nus aux poteaux de couleurs.<br />",</p>,"",<p>,"J’étais insoucieux de tous les équipages,<br />","Porteur de blés flamands ou de cotons anglais.<br />","Quand avec mes haleurs ont fini ces tapages,<br />","Les Fleuves m’ont laissé descendre où je voulais.<br />",</p>,"",<p>,"Dans les clapotements furieux des marées,<br />","Moi, l’autre hiver, plus sourd que les cerveaux d’enfants,<br />","Je courus ! Et les Péninsules démarrées,<br />","N’ont pas subi tohu-bohus plus triomphants.<br />",</p>,"",<p>,"La tempête a béni mes éveils maritimes.<br />","Plus léger qu’un bouchon j’ai dansé sur les flots<br />","Qu’on appelle rouleurs éternels de victimes,<br />","Dix nuits, sans regretter l’œil niais des falots.<br />",</p>,"",<p>,"Plus douce qu’aux enfants la chair des pommes sures,<br />","L’eau verte pénétra ma coque de sapin<br />","Et des taches de vins bleus et des vomissures<br />","Me lava, dispersant gouvernail et grappin.<br />",</p>,"",<p>,"Et dès lors, je me suis baigné dans le poème<br />","De la mer, infusé d’astres, et latescent,<br />","Dévorant les azurs verts où, flottaison blême<br />","Et ravie, un noyé pensif parfois descend,<br />",</p>,"",<p>,"Où, teignant tout à coup les bleuités, délires<br />","Et rythmes lents sous les rutilements du jour,<br />","Plus fortes que l’alcool, plus vastes que nos lyres,<br />","Fermentent les rousseurs amères de l’amour.<br />",</p>,"",<p>,"Je sais les cieux crevant en éclairs, et les trombes,<br />","Et les ressacs, et les courants, je sais le soir,<br />","L’aube exaltée ainsi qu’un peuple de colombes,<br />","Et j’ai vu quelquefois ce que l’homme a cru voir.<br />",</p>,"",<p>,"J’ai vu le soleil bas taché d’horreurs mystiques<br />","Illuminant de longs figements violets,<br />","Pareils à des acteurs de drames très antiques,<br />","Les flots roulant au loin leurs frissons de volets ;<br />",</p>,"",<p>,"J’ai rêvé la nuit verte aux neiges éblouies,<br />","Baisers montant aux yeux des mers avec lenteur,<br />","La circulation des sèves inouïes<br />","Et l’éveil jaune et bleu des phosphores chanteurs.<br />",</p>,"",<p>,"J’ai suivi des mois pleins, pareille aux vacheries<br />","Hystériques, la houle à l’assaut des récifs,<br />","Sans songer que les pieds lumineux des Maries<br />","Pussent forcer le muffle aux Océans poussifs ;<br />",</p>,"",<p>,"J’ai heurté, savez-vous ? d’incroyables Florides,<br />","Mêlant aux fleurs des yeux de panthères, aux peaux<br />","D’hommes, des arcs-en-ciel tendus comme des brides,<br />","Sous l’horizon des mers, à de glauques troupeaux ;<br />",</p>,"",<p>,"J’ai vu fermenter les marais énormes, nasses<br />","Où pourrit dans les joncs tout un Léviathan,<br />","Des écroulements d’eaux au milieu des bonaces,<br />","Et les lointains vers les gouffres cataractant !<br />",</p>,"",<p>,"Glaciers, soleils d’argent, flots nacreux, cieux de braises.<br />","Echouages hideux au fond des golfes bruns<br />","Où les serpents géants dévorés des punaises<br />","Choient des arbres tordus, avec de noirs parfums.<br />",</p>,"",<p>,"J’aurais voulu montrer aux enfants ces dorades<br />","Du flot bleu, ces poissons d’or, ces poissons chantants.<br />","Des écumes de fleurs ont béni mes dérades<br />","Et d’ineffables vents m’ont ailé par instants.<br />",</p>,"",<p>,"Parfois, martyr lassé des pôles et des zones,<br />","La mer dont le sanglot faisait mon roulis doux<br />","Montait vers moi ses fleurs d’ombre aux ventouses jaunes<br />","Et je restais, ainsi qu’une femme à genoux,<br />",</p>,"",<p>,"Presqu’île, ballottant sur mes bords les querelles<br />","Et les fientes d’oiseaux clabaudeurs aux yeux blonds,<br />","Et je voguais, lorsqu’à travers mes liens frêles<br />","Des noyés descendaient dormir, à reculons.<br />",</p>,"",<p>,"Or moi, bateau perdu sous les cheveux des anses,<br />","Jeté par l’ouragan dans l’éther sans oiseau,<br />","Moi dont les Monitors et les voiliers des Hanses<br />","N’auraient pas repêché la carcasse ivre d’eau,<br />",</p>,"",<p>,"Libre, fumant, monté de brumes violettes,<br />","Moi qui trouais le ciel rougeoyant comme un mur<br />","Qui porte, confiture exquise aux bons poètes,<br />","Des lichens de soleil et des morves d’azur,<br />",</p>,"",<p>,"Qui courais taché de lunules électriques,<br />","Plante folle, escorté des hippocampes noirs,<br />","Quand les Juillets faisaient crouler à coups de triques<br />","Les cieux ultramarins aux ardents entonnoirs,<br />",</p>,"",<p>,"Moi qui tremblais, sentant geindre à cinquante lieues<br />","Le rut des Béhémots et les Maelstroms épais,<br />","Fileur éternel des immobilités bleues,<br />","Je regrette l’Europe aux anciens parapets.<br />",</p>,"",<p>,"J’ai vu des archipels sidéraux ! Et des îles<br />","Dont les cieux délirants sont ouverts au vogueur :<br />","— Est-ce en ces nuits sans fonds que tu dors et t’exiles,<br />","Million d’oiseaux d’or, ô future Vigueur ?<br />",</p>,"",<p>,"Mais, vrai, j’ai trop pleuré ! Les aubes sont navrantes,<br />","Toute lune est atroce et tout soleil amer.<br />","L’âcre amour m’a gonflé de torpeurs enivrantes.<br />","Oh ! que ma quille éclate ! Oh ! que j’aille à la mer !<br />",</p>,"",<p>,"Si je désire une eau d’Europe, c’est la flache<br />","Noire et froide où, vers le crépuscule embaumé,<br />","Un enfant accroupi, plein de tristesse, lâche<br />","Un bateau frêle comme un papillon de mai.<br />",</p>,"",<p>,"Je ne puis plus, baigné de vos langueurs, ô lames,<br />","Enlever leur sillage aux porteurs de cotons,<br />","Ni traverser l’orgueil des drapeaux et des flammes,<br />","Ni nager sous les yeux horribles des pontons !<br />",</p>}
a98c2874-2019-4419-817a-5d8329d54b1d	captain	O Captain! My Captain!	{<p>,"O Captain! My Captain! our fearful trip is done;<br />","The ship has weather'd every rack, the prize we sought is won;<br />","The port is near, the bells I hear, the people all exulting,<br />","While follow eyes the steady keel, the vessel grim and daring:<br />",</p>,"",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"But O heart! heart! heart!<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxx</span>",</span>,"O the bleeding drops of red,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxx</span>",</span>,"Where on the deck my Captain lies,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxxx</span>",</span>,"Fallen cold and dead.<br />",</p>,"",<p>,"O Captain! My Captain! rise up and hear the bells;<br />","Rise up—for you the flag is flung—for you the bugle trills;<br />","For you bouquets and ribbon'd wreaths—for you the shores a-crowding;<br />","For you they call, the swaying mass, their eager faces turning;<br />",</p>,"",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Here captain! dear father!<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxx</span>",</span>,"This arm beneath your head;<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxx</span>",</span>,"It is some dream that on the deck,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxxx</span>",</span>,"You've fallen cold and dead.<br />",</p>,"",<p>,"My Captain does not answer, his lips are pale and still;<br />","My father does not feel my arm, he has no pulse nor will;<br />","The ship is anchor'd safe and sound, its voyage closed and done;<br />","From fearful trip, the victor ship, comes in with object won;<br />",</p>,"",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Exult, O shores, and ring, O bells!<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxx</span>",</span>,"But I, with mournful tread,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxx</span>",</span>,"Walk the deck my captain lies,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxxx</span>",</span>,"Fallen cold and dead.<br />",</p>}
5e45dcc2-2dc5-475b-b942-4450dda83db0	conquerants	Les Conquérants	{<p>,"Comme un vol de gerfauts hors du charnier natal,<br />","Fatigués de porter leurs misères hautaines,<br />","De Palos de Moguer, routiers et capitaines<br />","Partaient, ivres d’un rêve héroïque et brutal.<br />",</p>,"",<p>,"Ils allaient conquérir le fabuleux métal<br />","Que Cipango mûrit dans ses mines lointaines,<br />","Et les vents alizés inclinaient leurs antennes<br />","Aux bords mystérieux du monde Occidental.<br />",</p>,"",<p>,"Chaque soir, espérant des lendemains épiques,<br />","L’azur phosphorescent de la mer des Tropiques<br />","Enchantait leur sommeil d’un mirage doré ;<br />",</p>,"",<p>,"Ou penchés à l’avant des blanches caravelles,<br />","Ils regardaient monter en un ciel ignoré<br />","Du fond de l’Océan des étoiles nouvelles.<br />",</p>}
fb2b1755-877c-4ff6-8c9a-7d9bbf24cb02	satiata	Sed non satiata	{<p>,"Bizarre déité, brune comme les nuits,<br />","Au parfum mélangé de musc et de havane,<br />","Œuvre de quelque obi, le Faust de la savane,<br />","Sorcière au flanc d’ébène, enfant des noirs minuits,<br />",</p>,"",<p>,"Je préfère au constance, à l’opium, au nuits,<br />","L’élixir de ta bouche où l’amour se pavane ;<br />","Quand vers toi mes désirs partent en caravane,<br />","Tes yeux sont la citerne où boivent mes ennuis.<br />",</p>,"",<p>,"Par ces deux grands yeux noirs, soupiraux de ton âme,<br />","Ô démon sans pitié ! verse-moi moins de flamme ;<br />","Je ne suis pas le Styx pour t’embrasser neuf fois,<br />",</p>,"",<p>,"Hélas ! et je ne puis, Mégère libertine, <br />","Pour briser ton courage et te mettre aux abois,<br />","Dans l’enfer de ton lit devenir Proserpine !<br />",</p>}
45734aa8-515f-44e6-bd1f-5a436967539b	voyelles	Voyelles	{<p>,"A noir, E blanc, I rouge, U vert, O bleu, voyelles,<br />","Je dirai quelque jour vos naissances latentes.<br />","A, noir corset velu des mouches éclatantes<br />","Qui bombillent autour des puanteurs cruelles,<br />",</p>,"",<p>,"Golfe d’ombre ; E, candeur des vapeurs et des tentes,<br />","Lance des glaciers fiers, rois blancs, frissons d’ombelles<br />","I, pourpres, sang craché, rire des lèvres belles<br />","Dans la colère ou les ivresses pénitentes ;<br />",</p>,"",<p>,"U, cycles, vibrements divins des mers virides,<br />","Paix des pâtis semés d’animaux, paix des rides<br />","Que l’alchimie imprime aux grands fronts studieux ;<br />",</p>,"",<p>,"O, suprême Clairon plein des strideurs étranges,<br />","Silences traversés des Mondes et des Anges :<br />","— O l’Oméga, rayon violet de Ses Yeux !<br />",</p>}
e6745d77-d608-455a-a306-a222780f958f	correspondances	Correspondances	{<p>,"La Nature est un temple où de vivants piliers<br />","Laissent parfois sortir de confuses paroles ;<br />","L’homme y passe à travers des forêts de symboles<br />","Qui l’observent avec des regards familiers.<br />",</p>,"",<p>,"Comme de longs échos qui de loin se confondent<br />","Dans une ténébreuse et profonde unité,<br />","Vaste comme la nuit et comme la clarté,<br />","Les parfums, les couleurs et les sons se répondent.<br />",</p>,"",<p>,"Il est des parfums frais comme des chairs d’enfants,<br />","Doux comme les hautbois, verts comme les prairies,<br />","— Et d’autres, corrompus, riches et triomphants,<br />",</p>,"",<p>,"Ayant l’expansion des choses infinies,<br />","Comme l’ambre, le musc, le benjoin et l’encens,<br />","Qui chantent les transports de l’esprit et des sens.<br />",</p>}
5fd1b7a7-475f-4d47-8b76-da17e63b951e	lac	Le lac	{<p>,"Ainsi, toujours poussés vers de nouveaux rivages,<br />","Dans la nuit éternelle emporté sans retour,<br />","Ne pourrons-nous jamais sur l’océan des âges<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Jeter l’ancre un seul jour ?<br />",</p>,"",<p>,"O lac ! l’année à peine a fini sa carrière,<br />","Et près des flots chéris qu’elle devait revoir,<br />","Regarde ! je viens seul m’asseoir sur cette pierre<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Où tu la vis s’asseoir !<br />",</p>,"",<p>,"Tu mugissais ainsi sous ces roches profondes ;<br />","Ainsi tu te brisais sur leurs flancs déchirés ;<br />","Ainsi le vent jetait l’écume de tes ondes<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Sur ses pieds adorés.<br />",</p>,"",<p>,"Un soir, t’en souvient-il ? nous voguions en silence ;<br />","On n’entendait au loin, sur l’onde et sous les cieux,<br />","Que le bruit des rameurs qui frappaient en cadence<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Tes flots harmonieux.<br />",</p>,"",<p>,"Tout à coup des accents inconnus à la terre<br />","Du rivage charmé frappèrent les échos :<br />","Le flot plus attentif, et la voix qui m’est chère<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Laissa tomber ces mots :<br />",</p>,"",<p>,"« Ô temps, suspends ton vol ! et vous, heures propices,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Suspendez votre cours !<br />","» Laissez-nous savourer les rapides délices<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Des plus beaux de nos jours !<br />",</p>,"",<p>,"» Assez de malheureux ici-bas vous implorent,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Coulez, coulez pour eux ;<br />","» Prenez avec leurs jours les soins qui les dévorent ;<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Oubliez les heureux.<br />",</p>,"",<p>,"» Mais je demande en vain quelques moments encore,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Le temps m’échappe et fuit ;<br />","» Je dis à cette nuit : Sois plus lente ; et l’aurore<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Va dissiper la nuit.<br />",</p>,"",<p>,"» Aimons donc, aimons donc ! de l’heure fugitive,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Hâtons-nous, jouissons !<br />","» L’homme n’a point de port, le temps n’a point de rive ;<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"» Il coule, et nous passons ! »<br />",</p>,"",<p>,"Temps jaloux, se peut-il que ces moments d’ivresse,<br />","Où l’amour à longs flots nous verse le bonheur,<br />","S’envolent loin de nous de la même vitesse<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Que les jours de malheur ?<br />",</p>,"",<p>,"Hé quoi ! n’en pourrons-nous fixer au moins la trace ?<br />","Quoi ! passés pour jamais ? quoi ! tout entiers perdus ?<br />","Ce temps qui les donna, ce temps qui les efface,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Ne nous les rendra plus ?<br />",</p>,"",<p>,"Éternité, néant, passé, sombres abîmes,<br />","Que faites-vous des jours que vous engloutissez ?<br />","Parlez : nous rendrez-vous ces extases sublimes<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Que vous nous ravissez ?<br />",</p>,"",<p>,"Ô lacs ! rochers muets ! grottes ! forêt obscure !<br />","Vous que le temps épargne ou qu’il peut rajeunir,<br />","Gardez de cette nuit, gardez, belle nature,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Au moins le souvenir !<br />",</p>,"",<p>,"Qu’il soit dans ton repos, qu’il soit dans tes orages,<br />","Beau lac, et dans l’aspect de tes riants coteaux,<br />","Et dans ces noirs sapins, et dans ces rocs sauvages<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Qui pendent sur tes eaux !<br />",</p>,"",<p>,"Qu’il soit dans le zéphyr qui frémit et qui passe,<br />","Dans les bruits de tes bords par tes bords répétés,<br />","Dans l’astre au front d’argent qui blanchit ta surface<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"De ses molles clartés !<br />",</p>,"",<p>,"Que le vent qui gémit, le roseau qui soupire,<br />","Que les parfums légers de ton air embaumé,<br />","Que tout ce qu’on entend, l’on voit ou l’on respire,<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxx</span>",</span>,"Tout dise : Ils ont aimé !<br />",</p>}
39ad3235-4072-4f9b-9081-53456751c3c0	hymne	Hymne à la beauté	{<p>,"Viens-tu du ciel profond ou sors-tu de l’abîme,<br />","Ô Beauté ! ton regard, infernal et divin,<br />","Verse confusément le bienfait et le crime,<br />","Et l’on peut pour cela te comparer au vin.<br />",</p>,"",<p>,"Tu contiens dans ton œil le couchant et l’aurore ;<br />","Tu répands des parfums comme un soir orageux ;<br />","Tes baisers sont un philtre et ta bouche une amphore<br />","Qui font le héros lâche et l’enfant courageux.<br />",</p>,"",<p>,"Sors-tu du gouffre noir ou descends-tu des astres ?<br />","Le Destin charmé suit tes jupons comme un chien ;<br />","Tu sèmes au hasard la joie et les désastres,<br />","Et tu gouvernes tout et ne réponds de rien.<br />",</p>,"",<p>,"Tu marches sur des morts, Beauté, dont tu te moques ;<br />","De tes bijoux l’Horreur n’est pas le moins charmant,<br />","Et le Meurtre, parmi tes plus chères breloques,<br />","Sur ton ventre orgueilleux danse amoureusement.<br />",</p>,"",<p>,"L’éphémère ébloui vole vers toi, chandelle,<br />","Crépite, flambe et dit : Bénissons ce flambeau !<br />","L’amoureux pantelant incliné sur sa belle<br />","A l’air d’un moribond caressant son tombeau.<br />",</p>,"",<p>,"Que tu viennes du ciel ou de l’enfer, qu’importe,<br />","Ô Beauté ! monstre énorme, effrayant, ingénu !<br />","Si ton œil, ton souris, ton pied, m’ouvrent la porte<br />","D’un Infini que j’aime et n’ai jamais connu ?<br />",</p>,"",<p>,"De Satan ou de Dieu, qu’importe ? Ange ou Sirène,<br />","Qu’importe, si tu rends, — fée aux yeux de velours,<br />","Rhythme, parfum, lueur, ô mon unique reine ! —<br />","L’univers moins hideux et les instants moins lourds ?<br />",</p>}
15fabc07-87d5-404a-a8a6-8f8b9d32d6e8	courbe	La courbe de tes yeux	{<p>,"La courbe de tes yeux fait le tour de mon cœur,<br />","Un rond de danse et de douceur,<br />","Auréole du temps, berceau nocturne et sûr,<br />","Et si je ne sais plus tout ce que j’ai vécu<br />","C’est que tes yeux ne m’ont pas toujours vu.<br />",</p>,"",<p>,"Feuilles de jour et mousse de rosée,<br />","Roseaux du vent, sourires parfumés,<br />","Ailes couvrant le monde de lumière,<br />","Bateaux chargés du ciel et de la mer,<br />","Chasseurs des bruits et sources des couleurs,<br />",</p>,"",<p>,"Parfums éclos d’une couvée d’aurores<br />","Qui gît toujours sur la paille des astres,<br />","Comme le jour dépend de l’innocence<br />","Le monde entier dépend de tes yeux purs<br />","Et tout mon sang coule dans leurs regards.<br />",<p>}
6e8d6a96-7a41-420d-82eb-88fac45260e0	roi	Spleen	{<p>,"Je suis comme le roi d’un pays pluvieux,<br />","Riche, mais impuissant, jeune et pourtant très-vieux,<br />","Qui, de ses précepteurs méprisant les courbettes,<br />","S’ennuie avec ses chiens comme avec d’autres bêtes.<br />","Rien ne peut l’égayer, ni gibier, ni faucon,<br />","Ni son peuple mourant en face du balcon.<br />","Du bouffon favori la grotesque ballade<br />","Ne distrait plus le front de ce cruel malade ;<br />","Son lit fleurdelisé se transforme en tombeau,<br />","Et les dames d’atour, pour qui tout prince est beau,<br />","Ne savent plus trouver d’impudique toilette<br />","Pour tirer un souris de ce jeune squelette.<br />","Le savant qui lui fait de l’or n’a jamais pu<br />","De son être extirper l’élément corrompu,<br />","Et dans ces bains de sang qui des Romains nous viennent,<br />","Et dont sur leurs vieux jours les puissants se souviennent,<br />","Il n’a su réchauffer ce cadavre hébété<br />","Où coule au lieu de sang l’eau verte du Léthé.<br />",</p>}
7ae1a739-5773-446b-bc29-1ca55afa493e	if	if	{<p>,"If you can keep your head when all about you<br />","Are losing theirs and blaming it on you;<br />","If you can trust yourself when all men doubt you,<br />","But make allowance for their doubting too:<br />","If you can wait and not be tired by waiting,<br />","Or being lied about, don’t deal in lies,<br />","Or being hated, don’t give way to hating,<br />","And yet don’t look too good, nor talk too wise;<br />",<p>,"",<p>,"If you can dream—and not make dreams your master;<br />","If you can think—and not make thoughts your aim,<br />","If you can meet with Triumph and Disaster<br />","And treat those two impostors just the same:<br />","If you can bear to hear the truth you’ve spoken<br />","Twisted by knaves to make a trap for fools,<br />","Or watch the things you gave your life to, broken,<br />","And stoop and build ’em up with worn-out tools;<br />",<p>,"",<p>,"If you can make one heap of all your winnings<br />","And risk it on one turn of pitch-and-toss,<br />","And lose, and start again at your beginnings<br />","And never breathe a word about your loss:<br />","If you can force your heart and nerve and sinew<br />","To serve your turn long after they are gone,<br />","And so hold on when there is nothing in you<br />","Except the Will which says to them: \\"Hold on!\\"<br />",<p>,"",<p>,"If you can talk with crowds and keep your virtue,<br />","Or walk with Kings—nor lose the common touch,<br />","If neither foes nor loving friends can hurt you,<br />","If all men count with you, but none too much:<br />","If you can fill the unforgiving minute<br />","With sixty seconds’ worth of distance run,<br />","Yours is the Earth and everything that’s in it,<br />","And—which is more—you’ll be a Man, my son!<br />",</p>}
58a3a652-fa7d-4ab7-8e43-74dcd69a8487	hirondelle	L'hirondelle	{<p>,"Hirondelle qui vient de la nue orageuse,<br />","Hirondelle fidèle, où vas-tu ? Dis-le-moi.<br />","Quelle brise t’emporte, errante, voyageuse ?<br />","Écoute, je voudrais m’en aller avec toi.<br />",</p>,"",<p>,"Bien loin, bien loin d’ici, vers d’immenses rivages,<br />","Vers de grands rochers nus, des grèves, des déserts,<br />","Dans l’inconnu muet, ou bien vers d’autres âges,<br />","Vers les astres errants qui roulent dans les airs.<br />",</p>,"",<p>,"Hirondelle aux yeux noirs, hirondelle je t’aime !<br />","Je ne sais quel écho par toi m’est apporté<br />","Des rivages lointains ; pour vivre, loi suprême,<br />","Il me faut, comme toi, l’air et la liberté.<br />",</p>}
1faf03f6-97ee-49b9-83af-0d3ffec70d90	angoisse	L'angoisse	{<p>,"Nature, rien de toi ne m’émeut, ni les champs<br />","Nourriciers, ni l’écho vermeil des pastorales<br />","Siciliennes, ni les pompes aurorales,<br />","Ni la solennité dolente des couchants.<br />",</p>,"",<p>,"Je ris de l’Art, je ris de l’Homme aussi, des chants,<br />","Des vers, des temples grecs et des tours en spirales<br />","Qu’étirent dans le ciel vide les cathédrales,<br />","Et je vois du même œil les bons et les méchants.<br />",</p>,"",<p>,"Je ne crois pas en Dieu, j’abjure et je renie<br />","Toute pensée, et quant à la vieille ironie,<br />","L’Amour, je voudrais bien qu’on ne m’en parlât plus.<br />",</p>,"",<p>,"Lasse de vivre, ayant peur de mourir, pareille<br />","Au brick perdu jouet du flux et du reflux,<br />","Mon âme pour d’affreux naufrages appareille.<br />",</p>}
3526ef5b-fab3-4083-b449-332cbc7699d4	boheme	Ma bohême	{<p>,"Je m’en allais, les poings dans mes poches crevées ;<br />","Mon paletot aussi devenait idéal ;<br />","J’allais sous le ciel, Muse ! et j’étais ton féal ;<br />","Oh ! là là ! que d’amours splendides j’ai rêvées !<br />",</p>,"",<p>,"Mon unique culotte avait un large trou.<br />","— Petit Poucet rêveur, j’égrenais dans ma course<br />","Des rimes. Mon auberge était à la Grande-Ourse ;<br />","— Mes étoiles au ciel avaient un doux frou-frou.<br />",</p>,"",<p>,"Et je les écoutais, assis au bord des routes,<br />","Ces bons soirs de septembre où je sentais des gouttes<br />","De rosée à mon front, comme un vin de vigueur ;<br />",</p>,"",<p>,"Où, rimant au milieu des ombres fantastiques,<br />","Comme des lyres, je tirais les élastiques<br />","De mes souliers blessés, un pied près de mon cœur !<br />",</p>}
e75ff2d3-181c-4a4f-a73a-3a0bb15487c2	roman	Roman	{<p>,"On n’est pas sérieux, quand on a dix-sept ans.<br />","— Un beau soir, foin des bocks et de la limonade,<br />","Des cafés tapageurs aux lustres éclatants !<br />","— On va sous les tilleuls verts de la promenade.<br />",</p>,"",<p>,"Les tilleuls sentent bon dans les bons soirs de juin !<br />","L’air est parfois si doux, qu’on ferme la paupière ;<br />","Le vent chargé de bruits, — la ville n’est pas loin, —<br />","A des parfums de vigne et des parfums de bière…<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">II</div>","",<p>,"— Voilà qu’on aperçoit un tout petit chiffon<br />","D’azur sombre, encadré d’une petite branche,<br />","Piqué d’une mauvaise étoile, qui se fond<br />","Avec de doux frissons, petite et toute blanche…<br />",</p>,"",<p>,"Nuit de juin ! Dix-sept ans ! — On se laisse griser.<br />","La sève est du champagne et vous monte à la tête…<br />","On divague ; on se sent aux lèvres un baiser<br />","Qui palpite là, comme une petite bête…<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">III</div>","",<p>,"Le cœur fou Robinsonne à travers les romans,<br />","— Lorsque, dans la clarté d’un pâle réverbère,<br />","Passe une demoiselle aux petits airs charmants,<br />","Sous l’ombre du faux-col effrayant de son père…<br />",</p>,"",<p>,"Et, comme elle vous trouve immensément naïf,<br />","Tout en faisant trotter ses petites bottines,<br />","Elle se tourne, alerte et d’un mouvement vif…<br />","— Sur vos lèvres alors meurent les cavatines…<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">IV</div>","",<p>,"Vous êtes amoureux. Loué jusqu’au mois d’août.<br />","Vous êtes amoureux. — Vos sonnets la font rire.<br />","Tous vos amis s’en vont, vous êtes mauvais goût.<br />","— Puis l’adorée, un soir, a daigné vous écrire… !<br />",</p>,"",<p>,"— Ce soir-là,… — vous rentrez aux cafés éclatants,<br />","Vous demandez des bocks ou de la limonade…<br />","— On n’est pas sérieux, quand on a dix-sept ans<br />","Et qu’on a des tilleuls verts sur la promenade.<br />",</p>}
ca982c94-d85a-4cb6-b361-3ac06257dc09	pleure	Il pleure dans mon coeur	{<p>,"Il pleure dans mon cœur<br />","Comme il pleut sur la ville,<br />","Quelle est cette langueur<br />","Qui pénètre mon cœur ?<br />",</p>,"",<p>,"Ô bruit doux de la pluie<br />","Par terre et sur les toits !<br />","Pour un cœur qui s'ennuie,<br />","Ô le chant de la pluie !<br />",</p>,"",<p>,"Il pleure sans raison<br />","Dans ce cœur qui s'écœure.<br />","Quoi ! nulle trahison ?<br />","Ce deuil est sans raison.<br />",</p>,"",<p>,"C’est bien la pire peine<br />","De ne savoir pourquoi,<br />","Sans amour et sans haine,<br />","Mon cœur a tant de peine !<br />",</p>}
343bf85e-a7c8-4b2a-8279-1770bdcdb247	parfum	Parfum exotique	{<p>,"Quand, les deux yeux fermés, en un soir chaud d’automne,<br />","Je respire l’odeur de ton sein chaleureux,<br />","Je vois se dérouler des rivages heureux<br />","Qu’éblouissent les feux d’un soleil monotone ;<br />",</p>,"",<p>,"Une île paresseuse où la nature donne<br />","Des arbres singuliers et des fruits savoureux ;<br />","Des hommes dont le corps est mince et vigoureux,<br />","Et des femmes dont l’œil par sa franchise étonne.<br />",</p>,"",<p>,"Guidé par ton odeur vers de charmants climats,<br />","Je vois un port rempli de voiles et de mâts<br />","Encor tout fatigués par la vague marine,<br />",</p>,"",<p>,"Pendant que le parfum des verts tamariniers,<br />","Qui circule dans l’air et m’enfle la narine,<br />","Se mêle dans mon âme au chant des mariniers.<br />",</p>}
f2da43f5-2331-439e-8399-1333724627ca	geante	La géante	{<p>,"Du temps que la Nature en sa verve puissante<br />","Concevait chaque jour des enfants monstrueux,<br />","J’eusse aimé vivre auprès d’une jeune géante,<br />","Comme aux pieds d’une reine un chat voluptueux.<br />",</p>,"",<p>,"J’eusse aimé voir son corps fleurir avec son âme<br />","Et grandir librement dans ses terribles jeux ;<br />","Deviner si son cœur couve une sombre flamme<br />","Aux humides brouillards qui nagent dans ses yeux ;<br />",</p>,"",<p>,"Parcourir à loisir ses magnifiques formes ;<br />","Ramper sur le versant de ses genoux énormes,<br />","Et parfois en été, quand les soleils malsains,<br />",</p>,"",<p>,"Lasse, la font s’étendre à travers la campagne,<br />","Dormir nonchalamment à l’ombre de ses seins,<br />","Comme un hameau paisible au pied d’une montagne.<br />",</p>}
889989ed-45da-4653-bf84-4e24f689c9eb	voyage	Le voyage	{"<div style=\\"margin: 10px 0; text-indent:200px;\\">I</div>","",<p>,"Pour l’enfant, amoureux de cartes et d’estampes,<br />","L’univers est égal à son vaste appétit.<br />","Ah ! que le monde est grand à la clarté des lampes !<br />","Aux yeux du souvenir que le monde est petit !<br />",</p>,"",<p>,"Un matin nous partons, le cerveau plein de flamme,<br />","Le cœur gros de rancune et de désirs amers,<br />","Et nous allons, suivant le rhythme de la lame,<br />","Berçant notre infini sur le fini des mers :<br />",</p>,"",<p>,"Les uns, joyeux de fuir une patrie infâme ;<br />","D’autres, l’horreur de leurs berceaux, et quelques-uns,<br />","Astrologues noyés dans les yeux d’une femme,<br />","La Circé tyrannique aux dangereux parfums.<br />",</p>,"",<p>,"Pour n’être pas changés en bêtes, ils s’enivrent<br />","D’espace et de lumière et de cieux embrasés ;<br />","La glace qui les mord, les soleils qui les cuivrent,<br />","Effacent lentement la marque des baisers.<br />",</p>,"",<p>,"Mais les vrais voyageurs sont ceux-là seuls qui partent<br />","Pour partir ; cœurs légers, semblables aux ballons,<br />","De leur fatalité jamais ils ne s’écartent,<br />","Et, sans savoir pourquoi, disent toujours : Allons !<br />",</p>,"",<p>,"Ceux-là dont les désirs ont la forme des nues,<br />","Et qui rêvent, ainsi qu’un conscrit le canon,<br />","De vastes voluptés, changeantes, inconnues,<br />","Et dont l’esprit humain n’a jamais su le nom !<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">II</div>","",<p>,"Nous imitons, horreur ! la toupie et la boule<br />","Dans leur valse et leurs bonds ; même dans nos sommeils<br />","La Curiosité nous tourmente et nous roule,<br />","Comme un Ange cruel qui fouette des soleils.<br />",</p>,"",<p>,"Singulière fortune où le but se déplace,<br />","Et, n’étant nulle part, peut être n’importe où !<br />","Où l’Homme, dont jamais l’espérance n’est lasse,<br />","Pour trouver le repos court toujours comme un fou !<br />",</p>,"",<p>,"Notre âme est un trois-mâts cherchant son Icarie ;<br />","Une voix retentit sur le pont : « Ouvre l’œil ! »<br />","Une voix de la hune, ardente et folle, crie :<br />","« Amour… gloire… bonheur ! » Enfer ! c’est un écueil<br />",</p>,"",<p>,"Chaque îlot signalé par l’homme de vigie<br />","Est un Eldorado promis par le Destin ;<br />","L’Imagination qui dresse son orgie<br />","Ne trouve qu’un récif aux clartés du matin.<br />",</p>,"",<p>,"Ô le pauvre amoureux des pays chimériques !<br />","Faut-il le mettre aux fers, le jeter à la mer,<br />","Ce matelot ivrogne, inventeur d’Amériques<br />","Dont le mirage rend le gouffre plus amer ?<br />",</p>,"",<p>,"Tel le vieux vagabond, piétinant dans la boue,<br />","Rêve, le nez en l’air, de brillants paradis ;<br />","Son œil ensorcelé découvre une Capoue<br />","Partout où la chandelle illumine un taudis.<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">III</div>","",<p>,"Étonnants voyageurs ! quelles nobles histoires<br />","Nous lisons dans vos yeux profonds comme les mers !<br />","Montrez-nous les écrins de vos riches mémoires,<br />","Ces bijoux merveilleux, faits d’astres et d’éthers.<br />",</p>,"",<p>,"Nous voulons voyager sans vapeur et sans voile !<br />","Faites, pour égayer l’ennui de nos prisons,<br />","Passer sur nos esprits, tendus comme une toile,<br />","Vos souvenirs avec leurs cadres d’horizons.<br />",</p>,"",<p>,"Dites, qu’avez-vous vu ?<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">IV</div>","",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxxxxxxxxxxxxxxxxxxx</span>",</span>,"« Nous avons vu des astres<br />","Et des flots ; nous avons vu des sables aussi ;<br />","Et, malgré bien des chocs et d’imprévus désastres,<br />","Nous nous sommes souvent ennuyés, comme ici.<br />",</p>,"",<p>,"La gloire du soleil sur la mer violette,<br />","La gloire des cités dans le soleil couchant,<br />","Allumaient dans nos cœurs une ardeur inquiète<br />","De plonger dans un ciel au reflet alléchant.<br />",</p>,"",<p>,"Les plus riches cités, les plus grands paysages,<br />","Jamais ne contenaient l’attrait mystérieux<br />","De ceux que le hasard fait avec les nuages.<br />","Et toujours le désir nous rendait soucieux !<br />",</p>,"",<p>,"— La jouissance ajoute au désir de la force.<br />","Désir, vieil arbre à qui le plaisir sert d’engrais,<br />","Cependant que grossit et durcit ton écorce,<br />","Tes branches veulent voir le soleil de plus près !<br />",</p>,"",<p>,"Grandiras-tu toujours, grand arbre plus vivace<br />","Que le cyprès ? — Pourtant nous avons, avec soin,<br />","Cueilli quelques croquis pour votre album vorace,<br />","Frères qui trouvez beau tout ce qui vient de loin !<br />",</p>,"",<p>,"Nous avons salué des idoles à trompe ;<br />","Des trônes constellés de joyaux lumineux ;<br />","Des palais ouvragés dont la féerique pompe<br />","Serait pour vos banquiers un rêve ruineux ;<br />",</p>,"",<p>,"Des costumes qui sont pour les yeux une ivresse ;<br />","Des femmes dont les dents et les ongles sont teints,<br />","Et des jongleurs savants que le serpent caresse. »<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">V</div>","",<p>,"Et puis, et puis encore ?<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">VI</div>","",<p>,"<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xxxxxxxxxxxxxxxxxxxxxxx</span>",</span>,"« Ô cerveaux enfantins !<br />",</p>,"",<p>,"Pour ne pas oublier la chose capitale,<br />","Nous avons vu partout, et sans l’avoir cherché,<br />","Du haut jusques en bas de l’échelle fatale,<br />","Le spectacle ennuyeux de l’immortel péché :<br />",</p>,"",<p>,"La femme, esclave vile, orgueilleuse et stupide,<br />","Sans rire s’adorant et s’aimant sans dégoût ;<br />","L’homme, tyran goulu, paillard, dur et cupide,<br />","Esclave de l’esclave et ruisseau dans l’égoût ;<br />",</p>,"",<p>,"Le bourreau qui jouit, le martyr qui sanglote ;<br />","La fête qu’assaisonne et parfume le sang ;<br />","Le poison du pouvoir énervant le despote,<br />","Et le peuple amoureux du fouet abrutissant ;<br />",</p>,"",<p>,"Plusieurs religions semblables à la nôtre,<br />","Toutes escaladant le ciel ; la Sainteté,<br />","Comme en un lit de plume un délicat se vautre,<br />","Dans les clous et le crin cherchant la volupté ;<br />",</p>,"",<p>,"L’Humanité bavarde, ivre de son génie,<br />","Et, folle maintenant comme elle était jadis,<br />","Criant à Dieu, dans sa furibonde agonie :<br />","« Ô mon semblable, ô mon maître, je te maudis ! »<br />",</p>,"",<p>,"Et les moins sots, hardis amants de la Démence,<br />","Fuyant le grand troupeau parqué par le Destin,<br />","Et se réfugiant dans l’opium immense !<br />","— Tel est du globe entier l’éternel bulletin. »<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">VII</div>","",<p>,"Amer savoir, celui qu’on tire du voyage !<br />","Le monde, monotone et petit, aujourd’hui,<br />","Hier, demain, toujours, nous fait voir notre image :<br />","Une oasis d’horreur dans un désert d’ennui !<br />",</p>,"",<p>,"Faut-il partir ? rester ? Si tu peux rester, reste ;<br />","Pars, s’il le faut. L’un court, et l’autre se tapit<br />","Pour tromper l’ennemi vigilant et funeste,<br />","Le Temps ! Il est, hélas ! des coureurs sans répit,<br />",</p>,"",<p>,"Comme le Juif errant et comme les apôtres,<br />","À qui rien ne suffit, ni wagon ni vaisseau,<br />","Pour fuir ce rétiaire infâme ; il en est d’autres<br />","Qui savent le tuer sans quitter leur berceau.<br />",</p>,"",<p>,"Lorsque enfin il mettra le pied sur notre échine,<br />","Nous pourrons espérer et crier : En avant !<br />","De même qu’autrefois nous partions pour la Chine,<br />","Les yeux fixés au large et les cheveux au vent,<br />",</p>,"",<p>,"Nous nous embarquerons sur la mer des Ténèbres<br />","Avec le cœur joyeux d’un jeune passager.<br />","Entendez-vous ces voix, charmantes et funèbres,<br />","Qui chantent : « Par ici ! vous qui voulez manger<br />",</p>,"",<p>,"Le Lotus parfumé ! c’est ici qu’on vendange<br />","Les fruits miraculeux dont votre cœur a faim ;<br />","Venez vous enivrer de la douceur étrange<br />","De cette après-midi qui n’a jamais de fin ? »<br />",</p>,"",<p>,"À l’accent familier nous devinons le spectre ;<br />","Nos Pylades là-bas tendent leurs bras vers nous.<br />","« Pour rafraîchir ton cœur nage vers ton Électre ! »<br />","Dit celle dont jadis nous baisions les genoux.<br />",</p>,"","<div style=\\"margin: 10px 0; text-indent:200px;\\">VIII</div>","",<p>,"Ô Mort, vieux capitaine, il est temps ! levons l’ancre !<br />","Ce pays nous ennuie, ô Mort ! Appareillons !<br />","Si le ciel et la mer sont noirs comme de l’encre,<br />","Nos cœurs que tu connais sont remplis de rayons !<br />",</p>,"",<p>,"Verse-nous ton poison pour qu’il nous réconforte !<br />","Nous voulons, tant ce feu nous brûle le cerveau,<br />","Plonger au fond du gouffre, Enfer ou Ciel, qu’importe ?<br />","Au fond de l’Inconnu pour trouver du nouveau !<br />",</p>}
204f214a-e8f6-42bb-9f26-bcbf8bde3c44	defiguree	À peine défigurée	{<p>,"Adieu tristesse,<br />","Bonjour tristesse.<br />","Tu es inscrite dans les lignes du plafond.<br />","Tu es inscrite dans les yeux que j'aime<br />","Tu n'es pas tout à fait la misère,<br />","Car les lèvres les plus pauvres te dénoncent<br />","Par un sourire.<br />",</p>,"",<p>,"Bonjour tristesse.<br />","Amour des corps aimables.<br />","Puissance de l'amour<br />","Dont l'amabilité surgit<br />","Comme un monstre sans corps.<br />","Tête désappointée.<br />","Tristesse, beau visage.<br />",<p>}
463d8dca-904f-4bb1-830e-2f77ffaceb4b	masque	Le masque	{<p>,"Contemplons ce trésor de grâces florentines ;<br />","Dans l’ondulation de ce corps musculeux<br />","L’Élégance et la Force abondent, sœurs divines.<br />","Cette femme, morceau vraiment miraculeux,<br />","Divinement robuste, adorablement mince,<br />","Est faite pour trôner sur des lits somptueux,<br />","Et charmer les loisirs d’un pontife ou d’un prince.<br />",</p>,"",<p>,"— Aussi, vois ce souris fin et voluptueux<br />","Où la Fatuité promène son extase ;<br />","Ce long regard sournois, langoureux et moqueur ;<br />","Ce visage mignard, tout encadré de gaze,<br />","Dont chaque trait nous dit avec un air vainqueur :<br />",</p>,"",<p>,"« La Volupté m’appelle et l’Amour me couronne ! »<br />","À cet être doué de tant de majesté<br />","Vois quel charme excitant la gentillesse donne !<br />","Approchons, et tournons autour de sa beauté.<br />",</p>,"",<p>,"O blasphème de l’art ! ô surprise fatale !<br />","La femme au corps divin, promettant le bonheur,<br />","Par le haut se termine en monstre bicéphale !<br />",</p>,"",<p>,"Mais non ! Ce n’est qu’un masque, un décor suborneur,<br />","Ce visage éclairé d’une exquise grimace,<br />","Et, regarde, voici, crispée atrocement,<br />","La véritable tête, et la sincère face<br />","Renversée à l’abri de la face qui ment.<br />","— Pauvre grande beauté ! le magnifique fleuve<br />","De tes pleurs aboutit dans mon cœur soucieux ;<br />","Ton mensonge m’enivre, et mon âme s’abreuve<br />","Aux flots que la Douleur fait jaillir de tes yeux !<br />",</p>,"",<p>,"— Mais pourquoi pleure-t-elle ? Elle, beauté parfaite<br />","Qui mettrait à ses pieds le genre humain vaincu,<br />","Quel mal mystérieux ronge son flanc d’athlète ?<br />",</p>,"",<p>,"— Elle pleure, insensé, parce qu’elle a vécu !<br />","Et parce qu’elle vit ! Mais ce qu’elle déplore<br />","Surtout, ce qui la fait frémir jusqu’aux genoux,<br />","C’est que demain, hélas ! il faudra vivre encore !<br />","Demain, après-demain et toujours ! — comme nous !<br />",</p>}
6113f650-efb7-4402-8f87-948d28c2fbc5	voute	Je t’adore à l’égal de la voûte nocturne	{<p>,"Je t’adore à l’égal de la voûte nocturne,<br />","Ô vase de tristesse, ô grande taciturne,<br />","Et t’aime d’autant plus, belle, que tu me fuis,<br />","Et que tu me parais, ornement de mes nuits,<br />","Plus ironiquement accumuler les lieues<br />","Qui séparent mes bras des immensités bleues.<br />",</p>,"",<p>,"Je m’avance à l’attaque, et je grimpe aux assauts,<br />","Comme après un cadavre un chœur de vermisseaux,<br />","Et je chéris, ô bête implacable et cruelle !<br />","Jusqu’à cette froideur par où tu m’es plus belle !<br />",</p>}
61362bc3-c41b-4dc5-be53-39b7ca848c0e	dormeur	Le dormeur du val	{<p>,"C’est un trou de verdure où chante une rivière<br />","Accrochant follement aux herbes des haillons<br />","D’argent ; où le soleil, de la montagne fière,<br />","Luit : c’est un petit val qui mousse de rayons.<br />",</p>,"",<p>,"Un soldat jeune, bouche ouverte, tête nue,<br />","Et la nuque baignant dans le frais cresson bleu,<br />","Dort ; il est étendu dans l’herbe, sous la nue,<br />","Pâle dans son lit vert où la lumière pleut.<br />",</p>,"",<p>,"Les pieds dans les glaïeuls, il dort. Souriant comme<br />","Sourirait un enfant malade, il fait un somme :<br />","Nature, berce-le chaudement : il a froid.<br />",</p>,"",<p>,"Les parfums ne font pas frissonner sa narine ;<br />","Il dort dans le soleil, la main sur sa poitrine<br />","Tranquille. Il a deux trous rouges au côté droit.<br />",</p>}
9f1473ee-7711-4cf7-b889-1920e968a7b1	soleil	Le soleil	{<p>,"Le long du vieux faubourg, où pendent aux masures<br />","Les persiennes, abri des secrètes luxures,<br />","Quand le soleil cruel frappe à traits redoublés<br />","Sur la ville et les champs, sur les toits et les blés,<br />","Je vais m’exercer seul à ma fantasque escrime,<br />","Flairant dans tous les coins les hasards de la rime,<br />","Trébuchant sur les mots comme sur les pavés,<br />","Heurtant parfois des vers depuis longtemps rêvés.<br />",</p>,"",<p>,"Ce père nourricier, ennemi des chloroses,<br />","Éveille dans les champs les vers comme les roses ;<br />","Il fait s’évaporer les soucis vers le ciel,<br />","Et remplit les cerveaux et les ruches de miel.<br />","C’est lui qui rajeunit les porteurs de béquilles<br />","Et les rend gais et doux comme des jeunes filles,<br />","Et commande aux moissons de croître et de mûrir<br />","Dans le cœur immortel qui toujours veut fleurir !<br />",</p>,"",<p>,"Quand, ainsi qu’un poëte, il descend dans les villes,<br />","Il ennoblit le sort des choses les plus viles,<br />","Et s’introduit en roi, sans bruit et sans valets,<br />","Dans tous les hôpitaux et dans tous les palais.<br />",</p>}
51fdee8b-3b19-42ec-92d3-47dcbf686662	muse_venale	La muse vénale	{<p>,"Ô Muse de mon cœur, amante des palais,<br />","Auras-tu, quand Janvier lâchera ses Borées,<br />","Durant les noirs ennuis des neigeuses soirées,<br />","Un tison pour chauffer tes deux pieds violets ?<br />",</p>,"",<p>,"Ranimeras-tu donc tes épaules marbrées<br />","Aux nocturnes rayons qui percent les volets ?<br />","Sentant ta bourse à sec autant que ton palais,<br />","Récolteras-tu l’or des voûtes azurées ?<br />",</p>,"",<p>,"Il te faut, pour gagner ton pain de chaque soir,<br />","Comme un enfant de chœur, jouer de l’encensoir,<br />","Chanter des Te Deum auxquels tu ne crois guère,<br />",</p>,"",<p>,"Ou, saltimbanque à jeun, étaler tes appas<br />","Et ton rire trempé de pleurs qu’on ne voit pas,<br />","Pour faire épanouir la rate du vulgaire.<br />",</p>}
0aba031d-454a-4146-a8e7-74af781b21ba	saison	Une saison en enfer	{"<p style=\\"text-indent: 30px\\">","« Jadis, si je me souviens bien, ma vie était un festin où s’ouvraient","tous les cœurs, où tous les vins coulaient.",</p>,"","<p style=\\"text-indent: 30px\\">","Un soir, j’ai assis la Beauté sur mes genoux. — Et je l’ai trouvée","amère. — Et je l’ai injuriée.",</p>,"","<p style=\\"text-indent: 30px\\">","Je me suis armé contre la justice.",</p>,"","<p style=\\"text-indent: 30px\\">","Je me suis enfui. Ô sorcières, ô misère, ô haine, c’est à vous que mon","trésor a été confié !",</p>,"","<p style=\\"text-indent: 30px\\">","Je parvins à faire s’évanouir dans mon esprit toute l’espérance","humaine. Sur toute joie pour l’étrangler j’ai fait le bond sourd de la","bête féroce.",</p>,"","<p style=\\"text-indent: 30px\\">","J’ai appelé les bourreaux pour, en périssant, mordre la crosse de","leurs fusils. J’ai appelé les fléaux, pour m’étouffer avec le sable,","le sang. Le malheur a été mon dieu. Je me suis allongé dans la","boue. Je me suis séché à l’air du crime. Et j’ai joué de bons tours à","la folie.",</p>,"","<p style=\\"text-indent: 30px\\">","Et le printemps m’a apporté l’affreux rire de l’idiot.",</p>,"","<p style=\\"text-indent: 30px\\">","Or, tout dernièrement m’étant trouvé sur le point de faire le dernier","couac ! j’ai songé à rechercher la clef du festin ancien, où je","reprendrais peut-être appétit.",</p>,"","<p style=\\"text-indent: 30px\\">","La charité est cette clef. — Cette inspiration prouve que j’ai rêvé !",</p>,"","<p style=\\"text-indent: 30px\\">","« Tu resteras hyène, etc…, » se récrie le démon qui me couronna de si","aimables pavots. « Gagne la mort avec tous tes appétits, et ton","égoïsme et tous les péchés capitaux. » Ah ! j’en ai trop pris : —","Mais, cher Satan, je vous en conjure, une prunelle moins irritée ! et","en attendant les quelques petites lâchetés en retard, vous qui aimez","dans l’écrivain l’absence des facultés descriptives ou instructives,","je vous détache ces quelques hideux feuillets de mon carnet de damné.",</p>}
0e6cac69-02a4-4d9d-8a63-2b0b9d9782f2	interminable	Dans l'interminable	{<p>,"Dans l’interminable<br />","Ennui de la plaine<br />","La neige incertaine<br />","Luit comme du sable.<br />",</p>,"",<p>,"Le ciel est de cuivre<br />","Sans lueur aucune<br />","On croirait voir vivre<br />","Et mourir la lune.<br />",</p>,"",<p>,"Comme des nuées<br />","Flottent gris les chênes<br />","Des forêts prochaines<br />","Parmi les buées.<br />",</p>,"",<p>,"Le ciel est de cuivre<br />","Sans lueur aucune<br />","On croirait voir vivre<br />","Et mourir la lune.<br />",</p>,"",<p>,"Corneille poussive<br />","Et vous, les loups maigres,<br />","Par ces bises aigres<br />","Quoi donc vous arrive ?<br />",</p>,"",<p>,"Dans l’interminable<br />","Ennui de la plaine<br />","La neige incertaine<br />","Luit comme du sable.<br />",</p>}
375c9f83-dd10-49a7-85c9-e77276c7e1cc	gaspard	La chanson de Gaspard Hauser	{<p>,"Je suis venu, calme orphelin,<br />","Riche de mes seuls yeux tranquilles,<br />","Vers les hommes des grandes villes :<br />","Ils ne m’ont pas trouvé malin.<br />",</p>,"",<p>,"À vingt ans un trouble nouveau<br />","Sous le nom d’amoureuses flammes<br />","M’a fait trouver belles les femmes :<br />","Elles ne m’ont pas trouvé beau.<br />",</p>,"",<p>,"Bien que sans patrie et sans roi<br />","Et très brave ne l’étant guère,<br />","J’ai voulu mourir à la guerre :<br />","La mort n’a pas voulu de moi.<br />",</p>,"",<p>,"Suis-je né trop tôt ou trop tard ?<br />","Qu’est-ce que je fais en ce monde ?<br />","Ô vous tous, ma peine est profonde :<br />","Priez pour le pauvre Gaspard !<br />",</p>}
c91f2e70-856b-41ef-b538-be666639b75e	je_suis_comme_je_suis	Je suis comme je suis	{"<p style=\\"text-align:center;\\">","Je suis comme je suis<br />","Je suis faite comme ça<br />","Quand j’ai envie de rire<br />","Oui je ris aux éclats<br />","J’aime celui qui m’aime<br />","Est-ce ma faute à moi<br />","Si ce n’est pas le même<br />","Que j’aime chaque fois<br />","Je suis comme je suis<br />","Je suis faite comme ça<br />","Que voulez-vous de plus<br />","Que voulez-vous de moi<br />",</p>,"<p style=\\"text-align:center;\\">","Je suis faite pour plaire<br />","Et n’y puis rien changer<br />","Mes talons sont trop hauts<br />","Ma taille trop cambrée<br />","Mes seins beaucoup trop durs<br />","Et mes yeux trop cernés<br />","Et puis après<br />","Qu’est-ce que ça peut vous faire<br />","Je suis comme je suis<br />","Je plais à qui je plais<br />","Qu’est-ce que ça peut vous faire<br />","Ce qui m’est arrivé<br />","Oui j’ai aimé quelqu’un<br />","Oui quelqu’un m’a aimée<br />","Comme les enfants qui s’aiment<br />","Simplement savent aimer<br />","Aimer aimer…<br />","Pourquoi me questionner<br />","Je suis là pour vous plaire<br />","Et n’y puis rien changer.<br />",</p>}
1ec5605c-2c56-43fc-970f-c47e5494094a	apparition	Apparition	{<p>,"La lune s’attristait. Des séraphins en pleurs<br />","Rêvant, l’archet aux doigts, dans le calme des fleurs<br />","Vaporeuses, tiraient de mourantes violes<br />","De blancs sanglots glissant sur l’azur des corolles<br />","— C’était le jour béni de ton premier baiser.<br />","Ma songerie aimant à me martyriser<br />","S’enivrait savamment du parfum de tristesse<br />","Que même sans regret et sans déboire laisse<br />","La cueillaison d’un Rêve au cœur qui l’a cueilli.<br />","J’errais donc, l’œil rivé sur le pavé vieilli<br />","Quand avec du soleil aux cheveux, dans la rue<br />","Et dans le soir, tu m’es en riant apparue<br />","Et j’ai cru voir la fée au chapeau de clarté<br />","Qui jadis sur mes beaux sommeils d’enfant gâté<br />","Passait, laissant toujours de ses mains mal fermées<br />","Neiger de blancs bouquets d’étoiles parfumées.<br />",</p>}
5e169664-44f0-49e1-b9cc-7d3353ea84da	bijoux	Les Bijoux	{<p>,"La très-chère était nue, et, connaissant mon cœur,<br />","Elle n’avait gardé que ses bijoux sonores,<br />","Dont le riche attirail lui donnait l’air vainqueur<br />","Qu’ont dans leurs jours heureux les esclaves des Mores.<br />",</p>,"",<p>,"Quand il jette en dansant son bruit vif et moqueur,<br />","Ce monde rayonnant de métal et de pierre<br />","Me ravit en extase, et j’aime à la fureur<br />","Les choses où le son se mêle à la lumière.<br />",</p>,"",<p>,"Elle était donc couchée et se laissait aimer,<br />","Et du haut du divan elle souriait d’aise<br />","À mon amour profond et doux comme la mer,<br />","Qui vers elle montait comme vers sa falaise.<br />",</p>,"",<p>,"Les yeux fixés sur moi, comme un tigre dompté,<br />","D’un air vague et rêveur elle essayait des poses,<br />","Et la candeur unie à la lubricité<br />","Donnait un charme neuf à ses métamorphoses ;<br />",</p>,"",<p>,"Et son bras et sa jambe, et sa cuisse et ses reins,<br />","Polis comme de l’huile, onduleux comme un cygne,<br />","Passaient devant mes yeux clairvoyants et sereins ;<br />","Et son ventre et ses seins, ces grappes de ma vigne,<br />",</p>,"",<p>,"S’avançaient, plus câlins que les Anges du mal,<br />","Pour troubler le repos où mon âme était mise,<br />","Et pour la déranger du rocher de cristal<br />","Où, calme et solitaire, elle s’était assise.<br />",</p>,"",<p>,"Je croyais voir unis par un nouveau dessin<br />","Les hanches de l’Antiope au buste d’un imberbe,<br />","Tant sa taille faisait ressortir son bassin.<br />","Sur ce teint fauve et brun le fard était superbe !<br />",</p>,"",<p>,"— Et la lampe s’étant résignée à mourir,<br />","Comme le foyer seul illuminait la chambre,<br />","Chaque fois qu’il poussait un flamboyant soupir,<br />","Il inondait de sang cette peau couleur d’ambre !<br />",</p>}
f9d26e05-bbb2-4c7f-a3b3-3996e2b516bc	paysage	Paysage	{<p>,"Je veux, pour composer chastement mes églogues,<br />","Coucher auprès du ciel, comme les astrologues,<br />","Et, voisin des clochers, écouter en rêvant<br />","Leurs hymnes solennels emportés par le vent.<br />","Les deux mains au menton, du haut de ma mansarde,<br />","Je verrai l’atelier qui chante et qui bavarde ;<br />","Les tuyaux, les clochers, ces mâts de la cité,<br />","Et les grands ciels qui font rêver d’éternité.<br />",</p>,"",<p/>,"Il est doux, à travers les brumes, de voir naître<br />","L’étoile dans l’azur, la lampe à la fenêtre,<br />","Les fleuves de charbon monter au firmament<br />","Et la lune verser son pâle enchantement.<br />","Je verrai les printemps, les étés, les automnes ;<br />","Et quand viendra l’hiver aux neiges monotones,<br />","Je fermerai partout portières et volets<br />","Pour bâtir dans la nuit mes féeriques palais.<br />","Alors je rêverai des horizons bleuâtres,<br />","Des jardins, des jets d’eau pleurant dans les albâtres,<br />","Des baisers, des oiseaux chantant soir et matin,<br />","Et tout ce que l’Idylle a de plus enfantin.<br />","L’Émeute, tempêtant vainement à ma vitre,<br />","Ne fera pas lever mon front de mon pupitre ;<br />","Car je serai plongé dans cette volupté<br />","D’évoquer le Printemps avec ma volonté,<br />","De tirer un soleil de mon cœur, et de faire<br />","De mes pensers brûlants une tiède atmosphère.<br />",</p>}
6f960ed8-3b63-4966-a8d9-da8ec46b0660	escargots	Chanson des Escargots qui vont à l'enterrement	{"<p style=\\"text-align:center;\\">","A l'enterrement d'une feuille morte<br />","Deux escargots s'en vont<br />","Ils ont la coquille noire<br />","Du crêpe autour des cornes<br />","Ils s'en vont dans le soir<br />","Un très beau soir d'automne<br />","Hélas quand ils arrivent<br />","C'est déjà le printemps<br />","Les feuilles qui étaient mortes<br />","Sont toutes réssucitées<br />","Et les deux escargots<br />","Sont très désappointés<br />","Mais voila le soleil<br />","Le soleil qui leur dit<br />","Prenez prenez la peine<br />","La peine de vous asseoir<br />","Prenez un verre de bière<br />","Si le coeur vous en dit<br />","Prenez si ça vous plaît<br />","L'autocar pour Paris<br />","Il partira ce soir<br />","Vous verrez du pays<br />","Mais ne prenez pas le deuil<br />","C'est moi qui vous le dit<br />","Ça noircit le blanc de l'oeil<br />","Et puis ça enlaidit<br />","Les histoires de cercueils<br />","C'est triste et pas joli<br />","Reprenez vous couleurs<br />","Les couleurs de la vie<br />","Alors toutes les bêtes<br />","Les arbres et les plantes<br />","Se mettent a chanter<br />","A chanter a tue-tête<br />","La vrai chanson vivante<br />","La chanson de l'été<br />","Et tout le monde de boire<br />","Tout le monde de trinquer<br />","C'est un très joli soir<br />","Un joli soir d'été<br />","Et les deux escargots<br />","S'en retournent chez eux<br />","Ils s'en vont très émus<br />","Ils s'en vont très heureux<br />","Comme ils ont beaucoup bu<br />","Ils titubent un p'tit peu<br />","Mais la haut dans le ciel<br />","La lune veille sur eux.<br />",</p>}
6435e69c-ff6a-46b8-9563-d5f179dbaa9d	trois_ans	Après Trois Ans	{<p>,"Ayant poussé la porte étroite qui chancelle,<br />","Je me suis promené dans le petit jardin<br />","Qu’éclairait doucement le soleil du matin,<br />","Pailletant chaque fleur d’une humide étincelle.<br />",</p>,"",<p>,"Rien n’a changé. J’ai tout revu : l’humble tonnelle<br />","De vigne folle avec les chaises de rotin…<br />","Le jet d’eau fait toujours son murmure argentin<br />","Et le vieux tremble sa plainte sempiternelle.<br />",</p>,"",<p>,"Les roses comme avant palpitent ; comme avant,<br />","Les grands lys orgueilleux se balancent au vent.<br />","Chaque alouette qui va et vient m’est connue.<br />",</p>,"",<p>,"Même j’ai retrouvé debout la Velléda,<br />","Dont le plâtre s’écaille au bout de l’avenue.<br />","— Grêle, parmi l’odeur fade du réséda.<br />",</p>}
6fa88f37-5629-49cb-bef7-645c98bea7d5	benediction	Bénédiction	{<p>,"Lorsque, par un décret des puissances suprêmes,<br />","Le Poëte apparaît en ce monde ennuyé,<br />","Sa mère épouvantée et pleine de blasphèmes<br />","Crispe ses poings vers Dieu, qui la prend en pitié :<br />",</p>,<p>,"« — Ah ! que n’ai-je mis bas tout un nœud de vipères,<br />","Plutôt que de nourrir cette dérision !<br />","Maudite soit la nuit aux plaisirs éphémères<br />","Où mon ventre a conçu mon expiation !<br />",</p>,<p>,"Puisque tu m’as choisie entre toutes les femmes<br />","Pour être le dégoût de mon triste mari,<br />","Et que je ne puis pas rejeter dans les flammes,<br />","Comme un billet d’amour, ce monstre rabougri,<br />",</p>,<p>,"Je ferai rejaillir ta haine qui m’accable<br />","Sur l’instrument maudit de tes méchancetés,<br />","Et je tordrai si bien cet arbre misérable,<br />","Qu’il ne pourra pousser ses boutons empestés ! »<br />",</p>,<p>,"Elle ravale ainsi l’écume de sa haine,<br />","Et, ne comprenant pas les desseins éternels,<br />","Elle-même prépare au fond de la Géhenne<br />","Les bûchers consacrés aux crimes maternels.<br />",</p>,<p>,"Pourtant, sous la tutelle invisible d’un Ange,<br />","L’Enfant déshérité s’enivre de soleil,<br />","Et dans tout ce qu’il boit et dans tout ce qu’il mange<br />","Retrouve l’ambroisie et le nectar vermeil.<br />",</p>,<p>,"Il joue avec le vent, cause avec le nuage<br />","Et s’enivre en chantant du chemin de la croix ;<br />","Et l’Esprit qui le suit dans son pèlerinage<br />","Pleure de le voir gai comme un oiseau des bois.<br />",</p>,<p>,"Tous ceux qu’il veut aimer l’observent avec crainte,<br />","Ou bien, s’enhardissant de sa tranquillité,<br />","Cherchent à qui saura lui tirer une plainte,<br />","Et font sur lui l’essai de leur férocité.<br />",</p>,<p>,"Dans le pain et le vin destinés à sa bouche<br />","Ils mêlent de la cendre avec d’impurs crachats ;<br />","Avec hypocrisie ils jettent ce qu’il touche,<br />","Et s’accusent d’avoir mis leurs pieds dans ses pas.<br />",</p>,<p>,"Sa femme va criant sur les places publiques :<br />","« — Puisqu’il me trouve assez belle pour m’adorer,<br />","Je ferai le métier des idoles antiques,<br />","Et comme elles je veux me faire redorer ;<br />",</p>,<p>,"Et je me soûlerai de nard, d’encens, de myrrhe,<br />","De génuflexions, de viandes et de vins,<br />","Pour savoir si je puis dans un cœur qui m’admire<br />","Usurper en riant les hommages divins !<br />",</p>,<p>,"Et, quand je m’ennuîrai de ces farces impies,<br />","Je poserai sur lui ma frêle et forte main ;<br />","Et mes ongles, pareils aux ongles des harpies,<br />","Sauront jusqu’à son cœur se frayer un chemin.<br />",</p>,<p>,"Comme un tout jeune oiseau qui tremble et qui palpite,<br />","J’arracherai ce cœur tout rouge de son sein,<br />","Et, pour rassasier ma bête favorite,<br />","Je le lui jetterai par terre avec dédain ! »<br />",</p>,<p>,"Vers le Ciel, où son œil voit un trône splendide,<br />","Le Poëte serein lève ses bras pieux,<br />","Et les vastes éclairs de son esprit lucide<br />","Lui dérobent l’aspect des peuples furieux :<br />",</p>,<p>,"« — Soyez béni, mon Dieu, qui donnez la souffrance<br />","Comme un divin remède à nos impuretés<br />","Et comme la meilleure et la plus pure essence<br />","Qui prépare les forts aux saintes voluptés !<br />",</p>,<p>,"Je sais que vous gardez une place au Poëte<br />","Dans les rangs bienheureux des saintes Légions,<br />","Et que vous l’invitez à l’éternelle fête<br />","Des Trônes, des Vertus, des Dominations.<br />",</p>,<p>,"Je sais que la douleur est la noblesse unique<br />","Où ne mordront jamais la terre et les enfers,<br />","Et qu’il faut pour tresser ma couronne mystique<br />","Imposer tous les temps et tous les univers.<br />",</p>,<p>,"Mais les bijoux perdus de l’antique Palmyre,<br />","Les métaux inconnus, les perles de la mer,<br />","Par votre main montés, ne pourraient pas suffire<br />","À ce beau diadème éblouissant et clair ;<br />",</p>,<p>,"Car il ne sera fait que de pure lumière,<br />","Puisée au foyer saint des rayons primitifs,<br />","Et dont les yeux mortels, dans leur splendeur entière,<br />","Ne sont que des miroirs obscurcis et plaintifs !<br />",</p>}
b0ebee4e-9587-40e3-aaea-a0294c717d14	mademoiselle	À Mademoiselle	{<p>,"Oui, femme, quoi qu'on puisse dire<br />","Vous avez le fatal pouvoir<br />","De nous jeter par un sourire<br />","Dans l'ivresse ou le désespoir.<br />",</p>,"",<p>,"Oui, deux mots, le silence même,<br />","Un regard distrait ou moqueur,<br />","Peuvent donner à qui vous aime<br />","Un coup de poignard dans le coeur.<br />",</p>,"",<p>,"Oui, votre orgueil doit être immense,<br />","Car, grâce à notre lâcheté,<br />","Rien n'égale votre puissance,<br />","Sinon, votre fragilité.<br />",</p>,"",<p>,"Mais toute puissance sur terre<br />","Meurt quand l'abus en est trop grand,<br />","Et qui sait souffrir et se taire<br />","S'éloigne de vous en pleurant.<br />",</p>,"",<p>,"Quel que soit le mal qu'il endure,<br />","Son triste sort est le plus beau.<br />","J'aime encore mieux notre torture<br />","Que votre métier de bourreau. <br />",</p>}
5e0e9fd7-3e8b-46b1-96c4-02385cdcc671	reve	Mon rêve familier	{<p>,"Je fais souvent ce rêve étrange et pénétrant<br />","D’une femme inconnue, et que j’aime, et qui m’aime,<br />","Et qui n’est, chaque fois, ni tout à fait la même<br />","Ni tout à fait une autre, et m’aime et me comprend.<br />",</p>,"",<p>,"Car elle me comprend, et mon cœur, transparent<br />","Pour elle seule, hélas ! cesse d’être un problème<br />","Pour elle seule, et les moiteurs de mon front blême,<br />","Elle seule les sait rafraîchir, en pleurant.<br />",</p>,"",<p>,"Est-elle brune, blonde ou rousse ? — Je l’ignore.<br />","Son nom ? Je me souviens qu’il est doux et sonore,<br />","Comme ceux des aimés que la Vie exila.<br />",</p>,"",<p>,"Son regard est pareil au regard des statues,<br />","Et, pour sa voix, lointaine, et calme, et grave, elle a<br />","L’inflexion des voix chères qui se sont tues.<br />",</p>}
0f413c6c-7f62-4a34-921e-600193cac4da	remords	Remords posthume	{<p>,"Lorsque tu dormiras, ma belle ténébreuse,<br />","Au fond d’un monument construit en marbre noir,<br />","Et lorsque tu n’auras pour alcôve et manoir<br />","Qu’un caveau pluvieux et qu’une fosse creuse ;<br />",</p>,"",<p>,"Quand la pierre, opprimant ta poitrine peureuse<br />","Et tes flancs qu’assouplit un charmant nonchaloir,<br />","Empêchera ton cœur de battre et de vouloir,<br />","Et tes pieds de courir leur course aventureuse,<br />",</p>,"",<p>,"Le tombeau, confident de mon rêve infini<br />","(Car le tombeau toujours comprendra le poëte),<br />","Durant ces longues nuits d’où le somme est banni,<br />",</p>,"",<p>,"Te dira : « Que vous sert, courtisane imparfaite,<br />","De n’avoir pas connu ce que pleurent les morts ? »<br />","— Et le ver rongera ta peau comme un remords.<br />",</p>}
e472e964-d478-4305-bc36-3812d05154ac	homme	L'homme et la mer	{<p>,"Homme libre, toujours tu chériras la mer !<br />","La mer est ton miroir ; tu contemples ton âme<br />","Dans le déroulement infini de sa lame,<br />","Et ton esprit n’est pas un gouffre moins amer.<br />",</p>,"",<p>,"Tu te plais à plonger au sein de ton image ;<br />","Tu l’embrasses des yeux et des bras, et ton cœur<br />","Se distrait quelquefois de sa propre rumeur<br />","Au bruit de cette plainte indomptable et sauvage.<br />",</p>,"",<p>,"Vous êtes tous les deux ténébreux et discrets :<br />","Homme, nul n’a sondé le fond de tes abîmes ;<br />","Ô mer, nul ne connaît tes richesses intimes,<br />","Tant vous êtes jaloux de garder vos secrets !<br />",</p>,"",<p>,"Et cependant voilà des siècles innombrables<br />","Que vous vous combattez sans pitié ni remord,<br />","Tellement vous aimez le carnage et la mort,<br />","Ô lutteurs éternels, ô frères implacables !<br />",</p>}
00b36178-607a-4ec8-a293-9b4b37717602	adieu	L'Adieu	{<p>,"J’ai cueilli ce brin de bruyère<br />","L’automne est morte souviens-t’en<br />","Nous ne nous verrons plus sur terre<br />","Odeur du temps brin de bruyère<br />","Et souviens-toi que je t’attends<br />",</p>}
baf73840-f03e-449b-884e-0e222d0b87f6	souvenirs	Spleen	{<p>,"J’ai plus de souvenirs que si j’avais mille ans.",</p>,"",<p>,"Un gros meuble à tiroirs encombré de bilans,<br />","De vers, de billets doux, de procès, de romances,<br />","Avec de lourds cheveux roulés dans des quittances,<br />","Cache moins de secrets que mon triste cerveau.<br />","C’est une pyramide, un immense caveau,<br />","Qui contient plus de morts que la fosse commune.<br />","— Je suis un cimetière abhorré de la lune,<br />","Où comme des remords se traînent de longs vers<br />","Qui s’acharnent toujours sur mes morts les plus chers.<br />","Je suis un vieux boudoir plein de roses fanées,<br />","Où gît tout un fouillis de modes surannées,<br />","Où les pastels plaintifs et les pâles Boucher,<br />","Seuls, respirent l’odeur d’un flacon débouché.<br />",</p>,"",<p>,"Rien n’égale en longueur les boiteuses journées,<br />","Quand sous les lourds flocons des neigeuses années<br />","L’ennui, fruit de la morne incuriosité,<br />","Prend les proportions de l’immortalité.<br />","— Désormais tu n’es plus, ô matière vivante !<br />","Qu’un granit entouré d’une vague épouvante,<br />","Assoupi dans le fond d’un Saharah brumeux ;<br />","Un vieux sphinx ignoré du monde insoucieux,<br />","Oublié sur la carte, et dont l’humeur farouche<br />","Ne chante qu’aux rayons du soleil qui se couche.<br />",</p>}
5f4ef3ed-a50f-4be6-96c2-fc0ec842a990	lecteur	Au lecteur	{<p>,"La sottise, l’erreur, le péché, la lésine,<br />","Occupent nos esprits et travaillent nos corps,<br />","Et nous alimentons nos aimables remords,<br />","Comme les mendiants nourrissent leur vermine.<br />",</p>,"",<p>,"Nos péchés sont têtus, nos repentirs sont lâches ;<br />","Nous nous faisons payer grassement nos aveux,<br />","Et nous rentrons gaîment dans le chemin bourbeux,<br />","Croyant par de vils pleurs laver toutes nos taches.<br />",</p>,"",<p>,"Sur l’oreiller du mal c’est Satan Trismégiste<br />","Qui berce longuement notre esprit enchanté,<br />","Et le riche métal de notre volonté<br />","Est tout vaporisé par ce savant chimiste.<br />",</p>,"",<p>,"C’est le Diable qui tient les fils qui nous remuent !<br />","Aux objets répugnants nous trouvons des appas ;<br />","Chaque jour vers l’Enfer nous descendons d’un pas,<br />","Sans horreur, à travers des ténèbres qui puent.<br />",</p>,"",<p>,"Ainsi qu’un débauché pauvre qui baise et mange<br />","Le sein martyrisé d’une antique catin,<br />","Nous volons au passage un plaisir clandestin<br />","Que nous pressons bien fort comme une vieille orange.<br />",</p>,"",<p>,"Serré, fourmillant, comme un million d’helminthes,<br />","Dans nos cerveaux ribote un peuple de Démons,<br />","Et, quand nous respirons, la Mort dans nos poumons<br />","Descend, fleuve invisible, avec de sourdes plaintes.<br />",</p>,"",<p>,"Si le viol, le poison, le poignard, l’incendie,<br />","N’ont pas encor brodé de leurs plaisants dessins<br />","Le canevas banal de nos piteux destins,<br />","C’est que notre âme, hélas ! n’est pas assez hardie.<br />",</p>,"",<p>,"Mais parmi les chacals, les panthères, les lices,<br />","Les singes, les scorpions, les vautours, les serpents,<br />","Les monstres glapissants, hurlants, grognants, rampants,<br />","Dans la ménagerie infâme de nos vices,<br />",</p>,"",<p>,"Il en est un plus laid, plus méchant, plus immonde !<br />","Quoiqu’il ne pousse ni grands gestes ni grands cris,<br />","Il ferait volontiers de la terre un débris<br />","Et dans un bâillement avalerait le monde ;<br />",</p>,"",<p>,"C’est l’Ennui ! — L’œil chargé d’un pleur involontaire,<br />","Il rêve d’échafauds en fumant son houka.<br />","Tu le connais, lecteur, ce monstre délicat,<br />","— Hypocrite lecteur, — mon semblable, — mon frère !<br />",</p>}
186dd2dd-6444-4925-a711-aaf2fd7cd80f	pater	Pater Noster	{"<p style=\\"text-align:center;\\">","Notre Père qui êtes aux cieux<br />","Restez-y<br />","Et nous nous resterons sur la terre<br />","Qui est quelquefois si jolie<br />","Avec ses mystères de New York<br />","Et puis ses mystères de Paris<br />","Qui valent bien celui de la trinité<br />","Avec son petit canal de l'Ourcq<br />","Sa grande muraille de Chine<br />","Sa rivière de Morlaix<br />","Ses bêtises de Cambrai<br />","Avec son Océan Pacifique<br />","Et ses deux bassins aux Tuileries<br />","Avec ses bons enfants et ses mauvais sujets<br />","Avec toutes les merveilles du monde<br />","Qui sont là<br />","Simplement sur la terre<br />","Offertes à tout le monde<br />","Éparpillées<br />","Émerveillées elles-même d'être de telles merveilles<br />","Et qui n'osent se l'avouer<br />","Comme une jolie fille nue qui n'ose se montrer<br />","Avec les épouvantables malheurs du monde<br />","Qui sont légion<br />","Avec leurs légionnaires<br />","Aves leur tortionnaires<br />","Avec les maîtres de ce monde<br />","Les maîtres avec leurs prêtres leurs traîtres et leurs reîtres<br />","Avec les saisons<br />","Avec les années<br />","Avec les jolies filles et avec les vieux cons<br />","Avec la paille de la misère pourrissant dans l'acier des canons.<br />",</p>}
fa300944-828b-483a-b415-d5ad030ac801	lethe	Le Léthé	{<p>,"Viens sur mon cœur, âme cruelle et sourde,<br />","Tigre adoré, monstre aux airs indolents ;<br />","Je veux longtemps plonger mes doigts tremblants<br />","Dans l’épaisseur de ta crinière lourde ;<br />",</p>,"",<p>,"Dans tes jupons remplis de ton parfum<br />","Ensevelir ma tête endolorie,<br />","Et respirer, comme une fleur flétrie,<br />","Le doux relent de mon amour défunt.<br />",</p>,"",<p>,"Je veux dormir ! dormir plutôt que vivre !<br />","Dans un sommeil aussi doux que la mort,<br />","J’étalerai mes baisers sans remord<br />","Sur ton beau corps poli comme le cuivre.<br />",</p>,"",<p>,"Pour engloutir mes sanglots apaisés<br />","Rien ne me vaut l’abîme de ta couche ;<br />","L’oubli puissant habite sur ta bouche,<br />","Et le Léthé coule dans tes baisers.<br />",</p>,"",<p>,"À mon destin, désormais mon délice,<br />","J’obéirai comme un prédestiné ;<br />","Martyr docile, innocent condamné,<br />","Dont la ferveur attise le supplice,<br />",</p>,"",<p>,"Je sucerai, pour noyer ma rancœur,<br />","Le népenthès et la bonne ciguë<br />","Aux bouts charmants de cette gorge aiguë,<br />","Qui n’a jamais emprisonné de cœur.<br />",</p>}
984902d4-b019-406f-87e5-51484b8de04a	cet_amour	Cet amour	{<p>,"Cet amour<br />","Si violent<br />","Si fragile<br />","Si tendre<br />","Si désespéré<br />","Cet amour<br />","Beau comme le jour<br />","Et mauvais comme le temps<br />","Quand le temps est mauvais<br />","Cet amour si vrai<br />","Cet amour si beau<br />","Si heureux<br />","Si joyeux<br />","Et si dérisoire<br />","Tremblant de peur comme un enfant dans le noir<br />","Et si sûr de lui<br />","Comme un homme tranquille au milieu de la nuit<br />","Cet amour qui faisait peur aux autres<br />","Qui les faisait parler<br />","Qui les faisait blêmir<br />","Cet amour guetté<br />","Parce que nous le guettions<br />","Traqué blessé piétiné achevé nié oublié<br />","Parce que nous l’avons traqué blessé piétiné achevé nié oublié<br />","Cet amour tout entier<br />","Si vivant encore<br />","Et tout ensoleillé<br />","C’est le tien<br />","C’est le mien<br />","Celui qui a été<br />","Cette chose toujours nouvelle<br />","Et qui n’a pas changé<br />","Aussi vrai qu’une plante<br />","Aussi tremblante qu’un oiseau<br />","Aussi chaude aussi vivant que l’été<br />","Nous pouvons tous les deux<br />","Aller et revenir<br />","Nous pouvons oublier<br />","Et puis nous rendormir<br />","Nous réveiller souffrir vieillir<br />","Nous endormir encore<br />","Rêver à la mort,<br />","Nous éveiller sourire et rire<br />","Et rajeunir<br />","Notre amour reste là<br />","Têtu comme une bourrique<br />","Vivant comme le désir<br />","Cruel comme la mémoire<br />","Bête comme les regrets<br />","Tendre comme le souvenir<br />","Froid comme le marbre<br />","Beau comme le jour<br />","Fragile comme un enfant<br />","Il nous regarde en souriant<br />","Et il nous parle sans rien dire<br />","Et moi je l’écoute en tremblant<br />","Et je crie<br />","Je crie pour toi<br />","Je crie pour moi<br />","Je te supplie<br />","Pour toi pour moi et pour tous ceux qui s’aiment<br />","Et qui se sont aimés<br />","Oui je lui crie<br />","Pour toi pour moi et pour tous les autres<br />","Que je ne connais pas<br />","Reste là<br />","Lá où tu es<br />","Lá où tu étais autrefois<br />","Reste là<br />","Ne bouge pas<br />","Ne t’en va pas<br />","Nous qui nous sommes aimés<br />","Nous t’avons oublié<br />","Toi ne nous oublie pas<br />","Nous n’avions que toi sur la terre<br />","Ne nous laisse pas devenir froids<br />","Beaucoup plus loin toujours<br />","Et n’importe où<br />","Donne-nous signe de vie<br />","Beaucoup plus tard au coin d’un bois<br />","Dans la forêt de la mémoire<br />","Surgis soudain<br />","Tends-nous la main<br />","Et sauve-nous.<br />",</p>}
e98c0080-a1b8-4f6d-a76a-37df28934e2e	lautomne	L'automne	{<p>,"Salut ! bois couronnés d’un reste de verdure !<br />","Feuillages jaunissants sur les gazons épars !<br />","Salut, derniers beaux jours; Le deuil de la nature<br />","Convient à la douleur et plaît à mes regards.<br />",</p>,"",<p>,"Je suis d’un pas rêveur le sentier solitaire ;<br />","J’aime à revoir encor, pour la dernière fois,<br />","Ce soleil pâlissant, dont la faible lumière<br />","Perce à peine à mes pieds l’obscurité des bois.<br />",</p>,"",<p>,"Oui, dans ces jours d’automne où la nature expire,<br />","À ses regards voilés je trouve plus d’attraits :<br />","C’est l’adieu d’un ami, c’est le dernier sourire<br />","Des lèvres que la mort va fermer pour jamais.<br />",</p>,"",<p>,"Ainsi, prêt à quitter l’horizon de la vie,<br />","Pleurant de mes longs jours l’espoir évanoui,<br />","Je me retourne encore, et d’un regard d’envie<br />","Je contemple ses biens dont je n’ai pas joui.<br />",</p>,"",<p>,"Terre, soleil, vallons, belle et douce nature,<br />","Je vous dois une larme aux bords de mon tombeau !<br />","L’air est si parfumé ! la lumière est si pure !<br />","Aux regards d’un mourant le soleil est si beau !<br />",</p>,"",<p>,"Je voudrais maintenant vider jusqu’à la lie<br />","Ce calice mêlé de nectar et de fiel :<br />","Au fond de cette coupe où je buvais la vie,<br />","Peut-être restait-il une goutte de miel !<br />",</p>,"",<p>,"Peut-être l’avenir me gardait-il encore<br />","Un retour de bonheur dont l’espoir est perdu !<br />","Peut-être dans la foule une âme que j’ignore<br />","Aurait compris mon âme, et m’aurait répondu !…<br />",</p>,"",<p>,"La fleur tombe en livrant ses parfums au zéphyre ;<br />","À la vie, au soleil, ce sont là ses adieux ;<br />","Moi, je meurs ; et mon âme, au moment qu’elle expire,<br />","S’exhale comme un son triste et mélodieux.<br />",</p>}
5537634c-6e64-404a-98b3-286396eb79ce	air_vif	Air Vif	{<p>,"J’ai regardé devant moi<br />","Dans la foule je t’ai vue<br />","Parmi les blés je t’ai vue<br />","Sous un arbre je t’ai vue<br />",</p>,"",<p>,"Au bout de tous mes voyages<br />","Au fond de tous mes tourments<br />","Au tournant de tous les rires<br />","Sortant de l’eau et du feu<br />",</p>,"",<p>,"L’été l’hiver je t’ai vue<br />","Dans ma maison je t’ai vue<br />","Entre mes bras je t’ai vue<br />","Dans mes rêves je t’ai vue<br />",</p>,"",<p>,"Je ne te quitterai plus.<br />",</p>}
00425c33-a173-410b-883e-c9ca808372b4	brise	Brise marine	{<p>,"La chair est triste, hélas ! et j’ai lu tous les livres.<br />","Fuir ! là-bas fuir ! Je sens que des oiseaux sont ivres<br />","D’être parmi l’écume inconnue et les cieux !<br />","Rien, ni les vieux jardins reflétés par les yeux,<br />","Ne retiendra ce cœur qui dans la mer se trempe,<br />","Ô Nuits ! ni la clarté déserte de ma lampe<br />","Sur le vide papier que la blancheur défend,<br />","Et ni la jeune femme allaitant son enfant.<br />","Je partirai ! Steamer balançant ta mâture,<br />","Lève l’ancre pour une exotique nature !<br />","Un Ennui, désolé par les cruels espoirs,<br />","Croit encore à l’adieu suprême des mouchoirs !<br />","Et, peut-être, les mâts, invitant les orages,<br />","Sont-ils de ceux qu’un vent penche sur les naufrages<br />","Perdus, sans mâts, sans mâts, ni fertiles ilôts…<br />","Mais, o mon cœur, entends le chant des matelots !<br />",</p>}
1416e639-23b1-49ea-b3c2-10c5b7ccd30a	road	The Road Not Taken	{<p>,"Two roads diverged in a yellow wood,<br />","And sorry I could not travel both<br />","And be one traveler, long I stood<br />","And looked down one as far as I could<br />","To where it bent in the undergrowth;<br />",</p>,"",<p>,"Then took the other, as just as fair,<br />","And having perhaps the better claim,<br />","Because it was grassy and wanted wear;<br />","Though as for that the passing there<br />","Had worn them really about the same,<br />",</p>,"",<p>,"And both that morning equally lay<br />","In leaves no step had trodden black.<br />","Oh, I kept the first for another day!<br />","Yet knowing how way leads on to way,<br />","I doubted if I should ever come back.<br />",</p>,"",<p>,"I shall be telling this with a sigh<br />","Somewhere ages and ages hence:<br />","Two roads diverged in a wood, and I—<br />","I took the one less travelled by,<br />","And that has made all the difference.<br />",</p>}
3d3b137b-eaa3-41a1-b43d-63c7d0c12648	mort	La mort des pauvres	{<p>,"C’est la Mort qui console, hélas ! et qui fait vivre ;<br />","C’est le but de la vie, et c’est le seul espoir<br />","Qui, comme un élixir, nous monte et nous enivre,<br />","Et nous donne le cœur de marcher jusqu’au soir ;<br />",</p>,"",<p>,"À travers la tempête, et la neige, et le givre,<br />","C’est la clarté vibrante à notre horizon noir ;<br />","C’est l’auberge fameuse inscrite sur le livre,<br />","Où l’on pourra manger, et dormir, et s’asseoir ;<br />",</p>,"",<p>,"C’est un Ange qui tient dans ses doigts magnétiques<br />","Le sommeil et le don des rêves extatiques,<br />","Et qui refait le lit des gens pauvres et nus ;<br />",</p>,"",<p>,"C’est la gloire des Dieux, c’est le grenier mystique,<br />","C’est la bourse du pauvre et sa patrie antique,<br />","C’est le portique ouvert sur les Cieux inconnus !<br />",</p>}
d69e8bcb-2704-450a-b938-4992cfb1a1b9	amoureuse	L'amoureuse	{<p>,"Elle est debout sur mes paupières<br />","Et ses cheveux sont dans les miens,<br />","Elle a la forme de mes mains,<br />","Elle a la couleur de mes yeux,<br />","Elle s'engloutit dans mon ombre<br />","Comme une pierre sur le ciel.<br />",</p>,"",<p>,"Elle a toujours les yeux ouverts<br />","Et ne me laisse pas dormir.<br />","Ses rêves en pleine lumière<br />","Font s'évaporer les soleils<br />","Me font rire, pleurer et rire,<br />","Parler sans avoir rien à dire.<br />",</p>}
69630997-321f-44ef-b38f-b7bded0e0c24	muse_malade	La muse malade	{<p>,"Ma pauvre Muse, hélas ! qu’as-tu donc ce matin ?<br />","Tes yeux creux sont peuplés de visions nocturnes,<br />","Et je vois tour à tour s’étaler sur ton teint<br />","La folie et l’horreur, froides et taciturnes.<br />",</p>,"",<p>,"Le succube verdâtre et le rose lutin<br />","T’ont-ils versé la peur et l’amour de leurs urnes ?<br />","Le cauchemar, d’un poing despotique et mutin,<br />","T’a-t-il noyée au fond d’un fabuleux Minturnes ?<br />",</p>,"",<p>,"Je voudrais qu’exhalant l’odeur de la santé<br />","Ton sein de pensers forts fût toujours fréquenté,<br />","Et que ton sang chrétien coulât à flots rhythmiques,<br />",</p>,"",<p>,"Comme les sons nombreux des syllabes antiques,<br />","Où règnent tour à tour le père des chansons,<br />","Phœbus, et le grand Pan, le seigneur des moissons.<br />",</p>}
2bed8bf9-9443-43cb-b7ea-f64790864449	guignon	Le guignon	{<p>,"Pour soulever un poids si lourd,<br />","Sisyphe, il faudrait ton courage !<br />","Bien qu’on ait du cœur à l’ouvrage,<br />","L’Art est long et le Temps est court.<br />",</p>,"",<p>,"Loin des sépultures célèbres,<br />","Vers un cimetière isolé,<br />","Mon cœur, comme un tambour voilé,<br />","Va battant des marches funèbres.<br />",</p>,"",<p>,"— Maint joyau dort enseveli<br />","Dans les ténèbres et l’oubli,<br />","Bien loin des pioches et des sondes ;<br />",</p>,"",<p>,"Mainte fleur épanche à regret<br />","Son parfum doux comme un secret<br />","Dans les solitudes profondes.<br />",</p>}
1442c049-3be6-4f2d-8901-ec79d5a55101	pluviose	Spleen	{<p>,"Pluviôse, irrité contre la ville entière,<br />","De son urne à grands flots verse un froid ténébreux<br />","Aux pâles habitants du voisin cimetière<br />","Et la mortalité sur les faubourgs brumeux.<br />",</p>,"",<p>,"Mon chat sur le carreau cherchant une litière<br />","Agite sans repos son corps maigre et galeux ;<br />","L’âme d’un vieux poëte erre dans la gouttière<br />","Avec la triste voix d’un fantôme frileux.<br />",</p>,"",<p>,"Le bourdon se lamente, et la bûche enfumée<br />","Accompagne en fausset la pendule enrhumée,<br />","Cependant qu’en un jeu plein de sales parfums,<br />",</p>,"",<p>,"Héritage fatal d’une vieille hydropique,<br />","Le beau valet de cœur et la dame de pique<br />","Causent sinistrement de leurs amours défunts.<br />",</p>}
3dc5577d-0915-4178-bea7-872be8d99868	cancre	Le cancre	{"<p style=\\"text-align:center;\\">","Il dit non avec la tête<br />","Mais il dit oui avec le cœur<br />","Il dit oui à ce qu'il aime<br />","Il dit non au professeur<br />","Il est debout<br />","On le questionne<br />","Et tous les problèmes sont posés<br />","Soudain le fou rire le prend<br />","Et il efface tout<br />","Les chiffres et les mots<br />","Les dates et les noms<br />","Les phrases et les pièges<br />","Et malgré les menaces du maître<br />","Sous les huées des enfants prodiges<br />","Avec des craies de toutes les couleurs<br />","Sur le tableau noir du malheur<br />","Il dessine le visage du bonheur.<br />",</p>}
1148e9a3-f7ef-401f-9950-c5f890792cab	dormirons_ensembles	Nous dormirons ensemble	{<p>,"Que ce soit dimanche ou lundi<br />","Soir ou matin minuit midi<br />","Dans l'enfer ou le paradis<br />","Les amours aux amours ressemblent<br />","C'était hier que je t'ai dit<br />","Nous dormirons ensemble<br />",</p>,"",<p>,"C'était hier et c'est demain<br />","Je n'ai plus que toi de chemin<br />","J'ai mis mon cœur entre tes mains<br />","Avec le tien comme il va l'amble<br />","Tout ce qu'il a de temps humain<br />","Nous dormirons ensemble<br />",</p>,"",<p>,"Mon amour ce qui fut sera<br />","Le ciel est sur nous comme un drap<br />","J'ai refermé sur toi mes bras<br />","Et tant je t'aime que j'en tremble<br />","Aussi longtemps que tu voudras<br />","Nous dormirons ensemble.<br />",</p>}
8f61c4df-b96f-4cb5-8db3-7f47f05a2967	ciel	Spleen	{<p>,"Quand le ciel bas et lourd pèse comme un couvercle<br />","Sur l’esprit gémissant en proie aux longs ennuis,<br />","Et que de l’horizon embrassant tout le cercle<br />","Il nous verse un jour noir plus triste que les nuits ;<br />",</p>,"",<p>,"Quand la terre est changée en un cachot humide,<br />","Où l’Espérance, comme une chauve-souris,<br />","S’en va battant les murs de son aile timide<br />","Et se cognant la tête à des plafonds pourris ;<br />",</p>,"",<p>,"Quand la pluie étalant ses immenses traînées<br />","D’une vaste prison imite les barreaux,<br />","Et qu’un peuple muet d’infâmes araignées<br />","Vient tendre ses filets au fond de nos cerveaux,<br />",</p>,"",<p>,"Des cloches tout à coup sautent avec furie<br />","Et lancent vers le ciel un affreux hurlement,<br />","Ainsi que des esprits errants et sans patrie<br />","Qui se mettent à geindre opiniâtrement.<br />",</p>,"",<p>,"— Et de longs corbillards, sans tambours ni musique,<br />","Défilent lentement dans mon âme ; l’Espoir,<br />","Vaincu, pleure, et l’Angoisse atroce, despotique,<br />","Sur mon crâne incliné plante son drapeau noir.<br />",</p>}
a2b22ffc-038f-4cca-8948-20162e360ef0	beaute	La beauté	{<p>,"Je suis belle, ô mortels ! comme un rêve de pierre,<br />","Et mon sein, où chacun s’est meurtri tour à tour,<br />","Est fait pour inspirer au poëte un amour<br />","Éternel et muet ainsi que la matière.<br />",</p>,"",<p>,"Je trône dans l’azur comme un sphinx incompris ;<br />","J’unis un cœur de neige à la blancheur des cygnes ;<br />","Je hais le mouvement qui déplace les lignes ;<br />","Et jamais je ne pleure et jamais je ne ris.<br />",</p>,"",<p>,"Les poëtes, devant mes grandes attitudes,<br />","Que j’ai l’air d’emprunter aux plus fiers monuments,<br />","Consumeront leurs jours en d’austères études ;<br />",</p>,"",<p>,"Car j’ai, pour fasciner ces dociles amants,<br />","De purs miroirs qui font toutes choses plus belles :<br />","Mes yeux, mes larges yeux aux clartés éternelles !<br />",</p>}
07155517-18de-46f6-af01-856e0cec2c41	triste	Ô triste, triste était mon âme	{<p>,"Ô triste, triste était mon âme<br />","À cause, à cause d’une femme.<br />",</p>,"",<p>,"Je ne me suis pas consolé<br />","Bien que mon cœur s’en soit allé.<br />",</p>,"",<p>,"Bien que mon cœur, bien que mon âme<br />","Eussent fui loin de cette femme.<br />",</p>,"",<p>,"Je ne me suis pas consolé,<br />","Bien que mon cœur s’en soit allé.<br />",</p>,"",<p>,"Et mon cœur, mon cœur trop sensible<br />","Dit à mon âme : Est-il possible,<br />",</p>,"",<p>,"Est-il possible, — le fût-il, —<br />","Ce fier exil, ce triste exil ?<br />",</p>,"",<p>,"Mon âme dit à mon cœur : Sais-je<br />","Moi-même, que nous veut ce piège<br />",</p>,"",<p>,"D’être présents bien qu’exilés,<br />","Encore que loin en allés ?<br />",</p>}
9699f299-d4ca-4270-9471-ba6bf2c5dd39	invictus	Invictus	{<p>,"Out of the night that covers me,<br />","Black as the pit from pole to pole,<br />","I thank whatever gods may be<br />","For my unconquerable soul.<br />",</p>,"",<p>,"In the fell clutch of circumstance<br />","I have not winced nor cried aloud.<br />","Under the bludgeonings of chance<br />","My head is bloody, but unbowed.<br />",</p>,"",<p>,"Beyond this place of wrath and tears<br />","Looms but the horror of the shade,<br />","And yet the menace of the years<br />","Finds and shall find me unafraid.<br />",</p>,"",<p>,"It matters not how strait the gate,<br />","How charged with punishments the scroll,<br />","I am the master of my fate:<br />","I am the captain of my soul.<br />",</p>}
694fe219-d7c0-420a-aac2-5b0e1a05dcf9	profundis	De profundis clamavi	{<p>,"J’implore ta pitié, Toi, l’unique que j’aime,<br />","Du fond du gouffre obscur où mon cœur est tombé.<br />","C’est un univers morne à l’horizon plombé,<br />","Où nagent dans la nuit l’horreur et le blasphème ;<br />",</p>,"",<p>,"Un soleil sans chaleur plane au-dessus six mois,<br />","Et les six autres mois la nuit couvre la terre ;<br />","C’est un pays plus nu que la terre polaire ;<br />","Ni bêtes, ni ruisseaux, ni verdure, ni bois !<br />",</p>,"",<p>,"Or il n’est pas d’horreur au monde qui surpasse<br />","La froide cruauté de ce soleil de glace<br />","Et cette immense nuit semblable au vieux Chaos ;<br />",</p>,"",<p>,"Je jalouse le sort des plus vils animaux<br />","Qui peuvent se plonger dans un sommeil stupide,<br />","Tant l’écheveau du temps lentement se dévide !<br />",</p>}
83369bcd-f4c7-4774-9688-116341da921b	vie_anterieure	La vie antérieure	{<p>,"J’ai longtemps habité sous de vastes portiques<br />","Que les soleils marins teignaient de mille feux,<br />","Et que leurs grands piliers, droits et majestueux,<br />","Rendaient pareils, le soir, aux grottes basaltiques.<br />",</p>,"",<p>,"Les houles, en roulant les images des cieux,<br />","Mêlaient d’une façon solennelle et mystique<br />","Les tout-puissants accords de leur riche musique<br />","Aux couleurs du couchant reflété par mes yeux.<br />",</p>,"",<p>,"C’est là que j’ai vécu dans les voluptés calmes,<br />","Au milieu de l’azur, des vagues, des splendeurs<br />","Et des esclaves nus, tout imprégnés d’odeurs,<br />",</p>,"",<p>,"Qui me rafraîchissaient le front avec des palmes,<br />","Et dont l’unique soin était d’approfondir<br />","Le secret douloureux qui me faisait languir.<br />",</p>}
4668e4fc-bbcd-4339-b4be-e0837588c592	ame_du_vin	L'âme du vin	{<p>,"Un soir, l’âme du vin chantait dans les bouteilles :<br />","« Homme, vers toi je pousse, ô cher déshérité,<br />"," Sous ma prison de verre et mes cires vermeilles,<br />","  Un chant plein de lumière et de fraternité !<br />",</p>,"",<p>,"  Je sais combien il faut, sur la colline en flamme,<br />","  De peine, de sueur et de soleil cuisant<br />","  Pour engendrer ma vie et pour me donner l’âme ;<br />","  Mais je ne serai point ingrat ni malfaisant,<br />",</p>,"",<p>,"  Car j’éprouve une joie immense quand je tombe<br />","  Dans le gosier d’un homme usé par ses travaux,<br />","  Et sa chaude poitrine est une douce tombe<br />","  Où je me plais bien mieux que dans mes froids caveaux.<br />",</p>,"",<p>,"  Entends-tu retentir les refrains des dimanches<br />","  Et l’espoir qui gazouille en mon sein palpitant ?<br />","  Les coudes sur la table et retroussant tes manches,<br />","  Tu me glorifieras et tu seras content ;<br />",</p>,"",<p>,"  J’allumerai les yeux de ta femme ravie ;<br />","  À ton fils je rendrai sa force et ses couleurs<br />","  Et serai pour ce frêle athlète de la vie<br />","  L’huile qui raffermit les muscles des lutteurs.<br />",</p>,"",<p>,"  En toi je tomberai, végétale ambroisie,<br />","  Grain précieux jeté par l’éternel Semeur,<br />","  Pour que de notre amour naisse la poésie<br />","  Qui jaillira vers Dieu comme une rare fleur ! »<br />",</p>}
92dd27db-2ccc-4fae-a33e-f47b2fa81c74	green	Green	{<p>,"Voici des fruits, des fleurs, des feuilles et des branches,<br />","Et puis voici mon cœur, qui ne bat que pour vous.<br />","Ne le déchirez pas avec vos deux mains blanches<br />","Et qu’à vos yeux si beaux l’humble présent soit doux.<br />",</p>,"",<p>,"J’arrive tout couvert encore de rosée<br />","Que le vent du matin vient glacer à mon front.<br />","Souffrez que ma fatigue, à vos pieds reposée,<br />","Rêve des chers instants qui la délasseront.<br />",</p>,"",<p>,"Sur votre jeune sein laissez rouler ma tête<br />","Toute sonore encore de vos derniers baisers ;<br />","Laissez-la s’apaiser de la bonne tempête,<br />","Et que je dorme un peu puisque vous reposez.<br />",</p>}
5c9dfca3-ffee-4e7d-92b7-0ce3a778a70c	luxembourg	Une allée du Luxembourg	{<p>,"Elle a passé, la jeune fille<br />","Vive et preste comme un oiseau :<br />","À la main une fleur qui brille,<br />","À la bouche un refrain nouveau.<br />",</p>,"",<p>,"C’est peut-être la seule au monde<br />","Dont le cœur au mien répondrait,<br />","Qui venant dans ma nuit profonde<br />","D’un seul regard l’éclaircirait !<br />",</p>,"",<p>,"Mais non, — ma jeunesse est finie…<br />","Adieu, doux rayon qui m'as lui, ―<br />","Parfum, jeune fille, harmonie…<br />","Le bonheur passait, ― il a fui !<br />",</p>}
e1c14e39-c6d9-4dd1-b3f1-eca413be1d9e	albatros	L'albatros	{<p>,"Souvent, pour s’amuser, les hommes d’équipage<br />","Prennent des albatros, vastes oiseaux des mers,<br />","Qui suivent, indolents compagnons de voyage,<br />","Le navire glissant sur les gouffres amers.<br />",</p>,"",<p>,"A peine les ont-ils déposés sur les planches,<br />","Que ces rois de l’azur, maladroits et honteux,<br />","Laissent piteusement leurs grandes ailes blanches<br />","Comme des avirons traîner à côté d’eux.<br />",</p>,"",<p>,"Ce voyageur ailé, comme il est gauche et veule !<br />","Lui, naguère si beau, qu’il est comique et laid !<br />","L’un agace son bec avec un brûle-gueule,<br />","L’autre mime, en boitant, l’infirme qui volait !<br />",</p>,"",<p>,"Le Poëte est semblable au prince des nuées<br />","Qui hante la tempête et se rit de l’archer ;<br />","Exilé sur le sol au milieu des huées,<br />","Ses ailes de géant l’empêchent de marcher.<br />",</p>}
4cae4f33-5104-4672-913e-c660b3187191	excuse	Excuse mélancolique	{<p>,"Je ne vous aime pas, non, je n'aime personne,<br />","L'Art, le Spleen, la Douleur sont mes seules amours;<br />","Puis, mon cœur est trop vieux pour fleurir comme aux jours<br />","Où vous eussiez été mon unique madone.<br />",</p>,"",<p>,"Je ne vous aime pas, mais vous semblez si bonne.<br />","Je pourrais oublier dans vos yeux de velours,<br />","Et dégonfler mon cœur crevé de sanglots sourds<br />","Le front sur vos genoux, enfant frêle et mignonne.<br />",</p>,"",<p>,"Oh! dites, voulez-vous ? Je serais votre enfant.<br />","Vous sauriez endormir mes tristesses sans causes,<br />","Vous auriez des douceurs pour mes heures moroses,<br />",</p>,"",<p>,"Et peut-être qu'à l'heure où viendrait le néant<br />","Baigner mon corps brisé de fraîcheur infinie,<br />","Je mourrais doucement, consolé de la vie.<br />",</p>}
25fa8b90-d286-4a55-902f-17ab741ef961	ninon	À Ninon	{<p>,"Si je vous le disais pourtant, que je vous aime,<br />","Qui sait, brune aux yeux bleus, ce que vous en diriez ?<br />","L’amour, vous le savez, cause une peine extrême ;<br />","C’est un mal sans pitié que vous plaignez vous-même ;<br />","Peut-être cependant que vous m’en puniriez.<br />",</p>,"",<p>,"Si je vous le disais, que six mois de silence<br />","Cachent de longs tourments et des vœux insensés :<br />","Ninon, vous êtes fine, et votre insouciance<br />","Se plaît, comme une fée, à deviner d’avance ;<br />","Vous me répondriez peut-être : Je le sais.<br />",</p>,"",<p>,"Si je vous le disais, qu’une douce folie<br />","A fait de moi votre ombre, et m’attache à vos pas :<br />","Un petit air de doute et de mélancolie,<br />","Vous le savez, Ninon, vous rend bien plus jolie;<br />","Peut-être diriez-vous que vous n’y croyez pas.<br />",</p>,"",<p>,"Si je vous le disais, que j’emporte dans l’âme<br />","Jusques aux moindres mots de nos propos du soir :<br />","Un regard offensé, vous le savez, madame,<br />","Change deux yeux d’azur  en deux éclairs de flamme ;<br />","Vous me défendriez peut-être de vous voir.<br />",</p>,"",<p>,"Si je vous le disais, que chaque nuit je veille,<br />","Que chaque jour je pleure et je prie à genoux ;<br />","Ninon,  quand vous riez, vous savez qu’une abeille<br />","Prendrait pour une fleur votre bouche vermeille ;<br />","Si je vous le disais, peut-être en ririez-vous.<br />",</p>,"",<p>,"Mais vous n’en saurez rien. Je viens, sans rien en dire,<br />","M’asseoir sous votre lampe et causer avec vous ;<br />","Votre voix, je l’entends ; votre air, je le respire ;<br />","Et vous pouvez douter, deviner et sourire,<br />","Vos yeux ne verront pas de quoi m’être moins doux.<br />",</p>,"",<p>,"Je récolte en secret des fleurs mystérieuses :<br />","Le soir, derrière vous, j’écoute au piano<br />","Chanter sur le clavier vos mains harmonieuses,<br />","Et, dans les tourbillons de nos valses joyeuses,<br />","Je vous sens, dans mes bras, plier comme un roseau.<br />",</p>,"",<p>,"La nuit, quand de si loin  le monde nous sépare,<br />","Quand je rentre chez moi pour tirer mes verrous,<br />","De mille souvenirs en jaloux je m’empare ;<br />","Et là, seul devant Dieu, plein d’une joie avare,<br />","J’ouvre, comme un trésor, mon cœur tout plein de vous.<br />",</p>,"",<p>,"J’aime, et je sais répondre avec indifférence ;<br />","J’aime, et rien ne le dit ; j’aime, et seul je le sais ;<br />","Et mon secret m’est cher, et chère ma souffrance ;<br />","Et j’ai fait le serment d’aimer sans espérance,<br />","Mais non pas sans bonheur ; je vous vois, c’est assez.<br />",</p>,"",<p>,"Non, je n’étais pas né pour ce bonheur suprême,<br />","De mourir dans vos bras et de vivre à vos pieds.<br />","Tout me le prouve, hélas ! jusqu’à ma douleur même...<br />","Si je vous le disais pourtant, que je vous aime,<br />","Qui sait, brune aux yeux bleus, ce que vous en diriez ?<br />",</p>}
ba6e66e8-9ce6-4c7a-aa6a-907820f2b43f	vallon	Le vallon	{<p>,"Mon cœur, lassé de tout, même de l’espérance,<br />","N’ira plus de ses vœux importuner le sort ;<br />","Prêtez-moi seulement, vallon de mon enfance,<br />","Un asile d’un jour pour attendre la mort.<br />",</p>,"",<p>,"Voici l’étroit sentier de l’obscure vallée :<br />","Du flanc de ces coteaux pendent des bois épais,<br />","Qui, courbant sur mon front leur ombre entremêlée,<br />","Me couvrent tout entier de silence et de paix.<br />",</p>,"",<p>,"Là, deux ruisseaux cachés sous des ponts de verdure<br />","Tracent en serpentant les contours du vallon ;<br />","Ils mêlent un moment leur onde et leur murmure,<br />","Et non loin de leur source ils se perdent sans nom.<br />",</p>,"",<p>,"La source de mes jours comme eux s’est écoulée ;<br />","Elle a passé sans bruit, sans nom et sans retour :<br />","Mais leur onde est limpide, et mon âme troublée<br />","N’aura pas réfléchi les clartés d’un beau jour.<br />",</p>,"",<p>,"La fraîcheur de leurs lits, l’ombre qui les couronne,<br />","M’enchaînent tout le jour sur les bords des ruisseaux ;<br />","Comme un enfant bercé par un chant monotone,<br />","Mon âme s’assoupit au murmure des eaux.<br />",</p>,"",<p>,"Ah ! c’est là qu’entouré d’un rempart de verdure,<br />","D’un horizon borné qui suffit à mes yeux,<br />","J’aime à fixer mes pas, et, seul dans la nature,<br />","À n’entendre que l’onde, à ne voir que les cieux.<br />",</p>,"",<p>,"J’ai trop vu, trop senti, trop aimé dans ma vie ;<br />","Je viens chercher vivant le calme du Léthé.<br />","Beaux lieux, soyez pour moi ces bords où l’on oublie :<br />","L’oubli seul désormais est ma félicité.<br />",</p>,"",<p>,"Mon cœur est en repos, mon âme est en silence ;<br />","Le bruit lointain du monde expire en arrivant,<br />","Comme un son éloigné qu’affaiblit la distance,<br />","À l’oreille incertaine apporté par le vent.<br />",</p>,"",<p>,"D’ici je vois la vie, à travers un nuage,<br />","S’évanouir pour moi dans l’ombre du passé ;<br />","L’amour seul est resté, comme une grande image<br />","Survit seule au réveil dans un songe effacé.<br />",</p>,"",<p>,"Repose-toi, mon âme, en ce dernier asile,<br />","Ainsi qu’un voyageur qui, le cœur plein d’espoir,<br />","S’assied, avant d’entrer, aux portes de la ville,<br />","Et respire un moment l’air embaumé du soir.<br />",</p>,"",<p>,"Comme lui, de nos pieds secouons la poussière ;<br />","L’homme par ce chemin ne repasse jamais ;<br />","Comme lui, respirons au bout de la carrière<br />","Ce calme avant-coureur de l’éternelle paix.<br />",</p>,"",<p>,"Tes jours, sombres et courts comme les jours d’automne,<br />","Déclinent comme l’ombre au penchant des coteaux ;<br />","L’amitié te trahit, la pitié t’abandonne,<br />","Et, seule, tu descends le sentier des tombeaux.<br />",</p>,"",<p>,"Mais la nature est là qui t’invite et qui t’aime ;<br />","Plonge-toi dans son sein qu’elle t’ouvre toujours :<br />","Quand tout change pour toi, la nature est la même,<br />","Et le même soleil se lève sur tes jours.<br />",</p>,"",<p>,"De lumière et d’ombrage elle t’entoure encore :<br />","Détache ton amour des faux biens que tu perds ;<br />","Adore ici l’écho qu’adorait Pythagore,<br />","Prête avec lui l’oreille aux célestes concerts.<br />",</p>,"",<p>,"Suis le jour dans le ciel, suis l’ombre sur la terre ;<br />","Dans les plaines de l’air vole avec l’aquilon ;<br />","Avec les doux rayons de l’astre du mystère<br />","Glisse à travers les bois dans l’ombre du vallon.<br />",</p>,"",<p>,"Dieu, pour le concevoir, a fait l’intelligence :<br />","Sous la nature enfin découvre son auteur !<br />","Une voix à l’esprit parle dans son silence :<br />","Qui n’a pas entendu cette voix dans son cœur ?<br />",</p>}
817d63a1-2906-45d3-ba3b-887946ced33e	isolement	L'isolement	{<p>,"Souvent sur la montagne, à l’ombre du vieux chêne,<br />","Au coucher du soleil, tristement je m’assieds ;<br />","Je promène au hasard mes regards sur la plaine,<br />","Dont le tableau changeant se déroule à mes pieds.<br />",</p>,"",<p>,"Ici gronde le fleuve aux vagues écumantes ;<br />","Il serpente, et s’enfonce en un lointain obscur ;<br />","Là le lac immobile étend ses eaux dormantes<br />","Où l’étoile du soir se lève dans l’azur.<br />",</p>,"",<p>,"Au sommet de ces monts couronnés de bois sombres,<br />","Le crépuscule encor jette un dernier rayon ;<br />","Et le char vaporeux de la reine des ombres<br />","Monte, et blanchit déjà les bords de l’horizon.<br />",</p>,"",<p>,"Cependant, s’élançant de la flèche gothique,<br />","Un son religieux se répand dans les airs ;<br />","Le voyageur s’arrête, et la cloche rustique<br />","Aux derniers bruits du jour mêle de saints concerts.<br />",</p>,"",<p>,"Mais à ces doux tableaux mon âme indifférente<br />","N’éprouve devant eux ni charme ni transports ;<br />","Je contemple la terre ainsi qu’une ombre errante :<br />","Le soleil des vivants n’échauffe plus les morts.<br />",</p>,"",<p>,"De colline en colline en vain portant ma vue,<br />","Du sud à l’aquilon, de l’aurore au couchant,<br />","Je parcours tous les points de l’immense étendue,<br />","Et je dis : Nulle part le bonheur ne m’attend.<br />",</p>,"",<p>,"Que me font ces vallons, ces palais, ces chaumières,<br />","Vains objets dont pour moi le charme est envolé ?<br />","Fleuves, rochers, forêts, solitudes si chères,<br />","Un seul être vous manque, et tout est dépeuplé !<br />",</p>,"",<p>,"Que le tour du soleil ou commence ou s’achève,<br />","D’un œil indifférent je le suis dans son cours ;<br />","En un ciel sombre ou pur qu’il se couche ou se lève,<br />","Qu’importe le soleil ? je n’attends rien des jours.<br />",</p>,"",<p>,"Quand je pourrais le suivre en sa vaste carrière,<br />","Mes yeux verraient partout le vide et les déserts :<br />","Je ne désire rien de tout ce qu’il éclaire ;<br />","Je ne demande rien à l’immense univers.<br />",</p>,"",<p>,"Mais peut-être au-delà des bornes de sa sphère,<br />","Lieux où le vrai soleil éclaire d’autres cieux,<br />","Si je pouvais laisser ma dépouille à la terre,<br />","Ce que j’ai tant rêvé paraîtrait à mes yeux.<br />",</p>,"",<p>,"Là, je m’enivrerais à la source où j’aspire ;<br />","Là, je retrouverais et l’espoir et l’amour,<br />","Et ce bien idéal que toute âme désire,<br />","Et qui n’a pas de nom au terrestre séjour.<br />",</p>,"",<p>,"Que ne puis-je, porté sur le char de l’Aurore,<br />","Vague objet de mes vœux, m’élancer jusqu’à toi !<br />","Sur la terre d’exil pourquoi resté-je encore ?<br />","Il n’est rien de commun entre la terre et moi.<br />",</p>,"",<p>,"Quand la feuille des bois tombe dans la prairie,<br />","Le vent du soir s’élève et l’arrache aux vallons ;<br />","Et moi, je suis semblable à la feuille flétrie :<br />","Emportez-moi comme elle, orageux aquilons !<br />",</p>}
1cf01c49-b7f6-48a1-b524-25db354436fc	heureux	Heureux qui, comme Ulysse...	{<p>,"Heureux qui, comme Ulysse, a fait un beau voyage,<br />","Ou comme cestuy là qui conquit la toison,<br />","Et puis est retourné, plein d’usage et raison,<br />","Vivre entre ses parents le reste de son age !<br />",</p>,"",<p>,"Quand reverray-je, helas, de mon petit village<br />","Fumer la cheminee, et en quelle saison<br />","Reverray-je le clos de ma pauvre maison,<br />","Qui m’est une province, et beaucoup d’avantage ?<br />",</p>,"",<p>,"Plus me plaist le sejour qu’ont basty mes ayeux,<br />","Que des palais Romains le front audacieux ;<br />","Plus que le marbre dur me plaist l’ardoise fine,<br />",</p>,"",<p>,"Plus mon Loyre Gaulois, que le Tibre Latin,<br />","Plus mon petit Lyré, que le mont Palatin,<br />","Et plus que l’air marin la douceur Angevine.<br />",</p>}
e763ddcd-597c-4f31-b143-eeaa0b0eacb7	demain	Demain, dès l'aube...	{<p>,"Demain, dès l’aube, à l’heure où blanchit la campagne,<br />","Je partirai. Vois-tu, je sais que tu m’attends.<br />","J’irai par la forêt, j’irai par la montagne.<br />","Je ne puis demeurer loin de toi plus longtemps.<br />",</p>,"",<p>,"Je marcherai les yeux fixés sur mes pensées,<br />","Sans rien voir au dehors, sans entendre aucun bruit,<br />","Seul, inconnu, le dos courbé, les mains croisées,<br />","Triste, et le jour pour moi sera comme la nuit.<br />",</p>,"",<p>,"Je ne regarderai ni l’or du soir qui tombe,<br />","Ni les voiles au loin descendant vers Harfleur,<br />","Et quand j’arriverai, je mettrai sur ta tombe<br />","Un bouquet de houx vert et de bruyère en fleur.<br />",</p>}
19e31bdc-5d57-4753-9c47-555dc828eaec	automne	Chanson d'automne	{<p>,"Les sanglots longs<br />","Des violons<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"De l’automne<br />","Blessent mon cœur<br />","D’une langueur<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Monotone.<br />",</p>,"",<p>,"Tout suffocant<br />","Et blême, quand<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Sonne l’heure,<br />","Je me souviens<br />","Des jours anciens<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Et je pleure ;<br />",</p>,"",<p>,"Et je m’en vais<br />","Au vent mauvais<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Qui m’emporte<br />","Deçà, delà,<br />","Pareil à la<br />","<span style=\\"visibility:hidden;\\">","<span style=\\"color: transparent; background:&#160;;\\">xx</span>",</span>,"Feuille morte.<br />",</p>}
c7a7dd45-35f8-4e7d-916e-a6b8a08f0cca	ninon2	À Ninon	{<p>,"Avec tout votre esprit, la belle indifférente,<br />","Avec tous vos grands airs de rigueur nonchalante,<br />","Qui nous font tant de mal et qui vous vont si bien,<br />","Il n'en est pas moins vrai que vous n'y pouvez rien.<br />",</p>,"",<p>,"Il n'en est pas moins vrai que, sans qu'il y paraisse,<br />","Vous êtes mon idole et ma seule maîtresse ;<br />","Qu'on n'en aime pas moins pour devoir se cacher,<br />","Et que vous ne pouvez, Ninon, m'en empêcher.<br />",</p>,"",<p>,"Il n'en est pas moins vrai qu'en dépit de vous-même,<br />","Quand vous dites un mot vous sentez qu'on vous aime,<br />","Que, malgré vos mépris, on n'en veut pas guérir,<br />","Et que d'amour de vous, il est doux de souffrir.<br />",</p>,"",<p>,"Il n'en est pas moins vrai que, sitôt qu'on vous touche,<br />","Vous avez beau nous fuir, sensitive farouche,<br />","On emporte de vous des éclairs de beauté,<br />","Et que le tourment même est une volupté.<br />",</p>,"",<p>,"Soyez bonne ou maligne, orgueilleuse ou coquette,<br />","Vous avez beau railler et mépriser l'amour,<br />","Et, comme un diamant qui change de facette,<br />","Sous mille aspects divers vous montrer tour à tour ;<br />",</p>,"",<p>,"Il n'en est pas moins vrai que je vous remercie,<br />","Que je me trouve heureux, que je vous appartiens,<br />","Et que, si vous voulez du reste de ma vie,<br />","Le mal qui vient de vous vaut mieux que tous les biens.<br />",</p>,"",<p>,"Je vous dirai quelqu'un qui sait que je vous aime :<br />","C'est ma Muse, Ninon ; nous avons nos secrets.<br />","Ma Muse vous ressemble, ou plutôt, c'est vous-même ;<br />","Pour que je l'aime encor elle vient sous vos traits.<br />",</p>,"",<p>,"La nuit, je vois dans l'ombre une pâle auréole,<br />","Où flottent doucement les contours d'un beau front ;<br />","Un rêve m'apparaît qui passe et qui s'envole ;<br />","Les heureux sont les fous : les poètes le sont.<br />",</p>,"",<p>,"J'entoure de mes bras une forme légère ;<br />","J'écoute à mon chevet murmurer une voix ;<br />","Un bel ange aux yeux noirs sourit à ma misère ;<br />","Je regarde le ciel, Ninon, et je vous vois ;<br />",</p>,"",<p>,"Ô mon unique amour, cette douleur chérie,<br />","Ne me l'arrachez pas quand j'en devrais mourir !<br />","Je me tais devant vous ; - quel mal fait ma folie ?<br />","Ne me plaignez jamais et laissez-moi souffrir.<br />",</p>}
1205e821-8c3b-47fa-af05-25849ca48d05	elevation	Élévation	{<p>,"Au-dessus des étangs, au-dessus des vallées,<br />","Des montagnes, des bois, des nuages, des mers,<br />","Par delà le soleil, par delà les éthers,<br />","Par delà les confins des sphères étoilées,<br />",</p>,"",<p>,"Mon esprit, tu te meus avec agilité,<br />","Et, comme un bon nageur qui se pâme dans l’onde,<br />","Tu sillonnes gaîment l’immensité profonde<br />","Avec une indicible et mâle volupté.<br />",</p>,"",<p>,"Envole-toi bien loin de ces miasmes morbides<br />","Va te purifier dans l’air supérieur,<br />","Et bois, comme une pure et divine liqueur,<br />","Le feu clair qui remplit les espaces limpides.<br />",</p>,"",<p>,"Derrière les ennuis et les vastes chagrins<br />","Qui chargent de leur poids l’existence brumeuse,<br />","Heureux celui qui peut d’une aile vigoureuse<br />","S’élancer vers les champs lumineux et sereins !<br />",</p>,"",<p>,"Celui dont les pensers, comme des alouettes,<br />","Vers les cieux le matin prennent un libre essor,<br />","— Qui plane sur la vie et comprend sans effort<br />","Le langage des fleurs et des choses muettes !<br />",</p>}
006d8daa-fe75-462c-b6a3-e73f469ff4bb	passante	À une passante	{<p>,"La rue assourdissante autour de moi hurlait.<br />","Longue, mince, en grand deuil, douleur majestueuse,<br />","Une femme passa, d’une main fastueuse<br />","Soulevant, balançant le feston et l’ourlet ;<br />",</p>,"",<p>,"Agile et noble, avec sa jambe de statue.<br />","Moi, je buvais, crispé comme un extravagant,<br />","Dans son œil, ciel livide où germe l’ouragan,<br />","La douceur qui fascine et le plaisir qui tue.<br />",</p>,"",<p>,"Un éclair… puis la nuit ! — Fugitive beauté<br />","Dont le regard m’a fait soudainement renaître,<br />","Ne te verrai-je plus que dans l’éternité ?<br />",</p>,"",<p>,"Ailleurs, bien loin d’ici ! trop tard ! jamais peut-être !<br />","Car j’ignore où tu fuis, tu ne sais où je vais,<br />","Ô toi que j’eusse aimée, ô toi qui le savais !<br />",</p>}
eaea801b-3858-4648-9743-ed32ca63f2bd	sensation	Sensation	{<p>,"Par les soirs bleus d’été, j’irai dans les sentiers,<br />","Picoté par les blés, fouler l’herbe menue :<br />","Rêveur, j’en sentirai la fraîcheur à mes pieds.<br />","Je laisserai le vent baigner ma tête nue !<br />",</p>,"",<p>,"Je ne parlerai pas, je ne penserai rien :<br />","Mais l’amour infini me montera dans l’âme,<br />","Et j’irai loin, bien loin, comme un bohémien<br />","Par la Nature, — heureux comme avec une femme.<br />",</p>}
1433a8dc-c195-456b-9e01-31b20d5f80c0	chercheuses	Les chercheuses de poux	{<p>,"Quand le front de l’enfant, plein de rouges tourmentes,<br />","Implore l’essaim blanc des rêves indistincts,<br />","Il vient près de son lit deux grandes sœurs charmantes<br />","Avec de frêles doigts aux ongles argentins.<br />",</p>,"",<p>,"Elles assoient l’enfant devant une croisée<br />","Grande ouverte où l’air bleu baigne un fouillis de fleurs,<br />","Et dans ses lourds cheveux où tombe la rosée<br />","Promènent leurs doigts fins, terribles et charmeurs.<br />",</p>,"",<p>,"Il écoute chanter leurs haleines craintives<br />","Qui fleurent de longs miels végétaux et rosés,<br />","Et qu’interrompt parfois un sifflement, salives<br />","Reprises sur la lèvre ou désirs de baisers.<br />",</p>,"",<p>,"Il entend leurs cils noirs battant sous les silences<br />","Parfumés ; et leurs doigts électriques et doux<br />","Font crépiter parmi ses grises indolences<br />","Sous leurs ongles royaux la mort des petits poux.<br />",</p>,"",<p>,"Voilà que monte en lui le vin de la Paresse,<br />","Soupir d’harmonica qui pourrait délirer ;<br />","L’enfant se sent, selon la lenteur des caresses,<br />","Sourdre et mourir sans cesse un désir de pleurer.<br />",</p>}
73c754a3-483a-4aa9-807c-4f24af5fcda3	voeu	Voeu	{<p>,"Ah ! les oarystis ! les premières maîtresses !<br />","L’or des cheveux, l’azur des yeux, la fleur des chairs,<br />","Et puis, parmi l’odeur des corps jeunes et chers,<br />","La spontanéité craintive des caresses !<br />",</p>,"",<p>,"Sont-elles assez loin toutes ces allégresses<br />","Et toutes ces candeurs ! Hélas ! toutes devers<br />","Le Printemps des regrets ont fui les noirs hivers<br />","De mes ennuis, de mes dégoûts, de mes détresses !<br />",</p>,"",<p>,"Si que me voilà seul à présent, morne et seul,<br />","Morne et désespéré, plus glacé qu’un aïeul,<br />","Et tel qu’un orphelin pauvre sans sœur aînée.<br />",</p>,"",<p>,"Ô la femme à l’amour câlin et réchauffant,<br />","Douce, pensive et brune, et jamais étonnée,<br />","Et qui parfois vous baise au front, comme un enfant<br />",</p>}
2b2466a1-7cda-465c-852d-4b71856681eb	walks	She Walks In Beauty	{<p>,"She walks in beauty, like the night </br>","Of cloudless climes and starry skies; </br>","And all that's best of dark and bright </br>","Meet in her aspect and her eyes: </br>","Thus mellow'd to that tender light </br>","Which heaven to gaudy day denies. </br>",</p>,"",<p>,"One shade the more, one ray the less, </br>","Had half impaired the nameless grace </br>","Which waves in every raven tress, </br>","Or softly lightens o'er her face; </br>","Where thoughts serenely sweet express </br>","How pure, how dear their dwelling-place. </br>",</p>,"",<p>,"And on that cheek, and o'er that brow, </br>","So soft, so calm, yet eloquent, </br>","The smiles that win, the tints that glow, </br>","But tell of days in goodness spent, </br>","A mind at peace with all below, </br>","A heart whose love is innocent! </br>",</p>}
facfa3e1-6fd5-47ef-a53f-125b4da5f667	fantaisie	Fantaisie	{<p>,"Il est un air pour qui je donnerais<br />","Tout Rossini, tout Mozart, tout Weber ;<br />","Un air très-vieux, languissant et funèbre,<br />","Qui pour moi seul a des charmes secrets.<br />",</p>,"",<p>,"Or, chaque fois que je viens à l’entendre,<br />","De deux cents ans mon âme rajeunit :<br />","C’est sous Louis treize.. et je crois voir s’étendre<br />","Un coteau vert que le couchant jaunit,<br />",</p>,"",<p>,"Puis un château de brique à coins de pierre,<br />","Aux vitraux teints de rougeâtres couleurs,<br />","Ceint de grands parcs, avec une rivière<br />","Baignant ses pieds, qui coule entre les fleurs.<br />",</p>,"",<p>,"Puis une dame à sa haute fenêtre,<br />","Blonde, aux yeux noirs, en ses habits anciens…<br />","Que, dans une autre existence, peut-être,<br />","J’ai déjà vue ! — et dont je me souviens !<br />",</p>}
\.


--
-- Data for Name: read; Type: TABLE DATA; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

COPY public.read (id, book_id, date) FROM stdin;
0c3f32aa-68ae-4329-96fb-6d19c17f71c2	5f0af748-1547-47c8-a454-ed389efd5642	2014-06-30
4f8ed634-e24d-4f2b-b213-b4c2e9cfdb57	cad0a59c-8c65-4e5d-b8ee-16f544948cbd	2015-04-01
9c028621-1001-4af6-ba00-8e0d3641357d	8ee0e71a-2ada-46ec-bd3b-f88898d98c9c	2018-01-20
4317e2c6-0725-4e3a-9c41-87ef40928b62	23842a0c-e730-4ef0-a643-309634461ec7	2015-04-26
02ee4cc3-2a19-4528-ae65-1c78cd41c032	88d6f4e6-7fa5-41b2-9c15-c77e5780a0d4	2017-07-14
e49cd815-2fa3-47bb-aaf9-a0a7fe35fbbf	9d2fd838-e821-4c58-b890-d8fd53c5eae0	2016-01-04
1d9acbf7-714d-4d10-9dc7-7c84ba270184	d8b41482-f039-436f-8242-07f648a068cc	2017-11-23
1ddb8242-3144-4bf1-b7b4-d089ebbc8b3e	ca56903e-453d-4a5e-89e2-439693d326fe	2016-01-27
59d95739-1825-4533-9580-74878a89b8f4	c0b0ac0d-747a-46b4-bc63-e9fe65df8969	2015-08-25
f68e0ac6-1ef1-4873-a0ee-4f9a142e17ca	b218a877-4d3f-4c0f-8bbc-6c130993416d	2018-08-17
4c59a7fa-ff68-4a08-b3a4-0f8cb375c396	d6215f55-1604-4770-993b-ad24e5078350	2016-02-13
c829cb86-1df7-4b2d-bde9-85370c4b76ef	b0f32220-3368-41dd-a7a3-96d81a54f244	2016-06-17
d1d801e5-8077-4abb-99b4-d5e05051edfa	094424a2-facf-4c77-8d54-035a5bd6c816	2016-04-03
5fbe30ff-964a-4888-a436-f2213da47752	6a4d7a41-78f6-400a-9384-c65ec7b9641c	2015-05-20
fb520570-f847-4487-b715-1ab5965b8b14	f48e2d83-f35f-4408-b056-5ab93301d80c	2015-02-25
802f9167-161f-4235-a3c0-7de3971bfe54	8e3db6d3-4402-42a4-a42b-a2ff54bbe22e	2016-08-05
c75c6bb7-4b05-4c68-9e61-0b61b5f00ca5	e38f3258-3133-4424-b91a-2496f4320fc0	2019-01-06
945fef97-2f78-43db-a3a1-b5f8e7d759f4	68bf163e-9287-4b2a-9c7f-219d1b7f1c45	2018-05-26
d02bcebc-2bca-42f0-b59c-0c6c28996a81	12c941fd-9971-42f5-9566-1fa0b369af42	2015-01-24
23a9b8b3-2e5d-4b83-8321-729cfada8412	7062175c-9d41-4b29-89d6-78fc44c454ea	2016-10-16
a44b07c0-8eab-4bfc-a9b9-f067ae2589e5	be89a799-5898-458b-b033-a1a54c912ea9	2016-06-21
f1aebd8b-0448-4be6-b0eb-857f47a4118e	fb4b4cb4-fb3b-4fee-af2d-511a41597887	2015-12-01
4f3cd2ca-e334-4ff8-9fa2-cc4c83e1a31f	b4c72217-758b-48d7-8be8-7a0279d2c4b4	2017-01-08
12978481-ac19-4d84-82e4-a5f0ddad989f	b9e0c91d-d357-4d87-92c1-6e575fb46510	2017-05-23
222e49dc-58ba-4f8e-bf86-f5aab19e955a	1d67d4a1-649b-470a-b707-507a2b306923	2016-08-01
2b48a79e-dfe9-4596-87fc-0e9614fff016	8cc62860-1b8d-49f4-9995-77e9d55fd723	2015-07-05
a122fd7e-3d6b-416d-914d-9a7c1a6f3bc7	9b666868-3587-40fb-b5d4-26c1b0043054	2018-07-01
80a2fcde-d0dc-492e-a7a1-542ebf8fd4f7	41bcb257-f982-44e1-8fd2-563e26db5861	2016-12-27
ff3714a6-7ce9-4e27-a540-65a7cc19ce10	7def2fac-f4af-49e6-8d43-b1909b1ae392	2016-04-26
9e4213e8-b112-4592-a676-b6574efd5dd5	8d2bb40a-3fe7-4a19-935e-d748d6198e01	2015-05-26
818627a4-a288-434a-a72d-e430b72728df	7d71c7ff-9fbd-4603-a320-7a1be2e22ce9	2014-08-28
da938291-0f87-4992-a36d-0ec9fc9f17fe	00927287-b080-4a85-a1a4-27bf9136767d	2014-07-16
4ff48e03-c83d-4214-b589-fb3811cc3f48	e8b0aec2-7766-4eea-9c61-084b393256eb	2018-01-18
825350d7-030b-4bf5-bba6-ee7121aada96	ba253a7a-7fdb-4933-b347-ed3602fa95d7	2018-10-13
6c0ea55f-353c-4801-9317-5a18b9dc7113	15f7317a-661d-4d7d-86af-6f64f1ab709a	2015-02-03
4e0b8999-8e98-480f-82b5-0785db04e7d2	322d294e-b432-414d-a82d-1988535eb180	2016-02-02
b18dbd01-416a-43d4-ad3d-189f84fa84e9	298eefac-ed33-40b1-8db6-8e3ee52ad8f0	2017-12-19
de6c93f7-3c4a-48d1-9bd7-f4a112469953	b2e98d50-07b1-44b0-94f4-9db170bad3bb	2015-01-09
19fdd347-5ffe-4c1c-bc45-15a2c0196abe	b711e6f6-3826-4701-b1ce-26c6a04136b1	2015-04-04
cedc9b01-ba5e-40a3-9ae6-cd76ea993b7a	773f4592-d509-4d8f-8320-c34a5e1876d5	2015-11-24
66ac966b-1c52-498c-8bc5-67d4ba602f07	58dc5c45-093b-47e4-bb84-658bfc2ccd50	2015-08-22
ced00f29-a6c0-43c5-a36f-acb3e1c336f7	84b3ba64-9c76-4580-b2e3-66aa76655f3a	2015-03-27
7365137f-e576-4da3-9b46-14126b2610cf	8cb88684-c88e-42f9-b345-4a79b58eafc3	2018-06-30
0164933e-53bf-41ab-bce9-9225d5a813a4	6f59396d-742c-4e40-8ce4-319c005f3601	2016-12-26
4c35037c-d03d-42e4-8a07-a1eea8f5f10b	d499d0bc-850a-478f-a8ca-e8bbc98ddae4	2018-06-08
e516027d-ebdd-4a93-98c2-b7dd198c43cb	d183cf1a-ad88-4c25-a7fe-5765dc5bc96d	2016-03-11
b53c303b-9526-4dd1-af65-766fb3fc060b	0b5eb225-0de6-405f-92a5-4bea810920bf	2018-11-22
0244772a-7d1b-4d65-9245-79ce996d3663	08c7a8ed-92b1-4a48-936c-693a37778fd8	2019-01-13
2bb6e0b1-0eee-4763-b67a-333614f0be61	ecca7d22-a553-4130-afd6-f72b218f9413	2015-08-26
dc29d602-2913-4622-8777-e8848ff63385	0f668c17-24c6-4188-a2b7-7623c5e02974	2014-12-30
6d009faa-4695-433f-a218-cf966f919381	d575d540-6ce5-412f-88a9-dcf5938e5df3	2014-05-30
d1fc7388-4b9b-402f-8bf2-332e266a5e89	ad3ff075-8231-4935-bca4-0e642844c4ea	2016-08-30
2a82c375-e04b-4854-95fb-ca5e38962e7b	0a6768a0-0fcf-44dd-96fc-6de3932d6b46	2016-05-02
b43a1285-81b2-48c8-bb2c-336e6874706a	ce193c00-de04-49cb-853b-91d1e2049276	2018-07-24
0baafb9d-29d0-4cbf-a562-1dbc50905440	46e46016-d41b-4667-be0c-18880fbfaa15	2016-06-18
445b4dec-8bce-4c9d-91f1-5ebfeb39c0b1	a2ef1648-aa8f-4dac-909f-e05cf5ee3f1a	2018-07-28
f17770d1-824d-4fcb-b15a-a9766a7c367f	128663a4-f584-4e26-9524-db97765fff08	2016-04-10
a0557815-3d60-442e-8755-ae9906fa8a88	54348213-79b0-4190-9550-eba6ba9418fb	2018-08-11
60beb9b7-45d1-4136-bd39-0d86c4b01721	5d83aee4-5930-4030-9882-7db417f8d43d	2015-08-21
c1264a6b-1809-4103-a187-163245958e8a	c1319869-571f-41ab-ab7d-8961fc94303f	2014-05-23
a140de21-6151-4b1c-865a-16c5b2583738	34f5a4a2-a825-45ec-a6d3-e60270cea259	2016-10-11
92fc5169-4067-4f27-8702-82fcab7fd9d7	b2ea3bd0-9838-4a41-8bf2-96d070be3241	2016-06-24
db35aa4a-e35f-4c85-bef2-35611d825625	bae83243-6b66-4d51-9893-45db59e45e78	2018-08-25
e89dd6fc-9028-41b5-a3a2-cae5a093b4e5	6d353d72-2cf0-4321-9c47-88420fe14563	2019-01-20
33c9287f-aac6-4a39-a26d-c789c8905e36	327f2ca4-a582-4ebf-9178-01e08735e785	2015-03-29
084cd758-78b3-4915-ab12-4715476cedd1	6119edec-7373-4a9f-8513-c2f21de60ff4	2015-01-17
a9b4a995-e59a-46b2-99ec-d1da9665c255	9885cd4b-9946-4c38-b7fa-5bbd93abb53e	2018-08-27
f4d4114a-290f-4c0c-9d84-0509d6c636c0	cf774c32-9388-4ae6-a274-390334c0dadf	2014-03-26
feb8c2c9-4c04-4f96-b8a7-00b7d75b6883	86b6e660-7b1b-4bbf-96e2-cdfcda8c645f	2018-04-14
fe9e60cf-78c6-4c23-88b8-9ac3936a35bc	79a85d99-7a36-4438-974d-486968a9578f	2017-08-01
51d5a07c-464f-4ef9-9e8d-8fe954d183d9	26fb0398-7ccc-4d9e-9c95-a5bc5dcd4d80	2014-07-10
2ba7631f-91b3-4387-88a7-c62c936d3b53	093bf8e7-8770-4242-a7a3-6a9abdb2c254	2015-07-20
5ef56eaa-be3e-41b3-ac34-69ddfb4a77bb	eaf98b92-8911-43a8-875a-5f200dfdeaa8	2018-08-17
ce5cf460-d222-439b-b988-2e5614631608	bfa56d20-7171-4ad0-bf30-4b88c1257fb5	2018-07-19
cdda7794-0ec7-407c-9506-29e354af3911	52c238c9-958b-4595-bff8-98d12d67e692	2017-05-14
6b89dc1e-f1f7-4786-a2d1-7d7961d50aa1	c12c49de-b8fb-47f3-91e0-4a9a0f84ab25	2014-11-21
93af9df8-9897-4bb4-9d09-9b78ffb8938b	5c2a6b28-1d83-4378-8984-1ebd52e52bae	2018-12-06
f5f58d21-6ac4-4d59-801b-05df0d36cdfc	110acc42-107e-48f8-b66f-5debd9118146	2016-03-19
426ca7ac-a0f0-4471-9601-3971db86efea	af0f6e95-d70f-43ae-ab29-59b3a3d5d0ff	2016-06-16
bd3096f3-7240-4ea3-911b-c62479ac683b	af0f6e95-d70f-43ae-ab29-59b3a3d5d0ff	2017-04-30
9885365a-2a8d-4226-a3b2-8aa81ae5b6bd	0197b61c-939b-4673-9804-84791f47a33b	2015-04-21
47d136b9-226e-4952-a9ac-08453baafc0f	b2325154-464c-44bb-bb0a-21bd61fc241e	2016-03-08
50b3115d-b60e-4d7d-ab50-06ee88072d64	2b7d3584-6365-4f57-b273-1294e7a6a6a5	2016-09-24
08e57ae3-1e9e-4280-8a37-45e22051ca88	a078711c-0f53-49dd-8619-2ba358757219	2015-06-21
d72b57a9-e85a-455d-a202-883918cc49f4	231ba3ac-6f4d-4ae8-a248-0613862bd33d	2017-05-01
84c582f4-00dd-4ad4-8013-f2d506a9662d	447f02f9-f895-489f-ab6e-9b009a218a72	2016-11-13
3ccba1d0-2746-416e-9d25-ac8e0254533f	ba900db9-1e97-4e1e-ad90-041d8365b733	2015-02-16
f607bad5-b3b4-4c79-ac9a-a677a08510a4	8fc47994-bce3-4e03-969c-61eec84749fa	2016-06-07
9ac19b94-645c-403d-a935-30ca53a37baf	c2f0bebc-0440-43a6-b00d-575133641266	2014-11-07
caf9a31b-dd3d-423f-9be4-b922bdad24b6	3ff458cc-d1e0-45c0-9802-17889ecae7dd	2017-01-22
b6dd7558-b7a0-4a79-8bbd-cc95d681279b	2f326504-c2df-4f1c-8d11-af5982f29820	2017-08-19
281492c8-f597-4008-887b-3c9bbe493383	818b9589-9c95-4b97-aaa7-48abed88f8a1	2017-04-13
d4494333-df95-4187-810a-3170549ca50b	8b5828ec-1d3b-4dbd-8e29-d5f1af63cd3f	2018-11-04
3ac45d73-1172-4cd7-856f-6132b67b6994	5e514f44-3e75-4fd1-8ee6-530a912b5c17	2014-06-08
50f3b6e4-fc61-45b0-bb10-8fc6d874e0cd	20662beb-2b4d-4193-b4c5-387f862d0b97	2018-05-27
c5f270a3-b645-4374-bf3b-9f50016ac97d	e307e093-fbba-4833-979f-13d9f7dad28b	2015-01-03
050b6821-6333-4396-8e04-1fa97cedbc4e	41e79aad-b033-431d-a1b9-18d113b40e0a	2017-10-17
508f64fd-3e63-4572-9d15-e501d6031237	ffb490f7-1521-4e62-8db5-d920c68a6256	2016-01-10
6dfb9fab-c3f1-409b-a572-391d15eb30b2	023f6922-565c-43a4-8862-923c82b9131d	2014-10-06
3d69979c-5a3b-4c18-8313-2ea4707a83b9	66464c4e-f68f-4107-8a63-3069f5c59a53	2018-05-05
4f331f20-cc94-484f-a98b-61a181b1f33c	c9986c67-e210-4ea9-86cc-5b08ed30fbf5	2017-08-20
2c39709d-b892-4ddd-a765-7799a6e4a010	fd5e5692-f0e3-41fe-99c2-f53877a232dd	2018-08-09
635b156d-22d1-431a-9af1-5affbee54c5f	cf43712d-639c-4ebe-9ed4-8c45a3edc918	2018-07-21
4989859d-81b7-4791-8d01-a25c2dcdc9fa	772e6ea5-7c25-4022-b499-ad184b9732f8	2017-02-20
f98befc5-2081-460f-a6a9-888469823914	37cffc15-4e1f-41da-88ba-793c9e723581	2017-04-02
ab255098-5a53-41db-af07-efbb522a5ca8	4e902b07-e116-41b8-af60-453feb7a4ba7	2017-04-02
42fb20d6-8a27-4f8f-92cc-bcafd91f3348	77e54f41-5f47-41d7-9f8a-f9c7a767219a	2016-03-20
0acc6f0a-9d31-4e14-bf2f-3629ad29bcf3	26871e60-cc76-4ea3-8500-05e532c18fc1	2016-06-17
8812ab81-889b-4b30-95e0-644e0d9c6b2d	3f88afc9-0335-4c9f-b6af-7532dccde178	2014-08-06
ff530d0b-87dd-4f06-ae87-c3e41cc9bc31	4253ac2f-ecf0-4bfd-8c16-a2f685998cc7	2015-04-16
3cddf14e-38ea-41b5-83f6-703ad96d6e0e	b3df4d34-adca-4273-9532-8361a7c00132	2014-11-10
1b84f250-5414-4a6a-80ee-bea06e65a3e1	c10f75ac-d4ad-406d-a9dd-d3cabad61596	2017-02-26
3eba9e44-f078-4f88-8098-661a81369c71	46071270-cd42-4ca9-9c4e-f2e6293b0fda	2018-04-02
061755b6-388d-46d5-9d5e-da0149ce6a31	e5545862-4cbf-4a83-b819-2317d5295c35	2016-08-30
f8f3e168-7f9f-4268-b2a2-070243edeee1	08426f19-069c-43f5-8e3b-7ec219d49b57	2015-10-05
6abf8a49-6dc8-4ab3-b54b-07cdac35fdf5	17deaf6f-883c-4e0b-85c1-21feb77f04c6	2015-12-15
39b21166-cc0f-41ea-8b2e-4e15a12f5c65	962e1cd9-47d0-4fde-ab1a-d6372ab7ec3e	2016-04-28
ab6aa79d-87f7-4fa2-817e-890c061c3a36	15eb11ba-f248-4d76-9259-7156c4bcc2bc	2017-12-14
e48235e0-637f-49a6-9a5f-3822a55f6e7c	c621b38d-6fdc-40ab-8153-48c958cb09e0	2017-06-04
ea3cd88d-d955-422d-b1be-09d216927c63	539f4208-e75d-4b80-a67e-a2016678d838	2016-04-24
c5ca2e77-9a52-4489-beb4-2cafe22501a6	164be0f9-7599-4d9b-b48b-baaf353cb788	2015-12-11
84977507-e165-4462-a848-889a638d611c	ed61be15-f5a4-4a0d-b8e0-5e20d8410605	2015-11-28
ae648a67-9f1d-421f-b404-e8b633d3bccc	3d599cb7-a24d-4cbe-b95b-853d32abd038	2014-12-07
5751c109-c91a-4a7b-af41-f1cd6999659f	fceb4a80-def3-417a-a873-96a92b0a56d5	2014-11-15
438ed7f7-f62d-4e44-abdc-e3078ee04c9a	ecbcce2d-ff12-41d6-94ae-1a28334b2e9a	2016-11-13
8c3b1e66-7b3d-46c9-82cd-61594690c43a	dedb2bad-ad5b-4b35-b362-996c0babf929	2014-07-10
79def623-b687-4288-8fba-53138d6e32dc	a954d352-86f3-4211-bffe-3205019bd38f	2014-03-16
d1bf4069-fc4c-4ec1-a116-ba9f2fec71f3	6f0bdf04-fdb7-4541-a649-6d600c9be9b6	2017-08-05
bf05f16f-729b-4404-866d-12ab1323c685	2efecd3d-f115-444c-a7b4-2d96aef7dc95	2017-07-15
d718c927-ed4f-4c45-9df2-c3a551485962	b30277e5-89f4-42c9-b595-f9f1b18a0216	2018-04-08
84371484-77bc-4442-9442-c7d387729224	6c696474-29f5-481f-adfd-eaa957ed51c9	2014-10-13
aa68f02b-4535-407d-81d4-8715cecd8696	57232ada-6bba-464b-bc2c-48efb79ddcff	2017-09-06
2d20e36d-b928-4389-9cf8-5520c32f10a0	995a0045-f98a-43e1-98af-e7fd23d8219f	2018-02-26
23816707-00d4-45cd-a240-e3b12ea99ae1	5ddfad28-a03b-4290-9d39-1feac578601c	2016-01-31
dda32f6a-14ff-43ff-9eb9-3f12c06f194a	e31c6647-c5a5-46c6-af20-1a394fbc87a1	2016-08-08
7059bd6b-0704-44bc-855b-5e153614327c	2b57f0ce-e3be-489e-8793-8591486a9c05	2016-08-17
d9acf23f-95b8-4295-8f76-79c81c5a4bb9	6b7a02de-c6bd-4851-8026-f2e4d2e7fdb9	2018-06-06
f8d5a7be-5d46-49a7-84d8-b045e1aa923d	a1887b1e-d854-4b3d-9604-87bbc29b8741	2015-08-11
6afd42a9-f5b2-4e56-ae58-272b70be5936	d396d32c-9224-4539-9d8b-64f241a768f6	2017-01-15
66b3c835-aa15-4bd7-b1e6-94dc93b89fe3	d4969561-1ed5-486e-a630-d72007ccfc39	2018-11-27
fe4093eb-5c3b-4fc9-8ce4-20d72cddb4a7	4b2ddca5-7330-40bf-9983-309dbc9f92f9	2017-06-26
ebf5bbb8-0f75-4f99-9c8a-ac31ad181628	48ff86cc-fefd-41e9-86ce-2c7782fc3c0f	2017-10-10
6dc7c511-91ac-4701-ab11-e9181b3477b6	8ee950fc-c11a-45f3-8d1e-b5fe639ae983	2019-01-24
567ce994-a47d-4f52-8b2f-5704d10d3b42	2326a93f-d2c8-4d1c-a092-e22eaced26cb	2016-03-26
68b208ea-734b-4e80-bed0-0689c7795cdd	65c62d85-6f7a-440c-a5b5-cf8a0a3883ef	2015-01-03
0cfbb9f0-1d09-4623-9ba4-84a9b4fd600c	21ce7538-d641-4e8b-b47a-0ea409b57da0	2018-09-07
f9d4d13a-54b7-45bc-911e-536c9350ae22	59248088-b936-4ad2-9e13-db6ec670c297	2016-11-20
1d3f794b-ca92-4411-be7c-d67db77eed32	0d72cd26-5132-4144-bbf5-6058ba208159	2017-02-19
d95dbed3-4e35-4025-b600-7e89d99d8124	bb591fca-83a0-45ea-993d-5df8203a3cae	2017-06-11
e04cfa22-6d67-4419-abe4-5ed5dcea42bf	037fa276-e1dd-40aa-b5c8-e4628595bb0d	2014-03-02
6157ee29-fb68-4254-9182-022635713ba9	2d5d8ea9-3d3e-462e-b808-24f79973036e	2017-06-05
aed05b54-70d2-4854-8619-1aa81865d81a	ca146b23-479b-4cc4-9e83-a5da939458be	2015-09-20
4b748188-8fe2-417f-baf8-345b5df3cfcb	fc85f61b-1450-42c2-ab19-83fe1a6bffab	2018-11-21
063db423-ddf0-4de8-a772-cf619f573538	f95b7152-3085-4dae-99f3-f15bafaa8013	2016-10-23
82abd866-dfea-4071-a991-6cc349b2cedb	dfe78a25-e59c-4850-942f-aa1f2369a58e	2014-09-23
8b6c1598-947d-4653-a922-c1ed982cfb48	55eafbdb-7ba6-47de-a2ce-47232182801d	2016-08-04
b041382a-7de4-4522-84a4-c5a9725cbc79	0bb14e76-75f8-45ee-b3b3-fdb14bf6f236	2018-08-26
bbc0bcf2-d37e-4780-b1a5-dea6570e180d	e339f1ef-3b27-40fb-a729-b964e73f21e7	2019-01-08
408ced18-c49e-4eb2-85cc-d17173746d11	8a9c1d86-bf42-4505-b029-797c1b99e9bd	2017-01-14
40917705-2582-483d-af6c-8d666de3a3a1	e9b769fe-f346-4ef1-a074-31bab730de4d	2016-05-03
783298ce-bb4c-486e-b821-d913c95e1a15	e3af236d-ff4d-47d3-a51a-4adedc6d3fba	2015-12-18
08e6ae70-115c-4964-8953-327762464e37	9ec35e7b-e3e0-43cf-aa47-92f6a3b33b3e	2017-09-20
f75ef4b1-4bcd-45d4-875b-800ac3e8e349	39dd3afb-df8f-41fa-b669-c7dd3eaad56e	2016-02-07
b896741f-9dfa-4055-9f80-1fd3e336d1bc	938a5fab-bd97-40ea-b766-6b226deabf4c	2016-07-06
efd0fdad-9102-45f9-a93c-3e05ba8c0185	4ac9eedf-e54c-4aaf-bebe-085992dd4d1f	2016-09-14
53e05dd3-f72c-465f-9f56-6374042f79e9	99b0ff36-3f47-4557-9e5b-2049771c3a18	2016-01-09
63004afc-05d4-49f7-99a2-42e18cbde777	816c228f-8960-4d36-80aa-d8d502489107	2018-11-10
5fc0974c-a027-4a2c-bd1b-60a3aef10a58	b69d3705-cbc0-452a-931a-742c1db25ecf	2017-06-24
928f4f9e-d4b9-4ccd-a1fd-0364653bae4c	47457c55-c29d-4c77-a180-f790ec8bcaa3	2016-04-25
3c177cf5-eacc-4f5a-a367-4e976afef0d5	50b1beb4-bf56-4671-8d2d-c06816ac03bd	2016-08-22
c737440f-2e95-4f71-ad7d-23388e8856b6	a3481c03-6085-4933-85c0-412cd9bdead9	2016-06-30
9902ae4f-3205-49e2-ae83-acf4d0f8e8d9	a8a181b1-de67-45a8-b5de-92377aa36735	2018-11-29
a3a1b42c-aa5b-455e-a74c-254ce6464ebe	29b30bbc-e460-45bc-9248-a0c0811796a0	2014-11-30
0f5a732a-e18b-4877-8b32-84a6cfd18ce6	e8b54db2-59c6-4d24-a860-6a3ab6db68ef	2016-06-13
8cff83da-3488-4d80-8647-ffd69c367fae	a03b43b4-3c12-48ed-8949-0142d7c0374a	2018-09-18
07e00d81-6e65-44db-a930-97bd6abe05e7	04de9787-07ea-4f85-9063-7f73f252b342	2014-09-25
8c3f4e11-3ea3-4d69-95f4-8402b62b50bb	d9114e37-4f2d-477f-864d-d9524ce49ac9	2014-05-06
39cc6965-2228-412c-832c-64f844a37301	1eba402d-c425-4b59-9167-d2d07e20933c	2018-10-06
3a3674ea-74e7-4603-9d31-827ab376f718	be8d6be0-11d2-4f3c-a8c1-101492dcda26	2017-03-16
978e2b85-c07a-4db1-9e16-86bfb79f232d	f22d8c7d-10fe-4311-8c25-314bac8ece72	2017-03-29
bb4ef2e1-e09d-42d1-88fd-d15e29e08701	1c67971a-4375-4d3f-b012-7938b63847b0	2018-07-12
ae42d282-e553-4fdf-8ecf-497e096c802a	a3a412d9-987b-48bf-a6d3-96c9f2053757	2014-07-18
fe264dfd-4637-477a-9493-3a9924296d26	5489ed14-69c0-46d6-aebb-9bcf00752041	2016-03-11
d5e29ff3-626e-4784-8c29-85bbfbbdd396	62a4e7a4-880c-4637-ace6-fd9fb62a7c92	2017-06-13
ebb62792-1b04-4d6e-a165-bdb50fbd1e17	74844715-fafa-42dd-bae8-40a3cf3ff17e	2017-12-30
377dc4e4-154e-42c6-8858-2dcaaf150775	81df9fd4-e6e5-48c1-baaf-f927b68298e0	2016-03-09
6446e233-6cf3-40f9-85a6-a2d7724b0f05	b276850b-9a02-4f3e-a43b-4f7540a448a2	2016-11-01
a23e01f8-eed7-4633-b9ad-2c89aba52e47	c9a17e73-099d-4bc9-a459-536b3e1a923f	2015-07-09
4a601fae-e7c2-4085-a13e-d2e0d8be4370	eb0050e6-cdf7-4533-8ed7-ac2a41951205	2018-12-13
1fc61174-fe93-4aea-a0fa-c2d316367b93	c779e8d9-e00e-41b1-bc1b-3a713a4dab27	2017-03-19
94cd0b7b-b382-4e42-9ddf-35ffe90e5599	63ef13a1-aa3b-4ae8-9dc5-2494208e51e2	2016-08-14
f2ebe489-70b4-4afa-8413-1be90c9aedd1	8929f4c2-8081-4a71-bfa6-bfdb0b3ca7ad	2017-02-17
0303fd63-5d19-42db-9ed4-12b68bcd7f7f	3b52cf6f-a3a5-4fe2-9863-4b7f9830d280	2018-01-06
44a7ce00-b34f-43cb-a7c4-a26032b41aae	3c96737b-576f-4c1e-9267-0f2deff88719	2014-03-08
3efde41e-4e2f-49cb-8785-6e9ddbb82b01	5b3ca15b-8137-4967-b98b-6118f704ec00	2015-04-24
f79a2331-f357-4fdc-abbb-868caff8265c	3e3086d7-24f8-4ad8-95e7-629e773ec17d	2015-11-07
2b3e78cf-595b-4e5a-82a3-5f178b38c998	61b78e9e-ea9d-4f2f-9f4a-9432c55e1d71	2016-06-18
7870ebd1-77a2-4475-a42d-ab774098f525	47e44efa-c107-4658-9243-1972af3fb37e	2016-11-06
48096366-663b-44d4-bb04-77f8b34fc1de	07144edb-086f-4913-b9ea-a5356c026d23	2014-02-28
00ead3ca-ddd3-4878-bd11-723a5b5d109d	ede08c90-8a06-410a-96c9-ce796e2f858b	2015-10-04
dc96c91b-8b44-49fa-bf78-104ffa0c70a6	f8c9adfd-1aba-49d0-8c3e-94afa2fee243	2018-12-14
66e812ad-9d43-4fad-8db6-306e882d5c89	6dba5243-e2a5-445f-b1f1-f7fae60d3347	2018-05-06
2ae024fa-5c8b-4c2e-9e84-5f008a8f1e42	10671a3f-60a1-43b9-9d27-aa5797b8c1b9	2018-09-17
d7edd4e2-b0a7-41c6-89af-3883c6ba8ae0	dc7b8723-cd90-4d8d-8117-dd7a2960b283	2014-10-03
3015f377-f204-4e45-9d8d-e663b933b2f2	9b8cb9d5-b085-432a-8631-ced56fe242a0	2014-07-20
b0cb7e92-af0c-4b4b-ac72-6de98afdaddc	f0aeeee6-241c-4674-98d5-27fd9201bce3	2019-01-19
921eb9e0-551a-4bb5-9917-8fb2400190d0	2f81bcbf-cfa0-4a92-bc58-45826c63fa58	2018-07-30
18c905a8-9c31-4f9b-920f-f882f5f347c1	f1b4bee8-25ea-49e5-b461-b9bb37405836	2016-08-16
7ee4cba5-5152-4fdd-a8c8-6bb76a5f5ab2	141c20ea-ac60-4977-b1f9-198e383b155e	2016-08-22
81041b72-ec14-4cbe-bce4-b01a62dba9f9	6184ef2d-58f1-43bb-9abf-e7468c2442c0	2015-11-11
1849217d-fa99-4996-992e-ff82a7b4969e	6a8c2e8f-95aa-4a7b-aa3d-770bec438678	2017-05-06
50f1ec2b-22c0-4e51-8b15-a002f7e1df1c	31fa8581-4540-4b80-a1ab-0f96846184fb	2018-09-19
afa69e70-22b5-45cf-8585-f40fb0d6dadd	8db24da6-1346-47f2-ba3f-8c86d3ff41f7	2018-10-20
ee87942f-d90e-457a-a31c-b09dba168713	5875c511-23f1-4b4e-b310-5a3bd786d5d3	2017-02-03
9cbaa349-1c09-4737-b993-79e7e84790f0	8f2ba756-bd73-422d-8c3a-dcc7d7e9c870	2015-03-10
2e99017e-f808-441d-bfd4-6ff800c25a94	910c8e9e-2f10-4e36-8515-32bca4e3b4c7	2015-03-24
21dd2c56-6183-41e8-9918-b36635659d57	c443c63c-1153-4938-9cc2-6f82fb8441b7	2016-02-07
e9e7622c-601c-4599-a2fd-fc3bf5bb4673	961178da-b2f8-4ece-93d6-8df9570c63e4	2018-04-13
1f427a14-1ac1-46ba-954b-95880e2f0b3e	77cb7fa6-1f33-4138-bffa-77be0476274f	2017-10-05
2aa93dd9-f825-4b90-93fd-e410844922a0	3daa2772-04af-4fed-b372-0e9113c6eecd	2014-02-22
4eb789c8-7f5f-4e0a-a4cb-92c2d3176902	1a1ec043-cf04-4567-b555-6ffd836064e2	2016-07-30
8020c900-9caf-483c-b8a3-7e6a87886633	7d487a6b-be57-48b7-8f50-6784a92f5d6b	2017-07-30
ce1ba82c-6c2e-4c7a-80c2-13c3f1112f59	b7818b6e-a89e-43e8-b19c-34533df4bf71	2017-07-08
b42f8325-9e44-4893-9c90-fab98f9ff18c	d9a615a8-cd0a-40c6-82f8-15616b24d184	2017-04-17
75854eed-e2fe-4e77-912d-a2f777a46958	6fa83d3b-7c7a-4664-b54b-e25f9fbe997f	2017-10-04
a63cb394-5592-4467-a71d-fcbfd33fa6d8	ab5d4007-4ba1-4c15-ab79-67c8f43526d9	2018-10-06
7dfc9465-a2d9-4fb8-9fd7-034a1aa902c2	b12e3a0d-28f6-4cf4-9c1e-314d8b0cb054	2016-07-26
4d84ce54-5387-4d29-b208-d527fb748619	3137ec66-568c-4d4c-a458-f5ca0887d2a5	2017-05-08
0fd65ca3-ccaf-40f4-a95a-970992b43770	5dbd805c-e600-46f6-9a7a-13bed624cc93	2017-12-10
b90e9038-54aa-4e37-817f-43484be45eb7	4f184a71-58cd-4e65-82be-ba826e152aac	2015-04-05
023816e7-a64e-4168-9d97-9be556963c04	44943b9b-bd57-4c40-b24d-34c1eb3ef177	2014-02-16
fc4d8354-de7f-4f1e-860d-96d06d54557e	2b01ec14-c76a-4ac0-8116-db6df24b0ca0	2019-01-07
5e790ed7-142b-4257-aeaf-e1d17124f326	248e2b39-40d1-4338-9955-054e6ef93f85	2016-03-27
f008d2ce-f739-4068-9b30-1d02c740a07a	243a10dc-46ee-491c-80a5-53390df79d8a	2016-03-07
76007419-9fb4-4b15-96ab-e5441a407b5e	e1e1cd2d-f35c-4594-b5a7-399f1fd5f3d1	2016-07-20
52cb0df7-7493-4681-b1ca-2c7290f420fd	c1bd0cda-bc68-47a6-918d-ce3bb9453a9a	2014-07-15
c8ddb6a1-e5f3-442c-8db1-89cc19993139	99b8f2c5-7b21-42cf-945e-bfe7d3e7c4f2	2017-06-15
44bb931c-2442-4195-9ee7-f34ad578eda4	5263c445-ecc9-470e-9731-a9d0ddc17c07	2016-05-01
51461f20-c148-4fd1-a34a-01c65d169bba	0af03ec6-d79b-40fa-ab3c-9f39f1d85e46	2014-08-11
f19e6fbb-05cd-464b-9605-bb6629faa49d	9951ab74-abca-41c7-9b76-eb7297b12090	2016-12-09
bf541c09-fd27-4438-9cc9-72ece7919a8e	ca3d7745-9b8d-44d0-8b3d-bdceb53a116f	2017-10-25
ca0be3a5-c420-47b7-aca7-e75248d1d397	600fe94d-4c3b-47dd-a48b-77aaa6569390	2017-10-19
329c3785-6bb3-4101-9690-e3585651ab6a	c0a95c0f-68dd-4a03-9d57-288cc7886675	2017-06-18
f320a9fc-52c6-4692-b8a8-360dd6788dab	e8c0a6b7-1632-4218-83be-a2bce3e3d412	2015-08-30
25c1fa34-b34b-47c2-a052-ff0b10817055	e977643f-69e8-4a01-be35-0f494c662f95	2018-10-28
f925e9dd-6d16-488b-a55c-a7c9ff4b8b6f	da889a54-90f2-4f06-a2d7-0b8c5beb903d	2014-11-26
eb1d5f79-c71f-4d20-8c8e-9b940ebb2573	89add01b-256f-4641-8953-d28ce4f563eb	2018-08-14
fff7ea40-4e6b-4c09-a88c-6871b72c4e2d	6207c00f-7338-401d-aba5-bfe6e6859e43	2015-12-23
604a20c0-4a86-4a43-8bc6-e6305734db17	dfd0a2d1-4563-459d-afaa-eeacf1e36c13	2015-06-11
5df7df6b-6803-4012-8cc8-162ec5037c49	77734a7f-7458-47f0-9872-ee576722a55a	2016-01-18
76a41731-4a89-45fc-94c4-c6f67698bacf	2c8a37bf-5ff2-4886-a944-304ac4d8394b	2015-08-23
3c7374e9-2cbd-49a2-b154-7a7f7de5e24b	15f120f0-b123-4074-ac55-f5661ad7e7e3	2017-05-16
21b12277-d46c-4311-9606-9b670e0ac289	ac4110a7-2701-4dcd-b7a5-617bcecf64dc	2018-05-10
c5b2f0de-3967-42fe-a0b1-d9ec3dc25919	5dfd536a-e57c-4f69-9bf4-33351a89e001	2018-04-06
a46f2aee-9ce9-4151-b7ca-9bdfa86e2041	30cba47b-8863-411a-8f5e-44d9c4ab4009	2016-03-31
cb7b0f77-3bdb-4b0b-9a31-498bf1f8bb7a	32d776bd-0235-4191-a5f1-f493bc84b18a	2018-01-13
1a4fe77e-ff17-4d9a-8c56-c391899c8670	d6f61b93-04de-4ea2-bcb2-808a0000f92b	2018-09-20
54912be4-0d2b-4fb2-a6c2-e14c7d8026cd	d1ea42a9-dc0a-4820-b558-d00194237424	2015-06-17
8a1877f9-0bc7-4e61-abba-bb20a42ae4c7	97761cd5-8084-4f04-878e-150ece7027a8	2017-01-26
fe9bd6fd-5971-40d9-bbc5-7958c93a4617	234f2f8e-49d8-4bde-90aa-9b27839f72ce	2017-10-13
b69ef141-648e-470c-a1a0-ce7dc4a468a6	5df37081-0e59-4219-baa2-50197a3ebf63	2016-08-21
6f47166f-fb6c-42be-8309-ba8553fc14be	8ddb2798-f8ef-47ff-9714-b9d336a1444d	2014-11-20
424d314c-c50a-4065-bd4d-547457d9d16b	eeeac744-b783-4896-bfee-244c07b95ccc	2014-02-15
61a0a459-f9c0-4850-90bf-01d96aedeeef	f90c7d04-c894-47d1-b611-3545776cbab8	2016-04-28
62e3db4a-069f-419f-8881-8270c1b195d4	2538229f-6cef-4655-8a98-97578765a494	2016-04-06
9da9cd99-db67-4637-8e4b-87011ed9437b	2784d8b4-98b1-422d-8029-04108709ef92	2014-08-12
e0a26c18-9e3a-422f-bb87-c2eb9f0116b2	d2745439-4f03-4c58-8864-ca4b1794640e	2018-05-05
7d39e861-b4e2-45e6-8f6f-6bff59fe3d9b	33587f62-f9ca-44d9-97b0-1a9c6a8095e9	2018-07-21
d0d7c7e4-a1f9-41b3-996b-e0d3a99afb18	1494b46d-91c5-4448-b368-bcecd605d489	2016-08-24
8e0889ac-2773-40ee-a692-e948f25f2dda	436c2bc8-d377-40a6-8592-74d40109ec64	2018-09-02
a5199ebb-ad36-4f7e-86c8-353021ea46f8	9b3c6345-f886-4d05-b04e-1250ca32aefc	2014-03-18
e9efdf61-a9a4-4726-94fb-95adda5373bb	63d0ad1e-9d87-46f3-ad0d-4e5a9eb7935c	2017-11-01
4dd66c37-6a50-4563-a3e4-fcd06c21e092	34b383e7-cfbb-407b-9432-d6d5cc69357d	2016-01-20
89e445d3-979d-4bd8-87e3-879e535ac0c8	cd0a611c-024f-4112-bd18-c82197433fe7	2016-12-16
8efac95f-ae93-43d5-a725-45a2d5e9bc44	7ea397a2-b0b1-4a7d-9884-dfcdf5dcf754	2014-09-07
91e4dddb-3a3e-4ef4-b05d-49a7388a4419	f2ccad2d-512e-43d9-9190-0a49e0768d87	2018-09-27
662f1fa3-f9e6-438a-8881-fb4ee292349b	17971a26-c681-49e6-bc42-7c83590d006a	2019-01-25
b598adcb-c7e3-48bb-8591-836a23e4c51d	824685af-0ece-4682-8784-2e0081042154	2014-10-03
e4f67683-98a0-4a0c-9a6e-eb04b715a44c	b886b17f-487b-4945-9e12-c7d57634b134	2015-12-03
aa989fa2-8a3e-4940-b11f-58d62303b069	9f270fdc-116b-4df8-b9e9-b6aa18832776	2017-08-15
47e47ee0-fd83-4b88-855f-5478cb7156fe	a0bcb507-8119-43c8-acf8-77f9f99906d2	2017-02-06
07a03534-e271-41f3-ae45-65950e16c7c1	a3dd34ac-3194-42c6-8687-be1ca6ece1ab	2015-11-26
5fc3ef61-98b1-4eb8-99a2-3e75f6756851	9527f8d9-6625-47af-a260-33a8eea37dc5	2015-06-26
21ff0d41-05c0-4096-b7e2-4bdaa5269784	be166af0-7a04-4ba7-9a3e-3611b7a2149b	2017-02-11
3c60aac9-28e0-45f1-ad69-de316321cc93	fe975bfd-6e5e-4546-b5ed-e90d30af4c1f	2016-07-26
90907631-47bc-4a3c-8e5b-121f39bc4b55	f9e92bff-dfb4-4318-a488-a20bd13dfb3d	2014-08-05
f11a9869-103e-4c35-9fdc-9e090ddedd6d	5e8bb34d-be60-4c2a-9b2c-94a0800342b5	2017-04-16
f1b13c84-23e3-494f-876d-e328a6142262	12f2044d-c5df-49f2-8733-9d013bfb01ea	2018-11-09
4bae1ca6-7fd1-4ba4-8a36-000c95323967	d3a2f5da-1cc4-41bd-9462-b37c3bc7de82	2017-04-30
e6c6ef4b-6537-40eb-898b-bbdeb83dbe0c	4f3b91a7-48e3-4c63-8fc7-0211f5c31a1c	2016-02-28
3c073464-8c32-442f-91a4-b6481d34aab6	e1d38f31-10fe-4770-abd5-1d6d27e970a2	2018-10-31
e5bfaf1d-4112-4607-902a-aa6283e5b90b	266984f8-74d5-410d-9150-46958b1d73b3	2015-09-24
29780ba3-0cc5-4121-af39-3047c32bc5d6	cfcfd7fb-838c-4304-91e1-1060e0ff3708	2018-04-01
3103cd83-e10f-4988-8456-1fae395babad	e5541872-30dd-40a2-aa41-0db4c21c2c13	2017-05-03
88d4be9c-ec5e-4d1d-af80-cb8c81ca1f9e	5263c804-dbef-4fc5-970d-8a0d0c88ba54	2014-05-15
c9933d85-4eca-440a-b4d5-c5b5b8d371fb	a3430d3a-687f-45f4-a301-9c597ddb2c84	2016-07-28
b9ec4580-72e5-411c-9616-e90946119940	7c16c86d-9e9c-440d-a084-8c00c5946e5c	2016-04-23
e06c512a-684c-4d9f-abf8-6d902c29e33c	1ada3b04-36fd-4032-9636-ccdfc536955a	2015-01-14
8c5d3856-a876-45a5-9838-7439b2dd171c	f0adc098-3d9c-4537-b066-d59b23da4b11	2016-04-20
aa2f9efc-cf6a-4826-9853-8fed53426005	d348d6c4-03bc-4282-b20f-e9efc7a54721	2017-01-09
6e94e86e-1837-4a11-a89b-06ea177fac88	4c9ec02c-83df-4657-8172-8f581e70d253	2016-02-14
204b2b0c-29b6-42cf-a1a2-ce52c89c9f8d	d3da48ce-e93b-49af-b700-423dff386ed1	2016-01-27
cd6e9663-4528-4b21-96d1-b4624785aef8	cd75020a-da9a-4009-8f43-25284c56dcf3	2017-01-29
cc46193e-309f-4139-a38e-72893c8d3311	b747c7bd-94ce-4b9e-9bc7-71001daaedd9	2014-07-13
d9776a99-cbf0-446d-b96f-991fa2fb7b34	b747c7bd-94ce-4b9e-9bc7-71001daaedd9	2017-07-09
c30a437c-4884-443e-b518-6d86df19164b	fbef2e11-ad7e-4973-9a61-90df387cebc5	2016-04-27
1cb6176d-ef99-4c69-ba3a-95e39f922961	4a230b72-b40e-41ee-ae9d-6d9ff7b191c9	2017-11-07
72c0b10a-e700-4718-9c91-63fcf90b1832	e8605728-99bc-44a6-aeeb-96bc0c915cb5	2014-12-21
f3f9b813-6ce9-46b7-b307-02b068b2be16	939f3fd1-009a-4c83-8c96-4f2d44b00cb2	2016-07-19
d9522be8-edd5-4b9a-939b-a576bd81db84	8b70002b-77db-4199-afa0-02f74c622da3	2017-01-06
1cfe09f0-6567-48fc-b917-367b086d884d	c3ecefa2-e4b6-4559-9719-c34b6659fa3c	2015-07-23
ae868752-f4ba-462b-8a15-a493cff35171	4a0da5d5-4932-4294-b74c-b8d35d6b5377	2014-06-13
3ba7453f-7460-4748-9d61-1ba426a1122d	34a1639d-cbb0-495a-a6fa-73afd90e6662	2016-06-14
dc5dec67-fe08-4864-9260-1e64c26d022d	50420189-af05-4733-b41b-613b9a5dc2ea	2014-07-25
d724c3fa-df10-40e9-8769-5d27efdbd801	58de93fa-2e6b-422e-af67-bc9965384814	2016-02-11
fd4e0521-3416-4244-acaf-65e83d41fdcf	f7a1f3b6-8456-4751-b5cb-0bbbc15eb1e2	2014-04-24
67458ec6-6b31-47ca-83f7-4e6528b6f3b3	1882e508-a78f-4df4-bfb8-cac07d2b5681	2018-09-14
dcfb8fa4-950b-4958-a522-5943ed9aca9f	b8889b12-b525-4df2-bb4a-26e7fafa0d2a	2016-06-09
5d6659c1-e3ce-4636-b970-a555cab4c140	a6615bf1-2d9b-4937-8f6c-57dd08d65167	2014-08-02
630deac7-49ca-410e-9054-7c099647b581	6f0e6924-9e15-4d0c-a61d-df2d5b1cb40f	2017-08-03
0b080c2c-8ba6-4fc2-8af8-7a65d41e147a	5684d760-581c-4df8-92ae-321a4e7f6ab6	2015-01-06
53d6ea10-c6fa-4ef9-b7d6-bc3871815a4e	5ac6b369-741d-4686-aea5-747b783f787d	2016-04-24
0c1ce266-7c12-4f11-9c5d-0a351b5af5ff	a0b1220b-a072-4bdf-a1d5-5f3b43aae647	2017-08-06
9c95ae98-5105-4cfa-9590-e8705f4838f8	7a692db5-d7b4-4e35-9d30-49a8673d4d92	2015-12-16
084827be-2e01-4216-bf3d-e1a09c92cfb7	c26aa759-53d2-46e6-a216-a7bbcf8e1b4b	2018-04-08
c7f548e4-055a-4799-9fdc-1ad82d121c7f	726e8726-757b-4d28-a118-405e4535554f	2014-10-23
7bf4e83b-07ff-4131-b039-8da0e03b5808	02f235d0-46bb-4f25-8b2a-f7296203d094	2016-02-18
2f303953-a891-4f35-a636-e72e365d1aaa	9e61550f-4fe7-48b0-85b2-e99e294a0160	2018-02-25
4236a12f-670d-47e4-9bb6-da7d272bc57b	eab669d5-ca76-4147-83b3-03cb4c086952	2016-01-19
f21a8146-21b9-4d5a-8f38-284d4e9d82f2	3f07f2c6-9c39-4143-a069-d9494e91fd3f	2016-03-03
96636bdf-08d4-479c-9ea2-ccaa06bd26a3	84e4ae31-dc95-45dd-af42-8b99aaa09170	2016-06-29
2d187f67-7747-4ee8-bbf7-4d6ce6c1ac49	7544f2d6-ee75-47f2-9eb1-049363018317	2015-11-17
e0a7a093-b13a-47f3-914a-ffe34338f465	fca93847-5116-4012-b66c-f98ae08e43a8	2015-05-17
025d2942-9967-46dd-8b87-c1f6758c704a	2f403681-cc7c-4b16-a860-1d932a5d3869	2015-09-05
fbe5b0cb-f357-47ed-88e4-8ab2038c6d80	3c5e3a64-f6b8-4441-869b-abab4b4cb182	2016-10-04
79522e33-30ca-42b7-9f62-177140e8c65d	e6b948c7-83c7-4180-889e-ba2348766e18	2016-08-15
e9f95e83-ae8c-459d-9eb7-3304c2358817	7978782c-792f-4e61-bba4-201ebf5af637	2014-12-11
2f0fafda-a6dc-4e7e-a2dd-f65b6035fe38	0cb4aefc-eef0-4c54-90e6-a0bec9f0c87d	2018-06-03
4ef379ac-2c1d-4244-b3e5-c913cbaa2530	8d504c62-8a13-4f82-af12-88d1856dd4d2	2014-02-21
caf20f82-4841-4cec-8bfd-d2a9bff4e97a	0400c557-84d4-4f96-a145-823f9d27f292	2017-08-13
8d75501b-ff04-4b0e-bdca-3fdc8361d626	07c50a9d-6ff1-40c9-9ae6-5a06231c269f	2014-11-13
1ae3562d-15e0-4f24-8989-ba92eb195271	591667dc-1da2-4b19-9810-c3240f8f3912	2015-11-21
3a493829-e674-4031-a92f-886fee2b7ad6	1035379e-6265-4493-a08e-1eba9f1a4526	2017-04-21
ddce5136-dc7f-461b-90e5-6ac42a61b0fa	caa1fcde-d37d-4c33-be4b-d9f256ebb9bd	2017-02-15
52085676-a5c7-4ccb-8f15-0cb8213abdf0	11e70006-e066-4626-8f08-e693950ba81b	2018-08-07
324e1f7c-9202-403e-8de7-8223c18bbd8a	a07b68d0-203b-4463-b76a-11b71f2848aa	2014-10-20
dccd7c06-b475-4b66-af33-56f70614d936	77c6d1e5-02dc-4922-9ed3-ef1b1fa39c52	2016-02-22
3ebe0310-b65b-4b6d-8b65-619ae4b241a8	1d5b2010-d807-4c66-bc6f-c31255feebb0	2018-07-04
27e27326-7a69-46e0-acef-54b1c18112d4	90b10a6e-d33f-4346-a1a5-cc049f4c9872	2016-09-16
4ba468ae-4036-468d-aa7b-2787f37bdebb	c524d100-6539-456a-bfd5-0f60f60b5ba4	2018-02-03
0d74c532-9047-4fdb-99a3-89f391130202	b0cc8c3e-383a-4064-a43b-aaf558ef2bc6	2018-03-22
1a279a6e-bf80-4ff3-a0b1-615a175d2678	80457b69-8381-4aa3-a642-c6d8f9fa28f2	2018-10-13
1d783cdc-f1b7-4793-a55c-edbff921b34f	0941ac38-14d7-4b54-987c-de4ece3dbd3d	2015-11-02
5aaa3981-1216-4f3f-91c3-fe4156fdbca1	61a805be-64e7-4a8f-a5d8-a81b34f0f07a	2016-10-24
eb8ab774-ffb8-4d61-be60-6961f20441ab	d70b4c58-f26c-4d60-910c-f73fe631c672	2015-02-03
569dffc8-0096-4a72-8fc3-ed1fe3095a1c	39cf4f7b-e2d3-4666-8176-1b96bf5fbb81	2016-12-04
e729fd2e-75ec-41b6-bdb6-353eadb3c654	b3bf9db8-b9a9-49de-a0a2-34e56faa9c98	2017-10-02
d88ba9e6-2c0b-4153-b298-9a71b888e050	c545bf30-b3f6-4501-8e09-887f1f420a20	2014-10-16
62a23ad8-18b3-4bd2-afc6-cb2ad8ea4f31	61080a91-637a-4d71-86d3-66f6d6eab5aa	2017-03-12
61752ef7-4c10-4d32-a5d8-822c87692703	0964fe77-f0c3-4eec-ae06-c9ce0c646eb4	2018-01-09
f3acd8ce-0f3f-4928-817a-19b92dae9cc4	fd665453-35ad-4720-afe2-a7228ff7ab3e	2015-05-21
5bdc5389-e740-4f70-9a78-ba9ea94d41a9	6bb040d7-1c24-4651-b9d0-d8d55b6b17a3	2015-10-18
2ed7b439-8478-48c5-8e71-07e8d761ec80	240b9d86-3ce2-496b-b847-bb6d19bc4a3e	2015-09-09
03d9a15d-63f0-4ee5-9ce7-02b9e47f9f40	c64e04b4-3fda-43bb-bd2b-7e45f02937fc	2015-10-01
6ff80646-3476-47e0-9154-ed73dd4f6952	9773fc83-dbde-4f0c-ae87-af8712e37adc	2018-11-17
e3a439f6-6d50-48fa-a59f-a5707a96a063	45e11f2a-eb00-4d9f-834e-f84fcd6cd9d5	2015-05-24
a039badf-41c9-43a1-881a-7fcc8f9fb35e	3bf3e30a-9cf3-4406-b7fc-455d65da1080	2015-12-31
3484bf46-786f-444b-8785-ea17e78dc813	476179f2-f569-4791-826f-5fd41af85f1e	2016-09-20
394c456c-9888-42a8-8d3d-744e70632d0b	b2fdc115-0135-42f9-ab16-d8bd00e3a9f0	2016-12-17
ac9be284-b1b0-4564-a070-f8bf25ab9bb1	a18f3d3c-16f3-4177-adab-932b3b218e4a	2018-10-07
b82913e1-5afb-411b-a10a-93a1b310aa63	7296aec1-0450-4bae-94f2-d3c1c1c2c332	2017-01-21
8a09db56-d948-47dc-8ea7-3f20d2dec016	062826bf-4784-4167-9014-372fb1eef678	2017-10-07
9ea00e4f-55ca-429c-8eec-a28abf2c9dd3	bf5ab47a-b03c-41f9-855e-3c4dbf15cb53	2015-12-20
870a0295-893d-445d-874f-c20f213b0a00	13b50f14-30dd-4e0e-8cec-72ed942b8ffc	2017-05-09
c201e804-3411-44f8-9103-b3a13c88eef5	769c3b25-4561-408e-809d-4a4d50f097bb	2014-07-21
010ee317-490d-4008-a87d-ba4d6256b7f1	457410d9-4f3b-4404-b0c9-3114c780897f	2018-06-09
635b65e5-4435-42e4-a242-4881679eae55	e750fa49-143c-4b40-acf6-82c6aaec2ef0	2018-01-21
a4251def-5bb9-4d54-be22-0a0c80512ea1	bbe7c59b-5931-4614-a4ec-5136955bc9e4	2014-02-26
c9ffdd9f-75ed-4a8c-8ffe-98b3eb7066dd	bbe7c59b-5931-4614-a4ec-5136955bc9e4	2015-10-06
37b15bb5-b537-486c-b775-c2b854a79a90	9b57772c-c7f8-407b-abb8-773a4bed39c0	2014-03-12
b9bcd569-3f78-4a67-8d50-07fad8bc4cd1	70939403-8555-4ddd-ac53-422e6899bad3	2017-06-10
fe35a894-4af6-44c7-ace6-286b85ea58bc	ff1184ec-055e-4def-845f-56095b2db290	2017-01-07
8f03e532-1936-4c0b-aa19-53f4f85deb1e	617c9ead-04b3-46cc-8f43-daa460d237e8	2015-08-23
1f1be72a-9f26-4f2f-ae4a-1ce00c5ee152	164f2118-4e83-49ad-a3bd-e530ace485e6	2014-12-14
c2a540a3-d357-4565-8048-faff116b5062	f190fb53-c924-4154-be64-52a0f54e246f	2017-11-13
0fc7788a-b547-4bc1-b7f2-ed35a277c77b	ebfc6006-8b7f-4aac-b6d7-73e83365a029	2017-07-04
70fe9ae9-a57c-433d-b8ef-e7870afcefe0	461dd474-6d48-4fc7-a72a-ef2cdccde075	2015-12-15
54b3827a-7910-4d63-bc13-625421ebcf3f	b84fc9a5-9f75-4a86-93d8-619a29ce6946	2018-05-08
ee0c8f17-448f-4137-aae6-25f9055db92c	c0131cba-615e-4db6-9c8c-fdeb904211d6	2017-07-14
d0d38540-1585-4da4-9171-b83b812bd212	10f4fec4-efc2-46c3-b448-850a07bb55ee	2016-08-23
0123c725-b892-4a64-972b-c34464f8e9b8	3ce0b34c-2ff2-4ec8-9ba3-773709a32f84	2015-03-28
809367e5-bf54-4700-b8a2-a245de794416	968d2e2a-a6ec-4872-853a-d20da416b921	2017-03-11
2a4a2552-0b32-42fd-8da6-ac43fccfb302	90fc9883-beb3-48b6-8c86-222a80e5cdf6	2016-05-01
115f112a-7b18-4257-b623-e65ba231e8a4	7c667e0e-c0dd-4c6a-9c7c-5dd685bf43f7	2016-03-02
f51a2059-2b8d-4a00-8883-5d19ad614386	6a4a4941-579f-48f9-b142-379dbca76726	2018-03-31
323a61f9-7a7d-4400-984f-fc8e43d83a0d	7ec1dedb-2f94-4ff6-9a8c-a955227cfa99	2014-03-01
c54d3f6a-2229-489f-966e-6b335d31d914	032397d1-2bb2-4866-807b-5758450ef30c	2017-10-13
b73ff681-f8d2-4f9d-92b5-b3e7a221be8a	cedeca96-4752-45b5-8f78-69bfd805a706	2018-09-28
1a52b7b2-9bcf-42ce-9c6d-9be6dce264f8	df0867b6-9e5d-4beb-8e02-b65fd0fe492a	2014-09-11
88ace02f-b82b-49b1-801c-8fde6f869367	408e1598-e5e7-42eb-9363-4bbc5a6a1328	2015-01-02
1db1ec48-63c1-4aa8-8d15-5d2398b0d255	ad69b491-0952-43e0-81cd-27a8b9a37007	2017-11-04
a9e2547c-aa06-40e4-843b-880e67691579	61e7d0b7-7081-4fae-ab58-9f272e00bc44	2018-11-17
692ded59-6e6b-4330-af3d-b012520de53c	247ec38e-b02a-4c3d-953f-b2f96573f11c	2015-07-08
ae34deaf-62f5-46c2-92b5-66ddb52a9029	31c7a85b-cfa2-4534-9b2d-5f3ee3424693	2017-08-26
2385b4fd-4146-4047-bc12-fdacccee8394	1b9fb3f2-56df-4c0f-a9c9-d2f5f8199cf8	2015-11-01
9f184a18-8d6c-4dad-919f-38706f5edf3a	e8ece71b-4c80-429d-ac32-a39e7bcec4be	2015-05-23
0356c8fa-fb5f-4b6d-947c-aefdf6cacb23	9fff0ecb-f91f-49c7-907d-078ee9bfc8e8	2015-12-05
9e6acb40-7106-4512-acac-20f7ec103be2	19c255a3-e151-43a7-b185-103e1255bc3e	2015-05-06
caa9dc4e-2dc4-4a02-8ef0-748729ac5fb7	aaaa815a-f044-4e36-8f37-a83478a72a49	2015-03-19
2a3bca6c-0335-4eea-a359-7124b5366f56	6c02e51c-8d02-4e2e-849f-2fd05f420853	2016-09-27
bc385912-87bd-4142-a312-e6348bf44aff	6c02e51c-8d02-4e2e-849f-2fd05f420853	2017-04-05
4e181923-3c37-47bd-9b2f-74fdea4a55f4	e6949d9a-0d62-442e-92bd-0c1eb7dad92d	2016-04-11
69e352a8-f8c9-452b-a746-37da16958d03	74be9c6b-a336-476a-8c4e-eb4b3f63e29b	2015-06-29
cd542871-4355-4995-9d20-caeadb925915	9be44c45-a560-4221-bd2d-09372ca15317	2018-01-14
9c5c1478-66cc-4588-bece-e863a8968208	4b72d129-61c3-4d42-b6fa-9e1d0bfcc07c	2015-03-24
fa0de56a-5805-4fbb-914f-0f558bca4195	817869c0-42d6-4d16-9b5a-1657a714b190	2017-10-08
d1f18258-9f2b-4e5e-88b9-fc00a5d4b2c9	9f5392a0-6ecc-4b30-8788-2699f5d643ef	2016-08-02
16eb6efe-1bc5-4736-aa08-11adfe737cfd	da94fb23-0d5c-4049-80a1-fdf3aec9843d	2016-08-09
3a2c5f44-255a-4c1d-92e9-406aa14d7377	e26162cf-8784-49eb-8f47-505159211110	2018-09-03
ca01f0c7-89aa-4fd5-9338-89c98595cfcd	bab9e24c-c3bf-4e9f-82d5-f06f451c9ccf	2017-06-17
96d9cb69-dbf8-4794-9b18-46d7f7db4151	5355274d-57f5-41e4-a349-e712a6b52971	2014-04-26
e5733717-e7bd-4f4d-80c3-c57ce03ccc75	8c83d5cb-8be2-406d-baa2-b6084e15aa7b	2016-04-10
43f7096a-8552-46a0-bb47-213ee39f578b	56e160ca-41a5-4673-8eab-7529886f6eb0	2015-03-06
9974feb5-00ad-4a1b-aa56-d6c5586ffc3e	a0a737d9-affc-4f8d-ab3e-289906296e8f	2015-01-29
c23570b0-2cf8-4bf2-b44a-9cc806177616	46135ae0-0d62-4a2d-9234-aff3c2878944	2017-10-08
2e3ca708-4530-4908-b41e-4037dcc1e008	e9f7c1a3-7d07-48bf-8535-42ec16f01c1e	2018-05-01
3b9893b8-20d9-4641-a304-417c6b88b98a	e4a196ae-808f-4c74-97d7-d7ac5b02698a	2016-02-28
5757a5e1-c8fb-403e-afb4-9c97d5a22984	64ad279b-86c6-4b82-88fc-e927e1545860	2018-12-09
0ba9c511-977d-48ea-92ad-1316841df041	241e9480-873c-4094-ae76-341c63c0b30d	2016-04-25
f4b3e151-7d80-44b7-8023-5869a7bc1db1	4db1fea4-5b66-4fc0-a942-1218b93ebabf	2018-07-29
7908c3ed-3663-4618-a8ff-f9f96d4a1eef	8ed1d8b4-e9b5-4b72-8660-7d76e50fde94	2014-12-09
35931592-4622-4e9b-a3aa-9d9d7bbaf926	b7fa4291-e542-4317-9500-3c8aad11e7ee	2014-09-30
45dca50f-beed-4c50-bbab-f3b3de842887	38871e45-269f-4cc1-a2f4-70714efd2f36	2016-03-07
6150ab8d-c860-47fd-aa0e-c40f64c79dfe	c0c524f5-00af-4001-b42e-481d6d08db12	2018-01-01
62de7988-113e-4a9f-a0c8-069b41776837	b763794e-b688-4a2e-b88c-1882e2e04e5a	2014-12-11
460e9d7a-2418-45b9-87b5-2ff151ddc32e	72b0629c-0317-4254-8919-4c6245f26ff3	2015-08-23
46d8b55d-8186-4d1a-8e01-6c62d317ffdc	a879a855-6c09-465a-a171-b4706c8887e2	2016-04-23
fc853f06-c81f-4727-8635-d6652cf98920	a3d9c2eb-161a-4c4b-bcde-94cc0196e0de	2017-04-19
6cb57a4f-ed95-4426-b67f-6b61247b7977	4e40e478-6783-4d34-9066-c4418c42e989	2016-06-02
2d2f9ff7-b11f-4cfe-9f52-a9a409801a7c	838f79eb-67a1-4c87-b031-83d47a6b2407	2014-06-17
2095cee2-fa63-4e7e-93de-5b7147da4ce6	fb67eb4b-ef39-47c4-9c43-757332e724e1	2015-12-23
d4979b84-7c00-4532-a2ff-10fb64d1671f	eda3ba6f-fff3-447a-8d06-4460a67056ad	2014-09-04
93fc363f-e847-4be1-a068-5bd8033a4df1	99a8f733-d76e-4c3e-8582-92f02dd541a8	2017-07-29
80d55d70-cea5-4c7a-8620-9bd1d61a78c2	b80749eb-76d7-41d0-968b-d09b65174cea	2016-08-18
ab6c103f-a8ab-4116-ab90-fe9a10589b86	90fd6505-dd66-49e7-929b-96d306980bef	2016-09-25
92c94657-51af-40cb-8f6a-a748ad0bb0eb	7d9298ca-2087-4c24-8030-bfe8b0bf9fc9	2015-12-31
b82f4006-d599-497e-8cd4-8c0ec167df9f	94da7b7f-7076-4aa3-9f38-31f9528f3ef9	2016-04-24
7375c27a-d303-49f5-82d8-f6039d184995	c1e41bf8-7b80-4528-ab9b-a0cbf7a71828	2017-08-26
7f239615-c654-4409-b787-fa16b31317be	6ce3e992-ea51-4488-9547-0e06ca3e1d12	2018-08-08
4f080231-f4a1-42e7-9f5c-bc20a77bb3f6	146a4da7-7662-44b8-9b65-bcadc4f75356	2015-06-09
02ee1222-30a7-4ccd-a079-ad2307722880	16281d89-8fb7-46df-949f-c58d6d4c8065	2014-04-29
0e5f847e-f63f-4939-bb23-6b3b992fd0d5	d075640a-1632-4eb9-91c7-b7158a2b5b24	2016-07-09
b1a0d74c-ab9e-4c32-8c4d-529893015cc0	be3273ec-7a5b-444a-b82b-c935b5acc513	2018-12-31
304f3dee-d63c-4752-9ffd-400ad236da8d	48381d54-976c-4135-98b4-d1f71212e136	2015-04-21
914ce6f5-f6a0-4bb5-8a69-601443fa8fd5	9a7ccedb-2990-471b-9fe4-e6a05036e45d	2018-07-06
f0e668ed-34c5-42b7-af72-3d62837c04e5	e1e129b3-83f8-4ee1-bafd-ea0d5ab3414b	2018-09-25
6da46ff0-d95d-49d5-bf45-1cb7ed576b27	d7be4efe-a1f6-4b50-bc5e-5e037281bbfd	2017-02-10
36d555cc-e57c-45f3-ba9f-fef1ca2c8ddc	db1da131-57d9-45d7-91a3-b7e61e6104d3	2016-11-23
cdfdf1a4-f089-465f-b1e7-08c5215367e9	5e204eac-e474-4f0b-b5ea-e511574ef373	2016-03-24
6e31a57b-c8d6-4ef5-a0cf-f6e912e2ff51	40f2480e-a855-4fb8-a4f1-625be546a348	2019-01-26
5a9512c2-1045-422c-ac98-29d1dfb7e46c	7b8d7d3a-724f-4ada-8239-c892483bf4c4	2015-05-16
4643e772-2faf-42c1-a8c3-b1b5137f1236	a238bf1f-b835-4d4a-87bb-e267afe9f47d	2017-10-13
b7cf4e74-baa8-4811-9ad5-e2e671276842	7715952d-9a18-49a6-8eec-40c768d71848	2018-09-14
eee0907e-bbf0-43e3-b903-94dfe87aed37	c1f592cf-82fc-45b6-9538-5b7221fda1da	2014-07-03
9304309b-989f-4c9d-99a6-4acaeb64acf9	18376f90-3b8c-4135-8966-c1201e42c150	2016-05-24
a78c2960-14d8-462b-9bf3-504dccdac5ae	5307bdb9-0c63-45e7-b412-e84bf53c2438	2018-08-24
f7c4758b-2597-411b-a306-4c4e39767ba6	a3a440eb-b7c2-46e3-9fc5-80da3a2e8987	2018-06-29
ffad0cb3-7fc4-4d83-bc58-6ae77da1c8f0	97d8ae65-e268-4593-bd4d-397dceca78ba	2015-04-19
051f3e5c-0625-4d5a-a495-d00b9c2e77d9	0637e35d-3e55-401d-9ecd-6db9528c4ae1	2015-12-22
b1a5c2a8-535f-4e2a-83b5-9ff73e5b5fc3	bb953eba-363f-4508-aa96-c42dc038c7df	2017-07-31
196da1f8-edc2-47ad-8b8a-97a862c43533	2677237f-49fc-48c9-bb56-99df1b710f0f	2018-09-26
85398610-23bb-4d52-8766-9a4244589b0c	f0d119f4-6bdd-4c3a-a606-98fb10ea2bb6	2017-04-25
e9bf991d-f7cc-434e-8416-e066d7ddf122	0cca0303-b849-44f3-b5f6-d17b7053c47e	2016-12-07
4ad17fa6-54e2-4df3-89e0-b0a87e3ffd07	65b85473-ec6f-4579-9846-8a73a3dd3e49	2014-08-16
660e36b0-2564-4957-975b-3a365cb7338c	79bacf17-a464-4f1f-91df-aee2afdeee44	2016-06-30
861c85c8-2cc1-4d27-9982-4d00f0312aca	a0943a95-81e1-44ac-ae09-4489f299f185	2017-01-28
e34554ef-864f-4ec2-a8b7-f713f922d8aa	053601ae-5afc-4ae8-9b42-a0f5380f57d2	2015-11-18
a27852cb-4fda-4a2d-b6c0-8f5e94c4e14b	9c3cd095-c87d-4d69-a4b5-3de74d16e393	2015-08-04
9fdfc95a-26fb-4bf1-a707-5a56dbb74508	9868a286-2fe5-4ddc-94e3-72342c615b17	2017-08-26
ce4e8273-edd2-47ae-a0a1-e68b315b511b	17d80c15-91d8-440f-9e96-70a7e755c9c2	2014-06-27
c605f83d-51ef-4e0d-b47a-d2d914226518	17d80c15-91d8-440f-9e96-70a7e755c9c2	2017-06-09
d8c08323-3f4b-4b7b-8ed6-709423679a1c	78688171-33f4-49c2-affe-3b81045f5e18	2018-09-01
727fe51b-00b9-4e39-8669-8f3d7398e622	2f6642d8-ce67-4205-8c9a-cdbaaea138b1	2017-04-12
88f7157e-da21-4b1c-af00-889c0a3333cc	e3b893d4-3c4e-4883-9698-2b3ee65a45a5	2017-08-22
a5c6e3b0-56dd-461d-baa3-6a7a4a8a5831	742060e4-5960-45a4-a90b-9937e35b3b64	2016-04-21
1d53c22f-781b-4458-ab7b-47b02dac4195	ae98b70f-d002-459e-b3e5-877b1ffaf4b9	2014-10-26
19f756e7-d09c-48d3-9138-fe0252356a03	10aa5fbe-5f5b-44d9-9a45-e2a52405bec8	2018-10-20
357c147c-24fa-4afc-9e4b-f853309e9b9a	1b3f47e1-636d-4c67-bc14-11e9824d0573	2016-09-15
f41c2aef-7b83-4900-89e2-55d959ad5b76	16def6ca-52ef-4ead-892b-c8a794c00962	2018-12-11
2f7064ee-830e-4679-b769-987d7b7390be	83fc243d-b0d7-4a16-867d-1cf35f98bb25	2018-06-11
6bd9806f-399b-4a6d-927b-eba268d43fb2	56a64fe3-dc1c-4e91-8f29-fe9f24b9646a	2016-02-24
ad94b0c9-7e3d-4579-b271-8b3aabeb1920	9127b709-1f77-4c30-a2ce-1b89256bb77c	2014-05-07
9bf220b7-725f-496c-b116-ea1f60a75129	0cedd785-cb06-42be-ba11-8db8f1bc0674	2016-06-15
e14d028b-c0f3-478a-baa7-b7072ae5b8a9	56ad04c0-db88-4a03-b0fa-4a55ccacdee9	2018-04-07
d07ba095-3c2b-42e0-a4b0-b7cdd2cec2df	9a5364e6-7017-45ba-8b94-2641b3eb59ea	2016-05-04
0ba0d439-5185-4136-8aa1-37850197bb6a	e42905a3-f1e3-484d-930e-018fad7fcde9	2015-10-20
4d31fa75-8a8a-48a0-9707-88533437516f	29851a54-499e-434c-81d7-368a41216656	2017-10-03
ccfbf2cd-e2d8-4f06-9fc4-81ef8e33f1d1	26530f9f-8a20-416e-b791-caa2bd6b6d22	2014-11-04
a2a26cdd-c41b-41d3-a6c7-70898cc0e9c5	bc361bda-f174-4ab3-89e3-c5b5fbba0361	2015-03-08
b01106e7-3d09-4dc4-9543-eb19074f0aa5	265553ed-408d-43dd-aa1f-dae8075fa93b	2017-10-09
a86d053a-75e5-4551-a4cb-1cd184a544bf	a4bedbec-1afb-4411-a959-f1fcd822160f	2015-05-24
6f068d58-8e5e-4195-a1f2-1bef40d3cc9d	6307e505-4613-4ab5-9dd5-91a24cdb464b	2015-05-08
b0be140a-4883-4e59-a547-ac23242ba4a2	911b9dd9-cf0b-48c0-ae8f-02e152222d61	2018-10-14
a271ef9b-e5a2-4670-8079-cef78696ab60	a25483a5-1f6d-48aa-8194-af7173fd0bea	2015-10-22
4789c828-7b94-4a1e-a030-2c6948f3fea6	6f2ac2a0-405e-4edd-8c35-3164d57bef89	2014-03-11
56b21e20-5b0a-4310-917a-23fd2bc800f1	d9355762-569d-48fb-88e7-bd424f86a058	2015-02-21
9e571b00-cf1a-47ff-a45c-8cd5bf3d9fb1	35a79698-fc05-4119-a4cb-c5c49ce92d1c	2014-07-28
8f302edb-e809-4f6e-9a1d-c44d1c6afa4c	b8d442fb-84f6-4333-99e8-f38cbaaf3dc1	2015-12-28
e70cd059-c98f-49b1-9a66-738739b79fe5	220d05dd-fedf-4aef-bcb5-019b017f6635	2015-01-04
8bd5190c-c4ac-4a08-af62-de5701f097f3	b7815998-7bf6-44f7-8128-ab04fff343d2	2015-01-25
cc08c3b8-e00b-42a0-99f7-c4a0a22553a3	01d925ec-cea5-47ad-91b8-794203da3814	2017-11-01
e751fa84-a7e6-46e8-b7d6-d848351c822d	2cbce142-4bcc-4040-b5dd-ef18762ac87c	2018-06-02
03f2cfb9-82ba-4d7f-a655-20284126f2c8	5c8b610c-cc3f-441f-8a62-bbe5c1694948	2018-09-25
8c4a13a9-d8f6-404a-9a3c-2d90bd5bcdc1	979034d1-49da-4772-b2b0-d75c23590e61	2015-05-25
300335d2-5e7e-470a-8751-d7e5374c52fb	58967342-9e55-4bf1-89b0-c290a9080f75	2018-05-25
84cb229d-accf-495f-b8b7-cf2b84eb5996	5b1d8c6a-8256-41d1-825f-96c5b6d413ea	2016-02-25
349a17e2-6013-4bc4-8cbe-8069bafc0238	5c2ccefd-ebb9-41b9-951e-27e26d7d9165	2018-12-15
4ad9891f-77eb-4489-b751-e1acdb9389e2	a870bca3-48cd-4f23-8184-59fdc28fb17f	2015-09-28
cee3c4a1-83a8-45fd-b918-a87a7b4c35e8	788dfbad-ebd5-4348-aefe-9405a4a4dfdd	2016-09-19
aaa65908-d324-47ae-97ec-a461b77fadec	6c830bc4-eb93-4583-ad14-784c7f799e00	2017-03-19
f07456a0-23f1-42c9-ac8b-a977af2660eb	99bc4cbe-002f-4a85-a9ae-77645e7d7948	2017-07-30
56eaaa15-bf0a-4b9d-9bc3-20cde0c7a44f	544ce2f8-4849-4ea8-976f-e93b13595bca	2014-12-30
9307b06b-089b-4fc9-b6a1-36e92cb7b43d	a8c7aa70-2ce0-4545-a57e-acd19ce0a04c	2017-12-30
fdf0c5fb-dd88-4d41-b99f-e085aa8f61a1	6cde16a9-407e-4553-8f85-16ce55c5f5e5	2014-06-08
3fe32f55-830a-44c4-97ba-6f84424b6382	5a650ae3-b125-4b02-a04b-54bf3081e091	2014-12-20
f3d73b35-0335-4fa4-8ced-0415ce88b8a4	ef3b6a1d-9a6f-403d-939a-6173ef2b4f32	2016-03-01
131b20f1-f1f9-401b-9fec-d2b18c663d6f	5d1f75f7-f03e-4046-94ea-721f0139e001	2018-11-11
fc10d90b-de7c-43dc-837c-98850afb4943	ec637538-50fd-49df-a32d-a3bd0142c8b7	2018-04-01
508e67d9-6c56-4ac7-a890-8f1c8b3f0c03	994bb4cf-736c-42d1-955e-d75420f009de	2014-12-04
37657c3c-b840-43d0-a24c-d2c76cf19c1e	37e74a86-467f-438c-ad5a-d6a20f8396c3	2019-01-29
565be19d-2305-46c7-b5f8-7551d29b7a6c	d92d9ba1-1fb0-44f7-bd01-8627eb393414	2015-06-21
b65a7d84-041e-4673-995d-b3e8f67405df	70659e5e-6f9f-4657-bd11-7538f7ebaa1b	2016-11-12
199f0b3a-c67c-44f7-bcb6-f6599a8f60d3	fc666ebb-c483-497f-92fc-e690ae160ec5	2014-10-12
d888e890-897d-4abc-945e-23301a1cbe2c	598a5ed3-69e2-4197-9b23-dd5eba659a05	2016-09-30
52cf57ff-1699-4d20-ad35-90f69f8c8fb3	27fd4355-ca75-4df5-ac26-517502be7a3f	2016-02-08
4801a099-666a-4177-a8d8-e52d5fa1ae68	ee07a849-a758-4ca2-984e-464ff31c282d	2016-12-11
ec097466-ab08-45d5-af6d-81ce5be16095	f3396bba-1626-40bc-9742-0b4fc781e3de	2014-06-13
df64716c-08c0-4675-9a8f-b4751cd1bf90	c7974150-bdd0-418b-b4a9-ecca4216bab6	2015-01-17
f3684e0d-4d91-416c-94fe-50f330c4dbc4	647133a9-3285-4692-86fe-7e1c9e3cb293	2018-01-02
4565cf0d-377b-44a4-b3dc-39623ea8b041	e96c05f3-d991-496a-b0a3-bf597de58d28	2017-07-30
0b66722b-81c4-4179-9f63-ac90633a5fa1	10a89048-5af6-4884-a620-eda1d7f5b636	2017-07-19
5e659af7-bccf-40de-ba77-efeadf39e024	ffdd3f77-b5ac-425f-b011-ca2a856273e7	2016-12-29
2fe35963-7d65-4ea2-909e-8c41acafa0a5	e0944b1a-ea74-4d9a-aec3-a9905f997fa5	2015-08-22
c4a99b0b-d5e5-4b6f-b9ca-bc7753d3f46f	ffbd8b5b-7bde-4447-a0eb-89b26d859203	2018-05-26
1bd42ea2-3411-4a8a-b1f8-5e96b9814838	8c663d38-b7cf-44bd-be88-a811acd31985	2015-08-29
7c0427d5-baf4-45ec-893b-6e8a4398047d	41d0e07f-bc8d-4212-89bd-af2a7304558a	2014-09-10
596aa72d-f58b-419b-8441-d425c4c63fbd	0ebdd804-69a7-47ea-a15b-4c08386e5a6d	2016-08-03
c00fc693-aca6-4537-bc27-fd796e2cfce4	72ca2702-f88e-4ac8-9996-b439fd8f9c5e	2014-07-22
5ee2401c-232e-464a-aa5e-2c8ae10016e5	65c54f99-8d70-4664-8b82-9bc0d7fe2252	2015-04-30
9affbce2-59c7-4494-9257-7436d306b07b	e4d8d32c-02c8-4c6a-b460-8e872aeb1a06	2015-05-25
abdb4e29-16cf-40ca-a468-125afd22210a	075fad07-f583-441c-8cb5-cf28c70d1f09	2014-11-29
f06b4aab-456e-4c81-b9d1-705f57dcf92e	074d44fa-4fbe-47f6-9eb4-7c4331cfc46f	2014-12-21
db15fa35-9f29-486d-afe5-bec2f3a2453a	6575ad04-e63a-4773-b674-023d57dd0e14	2017-04-20
8b89c3ba-b245-409d-8c58-f58e0ae9c9e7	ce65f3b3-8e29-4ba8-acbd-d0d928f97ef9	2018-09-23
0e9c8733-bc89-48e8-8aaa-ba63fd6b486e	534e2f21-058b-4e96-ba72-47cf99eeabaf	2016-06-30
ee765520-1b04-4172-bc22-b3882e63cbb7	e58dff4a-9917-4185-9774-50378395c3ce	2016-04-21
9679b138-0c97-4b55-8557-931dd0ff2205	caf634bd-50ce-4602-94ad-6a042f905905	2014-03-08
3bf0c149-7331-4ea3-9d19-f6d62991fbc9	b436a4de-7ca2-4fcd-80e5-0d75076261e4	2018-11-14
10f1e10a-05d5-41de-a576-2c5b3cae27d8	f014ff1d-4a42-4c4f-818a-23bcf07e19f4	2015-06-08
3f061232-913b-4c18-a80a-f9a90e85f20d	bf49229b-2464-4374-a803-ba782feccaac	2014-10-27
caf96c38-aecd-4ba3-a1e0-036852596dc6	ed938624-0492-4d6d-b109-44e84a710f76	2016-11-06
44936a57-5e35-41fd-b954-37eb33f12ceb	671768bc-77cb-4a09-ac37-cc34cf671cd2	2015-10-22
3be65e89-ff7c-40ae-bec3-d9307170da0e	e2c8e01e-84c0-4402-8daf-6b3781c53c18	2015-11-23
ef79c8c2-ee53-4a68-ac73-4115bc3f38bb	4c676892-4459-4afd-aba8-4015b21a81bd	2018-12-08
3c9d38c4-a95e-4790-bd7c-cc1d661b0cc6	e05c4d60-fdd0-4660-82ba-6a327df5fdc7	2018-06-12
face0c35-f73f-489f-9b9e-d333dd3737ee	63cf0ce3-3728-4673-9b34-f7246b7f7c6a	2017-05-07
a712e9e1-b1c6-4a2d-9fec-a131d73cad1f	ec2cfcf2-5e08-4e57-8c1a-c2e19c2bdaf6	2018-12-30
bc000c7c-a86b-4db3-b782-26b592482946	864288bb-9d42-457b-9415-f689d93bd6c1	2017-01-14
d9474d87-9f51-484a-995a-bf2bc2d934be	b94a3af0-25ca-40af-84ae-74932d2891f0	2019-01-03
18bd7729-0350-4af9-bbb6-68d5f9fa37ba	49ad4033-78e3-4df6-86e8-83e6134ebd34	2014-06-01
afcc848d-e7cf-44fe-98b4-c5405aa8ee77	42ebadc5-4ee7-40d7-8c81-156e38077fd6	2017-12-29
8b43b19e-5a26-4c62-b88a-5fdcb901cbf4	d13d015d-32a4-4225-859c-5947ced81de5	2014-07-15
20545ee5-687a-43f7-b85e-391f0b39e690	a6f7b75f-7028-4779-a716-028f9394adde	2017-12-16
78c28ee9-6444-4cdf-8f83-f77e0d6f8bb3	21e7f67e-480a-4bbf-a7d8-73e475a2ac0f	2016-05-05
62eb87e0-b5fb-47f2-ab37-31f6d549b3eb	f41292f5-2c08-453b-80f6-8cee2e5fc00a	2015-06-03
7525712f-90d9-42fa-a9e0-114ec6df248a	3048ce24-8d91-4f35-bb41-91fd93e49316	2019-01-10
6c127336-f12b-4644-ad35-da1e36e9bc6e	096c4ce6-8faa-4651-8869-802583227c7c	2015-10-26
553c70b4-35a6-46da-9192-d9f3ed02f824	862832e9-20d2-4d61-918e-cc2c18d8faa5	2018-04-28
23659702-60fc-416f-a03b-9a676a848909	7d92d5f2-f6d4-4289-a3a5-f61a261ab381	2019-01-26
19e0fc38-7301-408c-b1a9-f3459954fe9c	5e41ed5d-94f8-498f-93be-d56702a695ce	2015-10-31
2610854b-413d-4719-973e-c767b56450de	a01d6983-b503-40f8-82e2-8cfbf421f7a5	2017-03-23
c7c90612-149b-4d33-8913-5448f23157b3	184d82f2-0cad-4879-b252-2e8bb218c295	2018-02-03
0c2bed57-e77a-401c-bb91-fa60669a8e09	a2dc2912-d8e0-4e62-9927-7dc119bc2213	2018-01-15
747efe3a-ae8f-4324-a559-71051fb56314	2c2050c5-fb91-4f6a-8dbf-8207e7ae5ba8	2016-05-25
1af3725b-6737-4e4d-b076-521840497438	e256147e-b774-42c4-aa25-8aa0a049daf0	2014-07-31
4e49a0db-b640-4c19-99c5-f4e3f03463b7	30348922-56b5-4290-8151-cda365a328fe	2016-01-22
d596ed99-021b-49e9-86f9-c278529c0664	02047a7b-dee7-45d9-99c2-48b3adec1ce3	2017-08-27
c6a37ea5-bf48-4aaf-8465-c7ffbbbe446a	82620208-3f31-4d93-a95b-85ed98a224f1	2016-05-05
5dd683f7-d1bc-4ac4-86f1-e188234bbc24	0444a20a-99e2-48a2-b674-2ac6b7307c71	2015-02-17
b1e5c989-bdc7-4c19-94a9-177fb659743a	a2123ab9-535f-41d7-a56a-848212171e7f	2015-03-14
44be6907-f386-4bf9-b82e-67063a79189b	a98bad88-04fe-4d7c-9eca-b7cb047eb0be	2018-06-26
5be89abe-4030-433d-98d1-c03fde30b24a	cd495f12-4343-4000-9cd1-a8776285f2e1	2016-06-15
828fb4dd-c415-41c9-ae87-149e588242dc	5b0ba3d9-d5dd-4436-a7cc-343af32d993c	2017-10-21
7b99216f-ae53-45b1-85ec-8e255d638f1d	2b51fe18-35dc-4196-8b9a-66aef65914c0	2015-08-02
e3fd3fae-af73-4527-b185-d35e2822cf9e	85473c40-9b22-40e9-b98c-aaff231ac037	2016-01-03
968fbc44-bc1b-4e7b-969b-ef4b9a0c1d70	6c539db8-391f-474b-a5fb-e61f7b904f49	2019-01-12
73a07134-d69f-43e7-b95e-f810f7e49b36	b78768bf-c9c2-42b4-bcdd-208bcf90965f	2015-12-27
40f8376e-cdec-4e0c-8f6b-2d1ac280efdb	e5c44fe4-1238-40db-8937-3e7984386707	2018-09-24
6f1c0a6b-d9ba-4ec8-9827-b954c73091db	915842b9-6057-4b3a-a210-312e45e3f8cd	2017-04-15
741bfffb-22be-4290-b189-efc741a017ea	f1a32f2d-bd16-4493-9543-7e80dbeba7b7	2015-02-22
ca85212e-d019-475f-9e5b-5798a3d8387b	f39f9498-f480-4bd4-b79b-6bd1ac54c7e6	2016-03-08
493c4075-4f54-4516-8e73-a07d4a533cba	bf6408d6-2ea0-43e0-9720-3431d9f20829	2018-09-21
7cad9eba-e546-47ab-ab99-f79e04fa7df0	d943bbf0-4997-40fb-9a8f-7981d18c5dad	2015-05-29
57ebbd84-6e98-49ec-bcea-0984f3280948	26beb5c3-f0bc-4730-b3c8-c01ef793056a	2016-10-14
28bc337d-78f1-4cea-b676-32a0d3fdf4ce	3112157f-216d-4c91-812b-4d5d22c6ec11	2016-10-13
cfc2baf7-7193-487b-bc33-d24f13149661	dcc8ee80-d941-4c8f-a4e0-190425f774bf	2017-03-02
effb8883-2efa-4440-b12e-d74d8ae3d5a8	c3c578fc-9c31-4102-947f-6eb3027c5e46	2017-03-02
8eec38d1-d983-4c0f-aeab-54363135c1dd	8135bbe4-2bfe-4737-9257-f7bc5f9fb371	2015-12-24
061a7873-e88f-4537-8b09-34061d8c0270	89d1e80d-728b-4c00-940a-37feb74e83b3	2016-07-19
60244004-ca50-42ff-b96e-d41eb073307e	c6fdfd5c-c84b-4b75-919f-740e220d9f2f	2014-07-06
71dcaaaf-5193-466e-a328-59a2a3563534	97767e3d-879a-435e-b2ae-17c9c916b29e	2018-05-01
ded17d78-ab6d-4c0c-90f9-6bbe6e4dfc3b	3c9fa184-eed3-437b-a23c-cc5f266cbe56	2015-02-10
88ced49f-a540-4ad2-a62d-5f1f043a5e56	7dfcd55b-eaea-496e-bdc8-0b7793ac015f	2014-11-09
712ee6f8-ac76-4b85-8b0c-9d53c3f86282	5ab556f1-f690-491d-861a-74bd8ddd2f89	2018-08-12
e693d3f3-3f1f-4018-ac85-91941fc1d52f	92d381b1-a866-479c-9eef-f3d35df06403	2018-07-21
9cbcf6ff-691e-460d-bfcf-e43029df25f0	7a3ea319-a164-4297-b1b0-dae3ad8b8b3a	2017-05-13
1f99d95c-1309-470b-8c40-744bea628d14	f266eeae-89c6-497d-ad77-3e9cdd08b6ec	2016-12-01
4955cf30-4b3f-4755-9567-4f5bff89abf9	dd57ec67-8ec2-47e3-9496-be725128d468	2018-12-22
5e4fc6bf-2c71-4f1f-83c2-aabff83047ae	cadb5f82-4a9d-47ae-a1f5-9cb2700d6bb5	2018-09-22
2f39f341-d69a-49e6-bb8f-7bf1829def96	22a25cee-f4e0-46cf-82f7-572604b47457	2015-05-26
9f082033-6a48-4042-bba0-94552627bee1	a1f20ad4-f058-4fd0-850c-23987b9c1247	2016-08-20
6fb7276c-b3a3-4207-aa1b-48146ae1dcc5	a879144b-0cc3-47bc-ba56-c0440959df9b	2015-05-25
a1e3878c-5fc5-4c1e-a0fa-2d875cc7f946	422b50d1-7b87-4ade-8e80-fb096007f52f	2016-04-19
65171494-2807-4e30-9074-40d7eb7511f0	24aeb891-1015-4599-92cc-eba1676a73e0	2014-02-18
749a4d99-47c6-4e97-ba03-05543c312817	55dc03c2-7d0d-4daa-ad9e-08257fd90f7d	2016-02-27
f32cfc7e-35b5-4e81-9287-48ad1f04be4a	2ed36115-36e4-4b2e-a4d1-459db2933b2d	2017-10-11
e3754634-0639-44ae-bb47-9fc4e34981a9	ce667a31-26c5-4899-8482-a54e64392b83	2016-01-05
be373bb5-c8cc-4967-a3f5-20ce5eb0cfd0	8794906b-9384-42b8-a25b-6834f2a36178	2015-01-11
7fe1a222-a88e-4194-b42c-8529c3df225f	275d0aec-9c16-4c09-8f05-5e12cd71e9db	2019-01-31
c24967b3-127e-46ac-9ec5-84f2f3f21ba2	7b4cc449-7d42-4af7-8dc9-d61b40e5e507	2019-02-03
db8ae09c-4c73-454c-bc7e-224e2d786e4d	7ae07f50-7de0-4241-abec-5cc383884bc4	2019-02-04
8b8d465d-34bf-499c-a3a2-cbd53d725241	b44f105e-85e2-4a0c-be96-dbea5d8c9e4d	2019-02-06
86ffce99-ae61-437d-82cb-b0578c913905	7585d60e-1018-4387-8051-93753b032bad	2019-02-06
76dc5524-d714-49c1-a31f-495dfc98e509	dd7b40d8-4582-4ae2-85e3-5d659040ec34	2019-02-13
a787e699-b890-47f0-90e4-25d77537ec57	042b962c-0120-4eab-8193-936b089387eb	2019-02-25
9036d295-687d-4923-83bc-8851383bc359	eb271634-8e7d-4b61-9d3e-45302ee79d97	2019-02-26
22255b6b-e390-425d-a82a-604f8563269e	0aa2b5a1-c9f7-4799-832d-250a584df749	2019-02-26
9f8bf3bd-adeb-4cd0-85fa-e96ffa91bb92	205afabd-e6ed-4641-9036-e81d5907bf49	2019-03-19
0c994922-f3f0-4fd3-8d98-184efd7e5824	0761fa0e-e6c4-4e9e-a2d3-c8a7a9deebe5	2019-03-14
2ba66bb1-5b2b-41bf-9566-9260a44ead18	b83a3267-cbf4-4e84-8d50-723513e5413b	2019-03-20
7a604879-5669-46f9-8f13-122ab902b52d	1f2cc05a-266c-4066-8207-88249c480640	2019-04-02
b80fb012-d6b9-4926-941c-d5ba6db783d8	5d83aee4-5930-4030-9882-7db417f8d43d	2019-04-04
6c6df1c2-70da-4efb-b5f9-3634a323c9b6	9f2cc9e8-f0af-4011-8d4d-87bf56d2a2f4	2019-04-08
e23999b9-0fa1-47ad-a27c-c01c3288d68e	3d36dd55-5cd8-45c2-b9f5-21fbe19c748b	2019-04-11
c410a33c-9d2b-4fa7-b557-9d5504ae6a08	3cadd4af-785d-40aa-9c9d-f76086d5734b	2019-04-18
1449605a-4ba3-4e7f-b1fe-977a7d5adefa	301cf9f0-1d08-42fd-8626-091f4d727d42	2019-04-22
a36db649-8004-4c04-8ef0-824196749ec2	1852efd3-69df-4f68-9a67-8e4b8d3553e9	2019-04-22
e803d75b-13aa-4e51-9182-35282f259fe4	6fbac38e-bd61-4e5c-91e7-74efd7abb11c	2019-04-22
a5df035b-47aa-4d38-bfa2-04bbb0115206	aba9ddb3-585e-47ec-9f8c-accc1955d907	2019-04-29
8e91fab3-2521-4429-a15c-353b48692104	a7a65070-f26e-4b1a-a04e-f4710d1009e3	2019-04-29
7651125a-0c69-4de2-a1f2-7a49529704ab	09c075a9-47a0-4442-ae75-b54ab8d38d48	2019-05-01
622c0803-a4be-4fc4-8726-d7f2ba1e77f6	201b2092-0782-47c0-9b48-e9f7c2fc64cb	2019-05-02
ca71bcc6-e01c-4814-855f-882aeb3032a1	6f9684ef-2007-4e64-a49d-0680f124f0fb	2019-05-04
6b85388d-1a35-47d9-8151-58cb81a7c34f	f8f77fbb-be06-4ac5-832b-78800f9496b4	2019-05-05
5dc086a8-c1c1-4d92-9522-b1a9b89859a3	7b43fbc5-5c29-46ab-b072-72fe120a4007	2019-05-05
4582faf0-7e0a-4a47-bfce-742b22b30475	5eeddefe-5b4f-426a-95d0-da5bf352dfd6	2019-05-08
b1c4f94a-3771-4c5c-be01-61ad950f8d5a	327d049a-378b-450a-9115-e89f6eb48e9f	2019-05-11
2aff4cdb-1ee3-418e-a756-78eada746c9c	5dae2e6e-e0c2-48ef-9a3f-95f655e1b047	2019-05-12
6b0118c5-8da5-45de-8b52-11cd4575837d	05a2c563-90d1-420b-9920-1fa35a74e20f	2019-05-17
dcc84359-3661-475b-8e06-29209c8be82c	919a978c-eb8d-4069-8c2c-cfa83c3807ba	2019-05-19
91b428a5-a537-42bd-a47c-7f098c15234e	2bed343a-671a-40a0-b081-d2e84f5fee56	2019-05-19
7765988f-8273-412b-90cd-b6da49385d46	d2e3656d-9fb8-4e3b-a8bd-70ac2006c691	2019-05-21
a73f3692-6de3-4c81-8d76-b2ccd8fee691	d95cd7ff-651a-46fb-830a-f794b03fa9df	2019-05-27
f1cb8e18-f85e-4167-a940-eed988cc0c93	25f77346-254c-40c8-b093-cc835088c656	2019-05-28
902e5723-92ea-4d26-82bb-de09aef0bac3	76913dc8-0a35-4559-81bb-f219f317f3df	2019-06-08
f9c78527-35ae-42e0-a4fd-d6d79e7715b8	1b92608b-30b8-4b9c-90f4-6ec9d1e3722f	2019-06-08
71df65c6-549f-4a5a-bdb2-81bd5ea2d964	a066ffa4-bf74-489e-b4c0-58c65ddbb721	2019-06-15
4143f99f-26ef-4f52-bfcd-6a70b3265713	be53c052-2d7e-45f3-8b6a-607ade848bf5	2019-06-17
a27a2424-f8b8-4811-8a1b-72d8b14ba8ed	6d47a8cb-bdd3-49a0-af97-0718863e19f2	2019-06-18
0a7887f4-69d8-4835-a733-712037547874	1f0275a7-72e2-4a01-970f-33d53ea837e7	2019-06-20
9537b245-1b64-430f-9fa1-a30a25349f2b	6c78c5f2-79a9-46e7-9a95-573bd4a2af04	2019-06-22
48ec0a1a-47c5-45a2-8534-5e6a7eecd58b	9115b79a-ba8b-4cc4-8001-a53c17819a95	2019-06-23
4f2c51bf-0b48-4a4b-ac2e-7e59c4b21158	a70a8735-523f-4808-9941-6897260ec06d	2019-06-24
03637a62-e43c-4011-9d94-759eb9578308	3cdc7ce5-9c20-40e6-b3cd-56084f689add	2019-06-29
ccbb5d31-f542-4b04-beba-e35fcf435dad	9ac1ef6c-a627-43da-93dd-e2b2fb665442	2019-06-30
f6a2e658-0c25-4624-9b73-2ea4c477f8ed	dc656efe-15be-4e8f-8b36-12055d1f5389	2019-06-30
91d61cfd-5551-44b2-a5ba-38b28e879467	d5dbc8d4-edee-4cc8-8125-1d27300f94ac	2019-07-03
e3208158-6ce9-40a6-a608-d57d04d477e9	50213b63-824c-4e5a-a2b6-34059ac92ec7	2019-07-07
f7181805-6424-492f-bd76-dc24c47b74eb	7be006d4-9d37-4c60-abed-d19ff74f9a33	2019-07-10
d80e1cf2-32a7-4613-9b66-b8526260379c	1ad7f14d-880a-41b0-9cb2-37aed587ed7a	2019-07-16
de85030b-6648-4d80-9610-7e018da48b86	b222db95-23ab-403b-9c17-7ffcef79bfa6	2019-07-18
cd9878d4-d6d2-4aab-8203-e203cce4f02d	15e46904-4848-4b68-8ba4-ecc6d67680aa	2019-07-20
3daf6af0-e22f-420f-9d0f-b5e4c04ee852	26e16db8-13f1-4077-8d26-ef88eadb7ef2	2019-07-21
60ac7463-9c78-4938-981c-c31069df22ad	1368f426-915a-4565-9a4b-7754d82da7fe	2019-07-22
9eedb471-1300-42c2-a3df-6f9039aac4ba	35424c72-fe5b-47f0-85b4-3f2fdf91e689	2019-07-26
59266c68-680a-4747-ab95-50e4e41a471b	e28f80f4-f121-4431-813c-5927dbd9b5bd	2019-07-27
8592ea18-0113-4146-ae67-f2c06c96435e	e620530f-6971-4b3c-b69a-de65516a26ac	2019-07-28
108891a1-5e68-4e83-8353-1c0ffeac2ad2	91f8ce91-522f-43a8-99b2-c421f0af6a50	2019-07-29
0670b4be-7e48-4285-9547-a966b6e9bd71	18e089b8-185a-40f3-be1b-c2201bddb0b7	2019-08-01
30bcc29f-3827-4dfd-960e-391c1b0c4f12	1ba51b4e-002f-4a42-9fd1-002017d45292	2019-08-02
fbcb16b9-1d32-41c3-81a8-b0c9c6712c8b	be57208f-b1d7-4d3e-b0dd-c174421d748b	2019-08-03
da963c61-3a22-4ef9-a8c2-1a0bc206fe73	9d1a3cb2-f533-4a60-b4b1-2096d8379816	2019-08-04
8131bc32-b57e-4c91-b08a-3072df1b7d1c	6bc27f54-e174-48b6-b9b5-f20e89bfb52b	2019-08-05
9937a3b3-e238-440e-be69-63c33ce57643	0f795279-6cff-4a9a-9841-2c44f45ec890	2019-08-08
6368678a-cc25-4e00-bcd7-084aae9428fc	2f525110-bfab-4799-8a64-1671db5b30d7	2019-08-10
30d3f973-87fa-4bb6-8159-c229cf7a4cfa	e43fe49e-1585-4f90-8cd5-e39a5eaa634c	2019-08-10
cacf0add-d41c-44f8-ab04-0dc978172a7d	448505e1-ec30-4b4e-932b-a321d546c517	2019-08-11
147ab5b2-44a9-4b56-808b-f31f22724ffb	79faad62-2d12-4471-a744-2801a31c35c7	2019-08-15
b5cfdbcb-cac9-49c2-91a9-9f2295ecad77	fd34ad6b-6fba-483f-8798-2c434ca0d2a4	2019-08-16
6b058e8d-2b13-426f-875d-8d75204ab81e	28c1ab16-b008-4b8e-b27b-9eba64c390a9	2019-08-18
91548584-aa22-45c9-a99e-b38427e0e1e6	e71a02c9-13ae-4bad-b839-2b8d914ee147	2019-08-21
aeb1633f-ecc6-4fe6-a941-950030cb2f48	70f7f48a-18e5-4cb0-aa0b-064bf5196b7e	2019-08-22
8fa0efe3-8975-4c1d-8b28-1d3d43d17c31	2ed78bf2-683f-4958-a601-0c2cfeb9cd8e	2019-08-23
40b5a6a3-17db-4f87-a25b-5edc88de0e81	17a2108f-80b4-4d4a-bba5-7c568f09cd13	2019-08-24
1523e980-8128-4c14-a2c2-d7df08012046	d15a43e8-edc5-4e6f-a8e6-af8f04b2d9ff	2019-08-26
4478ad8e-d31b-4ef7-9dd0-d5b6c4282fe2	8fea223c-20ab-4a30-829d-c3a49f8d941d	2019-08-28
7d579629-a5c5-4cfb-9b21-b3b63d6e49e5	1a9af808-13f4-4287-a3d8-9250df328b34	2019-09-01
63aba027-1929-473d-b18f-2986a83bff36	407aa58c-e904-42dd-abe0-d4b15df7c98a	2019-09-10
9ce35abf-b684-469b-8790-6ebccb46c09b	64554a09-cdd1-4ad0-a289-7ee7e23a9e5a	2019-09-10
324767df-27c0-4f7c-990d-6689f0d1ea47	32faf080-f4f9-4a73-9bf8-149cb4adadef	2019-09-21
71eec1ed-7335-4c5b-bee0-2466393f8bad	23a0d1e3-e3e1-40cf-be3d-712239b9abdd	2019-09-22
90491976-c762-485a-a18f-f6803044c3fd	7c02d6c1-1e97-4563-a75a-335a5c654cb3	2019-09-22
c7bf7608-8298-447d-abfc-400934ecd55c	f060d8ff-9dd3-46c8-b170-71fc99cfbda1	2019-09-23
8ab31870-c54d-42c8-a00b-55bfa31ec406	93319ec2-8ebc-443a-902f-ea43d7fd09dd	2019-09-24
c6e3be3d-d1c9-48f2-8909-9897533a74c3	8ad760ee-47f8-4c6f-ae82-5986315029fc	2019-09-24
53cd2dc0-5e3a-48e8-a904-939a4a6c1a57	6a224fe8-e8c5-48c1-bebd-7eff5d731809	2019-09-25
36af0009-ce84-4b7a-b567-2474bab176ba	1c38e5c0-349c-4820-951c-79326b0840c8	2019-09-26
d52eb690-3be7-4036-80c0-4a7be22e887e	32b5bd00-b2be-48bf-b013-35903286a5b9	2019-09-27
67fb658f-aed3-479f-9fab-17ea7c20a7e1	ba8b0a91-d14a-4ab8-ac0b-20bd3749b7fb	2019-09-27
2acd3b09-9ea7-430e-9f36-5f4acac25cc5	c5bba6b3-16f7-47a5-9b74-9e9d7e792543	2019-09-27
bf3846f2-a756-48d7-b7f6-5ff21b1d5b1c	b35b9db4-1dca-48f5-bc3e-c8ec5a1be6ac	2019-10-06
58d76999-6586-4557-bccf-7fd9ba24f57b	50112d99-9d5c-46e8-9014-fae1d651ce31	2019-11-02
784610b1-0d3d-4d1a-b00b-e4ac6cd2d760	1e80bd98-69ba-4351-934f-7cd8792c1c3c	2019-11-04
9562429b-0677-491f-ba45-d678d5c0f47c	b93f79f1-5b98-458e-ad6b-22da27776e52	2019-11-07
3bf8d2d0-0bd4-43ae-aa04-24c85573b796	6972439f-434b-46c5-a4a6-03d7295e5037	2019-11-16
716543b0-2d4d-4ab0-bda0-8e28cf256cc5	2a50a910-a19b-4a71-9131-fd9001366eea	2019-11-18
134323c2-5177-48c6-96e1-f17017de948c	d6dbeaa1-fa7c-4308-9b8b-46ee4cc31289	2019-11-19
f357b847-caee-47ed-a808-91fdfb3b57c1	a470ab66-d287-4276-9eda-729834b2c749	2019-11-21
62784a42-2c61-4afe-a03c-36f13348e3da	f3d7a504-cb8c-45fd-8049-1393cce35d88	2019-11-25
0ac9af4d-ba58-4909-bd20-33443dc749e1	c4d1cf95-791f-4cc1-b51f-75a1ab194e14	2019-11-26
3b8fab65-44d5-4ab1-89c0-bc0bbd9aaefb	a1ae4912-91b7-4c25-9ba3-66440a84e857	2019-11-26
710cccfd-2a66-4cf3-8e57-ce9821c7d3d4	3985f3c2-1776-4bc7-b4d0-19b87d91047a	2019-12-03
d577b032-8d20-4aac-a2f3-dfcaf7fe9903	2d3af2cb-b627-4d84-8c15-f840baf15b3c	2019-12-06
760b3046-913c-4ae3-bd5a-76273ac4ece6	e330af0f-1d6c-44f3-844a-fc9eb4cd9efd	2019-12-09
b465f091-67fc-4663-a5e7-aaa655f6e18b	c71b3cf7-6110-4726-b849-9220d94d3e31	2019-12-11
bc929bdb-093f-4588-97d6-f62bb054bf4a	cc65b87e-2064-42a9-bbf6-18130029ae54	2019-12-14
13c08f16-6114-4c1a-80e8-dca502d9f1fe	b1ac62b9-e88d-437d-a7ea-3c6072526c30	2019-12-14
03d866a1-6ecc-42c0-b6aa-90c1ddc4554b	03f74872-f178-4e33-970d-5cc161de8724	2019-12-14
1f36ffcf-08a8-4425-b812-709077c5575b	8c5db432-9b90-4eed-984a-432ed3167750	2019-12-26
4a9d78a6-6187-4877-9c34-d2b162c3eeb2	5f368a43-4233-4a05-855a-08afd76a5fb9	2019-12-30
939548e7-0e57-401d-9b29-becfbb0eb5a0	d85da9ac-0440-4c13-8ffe-cffbdd1606b3	2019-12-31
8b117f76-dfc8-4c56-98e8-27834326dc5c	785005fc-606e-4c16-b31e-b20e461dd4ae	2020-01-01
672aea40-d69d-4c90-ac2f-aecbd6606e81	963ec1af-ec05-4903-9559-b606067725e7	2020-01-02
556b6e65-7d9a-44d4-9562-97bcb68d5dd0	56183e0d-af6b-46b5-ba17-9b470415a8cd	2020-01-05
c8e84cda-f5c8-4e1d-b07c-f94178e6012d	338538ce-442f-4ab7-bb21-4939a1043326	2020-01-07
ab220cd8-26b5-46c5-8c0f-dea979fb3a39	0895d091-f08c-4b66-a1e4-8dfaee92e90a	2020-01-10
18680018-8524-4fd3-ae22-b880db7f1818	475ea291-a1ef-4950-a43f-7418a72a48bf	2020-01-12
a79e10bc-8c5f-4e55-b179-f86a90846a4c	527342db-2ec0-4c1d-b087-cee16406d0f5	2020-01-12
544a4be2-3072-4314-956a-a210f68aaa7c	a64f42a8-14ac-43c4-b1f4-2e17e4b2eae6	2020-01-23
7d8dd653-65fc-4dcf-b98c-69e8a91f67d2	ab047371-b424-433b-bd25-6a875d3b2c62	2020-01-26
d5fb6fa4-5c20-406c-beb7-49a9f2c3c034	46b32fe7-b76f-4bdd-9cfe-ca2b10aba06e	2020-01-30
e4af0f9d-3b60-43e5-b88b-dc9fc4c00418	2abdb4e8-5128-4bfe-b99d-5e5a7b06e9c7	2020-01-30
5b95ae14-9dd5-4f34-bea5-4a383c4b5500	1750a7e3-1716-4b51-85ca-5542cc0af7aa	2020-02-08
1f825e6f-f904-4cf0-8ac6-3c24cd99bc45	b2814d5c-5536-47a2-a000-2ed40898a939	2020-02-10
42f2d4ee-5dea-40a7-8651-78691800a5f6	7544ad77-c050-4b67-baa2-1dfefb0ec8b4	2020-02-19
0bafdb55-8c14-41c7-b001-94804c65fc45	ff275986-d27e-4217-aaf8-cb22f1316980	2020-02-22
c7e2bceb-78c4-42eb-bd6c-3868831c1999	d45c867f-2c57-4eef-b6b7-ae06a900b99b	2020-02-23
c0f36d6c-24a9-4bfe-b0ca-04117a82317c	5c600499-1b81-4f2b-937d-1669f7a84676	2020-02-23
614483a1-63de-4d72-af63-3a2a725d1801	75c648c2-fee9-4dfe-8a77-e3e2c4029f0b	2020-02-24
8acc56e8-ce87-4843-9a52-4c54fdce9c02	02b28999-0f70-4edc-b151-ca5dea2c8fd3	2020-02-25
df1bcc8a-e1f7-447a-8d00-b05d8777e245	889df142-9489-40c3-a1a4-9edb3ba1a4cc	2020-02-25
e07adfcf-4502-4950-841d-9b8c8f022236	d57e75ad-f845-4959-9b5e-263947b99bf1	2020-02-25
3f453995-bd1a-40cd-a8c1-c9b53fcc38b1	d5453710-9873-4472-9162-19a0c965f488	2020-02-26
de6fa143-df3d-4c01-a12a-5ae06605b634	97cf04b7-201f-49d1-8656-540e590f7880	2020-02-26
177665c6-86ed-43b1-adaf-943f5bc9abd9	a7179541-a190-4517-815a-995305770714	2020-02-28
79c86447-52bf-45f5-a910-dc900db62ca9	8e3a69fc-444f-4036-b886-a845459c8c66	2020-02-27
d8a7ac42-6fb3-4698-8fd0-440dc6858a37	1afff601-b84e-4f61-b735-242198165a39	2020-02-29
21f64e73-faaf-4ec9-bea4-ea4d18fe159d	4e67a85b-5adb-40b1-abbb-509d5506b681	2020-02-29
187f1e1a-5bd3-499e-b514-80b4fe3809f7	302e464f-1427-4344-acc3-caeb91068ad7	2020-03-17
b3c45238-76a6-420a-b6ab-469475de97b7	0a007c6d-735e-480b-bd62-673a2b33c580	2020-03-18
72be6062-f20a-4f1d-8b45-52ff879eb58c	83f98616-2bd4-4ec4-baf4-b5c1c5163408	2020-03-20
9299005c-da27-4452-84fe-f2c8630151be	32041092-9861-42bb-8faf-0101bb582b8a	2020-03-21
61545640-e2f7-4363-a706-d3a5f53eec58	febfb962-d308-4c0f-adc3-31efcad3889c	2020-03-22
ae886847-c19d-4844-938c-e6f9c21398b3	7be7b69a-d558-4196-b114-c59fdf19b0b8	2020-03-24
6b2f70ec-06f6-4455-8098-6e5c7b59697d	8383edbf-a3d4-441f-990e-452d4741b02e	2020-03-26
ae93c1ca-9112-4efd-874f-cce2181d25a3	dfdc0997-d7cc-42e8-8f82-c9272c21ff68	2020-03-27
e9fce7d7-68b3-4646-b445-1b295679101b	f4a53073-01a4-4403-a9f5-2644e1bc9590	2020-03-29
1a117155-7447-4e3b-bb11-7c0f43bd0188	eaa9e672-4c70-4dcc-9994-66fc7a1d4573	2020-03-30
a98754b6-ac4c-46bf-8de6-c52fd1de037a	996e1b5f-40c4-474a-9e1e-9909a0bcf328	2020-04-02
eb847762-ac23-4bd0-90b2-dbd232af69b5	bf8d31d6-ebc9-4467-acf3-73af1190bca5	2020-04-04
a5baf7fe-3355-468b-96f7-f072683ead53	1980c151-e56f-4956-89e7-2fb3fffd8ca0	2020-04-04
683996a7-1f25-47aa-be24-5937b027ff26	bd606dcd-1d0f-4e88-85a7-4b843cc71538	2020-04-05
06173bca-e973-4037-9f6a-ebba09178fff	adaec6b2-a946-4c58-aa11-29694d61fdfa	2020-04-09
9f60dd88-4e3b-475a-8f8b-03a68a4da11a	2ff6ee7a-15c8-4a70-ace8-f39908ed9276	2020-04-10
998c256f-0354-40c7-be22-1b0948b400f8	865f56b5-c213-4220-adfc-964222a2884b	2020-04-11
a9796d1c-149e-4661-82e2-89564258fbb0	4d1f8fb6-8f8b-4ed2-9e4d-df324b239512	2020-04-12
00404a0a-2287-4a63-a89b-98d167b0a67c	b64dcd51-f25f-4ded-be6c-588737fb9574	2020-04-13
e88dd3a1-2671-412e-bb7f-309723c24179	35b0a666-8a06-4910-a39d-a9c1ba7e0e85	2020-04-15
b771f9b4-cef9-4bb8-896d-be4d8f5ff602	a1d8af43-e280-4ae3-9c8c-85b8702e5187	2020-04-17
39501d3f-23fa-4b00-ace0-2e3eca33ef1b	1452e866-d72a-4e69-93e6-22cfacd9b2ff	2020-04-18
398d39df-792c-4af3-82d6-59046c262465	53df3cc0-d2be-481f-a5dc-651bdd881f94	2020-04-19
e3cc5ff0-1252-4e22-b0b5-a0189c172c5b	19dbe9f6-68e5-472c-a6a6-ae65ae6aa740	2020-04-21
41fccd22-eb40-48b6-9550-ad845a077e23	0a838297-4be7-4fdb-b39b-ae52c61468b0	2020-04-21
d471ff4d-201e-4cc1-beeb-ea9e0d6187ee	4625ca50-e7e4-4ef1-8108-1a38f98773ad	2020-04-23
e604c36a-b815-4466-a76e-95ba628f17f1	39d57ac6-8c4b-4f1a-bdf5-68ee0fece19a	2020-04-24
bf0553e1-1635-47f0-9524-dfba667b074f	507a1d95-fc84-4490-a087-c5140372cf51	2020-04-25
7845cff8-bdf1-43c4-b309-2c8bc1ad6375	142a63a5-051b-4175-ba6d-673053f1aa4d	2020-04-26
ecf5783c-807d-4b45-a9d5-22c7023f4fe4	23e03aaa-9e5a-4621-a9fd-c67d9e42b6e3	2020-04-26
bf1526d7-af7f-4182-8a04-187ae444c8ee	b1a732a6-f5cc-45ee-80e6-009cd990ed01	2020-04-27
998c4ea5-9efc-49b8-b21b-2d903c6980c1	3023bab7-5468-4e0e-b900-4d00b482bb52	2020-05-01
2ee38402-16a6-4794-9554-8271acb464b1	36c90b9b-e4f6-4541-bc09-2227f410f182	2020-05-02
1c912298-db89-4041-9a59-f49935d06ce0	55a670f7-450c-4f05-9a14-be51a1d6ade4	2020-05-03
b6489f79-1adc-499b-9348-afd11202d813	19e91253-54c3-42e7-87c5-dd00d473e767	2020-05-08
f4c379fb-b7d1-486a-b00c-197396a6b135	9ee494b2-a589-412a-a167-beeba8f07bb1	2020-05-09
7e8cd9d1-a5df-4b58-8c05-a9b37d0f15ba	0a0a6e88-8c1d-44a5-be23-b0e9cd4cedf2	2020-05-23
1cf5ba88-6a26-4b9a-bed4-17fd00a72414	36f8a6e2-f8be-4c78-b6bb-9639149825f2	2020-05-25
bda15804-f204-4671-8635-27b19a9b6bb6	991b31bc-150a-43b7-8665-6e19467e2e87	2020-05-31
e9b725fb-cc01-4a8a-a30c-571e1db96345	59440b9a-4280-4651-ab06-f66a69f9102f	2020-06-01
71c299d8-72ec-4a42-92e1-77a64d738264	ff2f3143-78d8-4d9b-bf99-03387313963f	2020-06-04
f57efd46-8d5f-40d1-8382-d56a4043ad18	e2ec478f-1b3b-4fdb-a6d7-34ad6ab9ee2c	2020-06-05
9efdddb2-aab3-4f81-8979-3500cd91853e	205b6df0-8f67-4337-9ca3-363cf876b2bf	2020-06-07
b30e6d4e-edc6-4557-a64c-6bc221769142	331a5fff-d643-4470-9109-e845980cb103	2020-06-21
15e548b1-8288-4638-bedf-87324cb0dc5e	77e88f00-45fe-465c-adad-8d15eb74daac	2020-06-22
574ee916-e7b7-4830-9112-f20f37ebac3e	13bd0d48-8774-493d-8411-3366f5f2efd4	2020-06-29
0232955a-8db9-48ea-a1ea-f050a82b67e1	9a2967e5-2419-4e76-83ab-f9a45f297a70	2020-08-08
4a1c5b90-0e99-4514-a375-5f06757fbd9c	f3c42bd9-efe9-420a-b408-92b338fc80fc	2020-08-10
6bda7cb4-955f-4db7-abca-4cce680981a9	8598ba28-8270-48d2-9171-5263bf73463e	2020-08-13
a2e263db-88f5-4ed1-b910-69a345d7611c	e60c381e-e878-46a1-9a06-8d1183fce76c	2020-08-19
49d9db91-9c77-40e7-a9cb-308db097d0dc	4171c433-5c7b-49e6-a516-bccee754799a	2020-08-26
d7edf8d9-2fc4-4028-aedc-1f8c0d05f74c	f5df211a-7e6a-4763-a86d-fb3915d8101d	2020-08-27
9c5ff881-b884-4804-9770-54970a1ae732	d8efa237-1ebe-431b-9500-40d389fb4118	2020-08-29
839ded50-ae84-4584-927f-69dd32a82d43	f157b2c4-70c4-4c15-8d47-0d27c5bd9372	2020-08-30
ecafddbd-2412-4492-b626-527776723922	7a26cd05-cd74-4e58-aaeb-8fda5b295bec	2020-09-02
275aa1cb-78bf-4693-b086-6d7a119e4376	e9c5045b-5144-461d-bb4c-f6262071cc4b	2020-09-06
417a84df-ddb3-4120-8f1d-73075ca25df5	07fc9069-f53b-447b-b3b1-77f1464a1ba3	2020-09-07
3afb5be6-b66b-4673-b813-d5c5f7785fba	c8f68559-86dd-4939-9319-d0904c70b407	2020-09-10
4331b18e-a4eb-4126-b4c4-578fe1e912d2	f2b06015-68d2-46df-ae62-deca569ad4ac	2020-09-28
16dfe6e6-ee5e-4a63-a216-0f55c68873e1	f029842c-c577-4c7d-ba7f-52d5744c70e1	2020-10-04
f5bf4008-0e04-4a3c-830a-4cd1858c42af	d26095f8-a3cf-4011-ace1-ae82fb51fdd6	2020-10-05
a116a8e2-e20d-4562-bac7-44dd657d2a33	d75476e2-3cf9-49be-8804-5eac4b9dc3d3	2020-11-01
a8fb6093-8013-4a0d-8071-10bdfe46b23d	188058df-02b5-46eb-86fb-953c7cc6c0e6	2020-11-02
a36c46ba-09af-461a-be01-73e72807a7ef	e83ae58a-bb35-4441-bb7e-9a5c0893e05c	2020-11-04
bb3f7d2b-f09b-4fb9-b536-2f1e75b579c1	16b70fbd-3fe1-4b57-9926-9560cdd0968a	2020-11-06
4e3e8a66-673f-4df2-8f57-79ec5ee3bf4f	5ef25501-c2c9-43c9-89ba-2ffb56992881	2020-11-07
78c9b283-f205-47f1-b794-ad470a52c53c	d005dba3-066c-4cc8-95c7-8b44f6c21ae4	2020-11-08
466c6cc5-f8c6-4b28-9bf7-236f8e7f7819	11f41a84-5571-49d6-86de-9c00d6d7313a	2020-11-09
d0adf09e-4930-4054-b733-17e04824e55b	53008321-db71-4a12-8ff3-714ade0f24d5	2020-11-15
a2021c9f-ffd5-4c74-90bd-3d3050d09840	6a34fbda-066f-4d53-990d-a2218a69ece3	2020-11-22
3808acf0-7cff-40bd-aef8-7c5b32cedf31	67bc91dc-3307-4a7d-bd0a-a7f2fc0165ac	2020-11-22
ef867c7e-3492-4015-bb79-6af1795250ee	ce557cf5-465c-4998-802a-c162712a3306	2021-01-01
cdec2dc7-26f8-4f04-aca1-1657cd42cc2f	f55ee1ac-819c-4de7-98b1-a076ce92d2ee	2021-01-02
bdfbfd4f-46ea-4352-917b-bb02bb834f60	8b1e185a-e076-4368-a5f9-080be5774d61	2021-01-03
a639ea2c-fa34-4f3e-a4ca-db1e84d2eb8b	81f2be0b-4b10-47b3-9b76-d924e175b7c3	2021-01-05
7e2e1da7-f7fc-417f-bd57-3bcd4aa966e6	9d22f279-6b60-4b24-a1cb-1cc655c8f801	2021-01-06
1f8918ce-fb28-4450-8895-9977c34298ae	c8a627e7-30fb-4fb0-8122-252fa02b963e	2021-01-15
ac5ad20b-061b-4cc6-8149-8aba069d4f0d	6c50570e-ea5f-4f8b-942e-1047b4057e2f	2021-01-18
221bf37f-3637-4081-b9fe-e5d63c59b1c3	d77c3cee-e43b-415e-92e6-1d86917218ee	2021-01-20
1c5fb63d-1773-40e9-9642-8db8765a35eb	5a650ae3-b125-4b02-a04b-54bf3081e091	2021-01-24
3492616c-3ff4-43bc-abe4-f78c82c5e612	b153c8fc-2172-4995-b663-410bf2842373	2021-01-28
cf3d19aa-ee12-4a20-badc-896ec8098049	06361686-ea16-4421-b558-c8812762f816	2021-01-30
75102c90-0dd1-434e-bc3d-64faef122822	0e8ee306-3727-4128-b9a9-8df2dbe55491	2021-02-01
d76c8407-d256-4726-ba89-7333fcd9ef2d	76fed520-9528-44ff-8e02-5726d9b1e2d9	2021-02-10
fa4cb11d-8851-4940-b324-0e8a9c80a77b	5c334744-f9ef-493c-92ff-bc2d7730531b	2021-02-12
452d1058-884b-47d8-a6ee-37f11c7e79f5	79212d50-99a6-4de5-ace7-565c7cd97764	2021-02-14
1f350b28-d77b-41d9-9218-2f2f4f614db4	ce3227eb-deee-4cdd-8997-bf447f7cabb0	2021-02-16
a6925f0c-1f71-4555-85dd-ab2d4b1a696d	f8e46ae3-b2f7-4552-97d0-5b60e8faf8b8	2021-02-28
e15d85c8-ee71-44ce-81a9-1bfe069e029e	9ca2c7b2-97a2-4c89-9da1-556834242bc0	2021-02-28
10eb2f31-0cfd-4ec3-8564-014bfb54c173	594fdce9-e9bc-4e96-b623-a7d742549150	2021-03-05
c11d1694-af15-4ede-9c63-011fd7030a81	4d0e31e8-88f6-4930-8891-dca88fd79d7d	2021-03-29
6c9c7814-901c-4079-bcb4-119ba6de3b94	4370f717-830c-42ec-a036-f72bae7fd0d5	2021-04-18
980053ca-1887-4169-9624-59bc175ee1e4	aa88b6b9-22c4-4c0a-9424-7935b29161d6	2021-05-08
dd5661d2-276c-4ee5-880d-79f6fec034a8	11a864bc-ba13-42dc-8881-3ee9c67e93f5	2021-05-10
a9678d1f-13f0-448d-ad9a-f12758421d01	3c5ca9f9-eb5e-49f8-a4d7-84779331886b	2021-05-11
8a7e391f-3022-4360-823a-dac5a7bd5a02	0fa0dbf8-9bda-454a-9fba-9d15b60765f3	2021-05-12
959a9aaf-e422-4803-912a-bdee374154ec	c7dd3322-fe63-480b-9cda-cd57542c0c1d	2021-05-13
c33ef0ca-d2ea-4768-8c83-5858dcbd0775	607f9946-06e9-4169-8377-854c3001a568	2021-05-14
17c822cd-725a-4452-9dcb-e5c324311987	245dfb0a-a699-4282-910f-9534a57e5e10	2021-05-15
a098c6f4-3a2a-4b79-bcbc-24d0d7e86ec7	fdb61675-1382-44e7-aecf-8b2a7af76ee7	2021-05-17
1fa2adb5-a35a-4782-9252-b9f1d03a9b8f	4ca7cccc-bac0-4e58-9025-246195598f6f	2021-05-18
2da44f99-0e37-4118-939c-26b057839eb6	6803736f-3cee-4556-8acc-1be1af681016	2021-05-19
edde2234-7b91-442f-b5b0-818df5602af0	38977259-544d-467c-b3cf-ff57be7428b1	2021-05-20
4d1f6a6d-dc39-4d12-8bcc-e6ed738b3d1c	448881e1-ff81-4f69-b77e-97d4b0b886d9	2021-05-31
6d43b196-a797-4a25-9e4f-ed8396b75909	21a19ac1-b193-4e00-85a2-ba4fea0762a1	2021-06-03
17811117-ad6f-41bf-a168-235ebf8919dd	fc3bd55d-dfe6-4402-af49-b9f3f20761f1	2021-08-23
00047ebf-1900-436e-81ac-31d75a235ba6	1ee46e4a-55f6-484d-b074-cc5146e12eed	2021-08-26
51f19bd5-b3c5-434b-97a6-35902e47d49d	0fae78a3-4958-4260-b6ae-fc9e2babb0b9	2021-08-30
9ac2813c-d3fe-40f4-a7cb-2eb4e82f30e0	77ca6b71-aabe-44ab-8455-6ef7f6ff0610	2021-09-03
16cb03bc-f54a-4168-bce8-36aa1f5409b6	344ab04a-57f5-4075-8612-a9a087a0b584	2021-09-05
604f526d-162a-402c-b603-8baa595a3c5e	169ff5ac-7575-423e-b2f5-628e8fae8270	2021-09-05
f6fa2f95-eae0-44ab-89da-ae90c8017f7e	03f74872-f178-4e33-970d-5cc161de8724	2021-09-09
5aa40e6c-3faa-4e65-9edd-f466f414fdb5	5f760988-33b8-47f8-a33a-80ffea3d8f54	2021-09-11
5bc3ce90-3251-4793-8fbe-faf13ad1536b	6ec23e92-9dc8-49c9-94ca-a2611b7e9c03	2021-09-13
bc9b5fc3-d8be-402b-8e17-0a7bccfea6e5	fdd4f092-cb59-444e-9bf6-fe70a45a9829	2021-09-23
3300ae29-0727-4fdd-adc8-24944bcce353	5cd74975-268c-4ad3-ae77-3bacf1469f3e	2021-09-27
11a08b6d-13f8-4f85-870b-ad730217b51a	9fb77418-a40e-4e63-977e-54c83f13289e	2021-10-01
797cd3fb-07c6-4165-89d0-c26ee396c737	14998e30-abee-4425-8b31-52f62aff2d74	2021-10-03
cc927171-8835-44e7-aa74-539851a8098d	f51963e1-c3cd-4b05-8f03-fde7bbc1896c	2021-10-08
079f946c-3269-48f7-a32c-30cc0d2b262f	4b481323-baba-423a-b109-33f0b4912d35	2021-10-14
50dd7d82-d5a4-4940-90da-3073721b7bbd	ada85870-7461-4543-82ce-8bcd12464c4e	2021-10-21
00c6cd05-2be7-42ef-9802-370eb7abc7c7	6bea7bd7-261b-4499-a750-dc59d937a6c7	2021-10-28
5b9c68d2-2557-4092-adae-e79d09b14002	c0478fde-331c-4da9-9f2a-4d1199614835	2021-10-30
f77a60c1-a892-4c1e-b648-31c02db4e808	829029ef-e382-4226-816f-b3da8f5b1edb	2021-10-31
e60e4b8a-dbfc-4773-8ee7-4c6510883f37	52452dbd-fcfd-4dd3-ad76-ff6543edc99d	2021-11-01
34c44a4d-ca74-45d3-bc0d-1f29cdc91578	73c33237-d8f1-4e84-a7bb-47225cebb2fb	2021-12-29
03fb0c6e-cc4e-40d2-870b-e8db4b0fbc23	94d7530d-8d91-47a6-84bc-528462fd3cd4	2022-01-01
11fe3fa5-7421-43f4-8681-595c29f8ad8d	4049be05-628c-47eb-bc36-7818f97f2467	2022-01-04
b3e30785-216b-407e-87ff-e249f74cbb4a	6b327f58-32ab-4c80-8f69-ccd68c3d93b5	2022-02-07
3155dc0c-3512-4da9-9e9c-c899d2ea8a17	357fdf10-5adf-47f0-a691-f382691e9ed2	2022-02-16
feb3faac-0cae-45d0-8d3e-38e2668c5fee	9bd52fec-bc0c-42e3-b765-54ae16532dba	2022-02-21
4dfc7a72-a16b-493d-8677-037779540f26	41cdd0a0-6d02-47cb-aa75-4a16baacce2f	2022-10-31
9b35c5d2-8067-40d7-abdb-9353bb2f2881	1d74e898-aae5-4132-b591-7c69d672a98c	2022-09-15
a15f5262-5541-43f9-86c3-d0b8d2319d0b	8aae224d-036e-4686-b1a6-cb5704b90ba2	2022-04-15
c78aaf94-3d7f-4070-b2bd-bd6c0d70623b	7bacf499-ac59-4cce-b995-87146dc83216	2022-08-30
66fa6675-7515-48af-9042-7cc79a2ae6d8	f0dd4787-0f2b-42c4-9574-87618f83e382	2022-07-15
ae5fbfa4-f72f-4f0f-a400-53b3e999f915	57db1fe5-7ceb-432a-b6d4-4591250a98f3	2022-08-15
80af5600-21a3-40a2-b8e5-c73aaa53d0a3	208095ef-ec88-4be7-857f-e11678cd70a6	2022-05-15
e3204024-c145-4bed-a95c-1c8fcebca51a	57bd095b-bea3-4b59-ab8e-54fc28be7f8d	2022-09-02
6568ab98-52c9-4a0d-93aa-5629b0359fa7	bbabd4b9-cd41-4f51-b48a-75a126981bee	2022-09-03
5fa38eb9-925b-4a10-93cd-ee2ff755bc7f	24ab3c4d-74f8-4ea7-8469-2d0e51328adb	2022-09-04
da2a5c8e-2fab-4276-b99b-d158b2a3ad17	f299357f-20b1-46ce-a655-3040ade48a85	2022-09-05
768a9b6e-4255-49d3-9d7c-c1d677c096fa	84fbccb4-72b8-4874-8441-fceae28953aa	2022-11-11
e3367841-ed1c-4479-bbbf-e7abe3638ced	2d823678-815f-4898-a4ec-475be246f087	2022-11-05
a08d095e-9b50-44f0-bd24-02c31a9b7535	bb3f9330-86f2-4fc9-80f7-e236f83366c4	2022-11-20
d45bc955-c4d8-46de-aaf1-2f26f8d49aec	641a0c9c-642b-4f19-9644-0d41b32c26e4	2022-12-28
0f239357-c2ec-4700-9245-25cb2872afef	3f2f5b00-18ae-4095-981c-155406b6467b	2022-12-28
76611b3e-8477-448d-a80e-e02907191c6b	80c95025-9cf5-4db7-b8c4-595ec5bdba50	2022-12-30
6610a87f-78d7-4da7-b204-639c1b693298	7bff7d85-cfb1-4d94-aa4b-ce61451e9add	2022-12-31
494dbdd5-b9a9-4e89-a8c7-86e7ab38c886	c547ce26-9648-4fc5-8fef-f6dbfce24761	2023-01-01
f7b338f4-9d64-41d6-a2da-3eaa943634e9	54388ee9-5789-41f8-b661-967d18148065	2023-01-01
240fb40f-82b2-4813-97e4-fcd55ee69f8d	924ae1e1-a6e9-48c6-a48d-292d74465430	2023-01-07
102055de-7287-406b-8cd1-87b5f024d6e5	8a8a9936-6bb3-48a3-b9b9-99ca994e4620	2023-01-12
9d3147b6-7121-47be-8db1-d21ec91d2d3b	e088a486-f506-4c54-9aa9-4b9b359923e0	2023-02-15
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: geocode_settings; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
\.


--
-- Data for Name: pagc_gaz; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_lex; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_rules; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.pagc_rules (id, rule, is_custom) FROM stdin;
\.


--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
\.


--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.


--
-- Name: topology_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: author pk_author; Type: CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT pk_author PRIMARY KEY (id);


--
-- Name: book pk_book; Type: CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT pk_book PRIMARY KEY (id);


--
-- Name: poem pk_poem; Type: CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.poem
    ADD CONSTRAINT pk_poem PRIMARY KEY (id);


--
-- Name: read pk_read; Type: CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.read
    ADD CONSTRAINT pk_read PRIMARY KEY (id);


--
-- Name: author_book fk_author_book_author_id_author; Type: FK CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.author_book
    ADD CONSTRAINT fk_author_book_author_id_author FOREIGN KEY (author_id) REFERENCES public.author(id);


--
-- Name: author_book fk_author_book_book_id_book; Type: FK CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.author_book
    ADD CONSTRAINT fk_author_book_book_id_book FOREIGN KEY (book_id) REFERENCES public.book(id);


--
-- Name: author_poem fk_author_poem_author_id_author; Type: FK CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.author_poem
    ADD CONSTRAINT fk_author_poem_author_id_author FOREIGN KEY (author_id) REFERENCES public.author(id);


--
-- Name: author_poem fk_author_poem_poem_id_poem; Type: FK CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.author_poem
    ADD CONSTRAINT fk_author_poem_poem_id_poem FOREIGN KEY (poem_id) REFERENCES public.poem(id);


--
-- Name: read fk_read_book_id_book; Type: FK CONSTRAINT; Schema: public; Owner: u9y4l14lq7ckl9panjm1
--

ALTER TABLE ONLY public.read
    ADD CONSTRAINT fk_read_book_id_book FOREIGN KEY (book_id) REFERENCES public.book(id);


--
-- Name: SCHEMA tiger; Type: ACL; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

GRANT CREATE ON SCHEMA tiger TO PUBLIC;


--
-- Name: SCHEMA tiger_data; Type: ACL; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

GRANT CREATE ON SCHEMA tiger_data TO PUBLIC;


--
-- Name: SCHEMA topology; Type: ACL; Schema: -; Owner: u9y4l14lq7ckl9panjm1
--

REVOKE ALL ON SCHEMA topology FROM postgres;
REVOKE USAGE ON SCHEMA topology FROM PUBLIC;
GRANT ALL ON SCHEMA topology TO u9y4l14lq7ckl9panjm1;
GRANT ALL ON SCHEMA topology TO PUBLIC;


--
-- Name: TABLE layer; Type: ACL; Schema: topology; Owner: postgres
--

GRANT ALL ON TABLE topology.layer TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE topology; Type: ACL; Schema: topology; Owner: postgres
--

GRANT ALL ON TABLE topology.topology TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE geography_columns; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.geography_columns TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE geometry_columns; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.geometry_columns TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE pg_buffercache; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.pg_buffercache TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE pg_stat_statements; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.pg_stat_statements TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE pg_stat_statements_info; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.pg_stat_statements_info TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE raster_columns; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.raster_columns TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE raster_overviews; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE public.raster_overviews TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE spatial_ref_sys; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.spatial_ref_sys TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE addr; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.addr TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE addr_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.addr_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE addrfeat; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.addrfeat TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE addrfeat_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.addrfeat_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE bg; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.bg TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE bg_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.bg_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE county; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.county TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE county_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.county_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE county_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.county_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE countysub_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.countysub_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE cousub; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.cousub TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE cousub_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.cousub_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE direction_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.direction_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE edges; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.edges TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE edges_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.edges_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE faces; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.faces TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE faces_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.faces_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE featnames; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.featnames TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE featnames_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.featnames_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE geocode_settings; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.geocode_settings TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE geocode_settings_default; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.geocode_settings_default TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE loader_lookuptables; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.loader_lookuptables TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE loader_platform; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.loader_platform TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE loader_variables; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.loader_variables TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE pagc_gaz; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.pagc_gaz TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE pagc_gaz_id_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.pagc_gaz_id_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE pagc_lex; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.pagc_lex TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE pagc_lex_id_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.pagc_lex_id_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE pagc_rules; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.pagc_rules TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE pagc_rules_id_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.pagc_rules_id_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE place; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.place TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE place_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.place_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE place_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.place_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE secondary_unit_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.secondary_unit_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE state; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.state TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE state_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.state_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE state_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.state_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE street_type_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.street_type_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE tabblock; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.tabblock TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE tabblock20; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.tabblock20 TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE tabblock_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.tabblock_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE tract; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.tract TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE tract_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.tract_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE zcta5; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.zcta5 TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE zcta5_gid_seq; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON SEQUENCE tiger.zcta5_gid_seq TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE zip_lookup; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.zip_lookup TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE zip_lookup_all; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.zip_lookup_all TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE zip_lookup_base; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.zip_lookup_base TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE zip_state; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.zip_state TO u9y4l14lq7ckl9panjm1;


--
-- Name: TABLE zip_state_loc; Type: ACL; Schema: tiger; Owner: postgres
--

GRANT ALL ON TABLE tiger.zip_state_loc TO u9y4l14lq7ckl9panjm1;


--
-- Name: SEQUENCE topology_id_seq; Type: ACL; Schema: topology; Owner: postgres
--

GRANT ALL ON SEQUENCE topology.topology_id_seq TO u9y4l14lq7ckl9panjm1;


--
-- PostgreSQL database dump complete
--

