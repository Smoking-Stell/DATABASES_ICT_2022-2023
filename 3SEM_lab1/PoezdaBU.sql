PGDMP  	    !                    {            Poezda    15.2    15.2 u    r           0    0    ENCODING    ENCODING     !   SET client_encoding = 'WIN1251';
                      false            s           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            t           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            u           1262    16398    Poezda    DATABASE     |   CREATE DATABASE "Poezda" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Poezda";
                postgres    false                        2615    16399    Trains_sheme    SCHEMA        CREATE SCHEMA "Trains_sheme";
    DROP SCHEMA "Trains_sheme";
                postgres    false            �            1259    16755    �����    TABLE     �  CREATE TABLE "Trains_sheme"."�����" (
    "�����" integer NOT NULL,
    "����������_������" character varying(50) NOT NULL,
    "�����_����������" character varying(50) NOT NULL,
    "�����_�����������" integer NOT NULL,
    "�����_�����" integer NOT NULL,
    "������_������" character varying(50) NOT NULL,
    "����" integer NOT NULL,
    "�_�����_���_������" character varying(50) NOT NULL,
    "�����_�����" integer NOT NULL
);
 #   DROP TABLE "Trains_sheme"."�����";
       Trains_sheme         heap    postgres    false    6            �            1259    16750    �����_�����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "Trains_sheme"."�����_�����_seq";
       Trains_sheme          postgres    false    242    6            v           0    0    �����_�����_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "Trains_sheme"."�����_�����_seq" OWNED BY "Trains_sheme"."�����"."�����";
          Trains_sheme          postgres    false    237            �            1259    16754    �����_�����_�����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_�����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Trains_sheme"."�����_�����_�����_seq";
       Trains_sheme          postgres    false    242    6            w           0    0    �����_�����_�����_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Trains_sheme"."�����_�����_�����_seq" OWNED BY "Trains_sheme"."�����"."�����_�����";
          Trains_sheme          postgres    false    241            �            1259    16752    �����_�����_�����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_�����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Trains_sheme"."�����_�����_�����_seq";
       Trains_sheme          postgres    false    6    242            x           0    0    �����_�����_�����_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Trains_sheme"."�����_�����_�����_seq" OWNED BY "Trains_sheme"."�����"."�����_�����";
          Trains_sheme          postgres    false    239            �            1259    16751    �����_�����_�����������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_�����������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE "Trains_sheme"."�����_�����_�����������_seq";
       Trains_sheme          postgres    false    242    6            y           0    0    �����_�����_�����������_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "Trains_sheme"."�����_�����_�����������_seq" OWNED BY "Trains_sheme"."�����"."�����_�����������";
          Trains_sheme          postgres    false    238            �            1259    16753    �����_����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE "Trains_sheme"."�����_����_seq";
       Trains_sheme          postgres    false    242    6            z           0    0    �����_����_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "Trains_sheme"."�����_����_seq" OWNED BY "Trains_sheme"."�����"."����";
          Trains_sheme          postgres    false    240            �            1259    16689    �����    TABLE     �   CREATE TABLE "Trains_sheme"."�����" (
    "�����_������" integer NOT NULL,
    "�����_�_������" integer NOT NULL,
    "���" character varying(50) NOT NULL,
    "����������_����" integer NOT NULL,
    "�����_������" integer NOT NULL
);
 #   DROP TABLE "Trains_sheme"."�����";
       Trains_sheme         heap    postgres    false    6            �            1259    16687    �����_����������_����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_����������_����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "Trains_sheme"."�����_����������_����_seq";
       Trains_sheme          postgres    false    6    226            {           0    0    �����_����������_����_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "Trains_sheme"."�����_����������_����_seq" OWNED BY "Trains_sheme"."�����"."����������_����";
          Trains_sheme          postgres    false    224            �            1259    16686    �����_�����_�_������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_�_������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "Trains_sheme"."�����_�����_�_������_seq";
       Trains_sheme          postgres    false    6    226            |           0    0    �����_�����_�_������_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "Trains_sheme"."�����_�����_�_������_seq" OWNED BY "Trains_sheme"."�����"."�����_�_������";
          Trains_sheme          postgres    false    223            �            1259    16685    �����_�����_������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Trains_sheme"."�����_�����_������_seq";
       Trains_sheme          postgres    false    6    226            }           0    0    �����_�����_������_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "Trains_sheme"."�����_�����_������_seq" OWNED BY "Trains_sheme"."�����"."�����_������";
          Trains_sheme          postgres    false    222            �            1259    16688    �����_�����_������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Trains_sheme"."�����_�����_������_seq";
       Trains_sheme          postgres    false    6    226            ~           0    0    �����_�����_������_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "Trains_sheme"."�����_�����_������_seq" OWNED BY "Trains_sheme"."�����"."�����_������";
          Trains_sheme          postgres    false    225            �            1259    16744    �����    TABLE     �   CREATE TABLE "Trains_sheme"."�����" (
    "�����_�����" integer NOT NULL,
    "����������_�����" character varying(50),
    "�����" character varying(50)
);
 #   DROP TABLE "Trains_sheme"."�����";
       Trains_sheme         heap    postgres    false    6            �            1259    16743    �����_�����_�����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_�����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Trains_sheme"."�����_�����_�����_seq";
       Trains_sheme          postgres    false    236    6                       0    0    �����_�����_�����_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Trains_sheme"."�����_�����_�����_seq" OWNED BY "Trains_sheme"."�����"."�����_�����";
          Trains_sheme          postgres    false    235            �            1259    16705    �����    TABLE     �   CREATE TABLE "Trains_sheme"."�����" (
    "�����_�����" integer NOT NULL,
    "�����_������" integer NOT NULL,
    "������_���������" character varying(50) NOT NULL
);
 #   DROP TABLE "Trains_sheme"."�����";
       Trains_sheme         heap    postgres    false    6            �            1259    16704    �����_�����_������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Trains_sheme"."�����_�����_������_seq";
       Trains_sheme          postgres    false    229    6            �           0    0    �����_�����_������_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "Trains_sheme"."�����_�����_������_seq" OWNED BY "Trains_sheme"."�����"."�����_������";
          Trains_sheme          postgres    false    228            �            1259    16703    �����_�����_�����_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_�����_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE "Trains_sheme"."�����_�����_�����_seq";
       Trains_sheme          postgres    false    6    229            �           0    0    �����_�����_�����_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "Trains_sheme"."�����_�����_�����_seq" OWNED BY "Trains_sheme"."�����"."�����_�����";
          Trains_sheme          postgres    false    227            �            1259    16718 	   ���������    TABLE     �   CREATE TABLE "Trains_sheme"."���������" (
    "�����_���������" integer NOT NULL,
    "�������" character varying(50) NOT NULL,
    "��������" character varying(50) NOT NULL,
    "���" character varying(50)
);
 '   DROP TABLE "Trains_sheme"."���������";
       Trains_sheme         heap    postgres    false    6            �            1259    16717    ���������_�����_���������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."���������_�����_���������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "Trains_sheme"."���������_�����_���������_seq";
       Trains_sheme          postgres    false    6    231            �           0    0    ���������_�����_���������_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "Trains_sheme"."���������_�����_���������_seq" OWNED BY "Trains_sheme"."���������"."�����_���������";
          Trains_sheme          postgres    false    230            �            1259    16726    ���������_����������    TABLE     *  CREATE TABLE "Trains_sheme"."���������_����������" (
    "�����_��������" integer NOT NULL,
    "�����_���������" integer NOT NULL,
    "�����_��������" time without time zone NOT NULL,
    "�����_�����������" time without time zone NOT NULL,
    "�����_�������" time without time zone NOT NULL
);
 2   DROP TABLE "Trains_sheme"."���������_����������";
       Trains_sheme         heap    postgres    false    6            �            1259    16725 #   ���������_�����_�����_���������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."���������_�����_�����_���������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE "Trains_sheme"."���������_�����_�����_���������_seq";
       Trains_sheme          postgres    false    6    234            �           0    0 #   ���������_�����_�����_���������_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "Trains_sheme"."���������_�����_�����_���������_seq" OWNED BY "Trains_sheme"."���������_����������"."�����_���������";
          Trains_sheme          postgres    false    233            �            1259    16724 #   ���������_������_�����_��������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."���������_������_�����_��������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE "Trains_sheme"."���������_������_�����_��������_seq";
       Trains_sheme          postgres    false    234    6            �           0    0 #   ���������_������_�����_��������_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "Trains_sheme"."���������_������_�����_��������_seq" OWNED BY "Trains_sheme"."���������_����������"."�����_��������";
          Trains_sheme          postgres    false    232            �            1259    16657    ��������    TABLE     >  CREATE TABLE "Trains_sheme"."��������" (
    "���������� ������" character varying(50) NOT NULL,
    "�������" character varying(50) NOT NULL,
    "���" character varying(50) NOT NULL,
    "��������" character varying(50) NOT NULL,
    "�������" character varying(12),
    "����������� �����" character varying(50)
);
 &   DROP TABLE "Trains_sheme"."��������";
       Trains_sheme         heap    postgres    false    6            �            1259    16672    �����    TABLE     ?  CREATE TABLE "Trains_sheme"."�����" (
    "�����_������" integer NOT NULL,
    "��_�������_���_���" integer NOT NULL,
    "����_��������" date NOT NULL,
    "����_�����������" date NOT NULL,
    "��������" character varying(50),
    "����������" character varying(50) NOT NULL,
    "�����_��������" integer NOT NULL
);
 #   DROP TABLE "Trains_sheme"."�����";
       Trains_sheme         heap    postgres    false    6            �            1259    16671    �����_�����_��������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_��������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "Trains_sheme"."�����_�����_��������_seq";
       Trains_sheme          postgres    false    6    221            �           0    0    �����_�����_��������_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "Trains_sheme"."�����_�����_��������_seq" OWNED BY "Trains_sheme"."�����"."�����_��������";
          Trains_sheme          postgres    false    220            �            1259    16669    �����_�����_������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_�����_������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE "Trains_sheme"."�����_�����_������_seq";
       Trains_sheme          postgres    false    221    6            �           0    0    �����_�����_������_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "Trains_sheme"."�����_�����_������_seq" OWNED BY "Trains_sheme"."�����"."�����_������";
          Trains_sheme          postgres    false    218            �            1259    16670    �����_��_�������_���_���_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."�����_��_�������_���_���_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE "Trains_sheme"."�����_��_�������_���_���_seq";
       Trains_sheme          postgres    false    6    221            �           0    0    �����_��_�������_���_���_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "Trains_sheme"."�����_��_�������_���_���_seq" OWNED BY "Trains_sheme"."�����"."��_�������_���_���";
          Trains_sheme          postgres    false    219            �            1259    16663 
   ����������    TABLE     �  CREATE TABLE "Trains_sheme"."����������" (
    "�����_��������" integer NOT NULL,
    "�����_��������" time without time zone NOT NULL,
    "�����_�����������" time without time zone NOT NULL,
    "���" character varying(50) NOT NULL,
    "�������������" character varying(50) NOT NULL,
    "�����_����������" character varying(50) NOT NULL,
    "�����_�����������" character varying(50) NOT NULL
);
 (   DROP TABLE "Trains_sheme"."����������";
       Trains_sheme         heap    postgres    false    6            �            1259    16662    ����������_�����_��������_seq    SEQUENCE     �   CREATE SEQUENCE "Trains_sheme"."����������_�����_��������_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "Trains_sheme"."����������_�����_��������_seq";
       Trains_sheme          postgres    false    6    217            �           0    0    ����������_�����_��������_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "Trains_sheme"."����������_�����_��������_seq" OWNED BY "Trains_sheme"."����������"."�����_��������";
          Trains_sheme          postgres    false    216            �           2604    16758    ����� �����    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����" SET DEFAULT nextval('"Trains_sheme"."�����_�����_seq"'::regclass);
 F   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����" DROP DEFAULT;
       Trains_sheme          postgres    false    242    237    242            �           2604    16759    ����� �����_�����������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_�����������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_�����������_seq"'::regclass);
 R   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_�����������" DROP DEFAULT;
       Trains_sheme          postgres    false    242    238    242            �           2604    16760    ����� �����_�����    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_�����" SET DEFAULT nextval('"Trains_sheme"."�����_�����_�����_seq"'::regclass);
 L   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_�����" DROP DEFAULT;
       Trains_sheme          postgres    false    242    239    242            �           2604    16761 
   ����� ����    DEFAULT     ~   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "����" SET DEFAULT nextval('"Trains_sheme"."�����_����_seq"'::regclass);
 E   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "����" DROP DEFAULT;
       Trains_sheme          postgres    false    242    240    242            �           2604    16762    ����� �����_�����    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_�����" SET DEFAULT nextval('"Trains_sheme"."�����_�����_�����_seq"'::regclass);
 L   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_�����" DROP DEFAULT;
       Trains_sheme          postgres    false    242    241    242            �           2604    16692    ����� �����_������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_������_seq"'::regclass);
 M   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_������" DROP DEFAULT;
       Trains_sheme          postgres    false    226    222    226            �           2604    16693    ����� �����_�_������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_�_������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_�_������_seq"'::regclass);
 O   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_�_������" DROP DEFAULT;
       Trains_sheme          postgres    false    223    226    226            �           2604    16694    ����� ����������_����    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "����������_����" SET DEFAULT nextval('"Trains_sheme"."�����_����������_����_seq"'::regclass);
 P   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "����������_����" DROP DEFAULT;
       Trains_sheme          postgres    false    224    226    226            �           2604    16695    ����� �����_������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_������_seq"'::regclass);
 M   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_������" DROP DEFAULT;
       Trains_sheme          postgres    false    226    225    226            �           2604    16747    ����� �����_�����    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_�����" SET DEFAULT nextval('"Trains_sheme"."�����_�����_�����_seq"'::regclass);
 L   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_�����" DROP DEFAULT;
       Trains_sheme          postgres    false    236    235    236            �           2604    16708    ����� �����_�����    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_�����" SET DEFAULT nextval('"Trains_sheme"."�����_�����_�����_seq"'::regclass);
 L   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_�����" DROP DEFAULT;
       Trains_sheme          postgres    false    229    227    229            �           2604    16709    ����� �����_������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_������_seq"'::regclass);
 M   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_������" DROP DEFAULT;
       Trains_sheme          postgres    false    228    229    229            �           2604    16721    ��������� �����_���������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."���������" ALTER COLUMN "�����_���������" SET DEFAULT nextval('"Trains_sheme"."���������_�����_���������_seq"'::regclass);
 T   ALTER TABLE "Trains_sheme"."���������" ALTER COLUMN "�����_���������" DROP DEFAULT;
       Trains_sheme          postgres    false    231    230    231            �           2604    16729 #   ���������_���������� �����_��������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."���������_����������" ALTER COLUMN "�����_��������" SET DEFAULT nextval('"Trains_sheme"."���������_������_�����_��������_seq"'::regclass);
 ^   ALTER TABLE "Trains_sheme"."���������_����������" ALTER COLUMN "�����_��������" DROP DEFAULT;
       Trains_sheme          postgres    false    232    234    234            �           2604    16730 $   ���������_���������� �����_���������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."���������_����������" ALTER COLUMN "�����_���������" SET DEFAULT nextval('"Trains_sheme"."���������_�����_�����_���������_seq"'::regclass);
 _   ALTER TABLE "Trains_sheme"."���������_����������" ALTER COLUMN "�����_���������" DROP DEFAULT;
       Trains_sheme          postgres    false    234    233    234            �           2604    16675    ����� �����_������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_������_seq"'::regclass);
 M   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_������" DROP DEFAULT;
       Trains_sheme          postgres    false    221    218    221            �           2604    16676    ����� ��_�������_���_���    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "��_�������_���_���" SET DEFAULT nextval('"Trains_sheme"."�����_��_�������_���_���_seq"'::regclass);
 S   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "��_�������_���_���" DROP DEFAULT;
       Trains_sheme          postgres    false    221    219    221            �           2604    16677    ����� �����_��������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."�����" ALTER COLUMN "�����_��������" SET DEFAULT nextval('"Trains_sheme"."�����_�����_��������_seq"'::regclass);
 O   ALTER TABLE "Trains_sheme"."�����" ALTER COLUMN "�����_��������" DROP DEFAULT;
       Trains_sheme          postgres    false    221    220    221            �           2604    16666    ���������� �����_��������    DEFAULT     �   ALTER TABLE ONLY "Trains_sheme"."����������" ALTER COLUMN "�����_��������" SET DEFAULT nextval('"Trains_sheme"."����������_�����_��������_seq"'::regclass);
 T   ALTER TABLE "Trains_sheme"."����������" ALTER COLUMN "�����_��������" DROP DEFAULT;
       Trains_sheme          postgres    false    216    217    217            o          0    16755    ����� 
   TABLE DATA           �   COPY "Trains_sheme"."�����" ("�����", "����������_������", "�����_����������", "�����_�����������", "�����_�����", "������_������", "����", "�_�����_���_������", "�����_�����") FROM stdin;
    Trains_sheme          postgres    false    242   ך       _          0    16689    ����� 
   TABLE DATA           u   COPY "Trains_sheme"."�����" ("�����_������", "�����_�_������", "���", "����������_����", "�����_������") FROM stdin;
    Trains_sheme          postgres    false    226   ��       i          0    16744    ����� 
   TABLE DATA           U   COPY "Trains_sheme"."�����" ("�����_�����", "����������_�����", "�����") FROM stdin;
    Trains_sheme          postgres    false    236   K�       b          0    16705    ����� 
   TABLE DATA           \   COPY "Trains_sheme"."�����" ("�����_�����", "�����_������", "������_���������") FROM stdin;
    Trains_sheme          postgres    false    229   h�       d          0    16718 	   ��������� 
   TABLE DATA           ^   COPY "Trains_sheme"."���������" ("�����_���������", "�������", "��������", "���") FROM stdin;
    Trains_sheme          postgres    false    231   ��       g          0    16726    ���������_���������� 
   TABLE DATA           �   COPY "Trains_sheme"."���������_����������" ("�����_��������", "�����_���������", "�����_��������", "�����_�����������", "�����_�������") FROM stdin;
    Trains_sheme          postgres    false    234   ś       T          0    16657    �������� 
   TABLE DATA              COPY "Trains_sheme"."��������" ("���������� ������", "�������", "���", "��������", "�������", "����������� �����") FROM stdin;
    Trains_sheme          postgres    false    215   �       Z          0    16672    ����� 
   TABLE DATA           �   COPY "Trains_sheme"."�����" ("�����_������", "��_�������_���_���", "����_��������", "����_�����������", "��������", "����������", "�����_��������") FROM stdin;
    Trains_sheme          postgres    false    221   ۜ       V          0    16663 
   ���������� 
   TABLE DATA           �   COPY "Trains_sheme"."����������" ("�����_��������", "�����_��������", "�����_�����������", "���", "�������������", "�����_����������", "�����_�����������") FROM stdin;
    Trains_sheme          postgres    false    217   ]�       �           0    0    �����_�����_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_seq"', 1, false);
          Trains_sheme          postgres    false    237            �           0    0    �����_�����_�����_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_�����_seq"', 1, false);
          Trains_sheme          postgres    false    241            �           0    0    �����_�����_�����_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_�����_seq"', 1, false);
          Trains_sheme          postgres    false    239            �           0    0    �����_�����_�����������_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_�����������_seq"', 1, false);
          Trains_sheme          postgres    false    238            �           0    0    �����_����_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"Trains_sheme"."�����_����_seq"', 1, false);
          Trains_sheme          postgres    false    240            �           0    0    �����_����������_����_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"Trains_sheme"."�����_����������_����_seq"', 1, false);
          Trains_sheme          postgres    false    224            �           0    0    �����_�����_�_������_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_�_������_seq"', 1, false);
          Trains_sheme          postgres    false    223            �           0    0    �����_�����_������_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_������_seq"', 1, false);
          Trains_sheme          postgres    false    222            �           0    0    �����_�����_������_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_������_seq"', 1, false);
          Trains_sheme          postgres    false    225            �           0    0    �����_�����_�����_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_�����_seq"', 1, false);
          Trains_sheme          postgres    false    235            �           0    0    �����_�����_������_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_������_seq"', 1, false);
          Trains_sheme          postgres    false    228            �           0    0    �����_�����_�����_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_�����_seq"', 1, false);
          Trains_sheme          postgres    false    227            �           0    0    ���������_�����_���������_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"Trains_sheme"."���������_�����_���������_seq"', 1, false);
          Trains_sheme          postgres    false    230            �           0    0 #   ���������_�����_�����_���������_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"Trains_sheme"."���������_�����_�����_���������_seq"', 1, false);
          Trains_sheme          postgres    false    233            �           0    0 #   ���������_������_�����_��������_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"Trains_sheme"."���������_������_�����_��������_seq"', 1, false);
          Trains_sheme          postgres    false    232            �           0    0    �����_�����_��������_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_��������_seq"', 1, false);
          Trains_sheme          postgres    false    220            �           0    0    �����_�����_������_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"Trains_sheme"."�����_�����_������_seq"', 1, false);
          Trains_sheme          postgres    false    218            �           0    0    �����_��_�������_���_���_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"Trains_sheme"."�����_��_�������_���_���_seq"', 1, false);
          Trains_sheme          postgres    false    219            �           0    0    ����������_�����_��������_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"Trains_sheme"."����������_�����_��������_seq"', 1, false);
          Trains_sheme          postgres    false    216            �           2606    16764    ����� �����_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_pkey" PRIMARY KEY ("�����");
 F   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_pkey";
       Trains_sheme            postgres    false    242            �           2606    16697    ����� �����_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_pkey" PRIMARY KEY ("�����_������");
 F   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_pkey";
       Trains_sheme            postgres    false    226            �           2606    16749    ����� �����_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_pkey" PRIMARY KEY ("�����_�����");
 F   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_pkey";
       Trains_sheme            postgres    false    236            �           2606    16711    ����� �����_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_pkey" PRIMARY KEY ("�����_�����");
 F   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_pkey";
       Trains_sheme            postgres    false    229            �           2606    16723    ��������� ���������_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Trains_sheme"."���������"
    ADD CONSTRAINT "���������_pkey" PRIMARY KEY ("�����_���������");
 N   ALTER TABLE ONLY "Trains_sheme"."���������" DROP CONSTRAINT "���������_pkey";
       Trains_sheme            postgres    false    231            �           2606    16732 .   ���������_���������� ���������_����������_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."���������_����������"
    ADD CONSTRAINT "���������_����������_pkey" PRIMARY KEY ("�����_��������", "�����_���������");
 d   ALTER TABLE ONLY "Trains_sheme"."���������_����������" DROP CONSTRAINT "���������_����������_pkey";
       Trains_sheme            postgres    false    234    234            �           2606    16661    �������� ��������_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Trains_sheme"."��������"
    ADD CONSTRAINT "��������_pkey" PRIMARY KEY ("���������� ������");
 L   ALTER TABLE ONLY "Trains_sheme"."��������" DROP CONSTRAINT "��������_pkey";
       Trains_sheme            postgres    false    215            �           2606    16679    ����� �����_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_pkey" PRIMARY KEY ("�����_������");
 F   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_pkey";
       Trains_sheme            postgres    false    221            �           2606    16668    ���������� ����������_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "Trains_sheme"."����������"
    ADD CONSTRAINT "����������_pkey" PRIMARY KEY ("�����_��������");
 P   ALTER TABLE ONLY "Trains_sheme"."����������" DROP CONSTRAINT "����������_pkey";
       Trains_sheme            postgres    false    217            �           2606    16780    ����� �����_�����_�����_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_�����_�����_fkey" FOREIGN KEY ("�����_�����") REFERENCES "Trains_sheme"."�����"("�����_�����");
 R   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_�����_�����_fkey";
       Trains_sheme          postgres    false    3258    242    236            �           2606    16775    ����� �����_�����_�����_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_�����_�����_fkey" FOREIGN KEY ("�����_�����") REFERENCES "Trains_sheme"."�����"("�����_�����");
 R   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_�����_�����_fkey";
       Trains_sheme          postgres    false    229    242    3252            �           2606    16765 "   ����� �����_����������_������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_����������_������_fkey" FOREIGN KEY ("����������_������") REFERENCES "Trains_sheme"."��������"("���������� ������");
 X   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_����������_������_fkey";
       Trains_sheme          postgres    false    3244    215    242            �           2606    16770 "   ����� �����_�����_�����������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_�����_�����������_fkey" FOREIGN KEY ("�����_�����������") REFERENCES "Trains_sheme"."���������"("�����_���������");
 X   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_�����_�����������_fkey";
       Trains_sheme          postgres    false    3254    231    242            �           2606    16698    ����� �����_�����_������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_�����_������_fkey" FOREIGN KEY ("�����_������") REFERENCES "Trains_sheme"."�����"("�����_������");
 S   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_�����_������_fkey";
       Trains_sheme          postgres    false    221    226    3248            �           2606    16712    ����� �����_�����_������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_�����_������_fkey" FOREIGN KEY ("�����_������") REFERENCES "Trains_sheme"."�����"("�����_������");
 S   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_�����_������_fkey";
       Trains_sheme          postgres    false    3250    226    229            �           2606    16733 8   ���������_���������� ���������_�����_�����_��������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."���������_����������"
    ADD CONSTRAINT "���������_�����_�����_��������_fkey" FOREIGN KEY ("�����_��������") REFERENCES "Trains_sheme"."����������"("�����_��������");
 n   ALTER TABLE ONLY "Trains_sheme"."���������_����������" DROP CONSTRAINT "���������_�����_�����_��������_fkey";
       Trains_sheme          postgres    false    217    3246    234            �           2606    16738 8   ���������_���������� ���������_�����_�����_��������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."���������_����������"
    ADD CONSTRAINT "���������_�����_�����_��������_fkey" FOREIGN KEY ("�����_���������") REFERENCES "Trains_sheme"."���������"("�����_���������");
 n   ALTER TABLE ONLY "Trains_sheme"."���������_����������" DROP CONSTRAINT "���������_�����_�����_��������_fkey";
       Trains_sheme          postgres    false    231    234    3254            �           2606    16680    ����� �����_�����_��������_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Trains_sheme"."�����"
    ADD CONSTRAINT "�����_�����_��������_fkey" FOREIGN KEY ("�����_��������") REFERENCES "Trains_sheme"."����������"("�����_��������");
 U   ALTER TABLE ONLY "Trains_sheme"."�����" DROP CONSTRAINT "�����_�����_��������_fkey";
       Trains_sheme          postgres    false    217    221    3246            o      xڋ���� � �      _   G   x�3�4�r����46�4�24�4�t������43��2�4B�ss��,8�,Q�0����� ��      i      xڋ���� � �      b   0   x�3�4�tru�24�42��w�24�4���A�`y�B�X� 6
      d      xڋ���� � �      g      xڋ���� � �      T   �   x�u��j�0���Ô�Il��BweP(���X�*�8�IͶ�����iW��?���ZU˶��4���,}����3����
��M��F	g�S؎�v�o�V�H��)[��^�[�S���#����N�?���(ɐ(�;�滬�qGZ����;w�1�lp��5���R�B�id��X�c�&� �%�B�� ��h�Rn���9I���-g(y	C�V�����?=�{�      Z   r   x�U�9�0Dњ�)9t/�	�Tr�sD���/f�@��&Xs��X�}��3�X=����aȚs0-���S�e�1��M�\⚳�^�c�y�^!(9�{F�΍f�Yq+      V   �   x�m��
�0���S�	$�4�f,Jpr�K-$P�Oo���v����怹VRsȵ��;��rɖ��7mc���Jm�zv�bB��TE)Өҗ��3�T���Ĩy(lm�}�&�'ۇ*�ٴ�_i��w4PRZ�<Rk��P>�k�.O+o�t�NA �|�P����Y�c��
XZ     