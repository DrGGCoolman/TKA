--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-09-14 19:18:36

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
-- TOC entry 196 (class 1259 OID 17721)
-- Name: ec_brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_brand (
    id integer NOT NULL,
    brand_title character varying NOT NULL
);


ALTER TABLE public.ec_brand OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17804)
-- Name: ec_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_brand ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 197 (class 1259 OID 17727)
-- Name: ec_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_category (
    id integer NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE public.ec_category OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17802)
-- Name: ec_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 198 (class 1259 OID 17733)
-- Name: ec_pictures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_pictures (
    id integer NOT NULL,
    title character varying NOT NULL,
    file_path character varying NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.ec_pictures OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17806)
-- Name: ec_pictures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_pictures ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 199 (class 1259 OID 17739)
-- Name: ec_product_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_product_type (
    id integer NOT NULL,
    category_id integer NOT NULL,
    brand_id integer NOT NULL,
    model character varying NOT NULL,
    variant character varying,
    gearing_type character varying NOT NULL,
    age integer NOT NULL,
    weight_kg double precision NOT NULL,
    power_ps integer NOT NULL,
    engine character varying NOT NULL,
    cubic_capacity_cm3 integer NOT NULL,
    nm double precision NOT NULL,
    drive_system character varying NOT NULL,
    fuel_type character varying NOT NULL,
    zero_to_hundred double precision NOT NULL,
    seats integer NOT NULL,
    doors integer NOT NULL,
    add_driver boolean NOT NULL,
    minimum_age integer NOT NULL,
    body_color character varying NOT NULL,
    upholstery character varying NOT NULL,
    massage_seats boolean NOT NULL,
    displays_rear boolean NOT NULL,
    price_200 double precision NOT NULL,
    price_500 double precision NOT NULL,
    price_1000 double precision NOT NULL,
    blocked_when character varying,
    highlighted boolean
);


ALTER TABLE public.ec_product_type OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17808)
-- Name: ec_product_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_product_type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_product_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 200 (class 1259 OID 17745)
-- Name: ec_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_role (
    id integer NOT NULL,
    role_title character varying NOT NULL
);


ALTER TABLE public.ec_role OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17810)
-- Name: ec_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_role ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 17751)
-- Name: ec_search_words; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_search_words (
    id integer NOT NULL,
    user_id integer NOT NULL,
    search_words character varying NOT NULL
);


ALTER TABLE public.ec_search_words OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17812)
-- Name: ec_search_words_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_search_words ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_search_words_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 202 (class 1259 OID 17757)
-- Name: ec_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_user (
    id integer NOT NULL,
    role_id integer NOT NULL,
    name character varying NOT NULL,
    firstname character varying NOT NULL,
    gender character(1),
    e_mail character varying NOT NULL,
    password character varying(255) NOT NULL,
    title character varying,
    birth date NOT NULL,
    street character varying NOT NULL,
    house_number integer NOT NULL,
    post_code integer NOT NULL,
    city character varying NOT NULL
);


ALTER TABLE public.ec_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17814)
-- Name: ec_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ec_user ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ec_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2868 (class 0 OID 17721)
-- Dependencies: 196
-- Data for Name: ec_brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (1, 'Range Rover');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (2, 'Lamborghini');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (3, 'Honda');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (4, 'Cadillac');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (5, 'Nissan');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (6, 'Maserati');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (7, 'Chevrolet');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (8, 'Aston Martin');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (9, 'Bentley');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (10, 'Rolls Royce');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (11, 'BMW');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (12, 'Porsche');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (13, 'Mercedes');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (14, 'Audi');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (15, 'Ferrari');
INSERT INTO public.ec_brand (id, brand_title) OVERRIDING SYSTEM VALUE VALUES (16, 'Jaguar');


--
-- TOC entry 2869 (class 0 OID 17727)
-- Dependencies: 197
-- Data for Name: ec_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_category (id, title) OVERRIDING SYSTEM VALUE VALUES (1, 'Sport');
INSERT INTO public.ec_category (id, title) OVERRIDING SYSTEM VALUE VALUES (2, 'Sport+');
INSERT INTO public.ec_category (id, title) OVERRIDING SYSTEM VALUE VALUES (3, 'Luxus');
INSERT INTO public.ec_category (id, title) OVERRIDING SYSTEM VALUE VALUES (4, 'SUV');


