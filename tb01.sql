--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-05-12 15:04:43

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
-- TOC entry 210 (class 1259 OID 16410)
-- Name: tb01; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb01 (
    id integer NOT NULL,
    texto text NOT NULL,
    dt date NOT NULL
);


ALTER TABLE public.tb01 OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16409)
-- Name: tb01_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tb01 ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tb01_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3165 (class 2606 OID 16416)
-- Name: tb01 tb01_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb01
    ADD CONSTRAINT tb01_pkey PRIMARY KEY (id);


-- Completed on 2022-05-12 15:04:43

--
-- PostgreSQL database dump complete
--

