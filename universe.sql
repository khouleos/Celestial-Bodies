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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    distance_from_earth integer NOT NULL,
    description text NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
-- Name: number_five; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_five (
    number_five_id integer NOT NULL,
    name character varying(30),
    year integer NOT NULL
);


ALTER TABLE public.number_five OWNER TO freecodecamp;

--
-- Name: number_five_id_number_five_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.number_five_id_number_five_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_five_id_number_five_seq OWNER TO freecodecamp;

--
-- Name: number_five_id_number_five_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.number_five_id_number_five_seq OWNED BY public.number_five.number_five_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_types text NOT NULL,
    is_spherical boolean,
    description text NOT NULL,
    distance_from_earth numeric NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: number_five number_five_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_five ALTER COLUMN number_five_id SET DEFAULT nextval('public.number_five_id_number_five_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gal1', 'type1', 'desc1', 900);
INSERT INTO public.galaxy VALUES (2, 'gal2', 'typ2', 'desc2', 800);
INSERT INTO public.galaxy VALUES (3, 'gal3', 'typ3', 'desc3', 890);
INSERT INTO public.galaxy VALUES (4, 'gal4', 'typ4', 'desc4', 852);
INSERT INTO public.galaxy VALUES (5, 'gal5', 'typ5', 'desc5', 782);
INSERT INTO public.galaxy VALUES (6, 'gal6', 'typ6', 'des6', 456);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 7896, 'desc1', 3, 985);
INSERT INTO public.moon VALUES (2, 'moon2', 7896, 'desc2', 2, 485);
INSERT INTO public.moon VALUES (3, 'moon3', 9651, 'des12', 1, 695);
INSERT INTO public.moon VALUES (4, 'moon4', 9651, 'des4', 4, 695);
INSERT INTO public.moon VALUES (5, 'moon5', 457, 'desc5', 5, 955);
INSERT INTO public.moon VALUES (6, 'moon6', 439, 'desc6', 6, 486);
INSERT INTO public.moon VALUES (7, 'moon7', 5951, 'des7', 1, 4785);
INSERT INTO public.moon VALUES (8, 'moon8', 44557, 'desc8', 8, 945);
INSERT INTO public.moon VALUES (9, 'moon9', 44239, 'desc9', 9, 4426);
INSERT INTO public.moon VALUES (10, 'moon10', 3291, 'des10', 11, 1285);
INSERT INTO public.moon VALUES (11, 'moon11', 9857, 'des11', 11, 9475);
INSERT INTO public.moon VALUES (12, 'moon12', 8139, 'desc12', 12, 34426);
INSERT INTO public.moon VALUES (13, 'moon13', 89291, 'des13', 1, 6985);
INSERT INTO public.moon VALUES (14, 'moon14', 97857, 'des14', 2, 94475);
INSERT INTO public.moon VALUES (15, 'moon15', 2339, 'desc12', 3, 34696);
INSERT INTO public.moon VALUES (16, 'moon16', 49291, 'des16', 4, 12985);
INSERT INTO public.moon VALUES (17, 'moon17', 36857, 'des17', 8, 93575);
INSERT INTO public.moon VALUES (18, 'moon18', 9639, 'desc18', 8, 34696);
INSERT INTO public.moon VALUES (19, 'moon19', 63291, 'des19', 9, 96985);
INSERT INTO public.moon VALUES (20, 'moon20', 6857, 'des20', 10, 3657);


--
-- Data for Name: number_five; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_five VALUES (1, 'name1', 1999);
INSERT INTO public.number_five VALUES (2, 'name2', 1998);
INSERT INTO public.number_five VALUES (3, 'name3', 1997);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pla1', 'platyp1', true, 'desc1', 456, 1, 894, false);
INSERT INTO public.planet VALUES (2, 'pla2', 'platyp2', true, 'desc2', 956, 2, 745, true);
INSERT INTO public.planet VALUES (3, 'pla3', 'platyp3', true, 'desc3', 8756, 3, 985, true);
INSERT INTO public.planet VALUES (4, 'pla4', 'platyp4', true, 'desc4', 8756, 4, 985, true);
INSERT INTO public.planet VALUES (5, 'pla5', 'platyp5', true, 'desc5', 8756, 5, 985, true);
INSERT INTO public.planet VALUES (6, 'pla6', 'platyp6', true, 'desc6', 1256, 6, 6548, true);
INSERT INTO public.planet VALUES (7, 'pla7', 'platyp7', false, 'desc7', 1256, 6, 895, true);
INSERT INTO public.planet VALUES (8, 'pla8', 'platyp8', false, 'desc8', 483, 1, 2465, true);
INSERT INTO public.planet VALUES (9, 'pla9', 'platyp9', false, 'desc9', 7483, 2, 2465, true);
INSERT INTO public.planet VALUES (10, 'pla10', 'platyp10', false, 'desc10', 8613, 3, 965, true);
INSERT INTO public.planet VALUES (11, 'pla11', 'platyp11', false, 'desc11', 5654, 4, 2365, false);
INSERT INTO public.planet VALUES (12, 'pla12', 'platyp12', false, 'desc12', 3654, 4, 5265, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'desc1', 1, 852);
INSERT INTO public.star VALUES (2, 'st2', 'desc2', 2, 782);
INSERT INTO public.star VALUES (3, 'st3', 'desc3', 3, 456);
INSERT INTO public.star VALUES (4, 'star4', 'desc1', 4, 852);
INSERT INTO public.star VALUES (5, 'st5', 'desc2', 5, 782);
INSERT INTO public.star VALUES (6, 'st6', 'desc3', 6, 456);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: number_five_id_number_five_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.number_five_id_number_five_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: star name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unq UNIQUE (name);


--
-- Name: number_five number_five_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_five
    ADD CONSTRAINT number_five_name_key UNIQUE (name);


--
-- Name: number_five number_five_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.number_five
    ADD CONSTRAINT number_five_pkey PRIMARY KEY (number_five_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (name);


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
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

