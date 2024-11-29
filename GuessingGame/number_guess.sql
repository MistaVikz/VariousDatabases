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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Luke', 3, 1);
INSERT INTO public.users VALUES (2, 'Jake', 1, 3);
INSERT INTO public.users VALUES (3, 'Tony', 2, 1);
INSERT INTO public.users VALUES (4, 'Ace', 1, 10);
INSERT INTO public.users VALUES (23, 'user_1680180969813', 2, 75);
INSERT INTO public.users VALUES (6, 'user_1680180354261', 2, 13);
INSERT INTO public.users VALUES (5, 'user_1680180354262', 4, 117);
INSERT INTO public.users VALUES (22, 'user_1680180969814', 4, 139);
INSERT INTO public.users VALUES (8, 'user_1680180377074', 2, 99);
INSERT INTO public.users VALUES (7, 'user_1680180377075', 4, 208);
INSERT INTO public.users VALUES (25, 'user_1680180982432', 2, 795);
INSERT INTO public.users VALUES (10, 'user_1680180419380', 2, 31);
INSERT INTO public.users VALUES (9, 'user_1680180419381', 5, 46);
INSERT INTO public.users VALUES (24, 'user_1680180982433', 5, 104);
INSERT INTO public.users VALUES (12, 'user_1680180447348', 2, 391);
INSERT INTO public.users VALUES (11, 'user_1680180447349', 4, 394);
INSERT INTO public.users VALUES (27, 'user_1680181258669', 2, 740);
INSERT INTO public.users VALUES (14, 'user_1680180482270', 1, 86);
INSERT INTO public.users VALUES (13, 'user_1680180482271', 5, 134);
INSERT INTO public.users VALUES (15, 'Janice', 1, 10);
INSERT INTO public.users VALUES (26, 'user_1680181258670', 4, 286);
INSERT INTO public.users VALUES (17, 'user_1680180681123', 2, 868);
INSERT INTO public.users VALUES (16, 'user_1680180681124', 4, 35);
INSERT INTO public.users VALUES (29, 'user_1680181268971', 2, 250);
INSERT INTO public.users VALUES (19, 'user_1680180745775', 2, 147);
INSERT INTO public.users VALUES (18, 'user_1680180745776', 5, 67);
INSERT INTO public.users VALUES (28, 'user_1680181268972', 5, 289);
INSERT INTO public.users VALUES (21, 'user_1680180885636', 2, 941);
INSERT INTO public.users VALUES (20, 'user_1680180885637', 5, 324);
INSERT INTO public.users VALUES (31, 'user_1680181280345', 2, 149);
INSERT INTO public.users VALUES (30, 'user_1680181280346', 4, 251);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 31, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--
