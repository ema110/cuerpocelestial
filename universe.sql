--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(20,2),
    discovered boolean,
    is_active boolean,
    type character varying(255)
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
    description text NOT NULL,
    age_in_millions_of_years integer,
    discovered boolean,
    is_active boolean,
    type character varying(255),
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
    name character varying(255) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    discovered boolean,
    is_active boolean,
    type character varying(255),
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
-- Name: sistema_solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sistema_solar (
    sistema_solar_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255)
);


ALTER TABLE public.sistema_solar OWNER TO freecodecamp;

--
-- Name: sistema_solar_sistema_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sistema_solar_sistema_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sistema_solar_sistema_solar_id_seq OWNER TO freecodecamp;

--
-- Name: sistema_solar_sistema_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sistema_solar_sistema_solar_id_seq OWNED BY public.sistema_solar.sistema_solar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    discovered boolean,
    is_active boolean,
    type character varying(255),
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
-- Name: sistema_solar sistema_solar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sistema_solar ALTER COLUMN sistema_solar_id SET DEFAULT nextval('public.sistema_solar_sistema_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'es la mas cercana a la tierra', 19, 15.20, true, true, 'espiral');
INSERT INTO public.galaxy VALUES (2, 'via lactea', 'nuestra galaxia', 18, 1.00, true, true, 'circular');
INSERT INTO public.galaxy VALUES (3, 'via lactea', 'nuestra galaxia', 18, 1.00, true, true, 'redonda');
INSERT INTO public.galaxy VALUES (4, 'galaxia sombrero', 'nuestra galaxia', 18, 1.00, true, true, 'sombrero');
INSERT INTO public.galaxy VALUES (5, 'galaxia triangulo', 'nuestra galaxia', 18, 1.00, true, true, 'triangulo');
INSERT INTO public.galaxy VALUES (6, 'galaxia rectangulo', 'conocida por su forma', 16, 2.00, true, true, 'rectangulo');
INSERT INTO public.galaxy VALUES (7, 'galaxia rueda de carro', 'galaxia angular', 8, 16.00, true, true, 'car');
INSERT INTO public.galaxy VALUES (8, 'galaxia del remolino', 'galaxia angular', 8, 16.00, true, true, 'rem');
INSERT INTO public.galaxy VALUES (9, 'galaxia de bode', 'galaxia angular', 8, 16.00, true, true, 'bod');
INSERT INTO public.galaxy VALUES (10, 'galaxia de la escultora', 'galaxia angular', 8, 16.00, true, true, 'esc');
INSERT INTO public.galaxy VALUES (11, 'galaxia de la cigarro', 'galaxia angular', 8, 16.00, true, true, 'cig');
INSERT INTO public.galaxy VALUES (12, 'galaxia de la medusa', 'galaxia angular', 8, 16.00, true, true, 'med');
INSERT INTO public.galaxy VALUES (13, 'galaxia de la mariposa', 'galaxia angular', 8, 16.00, true, true, 'mar');
INSERT INTO public.galaxy VALUES (14, 'galaxia del girasol', 'galaxia angular', 8, 16.00, true, true, 'gir');
INSERT INTO public.galaxy VALUES (15, 'galaxia de la tortuga', 'galaxia angular', 8, 16.00, true, true, 'tor');
INSERT INTO public.galaxy VALUES (16, 'galaxia de la rosa', 'galaxia angular', 8, 16.00, true, true, 'ros');
INSERT INTO public.galaxy VALUES (17, 'galaxia del molinete', 'galaxia angular', 8, 16.00, true, true, 'mol');
INSERT INTO public.galaxy VALUES (18, 'galaxia de magallanes', 'galaxia angular', 8, 16.00, true, true, 'mag');
INSERT INTO public.galaxy VALUES (19, 'galaxia de circinus', 'galaxia angular', 8, 16.00, true, true, 'cir');
INSERT INTO public.galaxy VALUES (20, 'galaxia de mayall', 'galaxia angular', 8, 16.00, true, true, 'may');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 'es un satelite de la tierra', 20, true, true, 'esferica', 1);
INSERT INTO public.moon VALUES (2, 'deimos', 'satelite de otra tierra', 10, true, true, 'dei', 2);
INSERT INTO public.moon VALUES (3, 'fobos', 'satelite de otra tierra', 10, true, true, 'fob', 3);
INSERT INTO public.moon VALUES (4, 'ganimedes', 'satelite de otra tierra', 10, true, true, 'gan', 4);
INSERT INTO public.moon VALUES (5, 'titan', 'satelite de otra tierra', 10, true, true, 'tit', 5);
INSERT INTO public.moon VALUES (6, 'encelado', 'satelite de otra tierra', 10, true, true, 'enc', 6);
INSERT INTO public.moon VALUES (7, 'triton', 'satelite de otra tierra', 10, true, true, 'tri', 7);
INSERT INTO public.moon VALUES (8, 'charon', 'satelite de otra tierra', 10, true, true, 'cha', 8);
INSERT INTO public.moon VALUES (9, 'disnomia', 'satelite de otra tierra', 10, true, true, 'dis', 9);
INSERT INTO public.moon VALUES (10, 'lobo', 'satelite de otra tierra', 10, true, true, 'lob', 10);
INSERT INTO public.moon VALUES (11, 'trueno', 'satelite de otra tierra', 10, true, true, 'tru', 11);
INSERT INTO public.moon VALUES (12, 'rosa', 'satelite de otra tierra', 10, true, true, 'ros', 12);
INSERT INTO public.moon VALUES (13, 'lombriz', 'satelite de otra tierra', 10, true, true, 'lom', 13);
INSERT INTO public.moon VALUES (14, 'nieve', 'satelite de otra tierra', 10, true, true, 'nie', 14);
INSERT INTO public.moon VALUES (15, 'castor', 'satelite de otra tierra', 10, true, true, 'cas', 15);
INSERT INTO public.moon VALUES (16, 'fria', 'satelite de otra tierra', 10, true, true, 'fri', 16);
INSERT INTO public.moon VALUES (17, 'cazador', 'satelite de otra tierra', 10, true, true, 'caz', 17);
INSERT INTO public.moon VALUES (18, 'cosecha', 'satelite de otra tierra', 10, true, true, 'cos', 18);
INSERT INTO public.moon VALUES (19, 'gusano', 'satelite de otra tierra', 10, true, true, 'gus', 19);
INSERT INTO public.moon VALUES (20, 'flor', 'satelite de otra tierra', 10, true, true, 'flo', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'es nuestro planeta', 15, true, true, 'redonda', 1);
INSERT INTO public.planet VALUES (2, 'mercurio', 'de la via lactea', 5, true, true, 'mer', 2);
INSERT INTO public.planet VALUES (3, 'venus', 'de la via lactea', 6, true, true, 'ven', 3);
INSERT INTO public.planet VALUES (4, 'marte', 'de la via lactea', 12, true, true, 'mar', 4);
INSERT INTO public.planet VALUES (5, 'jupiter', 'de la via lactea', 13, true, true, 'jup', 5);
INSERT INTO public.planet VALUES (6, 'saturno', 'de la via lactea', 19, true, true, 'sat', 6);
INSERT INTO public.planet VALUES (7, 'altair', 'de otra via lactea', 20, true, true, 'alt', 7);
INSERT INTO public.planet VALUES (8, 'deneb', 'de otra via lactea', 20, true, true, 'den', 8);
INSERT INTO public.planet VALUES (9, 'polaris', 'de otra via lactea', 20, true, true, 'pol', 9);
INSERT INTO public.planet VALUES (10, 'capella', 'de otra via lactea', 20, true, true, 'cap', 10);
INSERT INTO public.planet VALUES (11, 'arcturus', 'de otra via lactea', 20, true, true, 'arc', 11);
INSERT INTO public.planet VALUES (12, 'spica', 'de otra via lactea', 20, true, true, 'spi', 12);
INSERT INTO public.planet VALUES (13, 'fomalhaut', 'de otra via lactea', 20, true, true, 'fom', 13);
INSERT INTO public.planet VALUES (14, 'acrux', 'de otra via lactea', 20, true, true, 'acr', 14);
INSERT INTO public.planet VALUES (15, 'arturo', 'de otra via lactea', 20, true, true, 'art', 15);
INSERT INTO public.planet VALUES (16, 'procion', 'de otra via lactea', 20, true, true, 'pro', 16);
INSERT INTO public.planet VALUES (17, 'pollux', 'de otra via lactea', 20, true, true, 'poll', 17);
INSERT INTO public.planet VALUES (18, 'regulus', 'de otra via lactea', 20, true, true, 'reg', 18);
INSERT INTO public.planet VALUES (19, 'shaula', 'de otra via lactea', 20, true, true, 'sha', 19);
INSERT INTO public.planet VALUES (20, 'molinete', 'de otra via lactea', 20, true, true, 'mol', 20);


