--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.5
-- Dumped by pg_dump version 9.4.0
-- Started on 2016-03-10 14:25:56

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 192 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 192
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 191 (class 3079 OID 16394)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 191
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 16403)
-- Name: acessorio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE acessorio (
);


ALTER TABLE acessorio OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16406)
-- Name: amizade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE amizade (
    data date,
    email_amigofashion character varying(30) NOT NULL,
    email_miguxofashion character varying(30) NOT NULL
);


ALTER TABLE amizade OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 16409)
-- Name: avalia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE avalia (
    rating bytea,
    email_fashionista character varying(30) NOT NULL,
    cod_post integer NOT NULL
);


ALTER TABLE avalia OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16415)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comentario (
    descricao character varying(500),
    data_hora timestamp with time zone,
    cod_post integer NOT NULL,
    email_fashionista character varying(30) NOT NULL,
    cod_comenta integer NOT NULL
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16421)
-- Name: dica; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE dica (
    foto bytea,
    video bytea
);


ALTER TABLE dica OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 16427)
-- Name: estilo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estilo (
    descricao character varying(100),
    cod_estilo integer NOT NULL
);


ALTER TABLE estilo OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 16430)
-- Name: fashionista; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fashionista (
    email character varying(30) NOT NULL,
    nome character varying(15),
    sobrenome character varying(30),
    senha character varying(20),
    municipio character varying(20),
    data_nascimento date,
    ddd numeric(2,0),
    numero numeric(9,0),
    sexo character(1),
    foto bytea,
    pais character varying(20),
    bairro character varying(20),
    complemento character varying(10),
    tipo_logradouro character varying(20),
    logradouro character varying(50),
    num_logradouro numeric(6,0),
    uf character(2)
);


ALTER TABLE fashionista OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 16436)
-- Name: formado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE formado (
);


ALTER TABLE formado OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 16439)
-- Name: look; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE look (
    cod_post integer
);


ALTER TABLE look OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16442)
-- Name: manequim; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE manequim (
    cor_da_pele numeric(1,0),
    cor_dos_olhos numeric(1,0),
    tamanho numeric(1,0),
    cabelos numeric(1,0),
    cod_manequim integer NOT NULL,
    email_fashionista character varying(30)
);


ALTER TABLE manequim OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16445)
-- Name: nivel_compartilhamento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE nivel_compartilhamento (
    descricao character varying(25),
    cod_compartilhamento integer NOT NULL
);


ALTER TABLE nivel_compartilhamento OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 16448)
-- Name: peca; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE peca (
    cod_peca integer NOT NULL,
    favoritas boolean
);


ALTER TABLE peca OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16451)
-- Name: post; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE post (
    descricao character varying(1000),
    cod_post integer NOT NULL,
    data_hora timestamp with time zone,
    local character varying(50),
    email_fashionista character varying(30)
);


ALTER TABLE post OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16457)
-- Name: roupa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roupa (
);


ALTER TABLE roupa OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16460)
-- Name: sapato; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sapato (
);


ALTER TABLE sapato OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16463)
-- Name: tipo_de_acessorio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_de_acessorio (
    descricao character varying(100),
    cod_tipo_acessorios integer NOT NULL
);


ALTER TABLE tipo_de_acessorio OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16466)
-- Name: tipo_de_material; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_de_material (
    descricao character varying(100),
    cod_material integer NOT NULL
);


ALTER TABLE tipo_de_material OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16469)
-- Name: tipo_de_roupa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_de_roupa (
    descricao character varying(100),
    cod_tipo_roupa integer NOT NULL
);


ALTER TABLE tipo_de_roupa OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16472)
-- Name: tipo_de_sapato; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_de_sapato (
    descricao character varying(100),
    cod_tipo_sapato integer NOT NULL
);


ALTER TABLE tipo_de_sapato OWNER TO postgres;

--
-- TOC entry 2108 (class 0 OID 16403)
-- Dependencies: 172
-- Data for Name: acessorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY acessorio  FROM stdin;
\.


--
-- TOC entry 2109 (class 0 OID 16406)
-- Dependencies: 173
-- Data for Name: amizade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY amizade (data, email_amigofashion, email_miguxofashion) FROM stdin;
\.


--
-- TOC entry 2110 (class 0 OID 16409)
-- Dependencies: 174
-- Data for Name: avalia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY avalia (rating, email_fashionista, cod_post) FROM stdin;
\.


