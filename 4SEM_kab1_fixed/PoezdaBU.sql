PGDMP         
                {            Poezda    15.2    15.2 �    �           0    0    ENCODING    ENCODING     !   SET client_encoding = 'WIN1258';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    Poezda    DATABASE     |   CREATE DATABASE "Poezda" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Poezda";
                postgres    false                        2615    17065    trains_sheme    SCHEMA        CREATE SCHEMA trains_sheme;
    DROP SCHEMA trains_sheme;
                postgres    false            �            1259    18648    carriage    TABLE     �  CREATE TABLE trains_sheme.carriage (
    carriage_number integer NOT NULL,
    number_in_train integer NOT NULL,
    type character varying(50),
    number_of_seats integer NOT NULL,
    train_number integer NOT NULL,
    CONSTRAINT check_type CHECK (((type)::text = ANY ((ARRAY['coupe'::character varying, 'reserved seat'::character varying, 'SV'::character varying, 'general'::character varying, 'seated'::character varying, 'soft'::character varying])::text[])))
);
 "   DROP TABLE trains_sheme.carriage;
       trains_sheme         heap    postgres    false    6            �            1259    18644    carriage_carriage_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.carriage_carriage_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE trains_sheme.carriage_carriage_number_seq;
       trains_sheme          postgres    false    6    230            �           0    0    carriage_carriage_number_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE trains_sheme.carriage_carriage_number_seq OWNED BY trains_sheme.carriage.carriage_number;
          trains_sheme          postgres    false    226            �            1259    18645    carriage_number_in_train_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.carriage_number_in_train_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE trains_sheme.carriage_number_in_train_seq;
       trains_sheme          postgres    false    230    6            �           0    0    carriage_number_in_train_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE trains_sheme.carriage_number_in_train_seq OWNED BY trains_sheme.carriage.number_in_train;
          trains_sheme          postgres    false    227            �            1259    18646    carriage_number_of_seats_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.carriage_number_of_seats_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE trains_sheme.carriage_number_of_seats_seq;
       trains_sheme          postgres    false    230    6            �           0    0    carriage_number_of_seats_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE trains_sheme.carriage_number_of_seats_seq OWNED BY trains_sheme.carriage.number_of_seats;
          trains_sheme          postgres    false    228            �            1259    18647    carriage_train_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.carriage_train_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE trains_sheme.carriage_train_number_seq;
       trains_sheme          postgres    false    230    6            �           0    0    carriage_train_number_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE trains_sheme.carriage_train_number_seq OWNED BY trains_sheme.carriage.train_number;
          trains_sheme          postgres    false    229            �            1259    18700    checkout    TABLE     �   CREATE TABLE trains_sheme.checkout (
    checkout_number integer NOT NULL,
    locality character varying(50),
    address character varying(50)
);
 "   DROP TABLE trains_sheme.checkout;
       trains_sheme         heap    postgres    false    6            �            1259    18699    checkout_checkout_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.checkout_checkout_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE trains_sheme.checkout_checkout_number_seq;
       trains_sheme          postgres    false    6    239            �           0    0    checkout_checkout_number_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE trains_sheme.checkout_checkout_number_seq OWNED BY trains_sheme.checkout.checkout_number;
          trains_sheme          postgres    false    238            �            1259    18601 	   passenger    TABLE     B  CREATE TABLE trains_sheme.passenger (
    passenger_id integer NOT NULL,
    passport_data character varying(50),
    surname character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    middle_name character varying(50) NOT NULL,
    phone_number character varying(12),
    email character varying(50)
);
 #   DROP TABLE trains_sheme.passenger;
       trains_sheme         heap    postgres    false    6            �            1259    18600    passenger_passenger_id_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.passenger_passenger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE trains_sheme.passenger_passenger_id_seq;
       trains_sheme          postgres    false    218    6            �           0    0    passenger_passenger_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE trains_sheme.passenger_passenger_id_seq OWNED BY trains_sheme.passenger.passenger_id;
          trains_sheme          postgres    false    217            �            1259    18666    seat    TABLE     h  CREATE TABLE trains_sheme.seat (
    seat_number integer NOT NULL,
    seat_number_carriage integer NOT NULL,
    carriage_number integer NOT NULL,
    status character varying(50) NOT NULL,
    CONSTRAINT check_status CHECK (((status)::text = ANY ((ARRAY['occupied'::character varying, 'reserved'::character varying, 'free'::character varying])::text[])))
);
    DROP TABLE trains_sheme.seat;
       trains_sheme         heap    postgres    false    6            �            1259    18665    seat_carriage_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.seat_carriage_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE trains_sheme.seat_carriage_number_seq;
       trains_sheme          postgres    false    6    234            �           0    0    seat_carriage_number_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE trains_sheme.seat_carriage_number_seq OWNED BY trains_sheme.seat.carriage_number;
          trains_sheme          postgres    false    233            �            1259    18664    seat_seat_number_carriage_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.seat_seat_number_carriage_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE trains_sheme.seat_seat_number_carriage_seq;
       trains_sheme          postgres    false    6    234            �           0    0    seat_seat_number_carriage_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE trains_sheme.seat_seat_number_carriage_seq OWNED BY trains_sheme.seat.seat_number_carriage;
          trains_sheme          postgres    false    232            �            1259    18663    seat_seat_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.seat_seat_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE trains_sheme.seat_seat_number_seq;
       trains_sheme          postgres    false    6    234            �           0    0    seat_seat_number_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE trains_sheme.seat_seat_number_seq OWNED BY trains_sheme.seat.seat_number;
          trains_sheme          postgres    false    231            �            1259    18610    shedule    TABLE     K  CREATE TABLE trains_sheme.shedule (
    route_number integer NOT NULL,
    arrival_time time without time zone NOT NULL,
    depature_time time without time zone NOT NULL,
    type character varying(50) NOT NULL,
    periodic character varying(50) NOT NULL,
    destination integer NOT NULL,
    depature_point integer NOT NULL
);
 !   DROP TABLE trains_sheme.shedule;
       trains_sheme         heap    postgres    false    6            �            1259    18609    shedule_depature_point_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.shedule_depature_point_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE trains_sheme.shedule_depature_point_seq;
       trains_sheme          postgres    false    222    6            �           0    0    shedule_depature_point_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE trains_sheme.shedule_depature_point_seq OWNED BY trains_sheme.shedule.depature_point;
          trains_sheme          postgres    false    221            �            1259    18608    shedule_destination_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.shedule_destination_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE trains_sheme.shedule_destination_seq;
       trains_sheme          postgres    false    6    222            �           0    0    shedule_destination_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE trains_sheme.shedule_destination_seq OWNED BY trains_sheme.shedule.destination;
          trains_sheme          postgres    false    220            �            1259    18607    shedule_route_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.shedule_route_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE trains_sheme.shedule_route_number_seq;
       trains_sheme          postgres    false    222    6            �           0    0    shedule_route_number_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE trains_sheme.shedule_route_number_seq OWNED BY trains_sheme.shedule.route_number;
          trains_sheme          postgres    false    219            �            1259    18594    stop    TABLE     �   CREATE TABLE trains_sheme.stop (
    stop_number integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50)
);
    DROP TABLE trains_sheme.stop;
       trains_sheme         heap    postgres    false    6            �            1259    18682    stop_shedule    TABLE       CREATE TABLE trains_sheme.stop_shedule (
    route_number integer NOT NULL,
    stop_number integer NOT NULL,
    arrival_time time without time zone NOT NULL,
    depature_time time without time zone NOT NULL,
    stop_time time without time zone NOT NULL
);
 &   DROP TABLE trains_sheme.stop_shedule;
       trains_sheme         heap    postgres    false    6            �            1259    18680    stop_shedule_route_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.stop_shedule_route_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE trains_sheme.stop_shedule_route_number_seq;
       trains_sheme          postgres    false    6    237            �           0    0    stop_shedule_route_number_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE trains_sheme.stop_shedule_route_number_seq OWNED BY trains_sheme.stop_shedule.route_number;
          trains_sheme          postgres    false    235            �            1259    18681    stop_shedule_stop_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.stop_shedule_stop_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE trains_sheme.stop_shedule_stop_number_seq;
       trains_sheme          postgres    false    6    237            �           0    0    stop_shedule_stop_number_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE trains_sheme.stop_shedule_stop_number_seq OWNED BY trains_sheme.stop_shedule.stop_number;
          trains_sheme          postgres    false    236            �            1259    18593    stop_stop_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.stop_stop_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE trains_sheme.stop_stop_number_seq;
       trains_sheme          postgres    false    216    6            �           0    0    stop_stop_number_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE trains_sheme.stop_stop_number_seq OWNED BY trains_sheme.stop.stop_number;
          trains_sheme          postgres    false    215            �            1259    18713    ticket    TABLE     �  CREATE TABLE trains_sheme.ticket (
    ticket_id integer NOT NULL,
    passenger_id integer NOT NULL,
    destination integer NOT NULL,
    depature_point integer NOT NULL,
    seat_number integer NOT NULL,
    status character varying(50) NOT NULL,
    price integer NOT NULL,
    in_checkout_or_not character varying(50) NOT NULL,
    checkout_number integer NOT NULL,
    CONSTRAINT check_in_or CHECK (((in_checkout_or_not)::text = ANY ((ARRAY['yes'::character varying, 'no'::character varying])::text[]))),
    CONSTRAINT check_status CHECK (((status)::text = ANY ((ARRAY['paid'::character varying, 'back'::character varying, 'changed'::character varying])::text[])))
);
     DROP TABLE trains_sheme.ticket;
       trains_sheme         heap    postgres    false    6            �            1259    18712    ticket_checkout_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_checkout_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE trains_sheme.ticket_checkout_number_seq;
       trains_sheme          postgres    false    247    6            �           0    0    ticket_checkout_number_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE trains_sheme.ticket_checkout_number_seq OWNED BY trains_sheme.ticket.checkout_number;
          trains_sheme          postgres    false    246            �            1259    18709    ticket_depature_point_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_depature_point_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE trains_sheme.ticket_depature_point_seq;
       trains_sheme          postgres    false    6    247            �           0    0    ticket_depature_point_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE trains_sheme.ticket_depature_point_seq OWNED BY trains_sheme.ticket.depature_point;
          trains_sheme          postgres    false    243            �            1259    18708    ticket_destination_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_destination_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE trains_sheme.ticket_destination_seq;
       trains_sheme          postgres    false    247    6            �           0    0    ticket_destination_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE trains_sheme.ticket_destination_seq OWNED BY trains_sheme.ticket.destination;
          trains_sheme          postgres    false    242            �            1259    18707    ticket_passenger_id_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_passenger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE trains_sheme.ticket_passenger_id_seq;
       trains_sheme          postgres    false    247    6            �           0    0    ticket_passenger_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE trains_sheme.ticket_passenger_id_seq OWNED BY trains_sheme.ticket.passenger_id;
          trains_sheme          postgres    false    241            �            1259    18711    ticket_price_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_price_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE trains_sheme.ticket_price_seq;
       trains_sheme          postgres    false    6    247            �           0    0    ticket_price_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE trains_sheme.ticket_price_seq OWNED BY trains_sheme.ticket.price;
          trains_sheme          postgres    false    245            �            1259    18710    ticket_seat_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_seat_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE trains_sheme.ticket_seat_number_seq;
       trains_sheme          postgres    false    6    247            �           0    0    ticket_seat_number_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE trains_sheme.ticket_seat_number_seq OWNED BY trains_sheme.ticket.seat_number;
          trains_sheme          postgres    false    244            �            1259    18706    ticket_ticket_id_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.ticket_ticket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE trains_sheme.ticket_ticket_id_seq;
       trains_sheme          postgres    false    6    247            �           0    0    ticket_ticket_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE trains_sheme.ticket_ticket_id_seq OWNED BY trains_sheme.ticket.ticket_id;
          trains_sheme          postgres    false    240            �            1259    18630    train    TABLE     :  CREATE TABLE trains_sheme.train (
    train_number integer NOT NULL,
    on_shedule_or_not character varying(50),
    depature_date date NOT NULL,
    arrival_date date NOT NULL,
    train_name character varying(50),
    status character varying(50) NOT NULL,
    route_number integer NOT NULL,
    CONSTRAINT check_cpol CHECK (((status)::text = ANY ((ARRAY['success'::character varying, 'failure'::character varying, 'on the way'::character varying, 'at the station'::character varying])::text[]))),
    CONSTRAINT check_date CHECK ((arrival_date >= depature_date))
);
    DROP TABLE trains_sheme.train;
       trains_sheme         heap    postgres    false    6            �            1259    18629    train_route_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.train_route_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE trains_sheme.train_route_number_seq;
       trains_sheme          postgres    false    6    225            �           0    0    train_route_number_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE trains_sheme.train_route_number_seq OWNED BY trains_sheme.train.route_number;
          trains_sheme          postgres    false    224            �            1259    18628    train_train_number_seq    SEQUENCE     �   CREATE SEQUENCE trains_sheme.train_train_number_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE trains_sheme.train_train_number_seq;
       trains_sheme          postgres    false    225    6            �           0    0    train_train_number_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE trains_sheme.train_train_number_seq OWNED BY trains_sheme.train.train_number;
          trains_sheme          postgres    false    223            �           2604    18651    carriage carriage_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.carriage ALTER COLUMN carriage_number SET DEFAULT nextval('trains_sheme.carriage_carriage_number_seq'::regclass);
 M   ALTER TABLE trains_sheme.carriage ALTER COLUMN carriage_number DROP DEFAULT;
       trains_sheme          postgres    false    230    226    230            �           2604    18652    carriage number_in_train    DEFAULT     �   ALTER TABLE ONLY trains_sheme.carriage ALTER COLUMN number_in_train SET DEFAULT nextval('trains_sheme.carriage_number_in_train_seq'::regclass);
 M   ALTER TABLE trains_sheme.carriage ALTER COLUMN number_in_train DROP DEFAULT;
       trains_sheme          postgres    false    230    227    230            �           2604    18653    carriage number_of_seats    DEFAULT     �   ALTER TABLE ONLY trains_sheme.carriage ALTER COLUMN number_of_seats SET DEFAULT nextval('trains_sheme.carriage_number_of_seats_seq'::regclass);
 M   ALTER TABLE trains_sheme.carriage ALTER COLUMN number_of_seats DROP DEFAULT;
       trains_sheme          postgres    false    230    228    230            �           2604    18654    carriage train_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.carriage ALTER COLUMN train_number SET DEFAULT nextval('trains_sheme.carriage_train_number_seq'::regclass);
 J   ALTER TABLE trains_sheme.carriage ALTER COLUMN train_number DROP DEFAULT;
       trains_sheme          postgres    false    229    230    230            �           2604    18703    checkout checkout_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.checkout ALTER COLUMN checkout_number SET DEFAULT nextval('trains_sheme.checkout_checkout_number_seq'::regclass);
 M   ALTER TABLE trains_sheme.checkout ALTER COLUMN checkout_number DROP DEFAULT;
       trains_sheme          postgres    false    238    239    239            �           2604    18604    passenger passenger_id    DEFAULT     �   ALTER TABLE ONLY trains_sheme.passenger ALTER COLUMN passenger_id SET DEFAULT nextval('trains_sheme.passenger_passenger_id_seq'::regclass);
 K   ALTER TABLE trains_sheme.passenger ALTER COLUMN passenger_id DROP DEFAULT;
       trains_sheme          postgres    false    217    218    218            �           2604    18669    seat seat_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.seat ALTER COLUMN seat_number SET DEFAULT nextval('trains_sheme.seat_seat_number_seq'::regclass);
 E   ALTER TABLE trains_sheme.seat ALTER COLUMN seat_number DROP DEFAULT;
       trains_sheme          postgres    false    231    234    234            �           2604    18670    seat seat_number_carriage    DEFAULT     �   ALTER TABLE ONLY trains_sheme.seat ALTER COLUMN seat_number_carriage SET DEFAULT nextval('trains_sheme.seat_seat_number_carriage_seq'::regclass);
 N   ALTER TABLE trains_sheme.seat ALTER COLUMN seat_number_carriage DROP DEFAULT;
       trains_sheme          postgres    false    234    232    234            �           2604    18671    seat carriage_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.seat ALTER COLUMN carriage_number SET DEFAULT nextval('trains_sheme.seat_carriage_number_seq'::regclass);
 I   ALTER TABLE trains_sheme.seat ALTER COLUMN carriage_number DROP DEFAULT;
       trains_sheme          postgres    false    233    234    234            �           2604    18613    shedule route_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.shedule ALTER COLUMN route_number SET DEFAULT nextval('trains_sheme.shedule_route_number_seq'::regclass);
 I   ALTER TABLE trains_sheme.shedule ALTER COLUMN route_number DROP DEFAULT;
       trains_sheme          postgres    false    222    219    222            �           2604    18614    shedule destination    DEFAULT     �   ALTER TABLE ONLY trains_sheme.shedule ALTER COLUMN destination SET DEFAULT nextval('trains_sheme.shedule_destination_seq'::regclass);
 H   ALTER TABLE trains_sheme.shedule ALTER COLUMN destination DROP DEFAULT;
       trains_sheme          postgres    false    222    220    222            �           2604    18615    shedule depature_point    DEFAULT     �   ALTER TABLE ONLY trains_sheme.shedule ALTER COLUMN depature_point SET DEFAULT nextval('trains_sheme.shedule_depature_point_seq'::regclass);
 K   ALTER TABLE trains_sheme.shedule ALTER COLUMN depature_point DROP DEFAULT;
       trains_sheme          postgres    false    221    222    222            �           2604    18597    stop stop_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.stop ALTER COLUMN stop_number SET DEFAULT nextval('trains_sheme.stop_stop_number_seq'::regclass);
 E   ALTER TABLE trains_sheme.stop ALTER COLUMN stop_number DROP DEFAULT;
       trains_sheme          postgres    false    215    216    216            �           2604    18685    stop_shedule route_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.stop_shedule ALTER COLUMN route_number SET DEFAULT nextval('trains_sheme.stop_shedule_route_number_seq'::regclass);
 N   ALTER TABLE trains_sheme.stop_shedule ALTER COLUMN route_number DROP DEFAULT;
       trains_sheme          postgres    false    237    235    237            �           2604    18686    stop_shedule stop_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.stop_shedule ALTER COLUMN stop_number SET DEFAULT nextval('trains_sheme.stop_shedule_stop_number_seq'::regclass);
 M   ALTER TABLE trains_sheme.stop_shedule ALTER COLUMN stop_number DROP DEFAULT;
       trains_sheme          postgres    false    237    236    237            �           2604    18716    ticket ticket_id    DEFAULT     �   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN ticket_id SET DEFAULT nextval('trains_sheme.ticket_ticket_id_seq'::regclass);
 E   ALTER TABLE trains_sheme.ticket ALTER COLUMN ticket_id DROP DEFAULT;
       trains_sheme          postgres    false    240    247    247            �           2604    18717    ticket passenger_id    DEFAULT     �   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN passenger_id SET DEFAULT nextval('trains_sheme.ticket_passenger_id_seq'::regclass);
 H   ALTER TABLE trains_sheme.ticket ALTER COLUMN passenger_id DROP DEFAULT;
       trains_sheme          postgres    false    241    247    247            �           2604    18718    ticket destination    DEFAULT     �   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN destination SET DEFAULT nextval('trains_sheme.ticket_destination_seq'::regclass);
 G   ALTER TABLE trains_sheme.ticket ALTER COLUMN destination DROP DEFAULT;
       trains_sheme          postgres    false    242    247    247            �           2604    18719    ticket depature_point    DEFAULT     �   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN depature_point SET DEFAULT nextval('trains_sheme.ticket_depature_point_seq'::regclass);
 J   ALTER TABLE trains_sheme.ticket ALTER COLUMN depature_point DROP DEFAULT;
       trains_sheme          postgres    false    247    243    247            �           2604    18720    ticket seat_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN seat_number SET DEFAULT nextval('trains_sheme.ticket_seat_number_seq'::regclass);
 G   ALTER TABLE trains_sheme.ticket ALTER COLUMN seat_number DROP DEFAULT;
       trains_sheme          postgres    false    244    247    247            �           2604    18721    ticket price    DEFAULT     x   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN price SET DEFAULT nextval('trains_sheme.ticket_price_seq'::regclass);
 A   ALTER TABLE trains_sheme.ticket ALTER COLUMN price DROP DEFAULT;
       trains_sheme          postgres    false    247    245    247            �           2604    18722    ticket checkout_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.ticket ALTER COLUMN checkout_number SET DEFAULT nextval('trains_sheme.ticket_checkout_number_seq'::regclass);
 K   ALTER TABLE trains_sheme.ticket ALTER COLUMN checkout_number DROP DEFAULT;
       trains_sheme          postgres    false    246    247    247            �           2604    18633    train train_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.train ALTER COLUMN train_number SET DEFAULT nextval('trains_sheme.train_train_number_seq'::regclass);
 G   ALTER TABLE trains_sheme.train ALTER COLUMN train_number DROP DEFAULT;
       trains_sheme          postgres    false    225    223    225            �           2604    18634    train route_number    DEFAULT     �   ALTER TABLE ONLY trains_sheme.train ALTER COLUMN route_number SET DEFAULT nextval('trains_sheme.train_route_number_seq'::regclass);
 G   ALTER TABLE trains_sheme.train ALTER COLUMN route_number DROP DEFAULT;
       trains_sheme          postgres    false    224    225    225            v          0    18648    carriage 
   TABLE DATA           o   COPY trains_sheme.carriage (carriage_number, number_in_train, type, number_of_seats, train_number) FROM stdin;
    trains_sheme          postgres    false    230   е                 0    18700    checkout 
   TABLE DATA           L   COPY trains_sheme.checkout (checkout_number, locality, address) FROM stdin;
    trains_sheme          postgres    false    239   1�       j          0    18601 	   passenger 
   TABLE DATA           w   COPY trains_sheme.passenger (passenger_id, passport_data, surname, name, middle_name, phone_number, email) FROM stdin;
    trains_sheme          postgres    false    218   N�       z          0    18666    seat 
   TABLE DATA           `   COPY trains_sheme.seat (seat_number, seat_number_carriage, carriage_number, status) FROM stdin;
    trains_sheme          postgres    false    234   Q�       n          0    18610    shedule 
   TABLE DATA              COPY trains_sheme.shedule (route_number, arrival_time, depature_time, type, periodic, destination, depature_point) FROM stdin;
    trains_sheme          postgres    false    222   ��       h          0    18594    stop 
   TABLE DATA           =   COPY trains_sheme.stop (stop_number, name, type) FROM stdin;
    trains_sheme          postgres    false    216   8�       }          0    18682    stop_shedule 
   TABLE DATA           o   COPY trains_sheme.stop_shedule (route_number, stop_number, arrival_time, depature_time, stop_time) FROM stdin;
    trains_sheme          postgres    false    237   ��       �          0    18713    ticket 
   TABLE DATA           �   COPY trains_sheme.ticket (ticket_id, passenger_id, destination, depature_point, seat_number, status, price, in_checkout_or_not, checkout_number) FROM stdin;
    trains_sheme          postgres    false    247   ��       q          0    18630    train 
   TABLE DATA           �   COPY trains_sheme.train (train_number, on_shedule_or_not, depature_date, arrival_date, train_name, status, route_number) FROM stdin;
    trains_sheme          postgres    false    225   ޸       �           0    0    carriage_carriage_number_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('trains_sheme.carriage_carriage_number_seq', 1, false);
          trains_sheme          postgres    false    226            �           0    0    carriage_number_in_train_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('trains_sheme.carriage_number_in_train_seq', 1, false);
          trains_sheme          postgres    false    227            �           0    0    carriage_number_of_seats_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('trains_sheme.carriage_number_of_seats_seq', 1, false);
          trains_sheme          postgres    false    228            �           0    0    carriage_train_number_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('trains_sheme.carriage_train_number_seq', 1, false);
          trains_sheme          postgres    false    229            �           0    0    checkout_checkout_number_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('trains_sheme.checkout_checkout_number_seq', 1, false);
          trains_sheme          postgres    false    238            �           0    0    passenger_passenger_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('trains_sheme.passenger_passenger_id_seq', 1, false);
          trains_sheme          postgres    false    217            �           0    0    seat_carriage_number_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('trains_sheme.seat_carriage_number_seq', 1, false);
          trains_sheme          postgres    false    233            �           0    0    seat_seat_number_carriage_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('trains_sheme.seat_seat_number_carriage_seq', 1, false);
          trains_sheme          postgres    false    232            �           0    0    seat_seat_number_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('trains_sheme.seat_seat_number_seq', 1, false);
          trains_sheme          postgres    false    231            �           0    0    shedule_depature_point_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('trains_sheme.shedule_depature_point_seq', 1, false);
          trains_sheme          postgres    false    221            �           0    0    shedule_destination_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('trains_sheme.shedule_destination_seq', 1, false);
          trains_sheme          postgres    false    220            �           0    0    shedule_route_number_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('trains_sheme.shedule_route_number_seq', 1, false);
          trains_sheme          postgres    false    219            �           0    0    stop_shedule_route_number_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('trains_sheme.stop_shedule_route_number_seq', 1, false);
          trains_sheme          postgres    false    235            �           0    0    stop_shedule_stop_number_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('trains_sheme.stop_shedule_stop_number_seq', 1, false);
          trains_sheme          postgres    false    236            �           0    0    stop_stop_number_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('trains_sheme.stop_stop_number_seq', 1, false);
          trains_sheme          postgres    false    215            �           0    0    ticket_checkout_number_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('trains_sheme.ticket_checkout_number_seq', 1, false);
          trains_sheme          postgres    false    246            �           0    0    ticket_depature_point_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('trains_sheme.ticket_depature_point_seq', 1, false);
          trains_sheme          postgres    false    243            �           0    0    ticket_destination_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('trains_sheme.ticket_destination_seq', 1, false);
          trains_sheme          postgres    false    242            �           0    0    ticket_passenger_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('trains_sheme.ticket_passenger_id_seq', 1, false);
          trains_sheme          postgres    false    241            �           0    0    ticket_price_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('trains_sheme.ticket_price_seq', 1, false);
          trains_sheme          postgres    false    245            �           0    0    ticket_seat_number_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('trains_sheme.ticket_seat_number_seq', 1, false);
          trains_sheme          postgres    false    244            �           0    0    ticket_ticket_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('trains_sheme.ticket_ticket_id_seq', 1, false);
          trains_sheme          postgres    false    240            �           0    0    train_route_number_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('trains_sheme.train_route_number_seq', 1, false);
          trains_sheme          postgres    false    224            �           0    0    train_train_number_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('trains_sheme.train_train_number_seq', 1, false);
          trains_sheme          postgres    false    223            �           2606    18657    carriage carriage_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY trains_sheme.carriage
    ADD CONSTRAINT carriage_pkey PRIMARY KEY (carriage_number);
 F   ALTER TABLE ONLY trains_sheme.carriage DROP CONSTRAINT carriage_pkey;
       trains_sheme            postgres    false    230            �           2606    18705    checkout checkout_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY trains_sheme.checkout
    ADD CONSTRAINT checkout_pkey PRIMARY KEY (checkout_number);
 F   ALTER TABLE ONLY trains_sheme.checkout DROP CONSTRAINT checkout_pkey;
       trains_sheme            postgres    false    239            �           2606    18606    passenger passenger_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY trains_sheme.passenger
    ADD CONSTRAINT passenger_pkey PRIMARY KEY (passenger_id);
 H   ALTER TABLE ONLY trains_sheme.passenger DROP CONSTRAINT passenger_pkey;
       trains_sheme            postgres    false    218            �           2606    18674    seat seat_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY trains_sheme.seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (seat_number);
 >   ALTER TABLE ONLY trains_sheme.seat DROP CONSTRAINT seat_pkey;
       trains_sheme            postgres    false    234            �           2606    18617    shedule shedule_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY trains_sheme.shedule
    ADD CONSTRAINT shedule_pkey PRIMARY KEY (route_number);
 D   ALTER TABLE ONLY trains_sheme.shedule DROP CONSTRAINT shedule_pkey;
       trains_sheme            postgres    false    222            �           2606    18599    stop stop_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY trains_sheme.stop
    ADD CONSTRAINT stop_pkey PRIMARY KEY (stop_number);
 >   ALTER TABLE ONLY trains_sheme.stop DROP CONSTRAINT stop_pkey;
       trains_sheme            postgres    false    216            �           2606    18688    stop_shedule stop_shedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY trains_sheme.stop_shedule
    ADD CONSTRAINT stop_shedule_pkey PRIMARY KEY (route_number, stop_number);
 N   ALTER TABLE ONLY trains_sheme.stop_shedule DROP CONSTRAINT stop_shedule_pkey;
       trains_sheme            postgres    false    237    237            �           2606    18726    ticket ticket_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY trains_sheme.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (ticket_id);
 B   ALTER TABLE ONLY trains_sheme.ticket DROP CONSTRAINT ticket_pkey;
       trains_sheme            postgres    false    247            �           2606    18638    train train_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY trains_sheme.train
    ADD CONSTRAINT train_pkey PRIMARY KEY (train_number);
 @   ALTER TABLE ONLY trains_sheme.train DROP CONSTRAINT train_pkey;
       trains_sheme            postgres    false    225            �           2606    18658 #   carriage carriage_train_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.carriage
    ADD CONSTRAINT carriage_train_number_fkey FOREIGN KEY (train_number) REFERENCES trains_sheme.train(train_number);
 S   ALTER TABLE ONLY trains_sheme.carriage DROP CONSTRAINT carriage_train_number_fkey;
       trains_sheme          postgres    false    225    3266    230            �           2606    18675    seat seat_carriage_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.seat
    ADD CONSTRAINT seat_carriage_number_fkey FOREIGN KEY (carriage_number) REFERENCES trains_sheme.carriage(carriage_number);
 N   ALTER TABLE ONLY trains_sheme.seat DROP CONSTRAINT seat_carriage_number_fkey;
       trains_sheme          postgres    false    230    3268    234            �           2606    18623 #   shedule shedule_depature_point_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.shedule
    ADD CONSTRAINT shedule_depature_point_fkey FOREIGN KEY (depature_point) REFERENCES trains_sheme.stop(stop_number);
 S   ALTER TABLE ONLY trains_sheme.shedule DROP CONSTRAINT shedule_depature_point_fkey;
       trains_sheme          postgres    false    216    222    3260            �           2606    18618     shedule shedule_destination_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.shedule
    ADD CONSTRAINT shedule_destination_fkey FOREIGN KEY (destination) REFERENCES trains_sheme.stop(stop_number);
 P   ALTER TABLE ONLY trains_sheme.shedule DROP CONSTRAINT shedule_destination_fkey;
       trains_sheme          postgres    false    222    216    3260            �           2606    18689 +   stop_shedule stop_shedule_route_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.stop_shedule
    ADD CONSTRAINT stop_shedule_route_number_fkey FOREIGN KEY (route_number) REFERENCES trains_sheme.shedule(route_number);
 [   ALTER TABLE ONLY trains_sheme.stop_shedule DROP CONSTRAINT stop_shedule_route_number_fkey;
       trains_sheme          postgres    false    237    3264    222            �           2606    18694 *   stop_shedule stop_shedule_stop_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.stop_shedule
    ADD CONSTRAINT stop_shedule_stop_number_fkey FOREIGN KEY (stop_number) REFERENCES trains_sheme.stop(stop_number);
 Z   ALTER TABLE ONLY trains_sheme.stop_shedule DROP CONSTRAINT stop_shedule_stop_number_fkey;
       trains_sheme          postgres    false    3260    237    216            �           2606    18747 "   ticket ticket_checkout_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.ticket
    ADD CONSTRAINT ticket_checkout_number_fkey FOREIGN KEY (checkout_number) REFERENCES trains_sheme.checkout(checkout_number);
 R   ALTER TABLE ONLY trains_sheme.ticket DROP CONSTRAINT ticket_checkout_number_fkey;
       trains_sheme          postgres    false    3274    239    247            �           2606    18737 !   ticket ticket_depature_point_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.ticket
    ADD CONSTRAINT ticket_depature_point_fkey FOREIGN KEY (depature_point) REFERENCES trains_sheme.stop(stop_number);
 Q   ALTER TABLE ONLY trains_sheme.ticket DROP CONSTRAINT ticket_depature_point_fkey;
       trains_sheme          postgres    false    247    3260    216            �           2606    18732    ticket ticket_destination_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.ticket
    ADD CONSTRAINT ticket_destination_fkey FOREIGN KEY (destination) REFERENCES trains_sheme.stop(stop_number);
 N   ALTER TABLE ONLY trains_sheme.ticket DROP CONSTRAINT ticket_destination_fkey;
       trains_sheme          postgres    false    3260    247    216            �           2606    18727    ticket ticket_passenger_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.ticket
    ADD CONSTRAINT ticket_passenger_id_fkey FOREIGN KEY (passenger_id) REFERENCES trains_sheme.passenger(passenger_id);
 O   ALTER TABLE ONLY trains_sheme.ticket DROP CONSTRAINT ticket_passenger_id_fkey;
       trains_sheme          postgres    false    247    218    3262            �           2606    18742    ticket ticket_seat_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.ticket
    ADD CONSTRAINT ticket_seat_number_fkey FOREIGN KEY (seat_number) REFERENCES trains_sheme.seat(seat_number);
 N   ALTER TABLE ONLY trains_sheme.ticket DROP CONSTRAINT ticket_seat_number_fkey;
       trains_sheme          postgres    false    3270    234    247            �           2606    18639    train train_route_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY trains_sheme.train
    ADD CONSTRAINT train_route_number_fkey FOREIGN KEY (route_number) REFERENCES trains_sheme.shedule(route_number);
 M   ALTER TABLE ONLY trains_sheme.train DROP CONSTRAINT train_route_number_fkey;
       trains_sheme          postgres    false    225    222    3264            v   Q   x�e̻�0���)� �6��M� ��"�����|.�E�!{����O7���Z�Q=6?<�1@��?T�-�!L�            x������ � �      j   �   x�u��j�0���	�l���@{(����҈v�l�m�����ꨝ�ffl~��hƞ☰�����8s7����>�ZU7Z��)$�8��'�x��Q+��N7y�s��F�mi!�k����%�E�&�||�>�r�,*�M�!��.� q��R��92c?\bF��}Ն�m	���
��c��|6/��m�F��R$��p5�)Ccj�?���g)�#���dE(t�h����@~      z   F   x�34�4�4�L+JM�212�8��9�K2SS�,8��J�"���� 5`-��&�&@�p�=... W�,      n   �   x�u�1B1Cg�� �iJ�3���X� Lܞ����)�_l��QK���c9�q�?v���E�@��:��f��Q�y������9MX�mM"��-s������n�в�}UY~�>/$t݋�@�/�      h   \   x�3�K,����/�N�,���ILO��J�I����O�p�244���/�J���,9݋2��P4�p�e�ggV*8�A���qqq k`�      }      x������ � �      �      x������ � �      q   �   x�e�1�0��پ�+?;)�dfAU+!1��D@� ��l='����	�����B�X׭VB���&
������vR4�lTC��� ��\R;�o������n!�c�\�<�u���^R�֍�3� ��7~     