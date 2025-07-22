--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-22 20:59:51

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
-- TOC entry 220 (class 1259 OID 16769)
-- Name: company_buildings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_buildings (
    id integer NOT NULL,
    name character varying(300) NOT NULL
);


ALTER TABLE public.company_buildings OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16768)
-- Name: company_buildings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_buildings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.company_buildings_id_seq OWNER TO postgres;

--
-- TOC entry 4854 (class 0 OID 0)
-- Dependencies: 219
-- Name: company_buildings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_buildings_id_seq OWNED BY public.company_buildings.id;


--
-- TOC entry 224 (class 1259 OID 16788)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    first_name character varying(300) NOT NULL,
    last_name character varying(300) NOT NULL,
    birth_date date NOT NULL,
    email character varying(200) NOT NULL,
    team_id integer DEFAULT 1
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16787)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_id_seq OWNER TO postgres;

--
-- TOC entry 4855 (class 0 OID 0)
-- Dependencies: 223
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 226 (class 1259 OID 16805)
-- Name: intranet_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.intranet_accounts (
    id integer NOT NULL,
    email character varying(200),
    password character varying(200) NOT NULL
);


ALTER TABLE public.intranet_accounts OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16804)
-- Name: intranet_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.intranet_accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.intranet_accounts_id_seq OWNER TO postgres;

--
-- TOC entry 4856 (class 0 OID 0)
-- Dependencies: 225
-- Name: intranet_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.intranet_accounts_id_seq OWNED BY public.intranet_accounts.id;


--
-- TOC entry 218 (class 1259 OID 16762)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    title character varying(300) NOT NULL,
    deadline date
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16817)
-- Name: projects_employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_employees (
    id integer NOT NULL,
    employee_id integer,
    project_id integer
);


ALTER TABLE public.projects_employees OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16816)
-- Name: projects_employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_employees_id_seq OWNER TO postgres;

--
-- TOC entry 4857 (class 0 OID 0)
-- Dependencies: 227
-- Name: projects_employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_employees_id_seq OWNED BY public.projects_employees.id;


--
-- TOC entry 217 (class 1259 OID 16761)
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_id_seq OWNER TO postgres;

--
-- TOC entry 4858 (class 0 OID 0)
-- Dependencies: 217
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- TOC entry 222 (class 1259 OID 16776)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(300) NOT NULL,
    building_id integer
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16775)
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teams_id_seq OWNER TO postgres;

--
-- TOC entry 4859 (class 0 OID 0)
-- Dependencies: 221
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- TOC entry 4667 (class 2604 OID 16772)
-- Name: company_buildings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_buildings ALTER COLUMN id SET DEFAULT nextval('public.company_buildings_id_seq'::regclass);


--
-- TOC entry 4669 (class 2604 OID 16791)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 4671 (class 2604 OID 16808)
-- Name: intranet_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intranet_accounts ALTER COLUMN id SET DEFAULT nextval('public.intranet_accounts_id_seq'::regclass);


--
-- TOC entry 4666 (class 2604 OID 16765)
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- TOC entry 4672 (class 2604 OID 16820)
-- Name: projects_employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_employees ALTER COLUMN id SET DEFAULT nextval('public.projects_employees_id_seq'::regclass);


--
-- TOC entry 4668 (class 2604 OID 16779)
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- TOC entry 4840 (class 0 OID 16769)
-- Dependencies: 220
-- Data for Name: company_buildings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_buildings (id, name) FROM stdin;
1	Headquarters
3	Research Center
\.


--
-- TOC entry 4844 (class 0 OID 16788)
-- Dependencies: 224
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, first_name, last_name, birth_date, email, team_id) FROM stdin;
2	Bob	Johnson	1988-03-15	bob@test.com	2
3	Charlie	Brown	1992-04-10	charlie@test.com	3
4	Diana	Prince	1985-05-05	diana@test.com	4
\.


--
-- TOC entry 4846 (class 0 OID 16805)
-- Dependencies: 226
-- Data for Name: intranet_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.intranet_accounts (id, email, password) FROM stdin;
2	bob@test.com	bob123
3	charlie@test.com	charlie123
4	diana@test.com	diana123
\.


--
-- TOC entry 4838 (class 0 OID 16762)
-- Dependencies: 218
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, title, deadline) FROM stdin;
1	Project Alpha	2024-12-31
2	Project Beta	2025-06-30
3	Project Gamma	2025-09-15
\.


--
-- TOC entry 4848 (class 0 OID 16817)
-- Dependencies: 228
-- Data for Name: projects_employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects_employees (id, employee_id, project_id) FROM stdin;
2	2	1
3	3	2
4	4	3
6	2	3
7	3	1
8	4	2
\.


--
-- TOC entry 4842 (class 0 OID 16776)
-- Dependencies: 222
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (id, name, building_id) FROM stdin;
1	Development	1
2	Marketing	1
4	Research	3
3	Sales	\N
\.


--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 219
-- Name: company_buildings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_buildings_id_seq', 3, true);


--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 223
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 4, true);


--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 225
-- Name: intranet_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.intranet_accounts_id_seq', 4, true);


--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 227
-- Name: projects_employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_employees_id_seq', 8, true);


--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 3, true);


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 221
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_id_seq', 4, true);


--
-- TOC entry 4676 (class 2606 OID 16774)
-- Name: company_buildings company_buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_buildings
    ADD CONSTRAINT company_buildings_pkey PRIMARY KEY (id);


--
-- TOC entry 4680 (class 2606 OID 16798)
-- Name: employees employees_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);


--
-- TOC entry 4682 (class 2606 OID 16796)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4684 (class 2606 OID 16810)
-- Name: intranet_accounts intranet_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intranet_accounts
    ADD CONSTRAINT intranet_accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 4686 (class 2606 OID 16822)
-- Name: projects_employees projects_employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_employees
    ADD CONSTRAINT projects_employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4674 (class 2606 OID 16767)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 4678 (class 2606 OID 16781)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- TOC entry 4688 (class 2606 OID 16799)
-- Name: employees employees_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id) ON DELETE SET DEFAULT;


--
-- TOC entry 4689 (class 2606 OID 16811)
-- Name: intranet_accounts intranet_accounts_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.intranet_accounts
    ADD CONSTRAINT intranet_accounts_email_fkey FOREIGN KEY (email) REFERENCES public.employees(email) ON DELETE CASCADE;


--
-- TOC entry 4690 (class 2606 OID 16823)
-- Name: projects_employees projects_employees_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_employees
    ADD CONSTRAINT projects_employees_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id) ON DELETE CASCADE;


--
-- TOC entry 4691 (class 2606 OID 16828)
-- Name: projects_employees projects_employees_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_employees
    ADD CONSTRAINT projects_employees_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- TOC entry 4687 (class 2606 OID 16782)
-- Name: teams teams_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.company_buildings(id) ON DELETE SET NULL;


-- Completed on 2025-07-22 20:59:51

--
-- PostgreSQL database dump complete
--