--
-- Data for Name: sistema_solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sistema_solar VALUES (1, 'saturno', 'esferica');
INSERT INTO public.sistema_solar VALUES (2, 'neptuno', 'redonda');
INSERT INTO public.sistema_solar VALUES (3, 'urano', 'circular');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 'se conoce como Sirius', 10, true, true, 'a1v', 1);
INSERT INTO public.star VALUES (2, 'sol', 'centro de nuestro sistema solar', 15, true, true, 'a2v', 2);
INSERT INTO public.star VALUES (3, 'betelgeuse', 'de la constelacion de orion', 13, true, true, 'a3v', 3);
INSERT INTO public.star VALUES (4, 'rigel', 'tambien de orion', 11, true, true, 'a4v', 4);
INSERT INTO public.star VALUES (5, 'vega', 'de la constelacion lyra', 9, true, true, 'a5v', 5);
INSERT INTO public.star VALUES (6, 'aldebaran', 'de la constelacion tauro', 6, true, true, 'a6v', 6);
INSERT INTO public.star VALUES (7, 'canopus', 'carina constelacion', 16, true, true, 'can', 7);
INSERT INTO public.star VALUES (8, 'altair', 'carina constelacion', 16, true, true, 'alt', 8);
INSERT INTO public.star VALUES (9, 'deneb', 'carina constelacion', 16, true, true, 'den', 9);
INSERT INTO public.star VALUES (10, 'polaris', 'carina constelacion', 16, true, true, 'pol', 10);
INSERT INTO public.star VALUES (11, 'capella', 'carina constelacion', 16, true, true, 'cap', 11);
INSERT INTO public.star VALUES (12, 'arcturus', 'estrella', 16, true, true, 'arc', 12);
INSERT INTO public.star VALUES (13, 'spica', 'estrella', 16, true, true, 'spi', 13);
INSERT INTO public.star VALUES (14, 'fomalhaut', 'estrella', 16, true, true, 'fom', 14);
INSERT INTO public.star VALUES (15, 'acrux', 'mas brillantes', 16, true, true, 'acr', 15);
INSERT INTO public.star VALUES (16, 'arturo', 'mas brillantes', 16, true, true, 'art', 16);
INSERT INTO public.star VALUES (17, 'procion', 'mas brillantes', 16, true, true, 'pro', 17);
INSERT INTO public.star VALUES (18, 'pollux', 'mas brillantes', 16, true, true, 'poll', 18);
INSERT INTO public.star VALUES (19, 'regulus', 'mas brillantes', 16, true, true, 'reg', 19);
INSERT INTO public.star VALUES (20, 'shaula', 'mas brillantes', 16, true, true, 'sha', 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: sistema_solar_sistema_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sistema_solar_sistema_solar_id_seq', 1, false);


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
-- Name: galaxy galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_key UNIQUE (type);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_type_key UNIQUE (type);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_type_key UNIQUE (type);


--
-- Name: sistema_solar sistema_solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sistema_solar
    ADD CONSTRAINT sistema_solar_pkey PRIMARY KEY (sistema_solar_id);


--
-- Name: sistema_solar sistema_solar_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sistema_solar
    ADD CONSTRAINT sistema_solar_type_key UNIQUE (type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_type_key UNIQUE (type);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

