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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 143, 142);
INSERT INTO public.games VALUES (2, 1, 455, 454);
INSERT INTO public.games VALUES (3, 2, 678, 677);
INSERT INTO public.games VALUES (4, 2, 505, 504);
INSERT INTO public.games VALUES (5, 1, 558, 555);
INSERT INTO public.games VALUES (6, 1, 261, 259);
INSERT INTO public.games VALUES (7, 1, 142, 141);
INSERT INTO public.games VALUES (8, 4, 844, 843);
INSERT INTO public.games VALUES (9, 4, 507, 506);
INSERT INTO public.games VALUES (10, 5, 509, 508);
INSERT INTO public.games VALUES (11, 5, 356, 355);
INSERT INTO public.games VALUES (12, 4, 835, 832);
INSERT INTO public.games VALUES (13, 4, 581, 579);
INSERT INTO public.games VALUES (14, 4, 161, 160);
INSERT INTO public.games VALUES (15, 6, 480, 479);
INSERT INTO public.games VALUES (16, 6, 974, 973);
INSERT INTO public.games VALUES (17, 7, 640, 639);
INSERT INTO public.games VALUES (18, 7, 525, 524);
INSERT INTO public.games VALUES (19, 6, 376, 373);
INSERT INTO public.games VALUES (20, 6, 197, 195);
INSERT INTO public.games VALUES (21, 6, 909, 908);
INSERT INTO public.games VALUES (22, 3, 14, 30);
INSERT INTO public.games VALUES (23, 8, 833, 832);
INSERT INTO public.games VALUES (24, 8, 102, 101);
INSERT INTO public.games VALUES (25, 9, 989, 988);
INSERT INTO public.games VALUES (26, 9, 903, 902);
INSERT INTO public.games VALUES (27, 8, 36, 33);
INSERT INTO public.games VALUES (28, 8, 226, 224);
INSERT INTO public.games VALUES (29, 8, 51, 50);
INSERT INTO public.games VALUES (30, 10, 895, 894);
INSERT INTO public.games VALUES (31, 10, 767, 766);
INSERT INTO public.games VALUES (32, 11, 334, 333);
INSERT INTO public.games VALUES (33, 11, 541, 540);
INSERT INTO public.games VALUES (34, 10, 135, 132);
INSERT INTO public.games VALUES (35, 10, 372, 370);
INSERT INTO public.games VALUES (36, 10, 4, 3);
INSERT INTO public.games VALUES (37, 13, 906, 905);
INSERT INTO public.games VALUES (38, 13, 889, 888);
INSERT INTO public.games VALUES (39, 14, 161, 160);
INSERT INTO public.games VALUES (40, 14, 930, 929);
INSERT INTO public.games VALUES (41, 13, 2, 1000);
INSERT INTO public.games VALUES (42, 13, 881, 879);
INSERT INTO public.games VALUES (43, 13, 185, 184);
INSERT INTO public.games VALUES (44, 15, 514, 513);
INSERT INTO public.games VALUES (45, 15, 903, 902);
INSERT INTO public.games VALUES (46, 16, 279, 278);
INSERT INTO public.games VALUES (47, 16, 208, 207);
INSERT INTO public.games VALUES (48, 15, 27, 24);
INSERT INTO public.games VALUES (49, 15, 820, 818);
INSERT INTO public.games VALUES (50, 15, 967, 966);
INSERT INTO public.games VALUES (51, 3, 13, 87);
INSERT INTO public.games VALUES (52, 17, 995, 994);
INSERT INTO public.games VALUES (53, 17, 873, 872);
INSERT INTO public.games VALUES (54, 18, 731, 730);
INSERT INTO public.games VALUES (55, 18, 305, 304);
INSERT INTO public.games VALUES (56, 17, 985, 982);
INSERT INTO public.games VALUES (57, 17, 78, 76);
INSERT INTO public.games VALUES (58, 17, 238, 237);
INSERT INTO public.games VALUES (59, 19, 124, 123);
INSERT INTO public.games VALUES (60, 19, 943, 942);
INSERT INTO public.games VALUES (61, 20, 878, 877);
INSERT INTO public.games VALUES (62, 20, 595, 594);
INSERT INTO public.games VALUES (63, 19, 300, 297);
INSERT INTO public.games VALUES (64, 19, 660, 658);
INSERT INTO public.games VALUES (65, 19, 979, 978);
INSERT INTO public.games VALUES (66, 21, 318, 317);
INSERT INTO public.games VALUES (67, 21, 627, 626);
INSERT INTO public.games VALUES (68, 22, 796, 795);
INSERT INTO public.games VALUES (69, 22, 913, 912);
INSERT INTO public.games VALUES (70, 21, 670, 667);
INSERT INTO public.games VALUES (71, 21, 972, 970);
INSERT INTO public.games VALUES (72, 21, 383, 382);
INSERT INTO public.games VALUES (73, 3, 9, 50);
INSERT INTO public.games VALUES (74, 23, 127, 126);
INSERT INTO public.games VALUES (75, 23, 938, 937);
INSERT INTO public.games VALUES (76, 24, 403, 402);
INSERT INTO public.games VALUES (77, 24, 527, 526);
INSERT INTO public.games VALUES (78, 23, 514, 511);
INSERT INTO public.games VALUES (79, 23, 828, 826);
INSERT INTO public.games VALUES (80, 23, 84, 83);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (3, 'Asad');
INSERT INTO public.players VALUES (12, 'Me');

--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 80, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players username_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT username_pkey PRIMARY KEY (user_id);


--
-- Name: players username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

