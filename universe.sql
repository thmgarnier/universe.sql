--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    color character varying(50),
    weight character varying(50),
    name character varying(50),
    serial_1 integer NOT NULL,
    serial_2 integer NOT NULL,
    kpi integer,
    comets_id integer NOT NULL
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comets_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comets_id_seq OWNED BY public.comets.comets_id;


--
-- Name: comets_serial_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_serial_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_serial_1_seq OWNER TO freecodecamp;

--
-- Name: comets_serial_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_serial_1_seq OWNED BY public.comets.serial_1;


--
-- Name: comets_serial_2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_serial_2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_serial_2_seq OWNER TO freecodecamp;

--
-- Name: comets_serial_2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_serial_2_seq OWNED BY public.comets.serial_2;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    size text,
    length text,
    age text,
    water text,
    serial_1 integer NOT NULL,
    kpi integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_serial_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_serial_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_serial_1_seq OWNER TO freecodecamp;

--
-- Name: galaxy_serial_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_serial_1_seq OWNED BY public.galaxy.serial_1;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    planet_id integer,
    color text,
    size text,
    serial_1 integer NOT NULL,
    kpi integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_serial_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_serial_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_serial_1_seq OWNER TO freecodecamp;

--
-- Name: moon_serial_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_serial_1_seq OWNED BY public.moon.serial_1;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    serial_1 integer NOT NULL,
    kpi integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_serial_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_serial_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_serial_1_seq OWNER TO freecodecamp;

--
-- Name: planet_serial_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_serial_1_seq OWNED BY public.planet.serial_1;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,5),
    galaxy_id integer,
    serial_1 integer NOT NULL,
    kpi integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_serial_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_serial_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_serial_1_seq OWNER TO freecodecamp;

--
-- Name: star_serial_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_serial_1_seq OWNED BY public.star.serial_1;


--
-- Name: comets serial_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN serial_1 SET DEFAULT nextval('public.comets_serial_1_seq'::regclass);


--
-- Name: comets serial_2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN serial_2 SET DEFAULT nextval('public.comets_serial_2_seq'::regclass);


--
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comets_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy serial_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN serial_1 SET DEFAULT nextval('public.galaxy_serial_1_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon serial_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN serial_1 SET DEFAULT nextval('public.moon_serial_1_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet serial_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN serial_1 SET DEFAULT nextval('public.planet_serial_1_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star serial_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN serial_1 SET DEFAULT nextval('public.star_serial_1_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (NULL, NULL, 'Julia', 1, 1, NULL, 1);
INSERT INTO public.comets VALUES (NULL, NULL, 'Augusta', 2, 2, NULL, 2);
INSERT INTO public.comets VALUES (NULL, NULL, 'Octavia', 3, 3, NULL, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Alexa', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'Joren', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES (3, 'Jacob', NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'Hore', NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'Kain', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES (6, 'Goleah', NULL, NULL, NULL, NULL, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Joara', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Ria', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Rhea', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Raya', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Jon', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Jan', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'Ean', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (8, 'Rin', NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Han', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (10, 'Jeroe', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES (11, 'Kani', NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES (12, 'Kena', NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (13, 'Kabi', NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (14, 'Lo', NULL, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES (15, 'Ki', NULL, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES (16, 'Op', NULL, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES (17, 'Opas', NULL, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES (18, 'Okan', NULL, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES (19, 'Kay', NULL, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES (20, 'Keops', NULL, NULL, NULL, 20, NULL);
INSERT INTO public.moon VALUES (21, 'Kani', NULL, NULL, NULL, 21, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Haron', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Horen', NULL, NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Gan', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Forin', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (5, 'Kan', NULL, NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES (6, 'Jan', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES (7, 'Golan', NULL, NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (8, 'Ubiry', NULL, NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES (9, 'Teron', NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES (10, 'Eran', NULL, NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES (11, 'Geran', NULL, NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES (12, 'Kanaan', NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.planet VALUES (13, 'Oban', NULL, NULL, NULL, NULL, NULL, 13, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxy', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Her', NULL, NULL, NULL, 2, NULL);
INSERT INTO public.star VALUES (3, 'Jacoba', NULL, NULL, NULL, 3, NULL);
INSERT INTO public.star VALUES (4, 'Ilys', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.star VALUES (5, 'Ubara', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.star VALUES (6, 'Oen', NULL, NULL, NULL, 6, NULL);


--
-- Name: comets_comets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comets_id_seq', 3, true);


--
-- Name: comets_serial_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_serial_1_seq', 3, true);


--
-- Name: comets_serial_2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_serial_2_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: galaxy_serial_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_serial_1_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: moon_serial_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_serial_1_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: planet_serial_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_serial_1_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: star_serial_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_serial_1_seq', 6, true);


--
-- Name: comets comets_kpi_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_kpi_key UNIQUE (kpi);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_kpi_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_kpi_key UNIQUE (kpi);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_kpi_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_kpi_key UNIQUE (kpi);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_kpi_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_kpi_key UNIQUE (kpi);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_kpi_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_kpi_key UNIQUE (kpi);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_moon_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_key_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_key_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_star_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_key_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

