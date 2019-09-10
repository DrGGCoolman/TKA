--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-09-08 14:26:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 25602)
-- Name: ec_admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_admin (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.ec_admin OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 25605)
-- Name: ec_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_category (
    id integer NOT NULL,
    title character varying NOT NULL
);


ALTER TABLE public.ec_category OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 25611)
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
-- TOC entry 199 (class 1259 OID 25617)
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
-- TOC entry 200 (class 1259 OID 25623)
-- Name: ec_product_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_product_entity (
    id integer NOT NULL,
    body_color character varying NOT NULL,
    upholstery character varying NOT NULL,
    massage_seats boolean,
    displays_rear boolean,
    price_200 double precision NOT NULL,
    price_500 double precision NOT NULL,
    price_1000 double precision NOT NULL,
    availibility_weekdays character varying(1),
    product_id integer NOT NULL
);


ALTER TABLE public.ec_product_entity OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 25629)
-- Name: ec_product_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_product_type (
    id integer NOT NULL,
    category_id integer NOT NULL,
    brand character varying NOT NULL,
    model character varying NOT NULL,
    variant character varying,
    gearing_type character varying NOT NULL,
    age integer NOT NULL,
    weight double precision NOT NULL,
    power integer NOT NULL,
    engine character varying NOT NULL,
    cubic_capacity integer NOT NULL,
    nm double precision NOT NULL,
    drive_system character varying NOT NULL,
    fuel_type character varying NOT NULL,
    zero_to_hundred double precision NOT NULL,
    seats integer NOT NULL,
    luggage_compartment integer NOT NULL,
    doors integer NOT NULL,
    add_driver boolean NOT NULL,
    minimum_age integer NOT NULL
);


