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
    name character varying(255) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_type character varying(50)
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
    name character varying(255) NOT NULL,
    has_life boolean,
    planet_id integer,
    has_atmosphere boolean,
    moon_type character varying(50)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_feature; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_feature (
    moon_feature_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    moon_id integer
);


ALTER TABLE public.moon_feature OWNER TO freecodecamp;

--
-- Name: moon_feature_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_feature_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_feature_feature_id_seq OWNER TO freecodecamp;

--
-- Name: moon_feature_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_feature_feature_id_seq OWNED BY public.moon_feature.moon_feature_id;


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
    name character varying(255) NOT NULL,
    distance_from_earth numeric,
    has_atmosphere boolean,
    star_id integer,
    rings boolean,
    planet_type character varying(50)
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
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    galaxy_id integer,
    luminosity integer,
    temperature integer
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
-- Name: moon_feature moon_feature_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature ALTER COLUMN moon_feature_id SET DEFAULT nextval('public.moon_feature_feature_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy to the Milky Way', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical galaxy with a supermassive black hole', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Classic spiral galaxy', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Galaxy with a bright nucleus and a large central bulge', false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Titan', false, 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', false, 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Triton', false, 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Charon', false, 9, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Luna', false, 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Titan Moon', false, 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Europa Moon', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Callisto Moon', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Oberon Moon', false, 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Ganymede Moon', false, 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Rhea Moon', false, 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Phoebe Moon', false, 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Triton Moon', false, 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Dione Moon', false, 5, NULL, NULL);


--
-- Data for Name: moon_feature; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_feature VALUES (1, 'Crater', 'Impact crater on the moon', 1);
INSERT INTO public.moon_feature VALUES (2, 'Mountain', 'Mountainous region on the moon', 2);
INSERT INTO public.moon_feature VALUES (3, 'Valley', 'Valley on the moon', 3);
INSERT INTO public.moon_feature VALUES (4, 'Ridge', 'Mountain ridge on the moon', 4);
INSERT INTO public.moon_feature VALUES (5, 'Basin', 'Large basin on the moon', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 54.6, false, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 25, true, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 484, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 886, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Neptune', 2793, true, 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Mercury', 36, false, 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', 1784, true, 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 3670, false, 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 4.4, false, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 20.3, true, 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 490, true, 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 6000, false, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8000, false, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 6000, false, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sirius', 200, true, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Antares', 12000, false, 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_feature_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_feature_feature_id_seq', 5, true);


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
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_feature moon_feature_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature
    ADD CONSTRAINT moon_feature_name_key UNIQUE (name);


--
-- Name: moon_feature moon_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature
    ADD CONSTRAINT moon_feature_pkey PRIMARY KEY (moon_feature_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon_feature moon_feature_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_feature
    ADD CONSTRAINT moon_feature_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

