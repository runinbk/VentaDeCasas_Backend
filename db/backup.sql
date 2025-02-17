PGDMP     .    ;                {         
   houseSales    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    40974 
   houseSales    DATABASE        CREATE DATABASE "houseSales" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "houseSales";
                postgres    false            �            1259    40999    img_propiedad    TABLE       CREATE TABLE public.img_propiedad (
    id integer NOT NULL,
    img character varying,
    descripcion character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id_propiedad integer,
    estado boolean DEFAULT true
);
 !   DROP TABLE public.img_propiedad;
       public         heap    postgres    false            �            1259    40998    Img_Propiedad_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Img_Propiedad_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Img_Propiedad_id_seq";
       public          postgres    false    221            �           0    0    Img_Propiedad_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Img_Propiedad_id_seq" OWNED BY public.img_propiedad.id;
          public          postgres    false    220            �            1259    40983    accion    TABLE     �   CREATE TABLE public.accion (
    id integer NOT NULL,
    accion character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean,
    id_bitacora integer NOT NULL
);
    DROP TABLE public.accion;
       public         heap    postgres    false            �            1259    40982    accion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.accion_id_seq;
       public          postgres    false    217            �           0    0    accion_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.accion_id_seq OWNED BY public.accion.id;
          public          postgres    false    216            �            1259    41093    bitacora    TABLE       CREATE TABLE public.bitacora (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    hora_ini time without time zone,
    hora_fin time without time zone,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.bitacora;
       public         heap    postgres    false            �            1259    41092    bitacora_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bitacora_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bitacora_id_seq;
       public          postgres    false    231            �           0    0    bitacora_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bitacora_id_seq OWNED BY public.bitacora.id;
          public          postgres    false    230            �            1259    40976 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id integer NOT NULL,
    categoria character varying(20),
    descripcion character varying(50),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    40975    categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.categoria_id_seq;
       public          postgres    false    215            �           0    0    categoria_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;
          public          postgres    false    214            �            1259    41153    compra_venta    TABLE     &  CREATE TABLE public.compra_venta (
    id integer NOT NULL,
    id_propiedad integer NOT NULL,
    estado_pago boolean,
    fecha_ini date,
    fecha_fin date,
    costo double precision,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
     DROP TABLE public.compra_venta;
       public         heap    postgres    false            �            1259    41152    compra_venta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_venta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.compra_venta_id_seq;
       public          postgres    false    237            �           0    0    compra_venta_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.compra_venta_id_seq OWNED BY public.compra_venta.id;
          public          postgres    false    236            �            1259    41171    cuota    TABLE     C  CREATE TABLE public.cuota (
    id integer NOT NULL,
    id_compvent integer NOT NULL,
    cuota_total double precision,
    cuota_pagada double precision,
    por_pagar double precision,
    pagado double precision,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.cuota;
       public         heap    postgres    false            �            1259    41170    cuota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cuota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cuota_id_seq;
       public          postgres    false    239            �           0    0    cuota_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cuota_id_seq OWNED BY public.cuota.id;
          public          postgres    false    238            �            1259    41217    detalle_pago    TABLE     0  CREATE TABLE public.detalle_pago (
    id integer NOT NULL,
    id_usuario integer,
    id_compvent integer,
    id_tarjeta integer,
    id_cuota integer,
    pago double precision,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean,
    fecha date
);
     DROP TABLE public.detalle_pago;
       public         heap    postgres    false            �            1259    41216    detalle_pago_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.detalle_pago_id_seq;
       public          postgres    false    245            �           0    0    detalle_pago_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.detalle_pago_id_seq OWNED BY public.detalle_pago.id;
          public          postgres    false    244            �            1259    41183    detalle_tramite    TABLE     �   CREATE TABLE public.detalle_tramite (
    id integer NOT NULL,
    id_compvent integer NOT NULL,
    id_tramite integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
 #   DROP TABLE public.detalle_tramite;
       public         heap    postgres    false            �            1259    41182    detalle_tramite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_tramite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.detalle_tramite_id_seq;
       public          postgres    false    241            �           0    0    detalle_tramite_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.detalle_tramite_id_seq OWNED BY public.detalle_tramite.id;
          public          postgres    false    240            �            1259    41015    estado_tramite    TABLE     �   CREATE TABLE public.estado_tramite (
    id integer NOT NULL,
    estado_t character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    descripcion character varying,
    estado boolean
);
 "   DROP TABLE public.estado_tramite;
       public         heap    postgres    false            �            1259    41014    estado_tramite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_tramite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.estado_tramite_id_seq;
       public          postgres    false    225            �           0    0    estado_tramite_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.estado_tramite_id_seq OWNED BY public.estado_tramite.id;
          public          postgres    false    224            �            1259    41200    fecha_estado    TABLE     �   CREATE TABLE public.fecha_estado (
    id integer NOT NULL,
    id_detalltram integer,
    id_estatram integer,
    fecha date,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
     DROP TABLE public.fecha_estado;
       public         heap    postgres    false            �            1259    41199    fecha_estado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fecha_estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fecha_estado_id_seq;
       public          postgres    false    243            �           0    0    fecha_estado_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fecha_estado_id_seq OWNED BY public.fecha_estado.id;
          public          postgres    false    242            �            1259    41008    precio    TABLE     �   CREATE TABLE public.precio (
    id integer NOT NULL,
    precio double precision,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    id_propiedad integer,
    estado boolean DEFAULT true
);
    DROP TABLE public.precio;
       public         heap    postgres    false            �            1259    41007    precio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.precio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.precio_id_seq;
       public          postgres    false    223            �           0    0    precio_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.precio_id_seq OWNED BY public.precio.id;
          public          postgres    false    222            �            1259    41124 	   propiedad    TABLE     R  CREATE TABLE public.propiedad (
    id integer NOT NULL,
    titulo character varying(30),
    descripcion character varying(60),
    lat double precision,
    lon double precision,
    id_categoria integer,
    id_usuario integer,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.propiedad;
       public         heap    postgres    false            �            1259    41123    propiedad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.propiedad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.propiedad_id_seq;
       public          postgres    false    235            �           0    0    propiedad_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.propiedad_id_seq OWNED BY public.propiedad.id;
          public          postgres    false    234            �            1259    40992    rol    TABLE     �   CREATE TABLE public.rol (
    id integer NOT NULL,
    rol character varying(20),
    descripcion character varying(50),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    40991 
   rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rol_id_seq;
       public          postgres    false    219            �           0    0 
   rol_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.rol_id_seq OWNED BY public.rol.id;
          public          postgres    false    218            �            1259    41110    tarjeta    TABLE     \  CREATE TABLE public.tarjeta (
    id integer NOT NULL,
    numero integer NOT NULL,
    fecha_v date NOT NULL,
    csv character varying NOT NULL,
    nomb_titular character varying(50) NOT NULL,
    id_usuario integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean DEFAULT true
);
    DROP TABLE public.tarjeta;
       public         heap    postgres    false            �            1259    41109    tarjeta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tarjeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tarjeta_id_seq;
       public          postgres    false    233            �           0    0    tarjeta_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tarjeta_id_seq OWNED BY public.tarjeta.id;
          public          postgres    false    232            �            1259    41024    tramite    TABLE     &  CREATE TABLE public.tramite (
    id integer NOT NULL,
    nombre character varying(50),
    descripcion character varying,
    lugar_lat double precision,
    lugar_lon double precision,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    estado boolean
);
    DROP TABLE public.tramite;
       public         heap    postgres    false            �            1259    41023    tramite_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tramite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tramite_id_seq;
       public          postgres    false    227            �           0    0    tramite_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tramite_id_seq OWNED BY public.tramite.id;
          public          postgres    false    226            �            1259    41033    usuario    TABLE     �  CREATE TABLE public.usuario (
    id integer NOT NULL,
    correo character varying(30) NOT NULL,
    password character varying NOT NULL,
    nombre character varying NOT NULL,
    img character varying,
    estado boolean DEFAULT true,
    google boolean DEFAULT false,
    id_rol integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    celular integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    41032    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    229            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    228            �           2604    40986 	   accion id    DEFAULT     f   ALTER TABLE ONLY public.accion ALTER COLUMN id SET DEFAULT nextval('public.accion_id_seq'::regclass);
 8   ALTER TABLE public.accion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    41096    bitacora id    DEFAULT     j   ALTER TABLE ONLY public.bitacora ALTER COLUMN id SET DEFAULT nextval('public.bitacora_id_seq'::regclass);
 :   ALTER TABLE public.bitacora ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    40979    categoria id    DEFAULT     l   ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);
 ;   ALTER TABLE public.categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    41156    compra_venta id    DEFAULT     r   ALTER TABLE ONLY public.compra_venta ALTER COLUMN id SET DEFAULT nextval('public.compra_venta_id_seq'::regclass);
 >   ALTER TABLE public.compra_venta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    41174    cuota id    DEFAULT     d   ALTER TABLE ONLY public.cuota ALTER COLUMN id SET DEFAULT nextval('public.cuota_id_seq'::regclass);
 7   ALTER TABLE public.cuota ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    41220    detalle_pago id    DEFAULT     r   ALTER TABLE ONLY public.detalle_pago ALTER COLUMN id SET DEFAULT nextval('public.detalle_pago_id_seq'::regclass);
 >   ALTER TABLE public.detalle_pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    41186    detalle_tramite id    DEFAULT     x   ALTER TABLE ONLY public.detalle_tramite ALTER COLUMN id SET DEFAULT nextval('public.detalle_tramite_id_seq'::regclass);
 A   ALTER TABLE public.detalle_tramite ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    41018    estado_tramite id    DEFAULT     v   ALTER TABLE ONLY public.estado_tramite ALTER COLUMN id SET DEFAULT nextval('public.estado_tramite_id_seq'::regclass);
 @   ALTER TABLE public.estado_tramite ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    41203    fecha_estado id    DEFAULT     r   ALTER TABLE ONLY public.fecha_estado ALTER COLUMN id SET DEFAULT nextval('public.fecha_estado_id_seq'::regclass);
 >   ALTER TABLE public.fecha_estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    41002    img_propiedad id    DEFAULT     v   ALTER TABLE ONLY public.img_propiedad ALTER COLUMN id SET DEFAULT nextval('public."Img_Propiedad_id_seq"'::regclass);
 ?   ALTER TABLE public.img_propiedad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    41011 	   precio id    DEFAULT     f   ALTER TABLE ONLY public.precio ALTER COLUMN id SET DEFAULT nextval('public.precio_id_seq'::regclass);
 8   ALTER TABLE public.precio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    41127    propiedad id    DEFAULT     l   ALTER TABLE ONLY public.propiedad ALTER COLUMN id SET DEFAULT nextval('public.propiedad_id_seq'::regclass);
 ;   ALTER TABLE public.propiedad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    40995    rol id    DEFAULT     `   ALTER TABLE ONLY public.rol ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);
 5   ALTER TABLE public.rol ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    41113 
   tarjeta id    DEFAULT     h   ALTER TABLE ONLY public.tarjeta ALTER COLUMN id SET DEFAULT nextval('public.tarjeta_id_seq'::regclass);
 9   ALTER TABLE public.tarjeta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    41027 
   tramite id    DEFAULT     h   ALTER TABLE ONLY public.tramite ALTER COLUMN id SET DEFAULT nextval('public.tramite_id_seq'::regclass);
 9   ALTER TABLE public.tramite ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    41036 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �          0    40983    accion 
   TABLE DATA           [   COPY public.accion (id, accion, "createdAt", "updatedAt", estado, id_bitacora) FROM stdin;
    public          postgres    false    217   ��       �          0    41093    bitacora 
   TABLE DATA           h   COPY public.bitacora (id, id_usuario, hora_ini, hora_fin, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    231   �       �          0    40976 	   categoria 
   TABLE DATA           a   COPY public.categoria (id, categoria, descripcion, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    215   0�       �          0    41153    compra_venta 
   TABLE DATA           �   COPY public.compra_venta (id, id_propiedad, estado_pago, fecha_ini, fecha_fin, costo, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    237   M�       �          0    41171    cuota 
   TABLE DATA           �   COPY public.cuota (id, id_compvent, cuota_total, cuota_pagada, por_pagar, pagado, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    239   j�       �          0    41217    detalle_pago 
   TABLE DATA           �   COPY public.detalle_pago (id, id_usuario, id_compvent, id_tarjeta, id_cuota, pago, "createdAt", "updatedAt", estado, fecha) FROM stdin;
    public          postgres    false    245   ��       �          0    41183    detalle_tramite 
   TABLE DATA           h   COPY public.detalle_tramite (id, id_compvent, id_tramite, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    241   ��       �          0    41015    estado_tramite 
   TABLE DATA           e   COPY public.estado_tramite (id, estado_t, "createdAt", "updatedAt", descripcion, estado) FROM stdin;
    public          postgres    false    225   ��       �          0    41200    fecha_estado 
   TABLE DATA           o   COPY public.fecha_estado (id, id_detalltram, id_estatram, fecha, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    243   ޟ       �          0    40999    img_propiedad 
   TABLE DATA           m   COPY public.img_propiedad (id, img, descripcion, "createdAt", "updatedAt", id_propiedad, estado) FROM stdin;
    public          postgres    false    221   ��       �          0    41008    precio 
   TABLE DATA           \   COPY public.precio (id, precio, "createdAt", "updatedAt", id_propiedad, estado) FROM stdin;
    public          postgres    false    223   �       �          0    41124 	   propiedad 
   TABLE DATA           �   COPY public.propiedad (id, titulo, descripcion, lat, lon, id_categoria, id_usuario, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    235   5�       �          0    40992    rol 
   TABLE DATA           U   COPY public.rol (id, rol, descripcion, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    219   R�       �          0    41110    tarjeta 
   TABLE DATA           w   COPY public.tarjeta (id, numero, fecha_v, csv, nomb_titular, id_usuario, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    233   �       �          0    41024    tramite 
   TABLE DATA           r   COPY public.tramite (id, nombre, descripcion, lugar_lat, lugar_lon, "createdAt", "updatedAt", estado) FROM stdin;
    public          postgres    false    227   ;�       �          0    41033    usuario 
   TABLE DATA              COPY public.usuario (id, correo, password, nombre, img, estado, google, id_rol, "createdAt", "updatedAt", celular) FROM stdin;
    public          postgres    false    229   X�       �           0    0    Img_Propiedad_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Img_Propiedad_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    accion_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.accion_id_seq', 1, true);
          public          postgres    false    216            �           0    0    bitacora_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bitacora_id_seq', 1, false);
          public          postgres    false    230            �           0    0    categoria_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);
          public          postgres    false    214            �           0    0    compra_venta_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.compra_venta_id_seq', 1, false);
          public          postgres    false    236            �           0    0    cuota_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cuota_id_seq', 1, false);
          public          postgres    false    238            �           0    0    detalle_pago_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.detalle_pago_id_seq', 1, false);
          public          postgres    false    244            �           0    0    detalle_tramite_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.detalle_tramite_id_seq', 1, false);
          public          postgres    false    240            �           0    0    estado_tramite_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.estado_tramite_id_seq', 1, false);
          public          postgres    false    224            �           0    0    fecha_estado_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fecha_estado_id_seq', 1, false);
          public          postgres    false    242            �           0    0    precio_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.precio_id_seq', 1, false);
          public          postgres    false    222            �           0    0    propiedad_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.propiedad_id_seq', 1, false);
          public          postgres    false    234            �           0    0 
   rol_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.rol_id_seq', 4, true);
          public          postgres    false    218            �           0    0    tarjeta_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tarjeta_id_seq', 1, false);
          public          postgres    false    232            �           0    0    tramite_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tramite_id_seq', 1, false);
          public          postgres    false    226            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 7, true);
          public          postgres    false    228            �           2606    40990    accion pk_accion 
   CONSTRAINT     N   ALTER TABLE ONLY public.accion
    ADD CONSTRAINT pk_accion PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.accion DROP CONSTRAINT pk_accion;
       public            postgres    false    217            �           2606    41108    bitacora pk_bitacora 
   CONSTRAINT     R   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT pk_bitacora PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT pk_bitacora;
       public            postgres    false    231            �           2606    40981    categoria pk_categoria 
   CONSTRAINT     T   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.categoria DROP CONSTRAINT pk_categoria;
       public            postgres    false    215            �           2606    41158    compra_venta pk_compvent 
   CONSTRAINT     V   ALTER TABLE ONLY public.compra_venta
    ADD CONSTRAINT pk_compvent PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.compra_venta DROP CONSTRAINT pk_compvent;
       public            postgres    false    237            �           2606    41176    cuota pk_cuota 
   CONSTRAINT     L   ALTER TABLE ONLY public.cuota
    ADD CONSTRAINT pk_cuota PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cuota DROP CONSTRAINT pk_cuota;
       public            postgres    false    239            �           2606    41222    detalle_pago pk_detallpago 
   CONSTRAINT     X   ALTER TABLE ONLY public.detalle_pago
    ADD CONSTRAINT pk_detallpago PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.detalle_pago DROP CONSTRAINT pk_detallpago;
       public            postgres    false    245            �           2606    41188    detalle_tramite pk_detalltram 
   CONSTRAINT     [   ALTER TABLE ONLY public.detalle_tramite
    ADD CONSTRAINT pk_detalltram PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.detalle_tramite DROP CONSTRAINT pk_detalltram;
       public            postgres    false    241            �           2606    41022    estado_tramite pk_estadoTramite 
   CONSTRAINT     _   ALTER TABLE ONLY public.estado_tramite
    ADD CONSTRAINT "pk_estadoTramite" PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.estado_tramite DROP CONSTRAINT "pk_estadoTramite";
       public            postgres    false    225            �           2606    41205    fecha_estado pk_fechestado 
   CONSTRAINT     X   ALTER TABLE ONLY public.fecha_estado
    ADD CONSTRAINT pk_fechestado PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fecha_estado DROP CONSTRAINT pk_fechestado;
       public            postgres    false    243            �           2606    41146    img_propiedad pk_imgP 
   CONSTRAINT     U   ALTER TABLE ONLY public.img_propiedad
    ADD CONSTRAINT "pk_imgP" PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.img_propiedad DROP CONSTRAINT "pk_imgP";
       public            postgres    false    221            �           2606    57362    precio pk_precio 
   CONSTRAINT     N   ALTER TABLE ONLY public.precio
    ADD CONSTRAINT pk_precio PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.precio DROP CONSTRAINT pk_precio;
       public            postgres    false    223            �           2606    41129    propiedad pk_propiedad 
   CONSTRAINT     T   ALTER TABLE ONLY public.propiedad
    ADD CONSTRAINT pk_propiedad PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.propiedad DROP CONSTRAINT pk_propiedad;
       public            postgres    false    235            �           2606    40997 
   rol pk_rol 
   CONSTRAINT     H   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT pk_rol PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.rol DROP CONSTRAINT pk_rol;
       public            postgres    false    219            �           2606    41117    tarjeta pk_tarjeta 
   CONSTRAINT     P   ALTER TABLE ONLY public.tarjeta
    ADD CONSTRAINT pk_tarjeta PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tarjeta DROP CONSTRAINT pk_tarjeta;
       public            postgres    false    233            �           2606    41031    tramite pk_tramite 
   CONSTRAINT     P   ALTER TABLE ONLY public.tramite
    ADD CONSTRAINT pk_tramite PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tramite DROP CONSTRAINT pk_tramite;
       public            postgres    false    227            �           2606    41081    usuario pk_usuario 
   CONSTRAINT     P   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.usuario DROP CONSTRAINT pk_usuario;
       public            postgres    false    229            �           2606    49166    accion fk_bitacora    FK CONSTRAINT     �   ALTER TABLE ONLY public.accion
    ADD CONSTRAINT fk_bitacora FOREIGN KEY (id_bitacora) REFERENCES public.bitacora(id) NOT VALID;
 <   ALTER TABLE ONLY public.accion DROP CONSTRAINT fk_bitacora;
       public          postgres    false    231    3286    217            �           2606    41135    propiedad fk_categoria    FK CONSTRAINT     ~   ALTER TABLE ONLY public.propiedad
    ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id);
 @   ALTER TABLE ONLY public.propiedad DROP CONSTRAINT fk_categoria;
       public          postgres    false    235    215    3270            �           2606    41177    cuota fk_compvent    FK CONSTRAINT     {   ALTER TABLE ONLY public.cuota
    ADD CONSTRAINT fk_compvent FOREIGN KEY (id_compvent) REFERENCES public.compra_venta(id);
 ;   ALTER TABLE ONLY public.cuota DROP CONSTRAINT fk_compvent;
       public          postgres    false    239    3292    237            �           2606    41189    detalle_tramite fk_compvent    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_tramite
    ADD CONSTRAINT fk_compvent FOREIGN KEY (id_compvent) REFERENCES public.compra_venta(id);
 E   ALTER TABLE ONLY public.detalle_tramite DROP CONSTRAINT fk_compvent;
       public          postgres    false    237    3292    241            �           2606    41228    detalle_pago fk_compvent    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_pago
    ADD CONSTRAINT fk_compvent FOREIGN KEY (id_compvent) REFERENCES public.compra_venta(id);
 B   ALTER TABLE ONLY public.detalle_pago DROP CONSTRAINT fk_compvent;
       public          postgres    false    245    3292    237            �           2606    41238    detalle_pago fk_couta    FK CONSTRAINT     u   ALTER TABLE ONLY public.detalle_pago
    ADD CONSTRAINT fk_couta FOREIGN KEY (id_cuota) REFERENCES public.cuota(id);
 ?   ALTER TABLE ONLY public.detalle_pago DROP CONSTRAINT fk_couta;
       public          postgres    false    245    3294    239            �           2606    41206    fecha_estado fk_detalltram    FK CONSTRAINT     �   ALTER TABLE ONLY public.fecha_estado
    ADD CONSTRAINT fk_detalltram FOREIGN KEY (id_detalltram) REFERENCES public.detalle_tramite(id);
 D   ALTER TABLE ONLY public.fecha_estado DROP CONSTRAINT fk_detalltram;
       public          postgres    false    3296    243    241            �           2606    41211    fecha_estado fk_estatram    FK CONSTRAINT     �   ALTER TABLE ONLY public.fecha_estado
    ADD CONSTRAINT fk_estatram FOREIGN KEY (id_estatram) REFERENCES public.estado_tramite(id);
 B   ALTER TABLE ONLY public.fecha_estado DROP CONSTRAINT fk_estatram;
       public          postgres    false    243    3280    225            �           2606    41147    img_propiedad fk_propiedad    FK CONSTRAINT     �   ALTER TABLE ONLY public.img_propiedad
    ADD CONSTRAINT fk_propiedad FOREIGN KEY (id_propiedad) REFERENCES public.propiedad(id) NOT VALID;
 D   ALTER TABLE ONLY public.img_propiedad DROP CONSTRAINT fk_propiedad;
       public          postgres    false    221    235    3290            �           2606    41164    compra_venta fk_propiedad    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra_venta
    ADD CONSTRAINT fk_propiedad FOREIGN KEY (id_propiedad) REFERENCES public.propiedad(id);
 C   ALTER TABLE ONLY public.compra_venta DROP CONSTRAINT fk_propiedad;
       public          postgres    false    237    3290    235            �           2606    57363    precio fk_propiedad    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio
    ADD CONSTRAINT fk_propiedad FOREIGN KEY (id_propiedad) REFERENCES public.propiedad(id) NOT VALID;
 =   ALTER TABLE ONLY public.precio DROP CONSTRAINT fk_propiedad;
       public          postgres    false    223    235    3290            �           2606    41043    usuario fk_rol    FK CONSTRAINT     j   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_rol FOREIGN KEY (id_rol) REFERENCES public.rol(id);
 8   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_rol;
       public          postgres    false    229    219    3274            �           2606    41233    detalle_pago fk_tarjeta    FK CONSTRAINT     {   ALTER TABLE ONLY public.detalle_pago
    ADD CONSTRAINT fk_tarjeta FOREIGN KEY (id_tarjeta) REFERENCES public.tarjeta(id);
 A   ALTER TABLE ONLY public.detalle_pago DROP CONSTRAINT fk_tarjeta;
       public          postgres    false    233    3288    245            �           2606    41194    detalle_tramite fk_tramite    FK CONSTRAINT     ~   ALTER TABLE ONLY public.detalle_tramite
    ADD CONSTRAINT fk_tramite FOREIGN KEY (id_tramite) REFERENCES public.tramite(id);
 D   ALTER TABLE ONLY public.detalle_tramite DROP CONSTRAINT fk_tramite;
       public          postgres    false    227    241    3282            �           2606    41097    bitacora fk_usuario    FK CONSTRAINT     w   ALTER TABLE ONLY public.bitacora
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);
 =   ALTER TABLE ONLY public.bitacora DROP CONSTRAINT fk_usuario;
       public          postgres    false    3284    231    229            �           2606    41118    tarjeta fk_usuario    FK CONSTRAINT     v   ALTER TABLE ONLY public.tarjeta
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);
 <   ALTER TABLE ONLY public.tarjeta DROP CONSTRAINT fk_usuario;
       public          postgres    false    3284    233    229            �           2606    41130    propiedad fk_usuario    FK CONSTRAINT     x   ALTER TABLE ONLY public.propiedad
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);
 >   ALTER TABLE ONLY public.propiedad DROP CONSTRAINT fk_usuario;
       public          postgres    false    235    229    3284            �           2606    41223    detalle_pago fk_usuario    FK CONSTRAINT     {   ALTER TABLE ONLY public.detalle_pago
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);
 A   ALTER TABLE ONLY public.detalle_pago DROP CONSTRAINT fk_usuario;
       public          postgres    false    229    245    3284            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�}ϱ
�0�9���J��l�U���%�7jJ���j�-Z���{x՗:��U�'-����tڒ��F�ڀ]�	��Q[�)�]�<"�I�e@���T��&�$=���v���N/b	zb����"��`�nSH�K�<��#w�&,�5+�,-�M|����|�ǈ�8�՘�@
&y�L��ߪ)p�a���qW      �      x������ � �      �      x������ � �      �   �   x�}�OO�0��sy�R��n����攘�&�0��Hq�vP��=������<� j+QSp�oES%.Or�Υ���RﭑL?N�ok%��s�&�O+����x���O��w<3�P�G�}B�� 1����F7b1�8�	�)�|��;J���R\+ɫ��v|�%]d+9ͨ��K�Oj�2����B�Iw^���#^���l�)�/�a��n��8_�OY�     