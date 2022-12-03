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
-- Name: common; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.common (
    common_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.common OWNER TO freecodecamp;

--
-- Name: common_common_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.common_common_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.common_common_id_seq OWNER TO freecodecamp;

--
-- Name: common_common_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.common_common_id_seq OWNED BY public.common.common_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text NOT NULL,
    age integer,
    size integer,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    has_life boolean,
    text text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric,
    moon_has_life boolean,
    text text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: common common_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.common ALTER COLUMN common_id SET DEFAULT nextval('public.common_common_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: common; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.common VALUES (1, 'UFO', 6, 3, 12, 17);
INSERT INTO public.common VALUES (2, 'NASA', 2, 4, 8, 10);
INSERT INTO public.common VALUES (3, 'Rocket', 1, 6, 3, 1);
INSERT INTO public.common VALUES (4, 'Ship', 5, 5, 5, 5);
INSERT INTO public.common VALUES (5, 'UAP', 1, 2, 12, 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'DESC - Andromeda Galaxy', 1, 1, true);
INSERT INTO public.galaxy VALUES (2, 'Canis Galaxy', 'DESC - Canis Galaxy', 2, 2, true);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 'DESC - Cygnus A', 3, 3, true);
INSERT INTO public.galaxy VALUES (4, 'Magellanic', 'DESC - Magellanic', 4, 4, false);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'DESC - Milky Way', 6, 6, false);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', 'DESC - Virgo A', 7, 7, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 1, true, 'Moon is alive');
INSERT INTO public.moon VALUES (2, 'Callisto', 2, true, 'Moon is alive');
INSERT INTO public.moon VALUES (13, 'Lysithea', 1, true, 'Moon is alive');
INSERT INTO public.moon VALUES (14, 'Ananke', 2, true, 'Moon is alive');
INSERT INTO public.moon VALUES (3, 'Io', 3, true, 'Moon is alive');
INSERT INTO public.moon VALUES (4, 'Europa', 4, true, 'Moon is alive');
INSERT INTO public.moon VALUES (5, 'Amalthea', 5, true, 'Moon is alive');
INSERT INTO public.moon VALUES (6, 'Himalia', 6, true, 'Moon is alive');
INSERT INTO public.moon VALUES (15, 'Leda', 3, true, 'Moon is alive');
INSERT INTO public.moon VALUES (16, 'Adrastea', 4, true, 'Moon is alive');
INSERT INTO public.moon VALUES (17, 'Themisto', 5, true, 'Moon is alive');
INSERT INTO public.moon VALUES (18, 'Kalyke', 6, true, 'Moon is alive');
INSERT INTO public.moon VALUES (7, 'Thebe', 7, false, 'Moon is dead');
INSERT INTO public.moon VALUES (8, 'Elara', 8, false, 'Moon is dead');
INSERT INTO public.moon VALUES (9, 'Pasiphae', 9, false, 'Moon is dead');
INSERT INTO public.moon VALUES (10, 'Metis', 10, false, 'Moon is dead');
INSERT INTO public.moon VALUES (11, 'Carme', 11, false, 'Moon is dead');
INSERT INTO public.moon VALUES (12, 'Sinope', 12, false, 'Moon is dead');
INSERT INTO public.moon VALUES (19, 'Taygete', 7, false, 'Moon is dead');
INSERT INTO public.moon VALUES (20, 'Dia', 8, false, 'Moon is dead');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1.1, true, 'Moon is alive');
INSERT INTO public.planet VALUES (2, 'Venus', 2.2, true, 'Moon is alive');
INSERT INTO public.planet VALUES (3, 'Earth', 0, true, 'Moon is alive');
INSERT INTO public.planet VALUES (4, 'Mars', 3.3, true, 'Moon is alive');
INSERT INTO public.planet VALUES (5, 'Jupiter', 4.4, true, 'Moon is alive');
INSERT INTO public.planet VALUES (6, 'Saturn', 5.5, true, 'Moon is alive');
INSERT INTO public.planet VALUES (7, 'Uranus', 6.6, false, 'Moon is dead');
INSERT INTO public.planet VALUES (8, 'Neptune', 7.7, false, 'Moon is dead');
INSERT INTO public.planet VALUES (9, 'Pluto', 8.8, false, 'Moon is dead');
INSERT INTO public.planet VALUES (10, 'Planet 10', 9.9, false, 'Moon is dead');
INSERT INTO public.planet VALUES (11, 'Planet 11', 10, false, 'Moon is dead');
INSERT INTO public.planet VALUES (12, 'Planet 12', 11, false, 'Moon is dead');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Protostar', 1.1, true, 1);
INSERT INTO public.star VALUES (2, 'Tauri Stars', 2.2, true, 2);
INSERT INTO public.star VALUES (3, 'Main', 3.3, true, 3);
INSERT INTO public.star VALUES (4, 'Red', 4.4, false, 4);
INSERT INTO public.star VALUES (5, 'White', 5.5, false, 5);
INSERT INTO public.star VALUES (6, 'Dwawrf', 6.6, false, 6);


--
-- Name: common_common_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.common_common_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: common common_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.common
    ADD CONSTRAINT common_name UNIQUE (name);


--
-- Name: common common_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.common
    ADD CONSTRAINT common_pkey PRIMARY KEY (common_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

