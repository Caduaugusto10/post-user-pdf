--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 11:01:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16444)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    photo character varying(500),
    user_id integer NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16443)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 218 (class 1259 OID 16435)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16434)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4701 (class 2604 OID 16447)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16438)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4857 (class 0 OID 16444)
-- Dependencies: 220
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, title, content, photo, user_id) FROM stdin;
1	Paisagem	Uma bela paisagem no fim de tarde	https://cursinhoparamedicina.com.br/wp-content/uploads/2022/10/Paisagem-1.jpg	1
2	Foto	Um grande dia de pesca	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8jOK3zoEGMzdZUgUaiYlPuDbfMuZNHStZg&s	2
3	Dia de praia	Um belo dia de piscina	https://all.accor.com/magazine/imagerie/ferias-na-praia-onde-passar-melhores-praias-do-brasil-4b26.jpg	3
4	Piscina	Uma bela piscina	https://th.bing.com/th/id/R.b131627446e8c40b9737614a4cac1201?rik=v01MfxvfneDQqg&pid=ImgRaw&r=0	4
\.


--
-- TOC entry 4855 (class 0 OID 16435)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
1	Aarav Sharma	aarav.sharma@email.in
2	Ananya Gupta	ananya.gupta@email.in
3	Vivaan Kumar	vivaan.kumar@email.in
4	Diya Patel	diya.patel@email.in
5	Aditya Singh	aditya.singh@email.in
6	Ishita Mehta	ishita.mehta@email.in
7	Arjun Reddy	arjun.reddy@email.in
8	Kavya Nair	kavya.nair@email.in
9	Rohan Das	rohan.das@email.in
10	Priya Iyer	priya.iyer@email.in
11	Krishna Joshi	krishna.joshi@email.in
12	Sneha Choudhary	sneha.choudhary@email.in
13	Aryan Verma	aryan.verma@email.in
14	Meera Rao	meera.rao@email.in
15	Kabir Malhotra	kabir.malhotra@email.in
16	Sanya Kapoor	sanya.kapoor@email.in
17	Dev Mishra	dev.mishra@email.in
18	Riya Jain	riya.jain@email.in
19	Harsh Thakur	harsh.thakur@email.in
20	Pooja Aggarwal	pooja.aggarwal@email.in
21	Yash Bhatia	yash.bhatia@email.in
22	Nisha Saxena	nisha.saxena@email.in
23	Rajesh Yadav	rajesh.yadav@email.in
24	Anjali Chauhan	anjali.chauhan@email.in
25	Siddharth Kulkarni	siddharth.kulkarni@email.in
26	Neha Desai	neha.desai@email.in
27	Ayaan Shetty	ayaan.shetty@email.in
28	Tanya Pillai	tanya.pillai@email.in
29	Ritik Ghosh	ritik.ghosh@email.in
30	Shruti Roy	shruti.roy@email.in
31	Karan Bhatt	karan.bhatt@email.in
32	Aditi Sengupta	aditi.sengupta@email.in
33	Manav Chatterjee	manav.chatterjee@email.in
34	Sakshi Banerjee	sakshi.banerjee@email.in
35	Raghav Mukherjee	raghav.mukherjee@email.in
36	Isha Paul	isha.paul@email.in
37	Nikhil Dutta	nikhil.dutta@email.in
38	Pallavi Bose	pallavi.bose@email.in
39	Arnav Chakraborty	arnav.chakraborty@email.in
40	Simran Sinha	simran.sinha@email.in
41	Vikram Dasgupta	vikram.dasgupta@email.in
42	Aarushi Basu	aarushi.basu@email.in
43	Rajat Sengupta	rajat.sengupta@email.in
44	Anushka Ghoshal	anushka.ghoshal@email.in
45	Kunal Bhattacharya	kunal.bhattacharya@email.in
46	Radhika Bose	radhika.bose@email.in
47	Amitava Sen	amitava.sen@email.in
48	Nandini Dey	nandini.dey@email.in
49	Saurabh Chandra	saurabh.chandra@email.in
50	Avni Tripathi	avni.tripathi@email.in
51	Ravi Tiwari	ravi.tiwari@email.in
\.


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 4, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 51, true);


--
-- TOC entry 4707 (class 2606 OID 16451)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16442)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16440)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16452)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2025-04-22 11:01:40

--
-- PostgreSQL database dump complete
--