--
-- TOC entry 2111 (class 0 OID 16415)
-- Dependencies: 175
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comentario (descricao, data_hora, cod_post, email_fashionista, cod_comenta) FROM stdin;
\.


--
-- TOC entry 2112 (class 0 OID 16421)
-- Dependencies: 176
-- Data for Name: dica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dica (foto, video) FROM stdin;
\.


--
-- TOC entry 2113 (class 0 OID 16427)
-- Dependencies: 177
-- Data for Name: estilo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estilo (descricao, cod_estilo) FROM stdin;
\.


--
-- TOC entry 2114 (class 0 OID 16430)
-- Dependencies: 178
-- Data for Name: fashionista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fashionista (email, nome, sobrenome, senha, municipio, data_nascimento, ddd, numero, sexo, foto, pais, bairro, complemento, tipo_logradouro, logradouro, num_logradouro, uf) FROM stdin;
\.


--
-- TOC entry 2115 (class 0 OID 16436)
-- Dependencies: 179
-- Data for Name: formado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY formado  FROM stdin;
\.


--
-- TOC entry 2116 (class 0 OID 16439)
-- Dependencies: 180
-- Data for Name: look; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY look (cod_post) FROM stdin;
\.


--
-- TOC entry 2117 (class 0 OID 16442)
-- Dependencies: 181
-- Data for Name: manequim; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY manequim (cor_da_pele, cor_dos_olhos, tamanho, cabelos, cod_manequim, email_fashionista) FROM stdin;
\.


--
-- TOC entry 2118 (class 0 OID 16445)
-- Dependencies: 182
-- Data for Name: nivel_compartilhamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nivel_compartilhamento (descricao, cod_compartilhamento) FROM stdin;
\.


--
-- TOC entry 2119 (class 0 OID 16448)
-- Dependencies: 183
-- Data for Name: peca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY peca (cod_peca, favoritas) FROM stdin;
\.


--
-- TOC entry 2120 (class 0 OID 16451)
-- Dependencies: 184
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY post (descricao, cod_post, data_hora, local, email_fashionista) FROM stdin;
\.


--
-- TOC entry 2121 (class 0 OID 16457)
-- Dependencies: 185
-- Data for Name: roupa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roupa  FROM stdin;
\.


--
-- TOC entry 2122 (class 0 OID 16460)
-- Dependencies: 186
-- Data for Name: sapato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sapato  FROM stdin;
\.


--
-- TOC entry 2123 (class 0 OID 16463)
-- Dependencies: 187
-- Data for Name: tipo_de_acessorio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_de_acessorio (descricao, cod_tipo_acessorios) FROM stdin;
\.


--
-- TOC entry 2124 (class 0 OID 16466)
-- Dependencies: 188
-- Data for Name: tipo_de_material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_de_material (descricao, cod_material) FROM stdin;
\.


--
-- TOC entry 2125 (class 0 OID 16469)
-- Dependencies: 189
-- Data for Name: tipo_de_roupa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_de_roupa (descricao, cod_tipo_roupa) FROM stdin;
\.


--
-- TOC entry 2126 (class 0 OID 16472)
-- Dependencies: 190
-- Data for Name: tipo_de_sapato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_de_sapato (descricao, cod_tipo_sapato) FROM stdin;
\.


--
-- TOC entry 1960 (class 2606 OID 16476)
-- Name: pk_amizade; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT pk_amizade PRIMARY KEY (email_amigofashion, email_miguxofashion);


--
-- TOC entry 1964 (class 2606 OID 16478)
-- Name: pk_avalia; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY avalia
    ADD CONSTRAINT pk_avalia PRIMARY KEY (email_fashionista, cod_post);


--
-- TOC entry 1968 (class 2606 OID 16480)
-- Name: pk_comenta; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comenta PRIMARY KEY (cod_comenta);


--
-- TOC entry 1977 (class 2606 OID 16482)
-- Name: pk_compartilhamento; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY nivel_compartilhamento
    ADD CONSTRAINT pk_compartilhamento PRIMARY KEY (cod_compartilhamento);


--
-- TOC entry 1970 (class 2606 OID 16484)
-- Name: pk_estilo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estilo
    ADD CONSTRAINT pk_estilo PRIMARY KEY (cod_estilo);


--
-- TOC entry 1972 (class 2606 OID 16486)
-- Name: pk_fashionista; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fashionista
    ADD CONSTRAINT pk_fashionista PRIMARY KEY (email);


--
-- TOC entry 1975 (class 2606 OID 16488)
-- Name: pk_manequim; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY manequim
    ADD CONSTRAINT pk_manequim PRIMARY KEY (cod_manequim);


