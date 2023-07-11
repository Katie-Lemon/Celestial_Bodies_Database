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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(20) NOT NULL,
    meaning text,
    number_of_stars integer,
    star_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_visible_to_naked_eye boolean NOT NULL,
    constellation_id integer NOT NULL
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
    diameter_in_km integer,
    greek_mythology text,
    planet_id integer NOT NULL
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
    type text,
    orbital_period_in_years numeric(5,2),
    has_moon boolean,
    star_id integer NOT NULL
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
    distance_in_light_years numeric(5,2),
    approval_date date,
    galaxy_id integer NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aquarius', 'Water-bearer', 13, 1);
INSERT INTO public.constellation VALUES (2, 'Aries', 'Ram', 4, 2);
INSERT INTO public.constellation VALUES (3, 'Capricornus', 'Sea goat', 23, 3);
INSERT INTO public.constellation VALUES (4, 'Leo', 'Lion', 14, 4);
INSERT INTO public.constellation VALUES (5, 'Taurus', 'Bull', 19, 10);
INSERT INTO public.constellation VALUES (6, 'Virgo', 'Virgin or maiden', 15, 12);
INSERT INTO public.constellation VALUES (7, 'Phoenix', 'Phoenix', 4, 8);
INSERT INTO public.constellation VALUES (8, 'Pegasus', 'Winged horse', 15, 7);
INSERT INTO public.constellation VALUES (9, 'Ursa Major', 'Greater she-bear', 7, 11);
INSERT INTO public.constellation VALUES (10, 'Orion', 'Hunter', 7, 6);
INSERT INTO public.constellation VALUES (11, 'Sagittarius', 'Archer', 17, 9);
INSERT INTO public.constellation VALUES (12, 'Ophiuchus', 'Serpent bearer', 12, 5);
INSERT INTO public.constellation VALUES (13, 'Coma Berenices', 'hair of Berenices', 40, 13);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Appears as a milky band of light in the sky', true, 11);
INSERT INTO public.galaxy VALUES (2, 'Sombrero Galaxy', 'Resembles a sombrero', false, 6);
INSERT INTO public.galaxy VALUES (3, 'Mice Galaxies', 'Two galaxies with long tails', false, 13);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel Galaxy', 'A face-on spiral galaxy resembling a pinwheel', false, 9);
INSERT INTO public.galaxy VALUES (5, 'Needle Galaxy', 'Named due to its narrow appearance', false, 13);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 'A set of galaxies resembling butterfly wings', false, 6);
INSERT INTO public.galaxy VALUES (7, 'Little Sombrero Galaxy', 'Resembles a sombrero but is smaller than the Sombrero Galaxy', false, 8);
INSERT INTO public.galaxy VALUES (8, 'Black Eye Galaxy', 'Has a dark band of absorbing dust partially in front of its bright nucleus', false, 13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3476, 'Selene was a goddess of the moon', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 23, 'God of fear and terror', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 13, 'God of dread', 4);
INSERT INTO public.moon VALUES (4, 'Io', 3630, 'Princess seduced by Zeus and turned into a heifer', 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5262, 'Trojan prince who was abducted to serve as the cup-bearer of Zeus', 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 4800, 'A huntress companion of Artemis who was turned into a bear by Hera', 5);
INSERT INTO public.moon VALUES (7, 'Pan', 20, 'God of sheppards, hunters and the wilderness', 5);
INSERT INTO public.moon VALUES (8, 'Atlas', 40, 'A Titan condemned to hold up the heavens for eternity', 5);
INSERT INTO public.moon VALUES (9, 'Prometheus', 80, 'A Titan who stole fire from the gods and gave it to humankind', 5);
INSERT INTO public.moon VALUES (10, 'Titan', 5150, 'Immortal deities who ruled the cosmos before the Olympians', 6);
INSERT INTO public.moon VALUES (11, 'Phoebe', 220, 'A Titaness associated with prophecy', 6);
INSERT INTO public.moon VALUES (12, 'Oberon', 1550, 'SHAKESPEARE', 7);
INSERT INTO public.moon VALUES (13, 'Triton', 2720, 'God of the sea and son of Poseidon', 8);
INSERT INTO public.moon VALUES (14, 'Charon', 1200, 'The ferryman of the dead across the river Styx', 8);
INSERT INTO public.moon VALUES (15, 'Styx', 20, 'The river that must be crossed to reach Hades', 8);
INSERT INTO public.moon VALUES (16, 'Kerberos', 28, 'Cerberus the many headed guard dog of the underworld', 9);
INSERT INTO public.moon VALUES (17, 'Hydra', 61, 'A gigantic water-snake monster with nine heads', 9);
INSERT INTO public.moon VALUES (18, 'Dysnomea', 684, 'Spirit of lawlessness', 10);
INSERT INTO public.moon VALUES (19, 'MK2', 160, NULL, 11);
INSERT INTO public.moon VALUES (20, 'Namaka', 200, 'HAWAIIAN', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Major', 0.24, false, 12);
INSERT INTO public.planet VALUES (2, 'Venus', 'Major', 0.62, false, 4);
INSERT INTO public.planet VALUES (3, 'Earth', 'Major', 1.00, true, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 'Major', 1.88, true, 10);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Major', 11.86, true, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Major', 29.45, true, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Major', 84.02, true, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Major', 164.79, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf', 247.90, true, 9);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf', 559.00, true, 8);
INSERT INTO public.planet VALUES (11, 'Makemake', 'Dwarf', 306.20, true, 13);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Dwarf', 283.80, true, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sadalsuud', 621.00, '2016-08-21', 1);
INSERT INTO public.star VALUES (2, 'Hamal', 66.00, '2016-07-20', 1);
INSERT INTO public.star VALUES (3, 'Deneb Algedi', 39.00, '2017-02-01', 1);
INSERT INTO public.star VALUES (4, 'Regulus', 77.00, '2016-06-30', 1);
INSERT INTO public.star VALUES (5, 'Rasalhague', 48.60, '2016-07-20', 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 642.50, '2016-06-30', 1);
INSERT INTO public.star VALUES (7, 'Enif', 688.20, '2016-07-20', 1);
INSERT INTO public.star VALUES (8, 'Ankaa', 84.80, '2016-07-20', 1);
INSERT INTO public.star VALUES (9, 'Kaus Australis', 143.20, '2016-07-20', 1);
INSERT INTO public.star VALUES (10, 'Aldebaran', 65.23, '2016-06-30', 1);
INSERT INTO public.star VALUES (11, 'Big Dipper', 80.00, NULL, 1);
INSERT INTO public.star VALUES (12, 'Spica', 260.90, '2016-06-30', 1);
INSERT INTO public.star VALUES (13, 'Beta Comae Berenices', 30.00, NULL, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 13, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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