ALTER TABLE public.ec_product_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25635)
-- Name: ec_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ec_user (
    id integer NOT NULL,
    name character varying NOT NULL,
    firstname character varying NOT NULL,
    gender character(1),
    e_mail character varying NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.ec_user OWNER TO postgres;

--
-- TOC entry 2851 (class 0 OID 25602)
-- Dependencies: 196
-- Data for Name: ec_admin; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2852 (class 0 OID 25605)
-- Dependencies: 197
-- Data for Name: ec_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_category (id, title) VALUES (1, 'sport');
INSERT INTO public.ec_category (id, title) VALUES (2, 'sport+');
INSERT INTO public.ec_category (id, title) VALUES (3, 'luxus');
INSERT INTO public.ec_category (id, title) VALUES (4, 'suv');


--
-- TOC entry 2853 (class 0 OID 25611)
-- Dependencies: 198
-- Data for Name: ec_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_customer (title, birth, user_id, street, house_number, post_code, city) VALUES ('Mr', '1990-11-11', 1, 'Robinson Blv', 3, 90001, 'Santa Babara');


--
-- TOC entry 2854 (class 0 OID 25617)
-- Dependencies: 199
-- Data for Name: ec_pictures; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2855 (class 0 OID 25623)
-- Dependencies: 200
-- Data for Name: ec_product_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2856 (class 0 OID 25629)
-- Dependencies: 201
-- Data for Name: ec_product_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (1, 1, 'Nissan', 'GTR', 'Nismo', '6-Gang Doppelkupplungsgetriebe', 2012, 1815, 550, '3,8 l V6', 3799, 632, 'Allrad', 'Super Plus', 2.70000000000000018, 4, 315, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (2, 1, 'Lamborghini', 'Aventador', 'Roadster', '7-Gang Automatikgetriebe', 1575, 1625, 700, '12-Zylinder V-Motor', 6498, 690, 'Allrad', 'Super Plus', 2.89999999999999991, 2, 150, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (3, 1, 'Lamborghini', 'Aventador', 'SV', '7-Gang Automatikgetriebe', 2015, 1525, 750, '12-Zylinder V-Motor', 6498, 690, 'Allrad', 'Benzin', 3, 2, 150, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (4, 1, 'Lamborghini', 'Huracán', '', '7-Gang Doppelkupplungsgetriebe', 2014, 1422, 610, '10-Zylinder V-Motor', 5204, 560, 'Allrad', 'Benzin', 3.20000000000000018, 2, 100, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (5, 1, 'Lamborghini', 'Huracán', 'Performante Spyder', '7-Gang Doppelkupplungsgetriebe', 2016, 1542, 610, '10-Zylinder V-Motor', 5204, 560, 'Allrad', 'Benzin', 3.39999999999999991, 2, 100, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (6, 1, 'Ferrari', '488', 'Pista', '7-Gang Doppelkupplungsgetriebe', 2018, 1385, 720, '8-Zylinder V-Motor', 3902, 770, 'Allrad', 'Benzin', 2.79999999999999982, 2, 170, 2, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (7, 1, 'Ferrari', '458', 'Italia', '7-Gang Doppelkupplungsgetriebe', 2010, 1485, 570, '8-Zylinder V-Motor', 4499, 540, 'Allrad', 'Benzin', 3.39999999999999991, 2, 230, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (8, 1, 'Ferrari', 'F12', 'Berlinetta', '7-Gang Doppelkupplungsgetriebe', 2012, 1630, 741, '12-Zylinder V-Motor', 6262, 690, 'Allrad', 'Benzin', 3.20000000000000018, 2, 320, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (9, 1, 'Ferrari', 'GTC4', 'Lusso', '7-Gang Doppelkupplungsgetriebe', 2015, 1920, 690, '12-Zylinder V-Motor', 6262, 697, 'Allrad', 'Benzin', 3.39999999999999991, 2, 450, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (10, 1, 'Ferrari', '812', 'Superfast', '7-Gang Doppelkupplungsgetriebe', 2018, 1630, 800, '12-Zylinder V-Motor', 6496, 718, 'Allrad', 'Benzin', 2.89999999999999991, 2, 320, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (11, 1, 'Porsche', 'Turbo', 'S', '7-Gang Doppelkupplungsgetriebe', 2016, 1675, 580, '6-Zylinder Boxermotor', 3800, 50, 'Allrad', 'Benzin', 2.89999999999999991, 2, 115, 2, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (12, 1, 'Porsche', 'Gt3', 'RS', '7-Gang Doppelkupplungsgetriebe', 2018, 1505, 520, '6-Zylinder Boxermotor', 3996, 470, 'Allrad', 'Benzin', 3.39999999999999991, 2, 125, 2, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (13, 1, 'Porsche', 'GT2', 'RS', '6-Gang Schaltgetriebe', 2016, 1445, 544, '6-Zylinder Boxermotor', 3600, 798, 'Hinterradantrieb', 'Benzin/Diesel', 3.5, 2, 105, 2, false, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (14, 1, 'Audi', 'R8', 'Coupe', '7-Gang Doppelkupplungsgetriebe', 2015, 1715, 540, '10-Zylinder V-Motor', 5204, 540, 'Allrad', 'Benzin', 3.5, 2, 112, 2, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (15, 1, 'Mercedes', 'SLS', '', '7-Gang Doppelkupplungsgetriebe', 2009, 1695, 571, '8-Zylinder V-Motor', 6208, 650, 'Allrad', 'Benzin', 3.79999999999999982, 2, 176, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (16, 1, 'Mercedes', 'GT', 'S', '7-Gang Doppelkupplungsgetriebe', 2015, 1645, 510, '8-Zylinder V-Motor', 3982, 650, 'Allrad', 'Benzin', 3.60000000000000009, 2, 350, 2, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (17, 1, 'Mercedes', 'S63', 'AMG coupé', '7-Gang Automatikgetriebe', 2015, 2070, 585, '8-Zylinder V-Motor', 5461, 900, 'Allrad', 'Benzin', 5.40000000000000036, 2, 400, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (18, 1, 'Chevrolet', 'Corvette', 'Z06', '7-Gang Doppelkupplungsgetriebe', 2016, 1659, 659, '8-Zylinder V-Motor', 6162, 881, 'Hinterradantrieb', 'Benzin', 3.5, 2, 287, 2, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (19, 1, 'Aston Martin', 'DB11', 'Coupe', '8-Gang Doppelkupplungsgetriebe', 2016, 1870, 608, '12-Zylinder V-Motor', 5204, 700, 'Hinterradantrieb', 'Benzin', 3.89999999999999991, 2, 270, 2, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (20, 1, 'Aston Martin', 'Vant', 'V8', '8-Gang Doppelkupplungsgetriebe', 2018, 1530, 510, '8-Zylinder V-Motor', 3982, 685, 'Hinterradantrieb', 'Benzin', 3.70000000000000018, 2, 350, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (21, 1, 'Aston Martin', 'DBS', 'Superleggera', '8-Gang Automatikgetriebe', 2018, 1693, 725, '12-Zylinder V-Motor', 5204, 900, 'Hinterradantrieb', 'Benzin', 3.39999999999999991, 2, 280, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (22, 2, 'Porsche', '918', 'Spyder', '7-Gang Doppelkupplungsgetriebe', 2014, 1750, 608, '8-Zylinder V-Motor', 4593, 540, 'Allrad', 'Benzin', 2.60000000000000009, 2, 110, 2, true, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (23, 2, 'BMW', 'i8', 'Coupe', '6-Gang Automatikgetriebe', 2018, 1610, 231, '3-Zylinder Reiheotor', 1499, 320, 'Allradantrieb', 'Benzin', 4.40000000000000036, 2, 154, 2, false, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (24, 2, 'BMW', 'M6', '', '7-Gang Doppelkupplungsgetriebe', 2013, 1950, 560, '8-Zylinder V-Motor', 4395, 680, 'Hinterradantrieb', 'Benzin', 4, 5, 460, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (25, 2, 'Honda', 'NSX', '', '9-Gang Doppelkupplungsgetriebe', 2016, 1776, 507, '6-Zylinder V-Motor', 3493, 550, 'Allradantrieb', 'Benzin', 3.5, 2, 110, 2, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (26, 2, 'Porsche', 'Panamera', '4 E-Hybrid', '8-Gang Automatikgetriebe', 2013, 2170, 416, '6-Zylinder V-Motor', 2995, 590, 'Hinterradantrieb', 'Benzin', 5.59999999999999964, 2, 335, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (27, 3, 'Bentley', 'Continental', 'GT', '6-Gang Automatikgetriebe', 2003, 2350, 560, '12-Zylinder W-Motor', 5998, 650, 'Allrad', 'Benzin', 4.20000000000000018, 4, 370, 2, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (28, 3, 'Mercedes', 'S63', 'AMG', '7-Gang Automatikgetriebe', 2015, 2070, 585, '8-Zylinder V-Motor', 5461, 900, 'Allrad', 'Benzin', 4.09999999999999964, 4, 400, 2, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (29, 3, 'Mercedes', '500', 'L', '5-Gang Automatikgetriebe', 2003, 1895, 306, '8-Zylinder V-Motor', 4966, 460, 'Hinterradantrieb', 'Benzin', 6.5, 6, 500, 4, true, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (30, 3, 'Mercedes', 'S600', 'Maybach', '9-Gang Automatikgetriebe', 2015, 2220, 455, '8-Zylinder V-Motor', 4663, 700, 'Hinterradantrieb', 'Benzin', 5, 5, 500, 4, true, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (31, 3, 'Rolls-Royce', 'Phantom', '', '8-Gang Automatikgetriebe', 2018, 2560, 320, '12-Zylinder V-Motor', 6749, 900, 'Hinterradantrieb', 'Benzin', 5.29999999999999982, 5, 548, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (32, 3, 'Rolls-Royce', 'Wraith', '', '8-Gang Automatikgetriebe', 2013, 2435, 632, '12-Zylinder V-Motor', 6592, 800, 'Hinterradantrieb', 'Benzin', 4.59999999999999964, 4, 470, 2, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (33, 3, 'Porsche', 'Panamera', 'Turbo', '7-Gang Doppelkupplungsgetriebe', 2011, 2045, 500, '8-Zylinder V-Motor', 4806, 700, 'Allrad', 'Benzin', 4.09999999999999964, 4, 432, 4, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (34, 3, 'Bentley', 'Flying Spur', '', '8-Gang Automatikgetriebe', 2014, 2425, 507, '8-Zylinder V-Motor', 3993, 660, 'Allrad', 'Benzin', 5.20000000000000018, 5, 475, 4, true, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (35, 3, 'Bentley', 'Mulsanne Speed', '', '8-Gang Automatikgetriebe', 2016, 2685, 537, '8-Zylinder V-Motor', 6752, 1100, 'Hinterradantrieb', 'Benzin', 4.90000000000000036, 5, 443, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (36, 3, 'Maserati', 'Quattroporte', 'GTS', '8-Gang Automatikgetriebe', 2016, 1900, 550, '8-Zylinder V-Motor', 3799, 710, 'Hinterradantrieb', 'Benzin', 4.70000000000000018, 5, 530, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (37, 3, 'Jaguar', 'XJR', 'X308', '5-Gang Automatikgetriebe', 1997, 1775, 363, '8-Zylinder V-Motor', 3996, 505, 'Hinterradantrieb', 'Benzin', 5.59999999999999964, 5, 430, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (38, 3, 'BMW', 'M760Li', 'xDrive', '9-Gang Automatikgetriebe', 2018, 2070, 612, '8-Zylinder V-Motor', 3982, 900, 'Allrad', 'Benzin', 3.5, 5, 510, 4, true, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (39, 3, 'BMW', '745Le', '', '8-Gang Automatikgetriebe', 2019, 2110, 286, '6-Zylinder Reiheotor', 2998, 450, 'Hinterradantrieb', 'Elektro', 5.29999999999999982, 5, 515, 4, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (40, 3, 'Audi', 'A8', '', '8-Gang Automatikgetriebe', 2011, 1970, 420, '8-Zylinder V-Motor', 3993, 600, 'Allrad', 'Benzin', 4.59999999999999964, 5, 510, 4, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (41, 3, 'Audi', 'S8', 'Plus', '8-Gang Automatikgetriebe', 2016, 2065, 605, '8-Zylinder V-Motor', 3993, 750, 'Allrad', 'Benzin', 3.60000000000000009, 5, 520, 4, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (42, 3, 'Cadillac', 'CTS-V', '', '8-Gang Automatikgetriebe', 2015, 1850, 649, '8-Zylinder V-Motor', 6162, 855, 'Hinterradantrieb', 'Benzin', 3.70000000000000018, 5, 388, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (43, 4, 'Bentley', 'Bentayga', '', '8-Gang Automatikgetriebe', 2016, 2440, 608, '12-Zylinder W-Motor', 5950, 900, 'Allrad', 'Benzin', 4, 5, 430, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (44, 4, 'Maserati', 'Levante', '', '8-Gang Automatikgetriebe', 2016, 2109, 430, '6-Zylinder V-Motor', 2979, 580, 'Allrad', 'Benzin', 5.20000000000000018, 5, 580, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (45, 4, 'Rolls Royce', 'Cullinan', '', '8-Gang Automatikgetriebe', 2018, 2660, 571, '12-Zylinder V-Motor', 6749, 850, 'Allrad', 'Benzin', 5.20000000000000018, 4, 560, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (46, 4, 'Cadillac', 'Escalade', '6.2 V8 ESV', '8-Gang Automatikgetriebe', 2017, 2725, 426, '8-Zylinder V-Motor', 6162, 610, 'Allrad', 'Benzin', 6.90000000000000036, 7, 1113, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (47, 4, 'Audi', 'SQ8', 'TDI', 'Elektro', 2018, 2440, 435, 'V8-Zylinder-Dieselmotor', 3956, 900, 'Allrad', 'Diesel', 4.79999999999999982, 5, 605, 4, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (48, 4, 'Mercedes', 'G 500', '', '9-Gang Automatikgetriebe', 2018, 2429, 422, '8-Zylinder V-Motor', 3982, 610, 'Allrad', 'Benzin', 5.90000000000000036, 5, 567, 4, false, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (49, 4, 'Mercedes', 'G 63', '', '7-Gang Automatikgetriebe', 2015, 2555, 571, '8-Zylinder V-Motor', 5461, 760, 'Allrad', 'Benzin', 5.40000000000000036, 5, 487, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (50, 4, 'BMW', 'X5', 'M50', '8-Gang Automatikgetriebe', 2018, 2350, 400, '6-Zylinder Reiheotor', 2993, 760, 'Allrad', 'Benzin', 5.20000000000000018, 5, 645, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (51, 4, 'Range Rover', 'Sport', 'SVR', '8-Gang Automatikgetriebe', 2017, 2330, 550, '8-Zylinder V-Motor', 5000, 680, 'Allrad', 'Benzin', 4.90000000000000036, 5, 489, 4, false, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (52, 4, 'BMW', 'X7', '', '8-Gang Automatikgetriebe', 2018, 2395, 340, '6-Zylinder Reiheotor', 2998, 450, 'Allrad', 'Benzin', 6.09999999999999964, 7, 560, 4, true, 23);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (53, 4, 'Mercedes', 'GLS', '', '9-Gang Automatikgetriebe', 2015, 2445, 333, '6-Zylinder V-Motor', 2996, 480, 'Allrad', 'Benzin', 6.59999999999999964, 7, 450, 4, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (54, 4, 'Porsche', 'Cayenne', '', '6-Gang Schaltgetriebe', 2010, 2300, 405, '8-Zylinder V-Motor', 4806, 500, 'Allrad', 'Benzin', 6.5, 5, 540, 4, true, 25);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (55, 4, 'Porsche', 'Macan', 'Turbo', '7-Gang Doppelkupplungsgetriebe', 2016, 1970, 360, '6-Zylinder V-Motor', 2997, 500, 'Allrad', 'Benzin', 5.20000000000000018, 5, 500, 4, true, 21);
INSERT INTO public.ec_product_type (id, category_id, brand, model, variant, gearing_type, age, weight, power, engine, cubic_capacity, nm, drive_system, fuel_type, zero_to_hundred, seats, luggage_compartment, doors, add_driver, minimum_age) VALUES (56, 4, 'Lamborghini', 'Urus', '', '8-Gang Automatikgetriebe', 2019, 2200, 650, '8-Zylinder V-Motor', 3996, 850, 'Allrad', 'Benzin', 3.60000000000000009, 5, 616, 5, true, 21);


--
-- TOC entry 2857 (class 0 OID 25635)
-- Dependencies: 202
-- Data for Name: ec_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ec_user (id, name, firstname, gender, e_mail, password) VALUES (1, 'Rodriguez', 'Maria', 'f', 'maria.rod@yahoo.de', 'test1234');


--
-- TOC entry 2714 (class 2606 OID 25642)
-- Name: ec_admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- TOC entry 2716 (class 2606 OID 25644)
-- Name: ec_category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2718 (class 2606 OID 25646)
-- Name: ec_pictures ec_pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_pictures
    ADD CONSTRAINT ec_pictures_pkey PRIMARY KEY (id);


--
-- TOC entry 2720 (class 2606 OID 25648)
-- Name: ec_product_entity ec_product_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_entity
    ADD CONSTRAINT ec_product_entity_pkey PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 25650)
-- Name: ec_product_type product_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2724 (class 2606 OID 25652)
-- Name: ec_user usert_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_user
    ADD CONSTRAINT usert_pkey PRIMARY KEY (id);


--
-- TOC entry 2729 (class 2606 OID 33651)
-- Name: ec_product_type product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_type
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.ec_category(id);


--
-- TOC entry 2727 (class 2606 OID 25658)
-- Name: ec_pictures product_pictures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_pictures
    ADD CONSTRAINT product_pictures_fk FOREIGN KEY (product_id) REFERENCES public.ec_product_type(id);


--
-- TOC entry 2728 (class 2606 OID 25663)
-- Name: ec_product_entity product_type_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_product_entity
    ADD CONSTRAINT product_type_entity_fk FOREIGN KEY (product_id) REFERENCES public.ec_product_type(id);


--
-- TOC entry 2725 (class 2606 OID 25668)
-- Name: ec_admin user_admin_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_admin
    ADD CONSTRAINT user_admin_fk FOREIGN KEY (user_id) REFERENCES public.ec_user(id);


--
-- TOC entry 2726 (class 2606 OID 25673)
-- Name: ec_customer user_customer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ec_customer
    ADD CONSTRAINT user_customer_fk FOREIGN KEY (user_id) REFERENCES public.ec_user(id);


-- Completed on 2019-09-08 14:26:50

--
-- PostgreSQL database dump complete
--