--
-- TOC entry 1986 (class 2606 OID 16490)
-- Name: pk_material; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_de_material
    ADD CONSTRAINT pk_material PRIMARY KEY (cod_material);


--
-- TOC entry 1979 (class 2606 OID 16492)
-- Name: pk_peca; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY peca
    ADD CONSTRAINT pk_peca PRIMARY KEY (cod_peca);


--
-- TOC entry 1982 (class 2606 OID 16494)
-- Name: pk_post; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY post
    ADD CONSTRAINT pk_post PRIMARY KEY (cod_post);


--
-- TOC entry 1984 (class 2606 OID 16496)
-- Name: pk_tipo_acessorios; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_de_acessorio
    ADD CONSTRAINT pk_tipo_acessorios PRIMARY KEY (cod_tipo_acessorios);


--
-- TOC entry 1988 (class 2606 OID 16498)
-- Name: pk_tipo_roupa; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_de_roupa
    ADD CONSTRAINT pk_tipo_roupa PRIMARY KEY (cod_tipo_roupa);


--
-- TOC entry 1990 (class 2606 OID 16500)
-- Name: pk_tipo_sapato; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_de_sapato
    ADD CONSTRAINT pk_tipo_sapato PRIMARY KEY (cod_tipo_sapato);


--
-- TOC entry 1957 (class 1259 OID 16501)
-- Name: fki_amigo1; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_amigo1 ON amizade USING btree (email_amigofashion);


--
-- TOC entry 1958 (class 1259 OID 16502)
-- Name: fki_amigo2; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_amigo2 ON amizade USING btree (email_miguxofashion);


--
-- TOC entry 1961 (class 1259 OID 16503)
-- Name: fki_cod_post; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_cod_post ON avalia USING btree (cod_post);


--
-- TOC entry 1962 (class 1259 OID 16504)
-- Name: fki_email_fashionista; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_email_fashionista ON avalia USING btree (email_fashionista);


--
-- TOC entry 1980 (class 1259 OID 16505)
-- Name: fki_email_post; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_email_post ON post USING btree (email_fashionista);


--
-- TOC entry 1965 (class 1259 OID 16506)
-- Name: fki_fki_cod_post; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_fki_cod_post ON comentario USING btree (cod_post);


--
-- TOC entry 1966 (class 1259 OID 16507)
-- Name: fki_fki_email_fashionista; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_fki_email_fashionista ON comentario USING btree (email_fashionista);


--
-- TOC entry 1973 (class 1259 OID 16548)
-- Name: fki_manequim; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fki_manequim ON manequim USING btree (email_fashionista);


--
-- TOC entry 1991 (class 2606 OID 16508)
-- Name: fk_amigo1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT fk_amigo1 FOREIGN KEY (email_amigofashion) REFERENCES fashionista(email);


--
-- TOC entry 1992 (class 2606 OID 16513)
-- Name: fk_amigo2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT fk_amigo2 FOREIGN KEY (email_miguxofashion) REFERENCES fashionista(email);


--
-- TOC entry 1998 (class 2606 OID 16518)
-- Name: fk_email_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY post
    ADD CONSTRAINT fk_email_post FOREIGN KEY (email_fashionista) REFERENCES fashionista(email);


--
-- TOC entry 1997 (class 2606 OID 16543)
-- Name: fk_manequim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY manequim
    ADD CONSTRAINT fk_manequim FOREIGN KEY (email_fashionista) REFERENCES fashionista(email);


--
-- TOC entry 1993 (class 2606 OID 16523)
-- Name: fki_cod_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avalia
    ADD CONSTRAINT fki_cod_post FOREIGN KEY (cod_post) REFERENCES post(cod_post);


--
-- TOC entry 1995 (class 2606 OID 16528)
-- Name: fki_cod_post; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT fki_cod_post FOREIGN KEY (cod_post) REFERENCES post(cod_post);


--
-- TOC entry 1994 (class 2606 OID 16533)
-- Name: fki_email_fashionista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avalia
    ADD CONSTRAINT fki_email_fashionista FOREIGN KEY (email_fashionista) REFERENCES fashionista(email);


--
-- TOC entry 1996 (class 2606 OID 16538)
-- Name: fki_email_fashionista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT fki_email_fashionista FOREIGN KEY (email_fashionista) REFERENCES fashionista(email);


--
-- TOC entry 2133 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-03-10 14:25:56

--
-- PostgreSQL database dump complete
--