--
-- TOC entry 2870 (class 0 OID 17733)
-- Dependencies: 198
-- Data for Name: ec_pictures; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2871 (class 0 OID 17739)
-- Dependencies: 199
-- Data for Name: ec_product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (1, 1, 5, 'GTR', 'Nismo', '6-Gang Doppelkupplungsgetriebe', 2012, 1815, 550, '3,8 l V6', 3799, 632, 'Allrad', 'Super Plus', 2.70000000000000018, 4, 2, false, 25, 'weiß', 'Leder', false, false, 599, 799, 999, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (2, 1, 2, 'Aventador', 'Roadster', '7-Gang Automatikgetriebe', 1575, 1625, 700, '12-Zylinder V-Motor', 6498, 690, 'Allrad', 'Super Plus', 2.89999999999999991, 2, 2, false, 25, 'Blu Aegir', 'Leder', false, false, 999, 1199, 1399, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (3, 1, 2, 'Aventador', 'SV', '7-Gang Automatikgetriebe', 2015, 1525, 750, '12-Zylinder V-Motor', 6498, 690, 'Allrad', 'Benzin', 3, 2, 2, false, 25, 'Red Glitter', 'Alcantara', false, false, 1199, 1399, 1599, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (4, 1, 2, 'Huracán', '', '7-Gang Doppelkupplungsgetriebe', 2014, 1422, 610, '10-Zylinder V-Motor', 5204, 560, 'Allrad', 'Benzin', 3.20000000000000018, 2, 2, false, 25, 'Schwarz-Matt', 'Alcantara', false, false, 699, 899, 1099, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (5, 1, 2, 'Huracán', 'Performante Spyder', '7-Gang Doppelkupplungsgetriebe', 2016, 1542, 610, '10-Zylinder V-Motor', 5204, 560, 'Allrad', 'Benzin', 3.39999999999999991, 2, 2, false, 25, 'Blau', 'Alcantara', false, false, 799, 999, 1199, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (6, 1, 15, '488', 'Pista', '7-Gang Doppelkupplungsgetriebe', 2018, 1385, 720, '8-Zylinder V-Motor', 3902, 770, 'Allrad', 'Benzin', 2.79999999999999982, 2, 2, true, 25, 'Rot', 'Alcantara', false, false, 899, 1099, 1399, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (7, 1, 15, '458', 'Italia', '7-Gang Doppelkupplungsgetriebe', 2010, 1485, 570, '8-Zylinder V-Motor', 4499, 540, 'Allrad', 'Benzin', 3.39999999999999991, 2, 2, true, 23, 'Rot', 'Leder', false, false, 599, 799, 999, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (8, 1, 15, 'F12', 'Berlinetta', '7-Gang Doppelkupplungsgetriebe', 2012, 1630, 741, '12-Zylinder V-Motor', 6262, 690, 'Allrad', 'Benzin', 3.20000000000000018, 2, 2, true, 23, 'Rot', 'Leder', false, false, 699, 899, 1099, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (9, 1, 15, 'GTC4', 'Lusso', '7-Gang Doppelkupplungsgetriebe', 2015, 1920, 690, '12-Zylinder V-Motor', 6262, 697, 'Allrad', 'Benzin', 3.39999999999999991, 2, 4, true, 23, 'Grau-Matt', 'Leder', false, false, 799, 999, 1199, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (10, 1, 15, '812', 'Superfast', '7-Gang Doppelkupplungsgetriebe', 2018, 1630, 800, '12-Zylinder V-Motor', 6496, 718, 'Allrad', 'Benzin', 2.89999999999999991, 2, 2, false, 25, 'Rot', 'Leder', false, false, 899, 1099, 1299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (11, 1, 12, 'Turbo', 'S', '7-Gang Doppelkupplungsgetriebe', 2016, 1675, 580, '6-Zylinder Boxermotor', 3800, 50, 'Allrad', 'Benzin', 2.89999999999999991, 2, 2, false, 23, 'Blau', 'Leder', false, false, 399, 499, 699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (12, 1, 12, 'Gt3', 'RS', '7-Gang Doppelkupplungsgetriebe', 2018, 1505, 520, '6-Zylinder Boxermotor', 3996, 470, 'Allrad', 'Benzin', 3.39999999999999991, 2, 2, true, 25, 'Lizardgrün', 'Leder', false, false, 699, 899, 1099, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (13, 1, 12, 'GT2', 'RS', '6-Gang Schaltgetriebe', 2016, 1445, 544, '6-Zylinder Boxermotor', 3600, 798, 'Hinterradantrieb', 'Benzin/Diesel', 3.5, 2, 2, false, 21, 'Silber', 'Leder', false, false, 899, 1099, 1299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (14, 1, 14, 'R8', 'Coupe', '7-Gang Doppelkupplungsgetriebe', 2015, 1715, 540, '10-Zylinder V-Motor', 5204, 540, 'Allrad', 'Benzin', 3.5, 2, 2, false, 23, 'weiß', 'Leder', false, false, 599, 799, 999, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (15, 1, 13, 'SLS', '', '7-Gang Doppelkupplungsgetriebe', 2009, 1695, 571, '8-Zylinder V-Motor', 6208, 650, 'Allrad', 'Benzin', 3.79999999999999982, 2, 2, true, 23, 'Silber', 'Leder', false, false, 799, 999, 1199, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (16, 1, 13, 'GT', 'S', '7-Gang Doppelkupplungsgetriebe', 2015, 1645, 510, '8-Zylinder V-Motor', 3982, 650, 'Allrad', 'Benzin', 3.60000000000000009, 2, 2, false, 23, 'Rot', 'Schwarz-Matt', true, false, 899, 1099, 1299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (17, 1, 13, 'S63', 'AMG coupé', '7-Gang Automatikgetriebe', 2015, 2070, 585, '8-Zylinder V-Motor', 5461, 900, 'Allrad', 'Benzin', 5.40000000000000036, 2, 2, false, 25, 'Rot', 'Leder', true, false, 499, 699, 899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (18, 1, 7, 'Corvette', 'Z06', '7-Gang Doppelkupplungsgetriebe', 2016, 1659, 659, '8-Zylinder V-Motor', 6162, 881, 'Hinterradantrieb', 'Benzin', 3.5, 2, 2, true, 25, 'Gelb', 'Leder', false, false, 499, 699, 899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (19, 1, 8, 'DB11', 'Coupe', '8-Gang Doppelkupplungsgetriebe', 2016, 1870, 608, '12-Zylinder V-Motor', 5204, 700, 'Hinterradantrieb', 'Benzin', 3.89999999999999991, 2, 2, true, 25, 'Schwarz', 'Leder', false, false, 599, 799, 999, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (20, 1, 8, 'Vant', 'V8', '8-Gang Doppelkupplungsgetriebe', 2018, 1530, 510, '8-Zylinder V-Motor', 3982, 685, 'Hinterradantrieb', 'Benzin', 3.70000000000000018, 2, 2, true, 23, 'Blau', 'Leder', false, false, 599, 799, 999, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (21, 1, 8, 'DBS', 'Superleggera', '8-Gang Automatikgetriebe', 2018, 1693, 725, '12-Zylinder V-Motor', 5204, 900, 'Hinterradantrieb', 'Benzin', 3.39999999999999991, 2, 2, true, 23, 'Dunkel Rot', 'Leder', false, false, 999, 1199, 1399, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (22, 2, 12, '918', 'Spyder', '7-Gang Doppelkupplungsgetriebe', 2014, 1750, 608, '8-Zylinder V-Motor', 4593, 540, 'Allrad', 'Benzin', 2.60000000000000009, 2, 2, true, 21, 'Silber', 'Leder', false, false, 1499, 1699, 1899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (23, 2, 11, 'i8', 'Coupe', '6-Gang Automatikgetriebe', 2018, 1610, 231, '3-Zylinder Reiheotor', 1499, 320, 'Allradantrieb', 'Benzin', 4.40000000000000036, 2, 2, false, 21, 'Silber', 'Leder', false, false, 359, 559, 759, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (24, 2, 11, 'M6', '', '7-Gang Doppelkupplungsgetriebe', 2013, 1950, 560, '8-Zylinder V-Motor', 4395, 680, 'Hinterradantrieb', 'Benzin', 4, 5, 4, true, 23, 'Silber', 'Leder', false, false, 399, 599, 799, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (25, 2, 3, 'NSX', '', '9-Gang Doppelkupplungsgetriebe', 2016, 1776, 507, '6-Zylinder V-Motor', 3493, 550, 'Allradantrieb', 'Benzin', 3.5, 2, 2, false, 23, 'Orange', 'Leder', false, false, 359, 559, 759, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (26, 2, 12, 'Panamera', '4 E-Hybrid', '8-Gang Automatikgetriebe', 2013, 2170, 416, '6-Zylinder V-Motor', 2995, 590, 'Hinterradantrieb', 'Benzin', 5.59999999999999964, 2, 2, true, 23, 'Grau', 'Leder', false, false, 499, 699, 899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (27, 3, 9, 'Continental', 'GT', '6-Gang Automatikgetriebe', 2003, 2350, 560, '12-Zylinder W-Motor', 5998, 650, 'Allrad', 'Benzin', 4.20000000000000018, 4, 2, false, 23, 'Blau', 'Leder', false, false, 699, 899, 1099, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (28, 3, 13, 'S63', 'AMG', '7-Gang Automatikgetriebe', 2015, 2070, 585, '8-Zylinder V-Motor', 5461, 900, 'Allrad', 'Benzin', 4.09999999999999964, 4, 2, true, 23, 'Weiß', 'Leder', true, false, 499, 699, 899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (29, 3, 13, '500', 'L', '5-Gang Automatikgetriebe', 2003, 1895, 306, '8-Zylinder V-Motor', 4966, 460, 'Hinterradantrieb', 'Benzin', 6.5, 6, 4, true, 21, 'Silber', 'Leder', true, false, 299, 499, 699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (30, 3, 13, 'S600', 'Maybach', '9-Gang Automatikgetriebe', 2015, 2220, 455, '8-Zylinder V-Motor', 4663, 700, 'Hinterradantrieb', 'Benzin', 5, 5, 4, true, 21, 'Schwarz', 'Leder', true, true, 899, 1099, 1299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (31, 3, 10, 'Phantom', '', '8-Gang Automatikgetriebe', 2018, 2560, 320, '12-Zylinder V-Motor', 6749, 900, 'Hinterradantrieb', 'Benzin', 5.29999999999999982, 5, 4, false, 23, 'Lila', 'Leder', true, true, 1499, 1699, 1899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (32, 3, 10, 'Wraith', '', '8-Gang Automatikgetriebe', 2013, 2435, 632, '12-Zylinder V-Motor', 6592, 800, 'Hinterradantrieb', 'Benzin', 4.59999999999999964, 4, 2, false, 25, 'Schwarz', 'Leder', false, false, 1699, 1899, 2099, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (33, 3, 12, 'Panamera', 'Turbo', '7-Gang Doppelkupplungsgetriebe', 2011, 2045, 500, '8-Zylinder V-Motor', 4806, 700, 'Allrad', 'Benzin', 4.09999999999999964, 4, 4, true, 25, 'Rot', 'Leder', false, false, 459, 659, 859, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (34, 3, 9, 'Flying Spur', '', '8-Gang Automatikgetriebe', 2014, 2425, 507, '8-Zylinder V-Motor', 3993, 660, 'Allrad', 'Benzin', 5.20000000000000018, 5, 4, true, 21, 'Blau-Grau', 'Leder', true, false, 899, 1099, 1299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (35, 3, 9, 'Mulsanne Speed', '', '8-Gang Automatikgetriebe', 2016, 2685, 537, '8-Zylinder V-Motor', 6752, 1100, 'Hinterradantrieb', 'Benzin', 4.90000000000000036, 5, 4, false, 23, 'Hell-Blau', 'Leder', true, false, 899, 1099, 1299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (36, 3, 6, 'Quattroporte', 'GTS', '8-Gang Automatikgetriebe', 2016, 1900, 550, '8-Zylinder V-Motor', 3799, 710, 'Hinterradantrieb', 'Benzin', 4.70000000000000018, 5, 4, false, 23, 'Weiß', 'Leder', false, false, 299, 499, 699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (37, 3, 16, 'XJR', 'X308', '5-Gang Automatikgetriebe', 1997, 1775, 363, '8-Zylinder V-Motor', 3996, 505, 'Hinterradantrieb', 'Benzin', 5.59999999999999964, 5, 4, true, 23, 'Schwarz-Matt', 'Leder', false, false, 299, 499, 699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (38, 3, 11, 'M760Li', 'xDrive', '9-Gang Automatikgetriebe', 2018, 2070, 612, '8-Zylinder V-Motor', 3982, 900, 'Allrad', 'Benzin', 3.5, 5, 4, true, 21, 'Schwarz-Matt', 'Leder', true, true, 359, 559, 759, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (39, 3, 11, '745Le', '', '8-Gang Automatikgetriebe', 2019, 2110, 286, '6-Zylinder Reiheotor', 2998, 450, 'Hinterradantrieb', 'Elektro', 5.29999999999999982, 5, 4, false, 25, 'Grau', 'Leder', true, true, 299, 599, 799, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (40, 3, 14, 'A8', '', '8-Gang Automatikgetriebe', 2011, 1970, 420, '8-Zylinder V-Motor', 3993, 600, 'Allrad', 'Benzin', 4.59999999999999964, 5, 4, false, 25, 'Schwarz', 'Leder', true, false, 299, 499, 699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (41, 3, 14, 'S8', 'Plus', '8-Gang Automatikgetriebe', 2016, 2065, 605, '8-Zylinder V-Motor', 3993, 750, 'Allrad', 'Benzin', 3.60000000000000009, 5, 4, false, 25, 'Silber', 'Leder', true, false, 349, 549, 749, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (42, 3, 4, 'CTS-V', '', '8-Gang Automatikgetriebe', 2015, 1850, 649, '8-Zylinder V-Motor', 6162, 855, 'Hinterradantrieb', 'Benzin', 3.70000000000000018, 5, 4, false, 23, 'Weiß', 'Leder', false, false, 249, 449, 649, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (43, 4, 9, 'Bentayga', '', '8-Gang Automatikgetriebe', 2016, 2440, 608, '12-Zylinder W-Motor', 5950, 900, 'Allrad', 'Benzin', 4, 5, 4, false, 23, 'Orange', 'Leder', true, true, 1299, 1499, 1699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (44, 4, 6, 'Levante', '', '8-Gang Automatikgetriebe', 2016, 2109, 430, '6-Zylinder V-Motor', 2979, 580, 'Allrad', 'Benzin', 5.20000000000000018, 5, 4, true, 23, 'Grau-Matt', 'Leder', false, false, 299, 499, 699, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (45, 4, 10, 'Cullinan', '', '8-Gang Automatikgetriebe', 2018, 2660, 571, '12-Zylinder V-Motor', 6749, 850, 'Allrad', 'Benzin', 5.20000000000000018, 4, 4, true, 23, 'Rot', 'Leder', true, false, 1899, 2099, 2299, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (46, 4, 4, 'Escalade', '6.2 V8 ESV', '8-Gang Automatikgetriebe', 2017, 2725, 426, '8-Zylinder V-Motor', 6162, 610, 'Allrad', 'Benzin', 6.90000000000000036, 7, 4, true, 23, 'Dunkel-Grau', 'Leder', false, false, 499, 699, 899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (47, 4, 14, 'SQ8', 'TDI', 'Elektro', 2018, 2440, 435, 'V8-Zylinder-Dieselmotor', 3956, 900, 'Allrad', 'Diesel', 4.79999999999999982, 5, 4, true, 25, 'Grau', 'Leder', false, false, 449, 649, 849, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (48, 4, 13, 'G 500', '', '9-Gang Automatikgetriebe', 2018, 2429, 422, '8-Zylinder V-Motor', 3982, 610, 'Allrad', 'Benzin', 5.90000000000000036, 5, 4, false, 25, 'Grau-Matt', 'Leder', false, false, 449, 649, 849, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (49, 4, 13, 'G 63', '', '7-Gang Automatikgetriebe', 2015, 2555, 571, '8-Zylinder V-Motor', 5461, 760, 'Allrad', 'Benzin', 5.40000000000000036, 5, 4, false, 23, 'Weiß', 'Leder', false, false, 499, 699, 899, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (50, 4, 11, 'X5', 'M50', '8-Gang Automatikgetriebe', 2018, 2350, 400, '6-Zylinder Reiheotor', 2993, 760, 'Allrad', 'Benzin', 5.20000000000000018, 5, 4, false, 23, 'Silber', 'Leder', false, false, 349, 549, 749, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (51, 4, 1, 'Sport', 'SVR', '8-Gang Automatikgetriebe', 2017, 2330, 550, '8-Zylinder V-Motor', 5000, 680, 'Allrad', 'Benzin', 4.90000000000000036, 5, 4, false, 23, 'Blau', 'Leder', false, false, 359, 559, 759, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (52, 4, 11, 'X7', '', '8-Gang Automatikgetriebe', 2018, 2395, 340, '6-Zylinder Reiheotor', 2998, 450, 'Allrad', 'Benzin', 6.09999999999999964, 7, 4, true, 23, 'Braun', 'Leder', false, false, 369, 569, 769, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (53, 4, 13, 'GLS', '', '9-Gang Automatikgetriebe', 2015, 2445, 333, '6-Zylinder V-Motor', 2996, 480, 'Allrad', 'Benzin', 6.59999999999999964, 7, 4, true, 25, 'Grau', 'Leder', false, false, 549, 749, 949, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (54, 4, 12, 'Cayenne', '', '6-Gang Schaltgetriebe', 2010, 2300, 405, '8-Zylinder V-Motor', 4806, 500, 'Allrad', 'Benzin', 6.5, 5, 4, true, 25, 'Grau', 'Leder', false, false, 369, 569, 769, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (55, 4, 12, 'Macan', 'Turbo', '7-Gang Doppelkupplungsgetriebe', 2016, 1970, 360, '6-Zylinder V-Motor', 2997, 500, 'Allrad', 'Benzin', 5.20000000000000018, 5, 4, true, 21, 'Blau', 'Leder', false, false, 359, 559, 759, NULL, NULL);
INSERT INTO public.ec_product_type (id, category_id, brand_id, model, variant, gearing_type, age, weight_kg, power_ps, engine, cubic_capacity_cm3, nm, drive_system, fuel_type, zero_to_hundred, seats, doors, add_driver, minimum_age, body_color, upholstery, massage_seats, displays_rear, price_200, price_500, price_1000, blocked_when, highlighted) OVERRIDING SYSTEM VALUE VALUES (56, 4, 2, 'Urus', '', '8-Gang Automatikgetriebe', 2019, 2200, 650, '8-Zylinder V-Motor', 3996, 850, 'Allrad', 'Benzin', 3.60000000000000009, 5, 5, true, 21, 'Gelb', 'Leder', false, false, 999, 1199, 1399, NULL, NULL);


--
-- TOC entry 2872 (class 0 OID 17745)
-- Dependencies: 200
-- Data for Name: ec_role; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2873 (class 0 OID 17751)
-- Dependencies: 201
-- Data for Name: ec_search_words; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2874 (class 0 OID 17757)
-- Dependencies: 202
-- Data for Name: ec_user; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 204
-- Name: ec_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_brand_id_seq', 1, false);


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 203
-- Name: ec_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_category_id_seq', 1, false);


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 205
-- Name: ec_pictures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_pictures_id_seq', 1, false);


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 206
-- Name: ec_product_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_product_type_id_seq', 1, false);


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 207
-- Name: ec_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_role_id_seq', 1, false);


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 208
-- Name: ec_search_words_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_search_words_id_seq', 1, false);


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 209
-- Name: ec_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ec_user_id_seq', 1, false);


--
-- TOC entry 2731 (class 2606 OID 17764)
-- Name: ec_category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2729 (class 2606 OID 17766)
-- Name: ec_brand ec_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_brand
    ADD CONSTRAINT ec_brand_pkey PRIMARY KEY (id);


--
-- TOC entry 2733 (class 2606 OID 17768)
-- Name: ec_pictures ec_pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_pictures
    ADD CONSTRAINT ec_pictures_pkey PRIMARY KEY (id);


--
-- TOC entry 2735 (class 2606 OID 17770)
-- Name: ec_product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2737 (class 2606 OID 17772)
-- Name: ec_role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- TOC entry 2739 (class 2606 OID 17774)
-- Name: ec_search_words search_words_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_search_words
    ADD CONSTRAINT search_words_pkey PRIMARY KEY (id);


--
-- TOC entry 2741 (class 2606 OID 17776)
-- Name: ec_user usert_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_user
    ADD CONSTRAINT usert_pkey PRIMARY KEY (id);


--
-- TOC entry 2743 (class 2606 OID 17777)
-- Name: ec_product_type product_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_brand_fk FOREIGN KEY (brand_id) REFERENCES public.ec_brand(id);


--
-- TOC entry 2744 (class 2606 OID 17782)
-- Name: ec_product_type product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.ec_category(id);


--
-- TOC entry 2742 (class 2606 OID 17787)
-- Name: ec_pictures product_pictures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_pictures
    ADD CONSTRAINT product_pictures_fk FOREIGN KEY (product_id) REFERENCES public.ec_product_type(id);


--
-- TOC entry 2745 (class 2606 OID 17792)
-- Name: ec_search_words search_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_search_words
    ADD CONSTRAINT search_user_fk FOREIGN KEY (user_id) REFERENCES public.ec_user(id);


--
-- TOC entry 2746 (class 2606 OID 17797)
-- Name: ec_user user_role_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_user
    ADD CONSTRAINT user_role_fk FOREIGN KEY (role_id) REFERENCES public.ec_role(id);


-- Completed on 2019-09-14 19:18:37

--
-- PostgreSQL database dump complete
--

