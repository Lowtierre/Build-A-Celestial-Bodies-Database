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
    name character varying(20) NOT NULL,
    age numeric,
    shape character varying(20),
    black_hole_centered boolean
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
    age numeric,
    radius integer,
    planet_id integer
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
    age numeric,
    description text,
    inhabithed boolean,
    star_id integer
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
    age numeric,
    radius integer,
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
-- Name: traveller; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.traveller (
    traveller_id integer NOT NULL,
    name character varying(20) NOT NULL,
    gender boolean,
    planet_id integer
);


ALTER TABLE public.traveller OWNER TO freecodecamp;

--
-- Name: traveller_traveller_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.traveller_traveller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traveller_traveller_id_seq OWNER TO freecodecamp;

--
-- Name: traveller_traveller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.traveller_traveller_id_seq OWNED BY public.traveller.traveller_id;


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
-- Name: traveller traveller_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveller ALTER COLUMN traveller_id SET DEFAULT nextval('public.traveller_traveller_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Pilsner', 20, 'spheric', true);
INSERT INTO public.galaxy VALUES (2, 'Lager', 14, 'romboid', false);
INSERT INTO public.galaxy VALUES (3, 'Stout', 12, 'spheric', false);
INSERT INTO public.galaxy VALUES (4, 'Pale ale', 30, 'spiral', true);
INSERT INTO public.galaxy VALUES (5, 'Ale', 18, 'toroid', false);
INSERT INTO public.galaxy VALUES (6, 'Wheat', 21, 'spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'creed', 1, NULL, 7);
INSERT INTO public.moon VALUES (2, 'crede', 1, NULL, 7);
INSERT INTO public.moon VALUES (3, 'dreec', 2, NULL, 7);
INSERT INTO public.moon VALUES (4, 'derec', 2, NULL, 1);
INSERT INTO public.moon VALUES (5, 'reced', 1, NULL, 6);
INSERT INTO public.moon VALUES (6, 'cdeer', 1, NULL, 7);
INSERT INTO public.moon VALUES (7, 'redec', 2, NULL, 10);
INSERT INTO public.moon VALUES (8, 'reedc', 1, NULL, 1);
INSERT INTO public.moon VALUES (9, 'ederc', 2, NULL, 1);
INSERT INTO public.moon VALUES (10, 'erced', 2, NULL, 2);
INSERT INTO public.moon VALUES (11, 'cered', 1, NULL, 7);
INSERT INTO public.moon VALUES (12, 'derce', 2, NULL, 1);
INSERT INTO public.moon VALUES (13, 'drece', 1, NULL, 3);
INSERT INTO public.moon VALUES (14, 'eedre', 4, NULL, 1);
INSERT INTO public.moon VALUES (15, 'rceed', 1, NULL, 4);
INSERT INTO public.moon VALUES (16, 'ecerd', 1, NULL, 11);
INSERT INTO public.moon VALUES (17, 'deerc', 2, NULL, 11);
INSERT INTO public.moon VALUES (18, 'reecd', 2, NULL, 10);
INSERT INTO public.moon VALUES (19, 'decre', 2, NULL, 7);
INSERT INTO public.moon VALUES (20, 'reecd', 3, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'abba', 2, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'babba', 2, NULL, true, 2);
INSERT INTO public.planet VALUES (3, 'abbo', 3, NULL, false, 2);
INSERT INTO public.planet VALUES (4, 'babbo', 2, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'obbo', 3, NULL, false, 3);
INSERT INTO public.planet VALUES (6, 'ebbe', 3, NULL, false, 3);
INSERT INTO public.planet VALUES (7, 'ubbi', 2, NULL, true, 4);
INSERT INTO public.planet VALUES (8, 'ibu', 2, NULL, false, 4);
INSERT INTO public.planet VALUES (9, 'beba', 3, NULL, false, 5);
INSERT INTO public.planet VALUES (10, 'bebo', 4, NULL, false, 5);
INSERT INTO public.planet VALUES (11, 'babi', 2, NULL, true, 6);
INSERT INTO public.planet VALUES (12, 'beeb', 3, NULL, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Urquell', 3, 4, 1);
INSERT INTO public.star VALUES (2, 'Keller', 5, 5, 2);
INSERT INTO public.star VALUES (3, 'Guinness', 1, 5, 3);
INSERT INTO public.star VALUES (4, 'Punk', 4, 3, 4);
INSERT INTO public.star VALUES (5, 'Pfeffer', 2, 3, 5);
INSERT INTO public.star VALUES (6, 'Edelweiss', 5, 2, 6);


--
-- Data for Name: traveller; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.traveller VALUES (1, 'Giorgio Quarzo', true, 7);
INSERT INTO public.traveller VALUES (2, 'Stefano Rapone', true, 11);
INSERT INTO public.traveller VALUES (3, 'Lorenzo Terreni', false, 1);
INSERT INTO public.traveller VALUES (4, 'Valerio Lundini', true, 1);


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
-- Name: traveller_traveller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.traveller_traveller_id_seq', 4, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: traveller traveller_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveller
    ADD CONSTRAINT traveller_pkey PRIMARY KEY (traveller_id);


--
-- Name: traveller traveller_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveller
    ADD CONSTRAINT traveller_unique UNIQUE (traveller_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: traveller traveller_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveller
    ADD CONSTRAINT traveller_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

