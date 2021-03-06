--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-05-17 22:53:50

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
-- TOC entry 210 (class 1259 OID 24577)
-- Name: tb01; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb01 (
    id integer NOT NULL,
    col_texto text NOT NULL,
    col_dt timestamp without time zone NOT NULL
);


ALTER TABLE public.tb01 OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24576)
-- Name: tb01_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb01_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb01_id_seq OWNER TO postgres;

--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb01_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb01_id_seq OWNED BY public.tb01.id;


--
-- TOC entry 3164 (class 2604 OID 24580)
-- Name: tb01 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb01 ALTER COLUMN id SET DEFAULT nextval('public.tb01_id_seq'::regclass);


--
-- TOC entry 3166 (class 2606 OID 24584)
-- Name: tb01 tb01_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb01
    ADD CONSTRAINT tb01_pkey PRIMARY KEY (id);


-- Completed on 2022-05-17 22:53:50

--
-- PostgreSQL database dump complete
--

