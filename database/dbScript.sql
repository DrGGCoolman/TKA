--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-08-13 14:22:59

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

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 17141)
-- Name: ec_admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_admin (
    admin_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.ec_admin OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17144)
-- Name: ec_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_category (
    category_id integer NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE public.ec_category OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17150)
-- Name: ec_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_customer (
    title character varying,
    birth date NOT NULL,
    user_id integer NOT NULL,
    street character varying NOT NULL,
    house_number integer NOT NULL,
    post_code integer NOT NULL,
    city character varying NOT NULL
);


ALTER TABLE public.ec_customer OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17156)
-- Name: ec_pictures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_pictures (
    picture_id integer NOT NULL,
    title character varying NOT NULL,
    file_path character varying NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.ec_pictures OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17162)
-- Name: ec_product_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_product_entity (
    body_color character varying NOT NULL,
    upholstery character varying NOT NULL,
    massage_seats boolean,
    displays_rear boolean,
    price double precision NOT NULL,
    availibility_weekdays boolean,
    product_id integer NOT NULL
);


ALTER TABLE public.ec_product_entity OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17168)
-- Name: ec_product_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_product_type (
    product_id integer NOT NULL,
    category_id integer NOT NULL,
    brand character varying NOT NULL,
    model character varying NOT NULL,
    variant character varying NOT NULL,
    gearing_type character varying NOT NULL,
    age integer NOT NULL,
    weight double precision NOT NULL,
    power integer NOT NULL,
    engine character varying NOT NULL,
    cubic_capacity integer NOT NULL,
    nm double precision NOT NULL,
    drive_system character varying NOT NULL,
    fuel_type character varying NOT NULL,
    zero_to_hundred double precision,
    seats integer NOT NULL,
    luggage_compartment integer NOT NULL,
    doors integer NOT NULL,
    miles integer NOT NULL,
    add_driver boolean NOT NULL,
    minimum_age integer NOT NULL
);


ALTER TABLE public.ec_product_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17174)
-- Name: ec_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_user (
    user_id integer NOT NULL,
    name character varying NOT NULL,
    firstname character varying NOT NULL,
    gender character(1),
    e_mail character varying NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.ec_user OWNER TO postgres;

--
-- TOC entry 2849 (class 0 OID 17141)
-- Dependencies: 196
-- Data for Name: ec_admin; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2850 (class 0 OID 17144)
-- Dependencies: 197
-- Data for Name: ec_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_category (category_id, title) VALUES (1, 'sport');
INSERT INTO public.ec_category (category_id, title) VALUES (2, 'sport+');
INSERT INTO public.ec_category (category_id, title) VALUES (3, 'luxus');
INSERT INTO public.ec_category (category_id, title) VALUES (4, 'suv');
INSERT INTO public.ec_category (category_id, title) VALUES (5, 'oldtimer');
INSERT INTO public.ec_category (category_id, title) VALUES (6, 'offroad');


--
-- TOC entry 2851 (class 0 OID 17150)
-- Dependencies: 198
-- Data for Name: ec_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2852 (class 0 OID 17156)
-- Dependencies: 199
-- Data for Name: ec_pictures; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2853 (class 0 OID 17162)
-- Dependencies: 200
-- Data for Name: ec_product_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2854 (class 0 OID 17168)
-- Dependencies: 201
-- Data for Name: ec_product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_product_type (product_id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, miles, add_driver, minimum_age) VALUES (1, 1, 'Lamborghini', 'Aventador', 'LP 700-4 Roadster', 'automatic', 2016, 1575, 700, 'V12-Motor', 7, 690, 'Allrad', 'Benzin', 2.89999999999999991, 2, 150, 2, 100, true, 23);
INSERT INTO public.ec_product_type (product_id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, miles, add_driver, minimum_age) VALUES (2, 2, 'Porsche', '918', 'Spyder', '7-Gang-Doppelkupplungsgetriebe', 2013, 1750, 795, 'V8-Saugmotor', 5, 750, 'Allrad', 'Benzin plus', 3, 2, 180, 2, 100, false, 25);
INSERT INTO public.ec_product_type (product_id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, miles, add_driver, minimum_age) VALUES (3, 3, 'Bentley', 'Continental GTC', 'V8', '8-Gang-Doppelkupplungsgetriebe', 2019, 2414, 635, 'V8-Motor', 6, 900, 'Allrad', 'Super Plus', 3.70000000000000018, 5, 250, 4, 150, true, 23);
INSERT INTO public.ec_product_type (product_id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, miles, add_driver, minimum_age) VALUES (4, 4, 'Range Rover', 'SVAutobiography', 'Dynamic', '8-Gang-Automatikgetriebe', 2018, 2160, 565, 'V8-Ottomotor', 5, 700, 'Allrad', 'Benzin', 4.5, 5, 400, 4, 200, true, 23);
INSERT INTO public.ec_product_type (product_id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, miles, add_driver, minimum_age) VALUES (5, 5, 'Ferrari', 'F40', 'Coupe', '5-Gang Getriebe', 1991, 1329, 565, 'V8 Bi-Turbo-Ottomotor', 3, 700, 'Hinterradantrieb', 'Benzin', 4.59999999999999964, 2, 150, 2, 80, false, 25);
INSERT INTO public.ec_product_type (product_id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, miles, add_driver, minimum_age) VALUES (6, 6, 'Mercedes', 'G63 AMG', '6x6', '7-Stufen-Automatik', 2013, 3775, 544, 'V8 Bi-Turbo', 4, 760, 'Allrad', 'Benzin', 4.59999999999999964, 5, 400, 4, 150, true, 23);


--
-- TOC entry 2855 (class 0 OID 17174)
-- Dependencies: 202
-- Data for Name: ec_user; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2714 (class 2606 OID 17181)
-- Name: ec_admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);


--
-- TOC entry 2716 (class 2606 OID 17183)
-- Name: ec_category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- TOC entry 2718 (class 2606 OID 17185)
-- Name: ec_pictures ec_pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_pictures
    ADD CONSTRAINT ec_pictures_pkey PRIMARY KEY (picture_id);


--
-- TOC entry 2720 (class 2606 OID 17187)
-- Name: ec_product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (product_id);


--
-- TOC entry 2722 (class 2606 OID 17189)
-- Name: ec_user usert_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_user
    ADD CONSTRAINT usert_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2727 (class 2606 OID 17190)
-- Name: ec_product_type product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.ec_category(category_id);


--
-- TOC entry 2725 (class 2606 OID 17195)
-- Name: ec_pictures product_pictures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_pictures
    ADD CONSTRAINT product_pictures_fk FOREIGN KEY (product_id) REFERENCES public.ec_product_type(product_id);


--
-- TOC entry 2726 (class 2606 OID 17200)
-- Name: ec_product_entity product_type_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_entity
    ADD CONSTRAINT product_type_entity_fk FOREIGN KEY (product_id) REFERENCES public.ec_product_type(product_id);


--
-- TOC entry 2723 (class 2606 OID 17205)
-- Name: ec_admin user_admin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_admin
    ADD CONSTRAINT user_admin_fk FOREIGN KEY (user_id) REFERENCES public.ec_user(user_id);


--
-- TOC entry 2724 (class 2606 OID 17210)
-- Name: ec_customer user_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_customer
    ADD CONSTRAINT user_customer_fk FOREIGN KEY (user_id) REFERENCES public.ec_user(user_id);


-- Completed on 2019-08-13 14:23:00

--
-- PostgreSQL database dump complete
--

