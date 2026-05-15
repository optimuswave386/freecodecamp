--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(60) NOT NULL,
    has_life integer,
    is_spherical integer,
    age_in_millions_of_years numeric(4,1),
    is_habitable boolean,
    has_water boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_spherical integer,
    has_life integer,
    age_in_millions_of_years numeric(4,1),
    is_habitable boolean,
    has_water boolean,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life integer,
    is_spherical integer,
    age_in_millions_of_years numeric(4,1),
    has_water boolean,
    is_habitable boolean,
    star_id integer
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
-- Name: resources; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.resources (
    resources_id integer NOT NULL,
    description text NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.resources OWNER TO freecodecamp;

--
-- Name: resources_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.resources_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_resource_id_seq OWNER TO freecodecamp;

--
-- Name: resources_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.resources_resource_id_seq OWNED BY public.resources.resources_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_spherical integer,
    has_life integer,
    age_in_millions_of_years numeric(4,1),
    has_water boolean,
    is_habitable boolean,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: resources resources_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resources ALTER COLUMN resources_id SET DEFAULT nextval('public.resources_resource_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'ng 123', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'ng 345', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'ng 678', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lo', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'europa', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'titan', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Luna', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Selena', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Artemis', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'Diana', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Phoebe', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Cynthia', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Ayla', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Chandra', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Mahina', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Neoma', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Calisto', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Rhea', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Miranda', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'Charon', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Elara', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Tsuki', NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Neptune', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Pluto', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Ceres', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Eris', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Haumea', NULL, NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.resources VALUES (1, 'Essential for life on Earth', 'water');
INSERT INTO public.resources VALUES (2, 'Essential for life on Earth', 'air');
INSERT INTO public.resources VALUES (3, 'Artificially made on Earth', 'plastic');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'sun', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'sirius', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'vega', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'Polaris', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (7, 'Rigel', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (8, 'Canopus', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: resources_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.resources_resource_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


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
-- Name: resources resources_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_name_key UNIQUE (name);


--
-- Name: resources resources_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (resources_id);


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

