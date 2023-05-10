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
-- Name: asteroid_belt; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_belt (
    asteroid_belt_id integer NOT NULL,
    star_id integer,
    name character varying NOT NULL,
    distance_from_star integer,
    width numeric(10,2),
    contains_icy_objects boolean NOT NULL,
    species character varying
);


ALTER TABLE public.asteroid_belt OWNER TO freecodecamp;

--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_belt_asteroid_belt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_belt_asteroid_belt_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_belt_asteroid_belt_id_seq OWNED BY public.asteroid_belt.asteroid_belt_id;


--
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    star_id integer,
    name character varying NOT NULL,
    period integer,
    has_tail boolean NOT NULL,
    is_periodic boolean NOT NULL,
    description text,
    scary character varying
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size numeric(10,2),
    age integer,
    has_black_hole boolean NOT NULL,
    has_habitable_planets boolean NOT NULL,
    organism character varying
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
    planet_id integer,
    name character varying NOT NULL,
    mass numeric(10,2),
    distance_from_planet integer,
    is_geologically_active boolean NOT NULL,
    has_water boolean NOT NULL,
    organism character varying
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
    star_id integer,
    name character varying NOT NULL,
    mass numeric(10,2),
    distance_from_star integer,
    is_habitable boolean NOT NULL,
    has_atmosphere boolean NOT NULL,
    species character varying
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
    galaxy_id integer,
    name character varying NOT NULL,
    mass numeric(10,2),
    temperature integer,
    is_main_sequence boolean NOT NULL,
    has_planetary_system boolean NOT NULL,
    brightness character varying
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
-- Name: asteroid_belt asteroid_belt_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt ALTER COLUMN asteroid_belt_id SET DEFAULT nextval('public.asteroid_belt_asteroid_belt_id_seq'::regclass);


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: asteroid_belt; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_belt VALUES (2, 7, 'blahblah', 899, 0.89, true, NULL);
INSERT INTO public.asteroid_belt VALUES (3, 8, 'Proxima', 200, 23.22, true, NULL);
INSERT INTO public.asteroid_belt VALUES (4, 9, 'Messier', 345, 4.23, false, NULL);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 8, 'Malusi', 200, true, false, NULL, NULL);
INSERT INTO public.comet VALUES (2, 8, 'Victor', 202, true, false, NULL, NULL);
INSERT INTO public.comet VALUES (3, 9, 'Simphiwe', 210, true, false, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 1000000.00, 12000, true, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1400.00, 23000, true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier 82', 3070.00, 8, false, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 600.00, 200, false, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 5000.00, 2500, false, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 500.00, 1200, false, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 9, 'Moon', 0.73, 384, false, false, NULL);
INSERT INTO public.moon VALUES (3, 9, 'Phobos', 1.08, 9378, false, false, NULL);
INSERT INTO public.moon VALUES (4, 12, 'Whirlpool Galaxy Planet', 0.05, 15, false, false, NULL);
INSERT INTO public.moon VALUES (5, 12, 'Whirlpool', 0.02, 20, false, false, NULL);
INSERT INTO public.moon VALUES (6, 13, 'Pinwheel Galaxy Planet', 1.05, 30, false, false, NULL);
INSERT INTO public.moon VALUES (7, 13, 'Pinwheel Galaxy Planet', 0.45, 35, false, false, NULL);
INSERT INTO public.moon VALUES (8, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (9, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (10, 10, 'TANYA', 90.00, 900, false, false, NULL);
INSERT INTO public.moon VALUES (11, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (12, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (13, 10, 'TANYA', 90.00, 900, false, false, NULL);
INSERT INTO public.moon VALUES (14, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (15, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (16, 10, 'TANYA', 90.00, 900, false, false, NULL);
INSERT INTO public.moon VALUES (17, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (18, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (19, 10, 'TANYA', 90.00, 900, false, false, NULL);
INSERT INTO public.moon VALUES (20, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (21, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (22, 10, 'TANYA', 90.00, 900, false, false, NULL);
INSERT INTO public.moon VALUES (23, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (24, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (25, 10, 'TANYA', 90.00, 900, false, false, NULL);
INSERT INTO public.moon VALUES (26, 9, 'hgddw', 12.23, 456, true, false, NULL);
INSERT INTO public.moon VALUES (27, 10, 'MYblah', 100.12, 234, false, false, NULL);
INSERT INTO public.moon VALUES (28, 10, 'TANYA', 90.00, 900, false, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (9, 7, 'Earth', 5.97, 149, true, true, NULL);
INSERT INTO public.planet VALUES (10, 7, 'Mars', 0.11, 227, false, false, NULL);
INSERT INTO public.planet VALUES (11, 8, 'Proxima Centauri b', 1.17, 15, true, true, NULL);
INSERT INTO public.planet VALUES (12, 9, 'Messier 82 Planet', 0.45, 5, false, false, NULL);
INSERT INTO public.planet VALUES (13, 10, 'Whirlpool galaxy', 3.00, 150, false, true, NULL);
INSERT INTO public.planet VALUES (14, 11, 'Pinwheel Galaxy Planet', 1.20, 60, true, true, NULL);
INSERT INTO public.planet VALUES (15, 7, 'jhjgb', 23.34, 334, true, false, NULL);
INSERT INTO public.planet VALUES (16, 8, 'hgyugyu', 76.32, 32, true, true, NULL);
INSERT INTO public.planet VALUES (17, 7, 'jhjgb', 23.34, 334, true, false, NULL);
INSERT INTO public.planet VALUES (18, 8, 'hgyugyu', 76.32, 32, true, false, NULL);
INSERT INTO public.planet VALUES (19, 7, 'jhjgb', 23.34, 334, true, false, NULL);
INSERT INTO public.planet VALUES (20, 8, 'hgyugyu', 76.32, 32, true, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 1, 'Sun', 1.99, 5778, true, true, NULL);
INSERT INTO public.star VALUES (8, 1, 'Proxima Centauri', 0.12, 3042, false, true, NULL);
INSERT INTO public.star VALUES (9, 2, 'Andromeda Galaxy Star 1', 30.00, 28000, true, true, NULL);
INSERT INTO public.star VALUES (10, 3, 'Messier 82 Star 1', 20.00, 35000, false, false, NULL);
INSERT INTO public.star VALUES (11, 4, 'Whirlpool Galaxy Star 1', 30.00, 28000, true, true, NULL);
INSERT INTO public.star VALUES (12, 5, 'Pinwheel Galaxy Star 1', 2.00, 7000, true, true, NULL);


--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_belt_asteroid_belt_id_seq', 4, true);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: asteroid_belt asteroid_belt_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_pkey PRIMARY KEY (asteroid_belt_id);


--
-- Name: asteroid_belt asteroid_belt_species_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_species_key UNIQUE (species);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: comet comet_scary_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_scary_key UNIQUE (scary);


--
-- Name: galaxy galaxy_organism_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_organism_key UNIQUE (organism);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_organism_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_organism_key UNIQUE (organism);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_species_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_species_key UNIQUE (species);


--
-- Name: star star_brightness_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_brightness_key UNIQUE (brightness);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid_belt asteroid_belt_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: comet comet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

