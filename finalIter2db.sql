PGDMP                      |           pawsome    16.2    16.2 ^    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16641    pawsome    DATABASE     i   CREATE DATABASE pawsome WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE pawsome;
                postgres    false                        3079    16642 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16652    age    TABLE     S   CREATE TABLE public.age (
    ageid integer NOT NULL,
    agename text NOT NULL
);
    DROP TABLE public.age;
       public         heap    postgres    false            �            1259    16657 
   attributes    TABLE     h   CREATE TABLE public.attributes (
    attributetype integer NOT NULL,
    attributename text NOT NULL
);
    DROP TABLE public.attributes;
       public         heap    postgres    false            �            1259    16826    datesbooked    TABLE     �   CREATE TABLE public.datesbooked (
    userid integer NOT NULL,
    posterid integer NOT NULL,
    dogid integer NOT NULL,
    date date NOT NULL
);
    DROP TABLE public.datesbooked;
       public         heap    postgres    false            �            1259    16662    dog    TABLE     �  CREATE TABLE public.dog (
    dogname character varying(50) NOT NULL,
    adopted boolean DEFAULT false NOT NULL,
    biography character varying(1000) NOT NULL,
    imagepath character varying(1000) NOT NULL,
    ageid integer NOT NULL,
    energylevelid integer NOT NULL,
    sizeid integer NOT NULL,
    sexid integer NOT NULL,
    posterid integer NOT NULL,
    dogid integer NOT NULL
);
    DROP TABLE public.dog;
       public         heap    postgres    false            �            1259    16668    dog_dogid_seq    SEQUENCE     �   CREATE SEQUENCE public.dog_dogid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dog_dogid_seq;
       public          postgres    false    218            �           0    0    dog_dogid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dog_dogid_seq OWNED BY public.dog.dogid;
          public          postgres    false    219            �            1259    16669    dogtag    TABLE     E   CREATE TABLE public.dogtag (
    dogid integer,
    tagid integer
);
    DROP TABLE public.dogtag;
       public         heap    postgres    false            �            1259    16672    energylevel    TABLE     k   CREATE TABLE public.energylevel (
    energylevelid integer NOT NULL,
    enegrylevelname text NOT NULL
);
    DROP TABLE public.energylevel;
       public         heap    postgres    false            �            1259    16677 	   idealdogs    TABLE     �   CREATE TABLE public.idealdogs (
    dogid integer NOT NULL,
    ageid integer NOT NULL,
    energylevelid integer NOT NULL,
    sexid integer NOT NULL,
    sizeid integer NOT NULL,
    dogname text NOT NULL
);
    DROP TABLE public.idealdogs;
       public         heap    postgres    false            �            1259    16682    poster    TABLE     �   CREATE TABLE public.poster (
    poster_id integer NOT NULL,
    displayname character varying(255),
    score integer,
    phone character varying(255),
    email character varying(255),
    balance double precision DEFAULT 0
);
    DROP TABLE public.poster;
       public         heap    postgres    false            �            1259    16688    poster_poster_id_seq    SEQUENCE     �   CREATE SEQUENCE public.poster_poster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.poster_poster_id_seq;
       public          postgres    false    223            �           0    0    poster_poster_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.poster_poster_id_seq OWNED BY public.poster.poster_id;
          public          postgres    false    224            �            1259    16689    sex    TABLE     S   CREATE TABLE public.sex (
    sexid integer NOT NULL,
    sexname text NOT NULL
);
    DROP TABLE public.sex;
       public         heap    postgres    false            �            1259    16694    size    TABLE     V   CREATE TABLE public.size (
    sizeid integer NOT NULL,
    sizename text NOT NULL
);
    DROP TABLE public.size;
       public         heap    postgres    false            �            1259    16699    tags    TABLE     t   CREATE TABLE public.tags (
    preference integer,
    tagname character varying(20),
    tagid integer NOT NULL
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    16702    tags_tagid_seq    SEQUENCE     �   CREATE SEQUENCE public.tags_tagid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tags_tagid_seq;
       public          postgres    false    227            �           0    0    tags_tagid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tags_tagid_seq OWNED BY public.tags.tagid;
          public          postgres    false    228            �            1259    16703    userattributepreferences    TABLE     �   CREATE TABLE public.userattributepreferences (
    userid integer NOT NULL,
    attributetype integer NOT NULL,
    attributeid integer NOT NULL
);
 ,   DROP TABLE public.userattributepreferences;
       public         heap    postgres    false            �            1259    16706    userdogs    TABLE     H   CREATE TABLE public.userdogs (
    userid integer,
    dogid integer
);
    DROP TABLE public.userdogs;
       public         heap    postgres    false            �            1259    16712    userpasseddogs    TABLE     N   CREATE TABLE public.userpasseddogs (
    userid integer,
    dogid integer
);
 "   DROP TABLE public.userpasseddogs;
       public         heap    postgres    false            �            1259    17040    userpayments    TABLE     �   CREATE TABLE public.userpayments (
    userid integer,
    paymentamount double precision,
    daysbetweenpayment integer,
    dogid integer,
    lastpaymentdate character varying NOT NULL,
    posterid integer
);
     DROP TABLE public.userpayments;
       public         heap    postgres    false            �            1259    16715    users    TABLE     �   CREATE TABLE public.users (
    username character varying(50),
    userpassword character varying(50),
    email character varying(100),
    userid integer NOT NULL,
    balance double precision DEFAULT 0
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16719    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    232            �           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public          postgres    false    233            �            1259    16720    usertagpreferences    TABLE     R   CREATE TABLE public.usertagpreferences (
    userid integer,
    tagid integer
);
 &   DROP TABLE public.usertagpreferences;
       public         heap    postgres    false            �           2604    16723 	   dog dogid    DEFAULT     f   ALTER TABLE ONLY public.dog ALTER COLUMN dogid SET DEFAULT nextval('public.dog_dogid_seq'::regclass);
 8   ALTER TABLE public.dog ALTER COLUMN dogid DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16724    poster poster_id    DEFAULT     t   ALTER TABLE ONLY public.poster ALTER COLUMN poster_id SET DEFAULT nextval('public.poster_poster_id_seq'::regclass);
 ?   ALTER TABLE public.poster ALTER COLUMN poster_id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    16725 
   tags tagid    DEFAULT     h   ALTER TABLE ONLY public.tags ALTER COLUMN tagid SET DEFAULT nextval('public.tags_tagid_seq'::regclass);
 9   ALTER TABLE public.tags ALTER COLUMN tagid DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16726    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    233    232            �          0    16652    age 
   TABLE DATA           -   COPY public.age (ageid, agename) FROM stdin;
    public          postgres    false    216   �i       �          0    16657 
   attributes 
   TABLE DATA           B   COPY public.attributes (attributetype, attributename) FROM stdin;
    public          postgres    false    217   )j       �          0    16826    datesbooked 
   TABLE DATA           D   COPY public.datesbooked (userid, posterid, dogid, date) FROM stdin;
    public          postgres    false    235   gj       �          0    16662    dog 
   TABLE DATA           {   COPY public.dog (dogname, adopted, biography, imagepath, ageid, energylevelid, sizeid, sexid, posterid, dogid) FROM stdin;
    public          postgres    false    218   �j       �          0    16669    dogtag 
   TABLE DATA           .   COPY public.dogtag (dogid, tagid) FROM stdin;
    public          postgres    false    220   ��       �          0    16672    energylevel 
   TABLE DATA           E   COPY public.energylevel (energylevelid, enegrylevelname) FROM stdin;
    public          postgres    false    221   �      �          0    16677 	   idealdogs 
   TABLE DATA           X   COPY public.idealdogs (dogid, ageid, energylevelid, sexid, sizeid, dogname) FROM stdin;
    public          postgres    false    222   1      �          0    16682    poster 
   TABLE DATA           V   COPY public.poster (poster_id, displayname, score, phone, email, balance) FROM stdin;
    public          postgres    false    223   [      �          0    16689    sex 
   TABLE DATA           -   COPY public.sex (sexid, sexname) FROM stdin;
    public          postgres    false    225   d      �          0    16694    size 
   TABLE DATA           0   COPY public.size (sizeid, sizename) FROM stdin;
    public          postgres    false    226   �      �          0    16699    tags 
   TABLE DATA           :   COPY public.tags (preference, tagname, tagid) FROM stdin;
    public          postgres    false    227   �      �          0    16703    userattributepreferences 
   TABLE DATA           V   COPY public.userattributepreferences (userid, attributetype, attributeid) FROM stdin;
    public          postgres    false    229   �      �          0    16706    userdogs 
   TABLE DATA           1   COPY public.userdogs (userid, dogid) FROM stdin;
    public          postgres    false    230         �          0    16712    userpasseddogs 
   TABLE DATA           7   COPY public.userpasseddogs (userid, dogid) FROM stdin;
    public          postgres    false    231          �          0    17040    userpayments 
   TABLE DATA           s   COPY public.userpayments (userid, paymentamount, daysbetweenpayment, dogid, lastpaymentdate, posterid) FROM stdin;
    public          postgres    false    236   =      �          0    16715    users 
   TABLE DATA           O   COPY public.users (username, userpassword, email, userid, balance) FROM stdin;
    public          postgres    false    232   Z      �          0    16720    usertagpreferences 
   TABLE DATA           ;   COPY public.usertagpreferences (userid, tagid) FROM stdin;
    public          postgres    false    234   �      �           0    0    dog_dogid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.dog_dogid_seq', 1000, true);
          public          postgres    false    219            �           0    0    poster_poster_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.poster_poster_id_seq', 4, true);
          public          postgres    false    224            �           0    0    tags_tagid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tags_tagid_seq', 48, true);
          public          postgres    false    228            �           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 11, true);
          public          postgres    false    233            �           2606    16728    age age_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.age
    ADD CONSTRAINT age_pkey PRIMARY KEY (ageid);
 6   ALTER TABLE ONLY public.age DROP CONSTRAINT age_pkey;
       public            postgres    false    216            �           2606    16730    attributes attributes_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (attributetype);
 D   ALTER TABLE ONLY public.attributes DROP CONSTRAINT attributes_pkey;
       public            postgres    false    217            �           2606    16732    poster displayname 
   CONSTRAINT     T   ALTER TABLE ONLY public.poster
    ADD CONSTRAINT displayname UNIQUE (displayname);
 <   ALTER TABLE ONLY public.poster DROP CONSTRAINT displayname;
       public            postgres    false    223            �           2606    16734    dog dog_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT dog_pkey PRIMARY KEY (dogid);
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT dog_pkey;
       public            postgres    false    218            �           2606    16847    datesbooked dogdatepairs 
   CONSTRAINT     d   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT dogdatepairs UNIQUE (posterid, dogid, date);
 B   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT dogdatepairs;
       public            postgres    false    235    235    235            �           2606    16736    dogtag dogtagpair 
   CONSTRAINT     T   ALTER TABLE ONLY public.dogtag
    ADD CONSTRAINT dogtagpair UNIQUE (dogid, tagid);
 ;   ALTER TABLE ONLY public.dogtag DROP CONSTRAINT dogtagpair;
       public            postgres    false    220    220            �           2606    17046    userpayments doguserpaymentpair 
   CONSTRAINT     c   ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT doguserpaymentpair UNIQUE (userid, dogid);
 I   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT doguserpaymentpair;
       public            postgres    false    236    236            �           2606    16738    energylevel energylevel_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.energylevel
    ADD CONSTRAINT energylevel_pkey PRIMARY KEY (energylevelid);
 F   ALTER TABLE ONLY public.energylevel DROP CONSTRAINT energylevel_pkey;
       public            postgres    false    221            �           2606    16740    idealdogs idealdogs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.idealdogs
    ADD CONSTRAINT idealdogs_pkey PRIMARY KEY (dogid);
 B   ALTER TABLE ONLY public.idealdogs DROP CONSTRAINT idealdogs_pkey;
       public            postgres    false    222            �           2606    16742    poster poster_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.poster
    ADD CONSTRAINT poster_pkey PRIMARY KEY (poster_id);
 <   ALTER TABLE ONLY public.poster DROP CONSTRAINT poster_pkey;
       public            postgres    false    223            �           2606    16744    sex sex_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.sex
    ADD CONSTRAINT sex_pkey PRIMARY KEY (sexid);
 6   ALTER TABLE ONLY public.sex DROP CONSTRAINT sex_pkey;
       public            postgres    false    225            �           2606    16746    size size_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (sizeid);
 8   ALTER TABLE ONLY public.size DROP CONSTRAINT size_pkey;
       public            postgres    false    226            �           2606    16748    tags tags_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (tagid);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    227            �           2606    16750 +   userattributepreferences userattributepairs 
   CONSTRAINT     �   ALTER TABLE ONLY public.userattributepreferences
    ADD CONSTRAINT userattributepairs UNIQUE (userid, attributetype, attributeid);
 U   ALTER TABLE ONLY public.userattributepreferences DROP CONSTRAINT userattributepairs;
       public            postgres    false    229    229    229            �           2606    16845    datesbooked userdatepairs 
   CONSTRAINT     m   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT userdatepairs UNIQUE (userid, posterid, dogid, date);
 C   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT userdatepairs;
       public            postgres    false    235    235    235    235            �           2606    16752    userdogs userdogpair 
   CONSTRAINT     X   ALTER TABLE ONLY public.userdogs
    ADD CONSTRAINT userdogpair UNIQUE (userid, dogid);
 >   ALTER TABLE ONLY public.userdogs DROP CONSTRAINT userdogpair;
       public            postgres    false    230    230            �           2606    16754    users username 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT username UNIQUE (username);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT username;
       public            postgres    false    232            �           2606    16756    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    232            �           2606    16758    usertagpreferences usertagpair 
   CONSTRAINT     b   ALTER TABLE ONLY public.usertagpreferences
    ADD CONSTRAINT usertagpair UNIQUE (userid, tagid);
 H   ALTER TABLE ONLY public.usertagpreferences DROP CONSTRAINT usertagpair;
       public            postgres    false    234    234            �           2606    16759 	   dog ageid    FK CONSTRAINT     q   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT ageid FOREIGN KEY (ageid) REFERENCES public.age(ageid) NOT VALID;
 3   ALTER TABLE ONLY public.dog DROP CONSTRAINT ageid;
       public          postgres    false    216    3519    218            �           2606    16764 &   userattributepreferences attributetype    FK CONSTRAINT     �   ALTER TABLE ONLY public.userattributepreferences
    ADD CONSTRAINT attributetype FOREIGN KEY (attributetype) REFERENCES public.attributes(attributetype) NOT VALID;
 P   ALTER TABLE ONLY public.userattributepreferences DROP CONSTRAINT attributetype;
       public          postgres    false    229    217    3521            �           2606    16769    idealdogs dogid    FK CONSTRAINT     z   ALTER TABLE ONLY public.idealdogs
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.users(userid) NOT VALID;
 9   ALTER TABLE ONLY public.idealdogs DROP CONSTRAINT dogid;
       public          postgres    false    222    3547    232            �           2606    16774    userpasseddogs dogid    FK CONSTRAINT     r   ALTER TABLE ONLY public.userpasseddogs
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.dog(dogid);
 >   ALTER TABLE ONLY public.userpasseddogs DROP CONSTRAINT dogid;
       public          postgres    false    3523    231    218            �           2606    16839    datesbooked dogid    FK CONSTRAINT     o   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.dog(dogid);
 ;   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT dogid;
       public          postgres    false    3523    235    218            �           2606    17057    userpayments dogid    FK CONSTRAINT     z   ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT dogid FOREIGN KEY (dogid) REFERENCES public.dog(dogid) NOT VALID;
 <   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT dogid;
       public          postgres    false    3523    218    236            �           2606    16779    dog energyid    FK CONSTRAINT     �   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT energyid FOREIGN KEY (energylevelid) REFERENCES public.energylevel(energylevelid) NOT VALID;
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT energyid;
       public          postgres    false    221    3527    218            �           2606    16784    dog posterid    FK CONSTRAINT     ~   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id) NOT VALID;
 6   ALTER TABLE ONLY public.dog DROP CONSTRAINT posterid;
       public          postgres    false    223    218    3533            �           2606    16834    datesbooked posterid    FK CONSTRAINT     |   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id);
 >   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT posterid;
       public          postgres    false    3533    223    235            �           2606    17052    userpayments posterid    FK CONSTRAINT     �   ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT posterid FOREIGN KEY (posterid) REFERENCES public.poster(poster_id) NOT VALID;
 ?   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT posterid;
       public          postgres    false    236    3533    223            �           2606    16789 	   dog sexid    FK CONSTRAINT     q   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT sexid FOREIGN KEY (sexid) REFERENCES public.sex(sexid) NOT VALID;
 3   ALTER TABLE ONLY public.dog DROP CONSTRAINT sexid;
       public          postgres    false    218    225    3535            �           2606    16794 
   dog sizeid    FK CONSTRAINT     u   ALTER TABLE ONLY public.dog
    ADD CONSTRAINT sizeid FOREIGN KEY (sizeid) REFERENCES public.size(sizeid) NOT VALID;
 4   ALTER TABLE ONLY public.dog DROP CONSTRAINT sizeid;
       public          postgres    false    226    3537    218            �           2606    16799 
   tags tagid    FK CONSTRAINT     s   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tagid FOREIGN KEY (tagid) REFERENCES public.tags(tagid) NOT VALID;
 4   ALTER TABLE ONLY public.tags DROP CONSTRAINT tagid;
       public          postgres    false    227    3539    227            �           2606    16804    usertagpreferences tagid    FK CONSTRAINT     w   ALTER TABLE ONLY public.usertagpreferences
    ADD CONSTRAINT tagid FOREIGN KEY (tagid) REFERENCES public.tags(tagid);
 B   ALTER TABLE ONLY public.usertagpreferences DROP CONSTRAINT tagid;
       public          postgres    false    3539    234    227            �           2606    16809    userpasseddogs userid    FK CONSTRAINT     w   ALTER TABLE ONLY public.userpasseddogs
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid);
 ?   ALTER TABLE ONLY public.userpasseddogs DROP CONSTRAINT userid;
       public          postgres    false    231    232    3547            �           2606    16814    userattributepreferences userid    FK CONSTRAINT     �   ALTER TABLE ONLY public.userattributepreferences
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid) NOT VALID;
 I   ALTER TABLE ONLY public.userattributepreferences DROP CONSTRAINT userid;
       public          postgres    false    232    3547    229            �           2606    16819    usertagpreferences userid    FK CONSTRAINT     �   ALTER TABLE ONLY public.usertagpreferences
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid) NOT VALID;
 C   ALTER TABLE ONLY public.usertagpreferences DROP CONSTRAINT userid;
       public          postgres    false    234    232    3547            �           2606    16829    datesbooked userid    FK CONSTRAINT     t   ALTER TABLE ONLY public.datesbooked
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid);
 <   ALTER TABLE ONLY public.datesbooked DROP CONSTRAINT userid;
       public          postgres    false    3547    232    235            �           2606    17047    userpayments userid    FK CONSTRAINT        ALTER TABLE ONLY public.userpayments
    ADD CONSTRAINT userid FOREIGN KEY (userid) REFERENCES public.users(userid) NOT VALID;
 =   ALTER TABLE ONLY public.userpayments DROP CONSTRAINT userid;
       public          postgres    false    236    232    3547            �   Y   x�3�(-(�T0P(�W0�2�tL��I-NN�+Q0�q�JsJ��R̸�9}KJ�R �f U�\&���y��E
�
�\1z\\\ ���      �   .   x�3�LLO�2�,N��2�L�K-J��I-K��2�,άJ����� �5
�      �      x������ � �      �      x����r�H�%���
Ϸn��l�a�zh�EzrZ��D�j��������b>�g���/����� wȐ^2#��`��z��9��EU>��,�mVճb�-wն|���M��������˯���/�y�Z�Ί���|M��=���ݢ��ٲ��^������V���ڗ��w��;���3���i_��z7ە����b����?�n�{^���e�X��/����k)����j1�͋��x����OX�W�Ӭޔ�3<��۲x~�����]��m6_/K|���jW��v�u��xz�y����f7�+���|� _�*��#�_���R-��Vo���u_-���~�o������+����6���?���?���������]����y�����~�K���-��~�|���zU����K�e=[��W_��X���'#��S���$������;<�_�r7�"~�S���7m����>'���gǯ��+��E�+�#/K��W|I�����|�7�u�M�||%��~U}�wV��W�~��b!����.6����U�%��b��+���e��ߌ?~1��VC.�v���y��wԼ��s�������Z�SoT.%7K��|���.e�Ԯdj1��KYԛj+C�n�^��ϳ?ÓU�';"
�EY�Wx���s)�,�Rāg�K�,�o��%(�����"���O�z	���=�g�Ų�����[�)��Y���b���\,q���na���������E�`	pO�1����n�5�}��i����.�����z	�o�)w*��(�{�2��-�a�\=[�ʰ@5,�l��(v�oE=�?}Oe�T���$���O2{ږo'�'�&�b���!��O�ya���x��\,��@�w_T��^���|�~[Q�ÿ���W� �/�ʂ]���|,�Z�����y�/{�oh,�r�ꥋ����gr��O>���칀�:���f.|l�"��װ�O�04�GF�T�uz��傼�_���~���o���v�ld[­�[�.ïy^���`���R<�Ư߬k�e~/W?��g[.���4_U�r�6�\��B� "��r�ڬ0�ptZ�"�\f[�����sW�wq��K\V�g�0�X�8P7/��e��WY�����倝#�R.U����i�aoY>W�J/���j�0rC���u�77���r��k�~��R��5����&��0���>{Z�q�D���>+�fE�#��z�WI!^
���{Z��9��;E�d�C�����⟸Q�ꬣuj�r��D��E��b��.�?.�
8�]��T*����7~(�����ag��x����*�H��E��{��sWmaK��c.��/a�_1�ٯ ۩ ��<��X^|jq�dv&�yO��O�z_��K�w'S��0���5j�id�����l��`���^��W�˒�"o�l���$���oz�0�<�H��_q��nY��XV�zjHl��6�m������7z�5|�[��*�;�"�R���o�W�Ky�O��A�;��%�1������V0��d����Q,�)Ń�>�o�*����b1}s��!`\��݃:Bn�o��7Y���l��W�������_��-���/���q|���X�p��N�Ȫ~������Ζb�����	@{��%��u�3@��M���ᾂ<���u�˿�q����mm�4$-:�N�oEe�`}���X_բ@��~n5��Wx����;W�9K�<X��
.�y���^�D4ԇ �Ӫ��� ���|�kq��v����X�ï��U���i��G�$V!���J~P�:It��N䇸+����CBݲ���[o6b��11��=|�i"G��l�R|��;�|�oy-M
dw��$2�V�X���}�4sY.��Pܝ�0��0�j@0LO��KxK�
zk�ľ�	��Z�R�@�� ��C�Z�K��7��w��
�!3�SF8��*��*s)~�H�lU�,���y��M��ڐ��~������`���d� w&����\�06|3'`SȌ�H��[o��Z�r�K�z����8������~"n�M�+��[�d�3���m���X�+|�$�S�S�_�(#XE�x�����2�.��1�[n*�'�V`gC�'T�;�T5��n�l�	�aRT�F���Z�
S]��Hy�y�����z!o����|�w��i������	5�|��?ˇ�/R�
a����ʥ�+pq� F��ہ�8��9~r�߯�w6U�
ރ~\P���~�N̄�ڌ>������%ŋ������a���MU>�x�q�k��P @�"*&�B Y�F�Z=>.J�����'�1'x��l����oQ|[okRUC�o�P�jm<���߁�Ӵ3�Y��*j����&R>X����m��{Q�˿�Éw�R�3�N��f��"�������>�>%T����n���J�g��@����͋/�&���>+���ȿ���T�N�iF�u�Xr�����\�"Yډ�uV-����M!pA�3�ԡy����O�����|����[;�	C�&���<�ə%U�ޯ�r�9a��'�?�EY���",	)�V�Kl:/@q��<��WH�D^���~��8�vy�����[��Ƕlw*��өp,�з±pe �	6d�{a���_}��@�z�®���V�!�w��*� 'Y?U��>�wpJ_p�Y�� �	�$�r�Y��F�Ums��2a���WVt�
�h��(��f�*H|}���4�˸D<�x>7�+�3,w$����>�y�Q�������z��&X���ԻP=>�8X��Nl�?���{:x�GI�k؍[��_�Ђ��<�����"����g���Re��af/��/{�=�|��K|����3�_b�?�y;E�/�z]��x�Y�^
9���Z�<H`a�NP�
^�@��vɳ�p(ߗ��z%
(���J_|��@�G���-��F�2��z
J`����\�M�Z�����̓؜CQJ�a�S����8[�UM�8�KIӶm�����+�EY#b��XU�z�¥gg�P�c�����>��T�3�DmVLg\����p;�p��«R�{b2��LW�"H�v��[��8�sG��9���:�?N!`���A���7\���f�|�D ���_�C�A���C�+W���-iH�g����	��j-�"�o
d����kY�^����peT�J��-�e)-����qNS���t2=Д��U��)e�{_�Ig
tʝ<���֩]� I�0��I{�����/­S˼v.�`��5��Y�n����|f�_|mB��Ezds���7Vd���4�L�nB.٩��N��!L@���)�m�L����mPO�@�\���[�F�C@��C��{��F�����ɬ�}a�a`Iexs���5'/nH��qeS���l01�����q��vv[��mN���ͦT��M�?��Da*Ń�x����WF6S�u%�ni�Հ'a^-��I�I�E�h�����J��e[T�b_����	\>t�?D�~X��
7A.�X�N\(��uS&�d(�.BVD-��`��5�b?��3�r��9���_-|���x�]�$芍quw��W�:;A���2�tmj��C�
���8��.��s�&Q$�UY࿟�3�e<4ce܎e��&W'.�(&���jͿ���aE~aj���g���u���U�Q࿠� 4R�ZDvuv�56+�^�&�]���*���:\�p���y�4�4F�%���@%oޔt0i�ͷ�^
�D��@n�x!N%����=��wKƀ�(�$X���Q����ۮR�~���mH/��A�Zb��ۢ2PlG���GqeoJ	F�%P�����4�2��y��%�ȅD=�St���I�z���i2��N����ꟊŲ��0�ї&�K�����f���BTM�U=��{�/��d��V�`��4�<k3��}����%W���]�W`rI�&AlL���    �����W��K�_e�ψb�x���\=ȕ��	ܞ�q�%�d�0���=>�o���]ћj�9Z4U�������M�\,T�7�+���*�s�e����#�*����)��NWM�bY�
�!���1&�螓�t!W�}4Rŵ�&�`�蘼.�ڿ��CD�����T Ф*[����z���n�Gu9[ޛ� ��"W6�O�{�p!V{�Ă�Zl��h"��jZ>4���Ɍ��</��8�P����0��Ԡ�֦!3��lTı6�P� n=zid�e�Q��)rSa�wΩ�WQ��JG����5�U��uKݜӖ����~VO��LB/Oi׷/k�@�O�!�+�7�RO��ܭ۳�8�1�.���JL�> *�=PE�,K����dA��Lw�h���Q����ƹo��vg6��̸f�q�b^L�mk����V�پ��zؿ�ϖk컊^�,|��[/h"9I���C��Kb�e�����kD���*X%��8�t����拑m�K��C�i;����m�U[����d��K_!���a26&��>��$㍌�C:�,1���1��8+�����:�������9G�z��_��z�K<n'���(H�jrJ������z�Id�?��֬�����~���!r�Gxkv��T��~�-��yr��}�A"���A��U��9F�_�-ť�~�l�Z�Gu���$��Uv��0��z���'d��,S"���]����G�Wl�շb!OJ�@&+��[�ѫ妔��$�t/k�9C^�V�6�	����1�z��`� ҏe���<tX�����i�d�Q�tc��d6����~��FG��-N�#1D�(�0���$�������
Ð���N��z�ñX�!�_*'��b�G�C*��#׵�*���2�I���6����VX ��>�&M|�PN�`����#�5b:6�|��wiT�u�>�U�PYH�Mr���C>ޱ/�}3������äᨤ1���	ҨI��@Ef��A�1Fi�����	�;(k��S�3�zq�BMZ��a�I
C��yC�����Cz �[�v��M�(��G��CO�hLW�ܱ=n���W���DX���և4���H�����6}DUщ�R*�ʙ,RT�&zy�q��v�b�,��Ժ�΢)��ڔ�7�W�o������a[ą�#����~[���f��&�����H
����Ko�v��D� �Ý"�A��A�o���l7by�k�����B_��Oa6vV�}���Ã����.���Dcf��%���V����@���;�Mf)�)�b�y&���<ccF�6B��f����b�ZaҌ-�G���]뼈��XO;=��:!rrQ&W8���g/[���K��$��_:2k��vk=�(�U9�ϓۇ�5�Q�)�s��
���ZY2uk��!K\q�nPLhl�"CJ�ļ~j՝G".%�\k"���D��,sK����#���|�j�KG��zˈ������C�7��{�����,�Uq�a����f�l�,4gV���9���9i�w����g9?��'���w,w���U�cØ�K~��7m0K��x�{�(��h���JI��<��.$���I��ǩ��O'�;D�_�j��=�IHe��8�K���i6|"��C[�]q��44�a��t`Դ]YEtJh��o���o�j�މ��e-A���W�nU��Hd`4�$I^�x�䈥���j�Ի��J�*�"�R9S;J�b�yl�lY��?�8����y���2����w�T�w&e�\�l�&q^�v�Үs0R�0�V��yYY�/���}]��'n���ʅ�;����Ot磐 _���':aw`/C�;Z����С�LrA���6�~��kP��e'�����B'��';`+q��4Ϯ��|$ė��x1��߫N�J���V����˾Q�r*Ń���VQ�������Wk��0׉��	a�2+k�rJ]�i���i���� �d��r�#�1!2����%��i��2����u&A,�3��t���*ˠ�L�o�6�ut���f{����L�q�N}7���	\����ǯ{��Ů�jRKHk�n7��Az��U
dQ��7��<OG�Y��x-�9J�Aʏ��䎸U�6�y,��O��}��2�[����'`���z�C����ҤLZ1�l�~�.����X�-;�;��y@�?2���T�,2Cղ9*��ǯ#,��E�zE�( �6��L2y�h|˭C��̸ᒖ���H%�ރU�	{H%<'���0���b	�K��~Ǡ��1��z�@C�N����%.�**��w�%�0v������K�m��:喅�ɺ�f=��Zϙ	B�� r�f�\3ڪ��w��@���`����6J��i��#�F%�2�(]>7�Y:	J-j]��P�zV�ժ�;�[��/a���y*bLP�<M���:Q:�<cF��/%O}�	:i�������?��Ą�@��<��'@{�����#t��L�Y�D�O[��0D��ʄ\��\n/Pp�,��s��q�-M��;�%�#im�ӧ�9 j��)���xއC,�zh1�
����Q�����s�T�+��-^�����ij�|�J��b��Pq�䣺�ot'ܡp@�^he�̿ ��u��~U�����!���͗RZ�HIV�N;���0<��Nr6@nf��w�ZȜ?�la#�ռA�;<n�.��^Ż3�n�7TdϘ;i�!'�	���hŇ��D|�Ll��|��������3LF�b���DZ^ˌN�����u��#d������(�g�t�80�H)����A�;�4P��8wj>���ݘ/D�N�D.#�>BL�eK5�Y��6�����[�ct/�Z8�`5���,�8�L����RoF�{���(Wϕ⼋�D�����y�,�A<b�Rͽ�p<4�� o�'@�a���j'�+s'��"�B�ϱfM����1�E�35m�"�x=(�iU���|]�O���M-%�R,��2��:c���=���r�×�"�_�֪i7�So���/�&R����3��W�{n<g�`���������Z�,��8<QB�/�8�6���Z��j�x��6ҙP9�e�a�I��xS�.*+�i�Rd��=��:��>����<4��^���nTw,p���̲&�!w@�{�����s4x�6�<�M�;W~��WL�.���XW�yͬ�6S�I6��qT"&VJtHBQT�[M:�
r����H�����s�ڙ;:k���w����b��6 DJ������/7����aJVL+�u�0��"8u�Й�훴�d�J�.��iI6�	�K�'F�'h.1f�IMH��ف��=��z����e��C]�C�	��'17�"r��x�����B*�A��y��,*�߽���p1�������;lR�jo���
��V���]?�VC�X=զ9G�
�ʡ��F�YE�����kٍ?�t�YhW�@ŠS;�fms�;�{5��P�5O��%��X5Dɶ�,�������� \b�I��;��]Y���]��D�@u�صUi*���¢a��ܐ�4���Gb�NZ�7��v���hW�z��ݔj(��>W��(2����\%���`��|b���HBs�."�b'Qcxc���'݊�{^q�#��y�M��)�H�� R<�Eѹ��B���p��%�}AB0bH�$8$�*E�,�p~MT7�v�g��y)M��j�s}P��@�g��h��\���̄5�fR~�G㞃����q.�X���@�y�ڒ���VLş����W�J�4j��~�>�T(�!U6��g^q:*����[ӈ��)���8�8��X�L�7��\��"<����r���j����~��yw���usBX'M�k��1]��!�-!�����O�3�GmvR����[z"q�yq���݈���5����_5��Y~"8[>���FQ�O���M��(o�:�`�U|ffJ&�hmp�K������P�M�*�^�Z��!g�u�-��E�[��,q68T�Y���0~�%    ����6]����O"b�قUx�i�9=�)1�^d}`O��)K��͑%�:C�k0K�5���)��c
]�7�L�3�ƫ~!�{h�� 5*P�{��wb@�����(��<�}窙*�j8�r�i55V;��R��a���s�r^�y�.e�p���rޔ�	��uMWu�$�� ���;�$�WC.�GV�������0����$^!�Zb̀_!���KDQ�tT��1�ݙ�/��<W���WGĨ��>KW�9��,^��)�C��m��k]�����2I��nh��ۡ��q�~5W6pJI����V"�7�P*R���I���|��R,�<a��rP�V�U4T�E�X����*�
�5m��+����:JĹ	�
YG36�b՚��K0�a���){*�A�_(R}/h1�U*��<o���W�W����&�b���i(�5p�4���>����]�Kإz])�8�4JK4H��rT�{Xs�!��Ot��,���A�����+qz�g�)f�_��W�(�Uڹ�xz�;lV��rK֨���j�����3F(�rG#0x��'VĊ�\쒢j�R��/��6}�3{���t��e�i�2Q�֠��;%�W�A�Xl]y�c��9-U��q�,�֏3�DKL�B��DA ��\7�������=��#���>d�o�`���e�@d~��C�����F	{�yx��A?�!sgS8f^��Q�n�L��jgW�eC�*�3��p�2��LQ��)�S�1틣�g���gb�sؔ�6g�e|�sr��l�1����.bzTng;r��"S?(r7^j^M��Z��j�!X���?a/
�c�������M9TZHQ���j1�K�b�tρ�b�� CX���Ԇ3KS�C�r9m�Y���1g�)y�l�ba���j�5�Y~��l<��
�!v��[tL�E=l/����E����x�s�{h���ry-����cr�}Qvt����r!�`�m7�A 0-h�y�
 buٞ��QֽxVG�|h�\F<j[F��я1@&`n+,�%�ۭ�{�@,�辄���j�o����Y���m�(3��"�r�ZyQJ����%�ނ�e9]֖1��B�
2ӯ�<�r<����m;&�Sl�� v��@��W�.H-�LRaxآ*��}f�� ��z� ���5��,���t��ݐ�XT+�L��kqc%��"r�52Rf�<<�0ś�deW���� �Ra�灍��A����ij�`���6|�(���N�#d��==���b�	F=S�����T��T�fS��	�+�v�f���{�|"N�k���ak2���ލ�Ӊa�NY�aF�����*w^d����2�kũ����9�z5��-�;�TBQ�(Zٺ6�@�EZ�wu	B�"�t�u��:1�l��������?�eC%����8��Ŷl��^�2�o�QR���]4��9
�4�{e&qH'ykD�V��}5'Ғ�@^�?�@Y�y3��I8w<��Rfę�q���SQI@R6�PY�.G��k�^�ِ��.���o���ܾhe� �@�U�(�9�.lvÿ�[?Ɲ���Q�~�jzj�;+�ی�T]"����6*̩���L�}������4�5����+�7U��ܛ��l�&Z*���~�ae&�����j�x���l3�)�4���~������j	��U�	����,���2)�513�} ��š��щ��GIb�^��[���&��@!g���=M9)�x_5���9�I�~]�I�҆A?�-;����x�Z��K=��q��>L���WΤ�����-�I�Y�ID�������n>Tk�<�0d3����@�& O��X�ް]�j�����k
��\�/1��w�{��Z;���Ɖ�� �����Z*.�ĤR�Mń},\���8c֤W	M�k1--	5UCg)�u>�N1[�b��#�[�#9�i4�E�q4���2�|�ΩX:�D
QUObu��KPL�ߊ�;�$�����k�Bf؄0y+�������m��M!�e��2���S���M�K��{pu�� n:�L2�"�ǛXj�j{-eZOS�@q%�f
��ɓZ�Vw��Mm�	M?5�s��'׮,�a-Y���7����Uk���r`�n�q�����\�g�%H[m�iw��C��8��<�����8��Fߟ�c��\�%F���c�s	C�����&G ��N@��4�#�pY�C��$HJF����\
œɪ"��C��8^� ��h��-�<c۷��tg��h� ����e��3���p�=muD3�]/��ʀ��9.�mTP~�K�"Ҿ��Y���Fc9 >ߵ���]d:��Pz�rm������f�*I�.����#�%]�,�����O��q6��k�\�)jQ�X�8��a�8�X�7-%R�\�p� S��<�a��i�]	;H���ÞE'�LP
T�%ӏ)���@��%C)l�nRY�#��^��rQ���GP����Д���a���a�3�dk�T�|�A��m�6U��w�����Q�Cg۟�9	�Y���&-�Hq��q"��M���}��0�ќ�MQ`��`pѹH Ԝ�' �V���X,fd(=C���1��]t9�:d������7������91a�C�����y]���v�r�GF��#��YRAq���|S����G;���*�*��eĲ��2����_�a��(v�np%�P��=���6��j,w!����B��,R���,��<���4��
��������ot��
$�Ccif�(q�����'��q0J� ���E����2��Gw�8Z3+%lYI�@���P�a�ߘx.�Xg��#�̬D�� ����x�����w���X�� !��rGWxY\�j����B:�it��9�0��=��\���p!{�>i��z�� �$�e�'�k�迄��E�I���`6㮘Ԓ�����i��%<Ȗo>v����&73���#X��n}w_e6r�k�٩%�|7��q���w���%+tu���b.:d�<����>'�d���������4\����m���RT��&Є=2x=��BU�2u!��������Rz��vŻ~q^ECY��M��!���T�8*�,�*]��D��kÆ��X$.݋���$1l������� ���")HV�E$�bS29���n=�;�;P���3�=����OF����Ձ������e�s0j���MH]�-nMآ���L�����0�"��O�#;�����m�q�"Q��dY~Ӎf�Yh�V�,4Xr�\���/�Qz���7Szb�d`��Bf���7�q6C_�x�-�\IX��L�9���:�#1@C±���;��p���F��ɏ�?��~��=
ExQ�Cf�8d.(Da�n��i���B��"�c:�j�8Z<:U��Xp9zj�_	fC��t�J\�C�<0Ո�F��q*����{�!`N��:��~"�Ȗ;?�r`nn�V����H0��R@�� G�BZ�b��Q��'wN��Gr�s�@7=1�X�R�{ ���;pJ0�G�҂�SCq�xk�������P6>+O�)фg��)����x���5�x��m�05�z$�:Z��몯�E�NZ��Ӏ�ey�3�آ_p�3�U\��d��keY�򇬥z�W�G�N��A���2�n�7
�
��ʷ�VX�����Z�VOp�B�d���_-5��g�ϻ��y��LC3[��
���/I�1\㒴��2��J��۫v�fq�2q�̐���,�Sf`Wa}�!O"
���h����r�j�.�c4Πz�,�C@��Rjy�pW�Kr���tp�(7i�iL�F�n��T���䤃С���0���X�CbI�qu�0
�����l��^�q��f���U]6��E�tQ 3����`�SO�)��	洃4�PN��WcWa��q��F4�T��#�3��ꤢ�yd�*��( h�2��6�$����$��R'J̭�@���H��    :�_M)�����cӔ�|��~$��*i0�d.��w���=��2AN&�H��G��?��v���w�ݾ&�Ș`�J\d�$�a��rQ~C�]������S-dk���O�AƦ����K�d]�(�Q��|�G��h"�~�QL�A �q��ȉSnǎ |s���~��:��^�0w������`�m=W/à&��2�0�J�����UG�n4[\D�;�8��u���iف�=z��n��Ȓ��A�x� c�2%מ��5�c����q�3��Bl�4�SZ>�CIC S�ƍ~5._��-�VN`��^��0�z7�x�eg8Y݂�<��L�6/f>��=R��8?���M%����%��a�����	��یL�!0d$m���iHO >�>Y=��R$QE0L��N��B��#)Lm/p��4L���^a8M�@���n7X��l������ܓ��Z�{�_8��X�+.;�I���0�OV�t��N�ih��L%ȉ�5��r�����g��$���_.҇k���c^�1�?����B���ϱ��ٟ������ޥ���&3F� ��۹����4	-��.�an�Z�Y L������d��6�u6���%U��m&�+�Ⱥ�ȖG/w�����!pNiȎ`��zp��r!�ۤ�2�"���hRD}^+I4Rn��I�6��rIcs[��ꗫ�_=�#t�8�fhirPD��G�$�h@*WB�G
+�BR?��	�־*�5�]��"%�@ᢁ�Vp�{����X�K3&�.��*�t��z)�"��%3��L{�����niC�����.�LY$���!�p�f
#����m0��� l�EmLK]�#Uk<
uk����9�U;��o1��`bt�yǚ���V"1}�
���/ؖ���[[25ao�"�
D����F�7(���{H���~�Ë~|7��B�z��)݉��͌rԵy�]�k�9yq��Ϩ\��cO^A��Nu��:�Vg����.�y���z:��E[�:�<�o�q�'�һ��2�j*�eN�Gˉ��]�h��ǭ��z��=ؕ���Q�Q�j���O�*R��@�!P8�#[���6ݸ�?� |�$#帐-�-AT�w�w�#S��c+{	�G~�m=�|�~�a�x�����7@�>��^��.��y��9���t�����"Ppu�;�Ê�k~zG���%U�;#D��Bb�����ƨ���ⱈp�E����%����ӿ8=�p�+�:[2�n��)���LGA`F��k���
��.!��骛Bh�%���<n��<�Oɪ�]���X}+j����+�l�in"W�Iw��n���8��F"<lwU-�"��;t���-R%�l�,�$t`��ys��^vY�Ne(���B-�#
6+�3�j��Z�E!���i
b�e�iF�S'��e"#h��}ȻΎu��r�ݩH�n"s�|��&�҅�\��R�	�~ nr�΀�I3&���QL;�V/���u�Ma	S�|���̚;�$K`"��(*bg���6� �p�2; �F���>��h�
�^$8G,�N-�"����!�U��U��t,&#۽V��sƫ2��@r*����M�^��z��sf!�&�Xd�����ľ�B "��NHe�X|��{�-˔�VX�Z:qg����q���W���u��v�Nh�^_�I��Γv�����X`��"'�.Y�.`�7a����.�㍕�d���+ϸ	���x��I�,&�0g.�a]��y���	�-h��*2X!ޔн�^���G�l�aɩx�}ŵ�gVC�����}%Լ���f�?jE�ֈ��MUT~�4A��M���%�L����:U�qu���]�*]8�txj�4I�
9c�l�^YZ���ar�5B��c���g=�W��H��x~�°����<���Λ��L)'�r~�0hd����0]��1��ȟa)����Hi�k ���q(�~&z�c[�n�Z2-�5�^�{�̃�HG�U���_��Vm���za�r���.�
8눤_�,���KN�x#ɋU��O ���[�"�`���+T���U�V��U)��K��d�Mj�H?�F��?Fa���n����RA�/L����;gZt�H�R�Da����p����"�E��(�+�ʗ��I�9�2�0ׯVJ���}":���1Pd�����4s#B�E����"�m	G'^�Rĥ6�+�=b�gߏ�B�8�N�Gd%����8��k�b���I��nTKzcb[%�EQ��H�X�]�X��c,��!��(��m'��5�dJ�>�K<wpzq���wc�:*gA�H2(%��YJL�hh�E�U-�t�ˣ��cl%�A��s;Cpy�5`����ηrm��َ�^ε�c:�9놁>��H�R컑l��6)�x�z;4.sw�j󘝦r|&�x�?HvT�v.���k�[`��B9훻�-�Vz֓}�m��#��gt��G�R��U�:��*/��/�lPm��V�(&D�/Z��4ؖ=��3���P"��jD�Q�4���5J�ƪ����d�b5�
��p�i3O��"5�����U(]�(N���\Q��8�m4գ���p+5F�?ޘ�>xCL%T�V��k�?�e��z�ط�p��01�p/'�.��OP�b-�R�%��x4��D4HP/j�3BTK�g�>m=�]0n%]�@2h�|/[&r7�qX�*�R>7Eɞet�x���;�� c/�U-��o��~��q����
bȓ��wܧ���Q��g+�َ��Λe�4�e���1i��B���D�d�Ó���i�۪�> �������d�G⺃[����u+1����k|�?���I����s�gd�|E$�M�����Gy���ʅ̆ ���4g_,�{a�|�i�:gQ|�Y��9I�BS	1�JI����(q౽(s�8�If�-�h�X9�qg���V5O�[��J�q��������-�
i��H/@m��Fm��=0ۈ�;[��S�����~M��utO"5�C�f���Ob�+��luĬ4��O\�}��/��3�Y�EZ�y(��L��Y˙)�	��qS�{83bZ0Y���i�p���*�t$�[yJ�o���P��s!��4��i��}��P�U(���8gp����D�� ]��c�W��v�iyL/�Ӛ͠1�G��g��1}�p��֘�	��y�P@�ʸ�ܞ��2���#�:�c�>���-������ӜB���Ȼ��ǐ2�Peq�Z���՝�,�=x-K	�_db�N�	0Ybf�D�ӪוB������k	֭!�U��֒n8,1���Yp`G�/7��J�F�3j A� ob���@׏��96*]�l�Kl��kIq�q�AU惉8yi��dr���n*�9�j H�B��!�B��v��p��J�(��Ձ,rZ�x���#W�6IΠuO�<V��恡�c6:P�kJh��� �x��3�e�F�M�Ci��qo>�gN��*5-�4��$�|t�!�01	a��Ή>�m�iY�͹�*%�cK>qZ�&tSc�Z�I�g�y^��>��:~��U(K�;��<m���QE!��Iz�4���H��z�S�(0��fR^ڱ\�
F�ʂ��t�,��Ȥ�n'�?�A`�:�����oh�&��NİH�O)�F�E���W\�Sp�����`��@�։�~*W!i�8E���cBj'�P0��	�.��q�Tx�$f�6`����-!p�bG�ш� �c��+/��탮Rj�\�w$m�P�y��j&�)l��atx�@x���'H��T�XY������+�+��0���n�8�@��V�3�\5������(B�ZG��2������Ԓ���c��cu��I/J�/�G�o�/�����%�8�3�nu�k���ȍ6%�x:�E9�U
�ôCZ�S5�3�)Ӯ�Sb[��<��3��@�;x��>0�a�zp5�ML�'�գ�(�,q9�),PhJ���i�kZ    O�L��,"�÷�BxS YM��r��=�Xg~'�����������0��Q˨ë���,m;�N��A�|�����g��(��# 㵌ǘ���0�v�%�/^�A��$I�� a����9��#P��G,��G+ǈ�x��,s���7�������~m{^�C�H��� �k���J�fPQ��a���<X�2C��J~��O��<6qΩ�e��s����xN��,�_%�J/x0�	`�Vq���eT�`1O��·��vg�6����J�^7�0��oe�܍�ҭW�=���� ��g�7:m�Ɲ}�4��hCIS��o^$7ap�>� 9���`��u���'d��̑��ǁ�Y:�n�	�,lt��b	C?�h4SN�m�IP:e�o�d�F��#\�i�Ź�ø9m�g�J�ݎ����"����/�]���O�8�>@��<!�LB�az�'� E��d�?Mʤ��UWLw�=�\��f���
�d�#ݵ��2���S=9c��vʭ���۽�p�}���p���]�t�����[Gj�cT/+�,!@F��q�c��*��]t�)����%E̐�$e�;����} ���������X7�wBdq��gk�^�E�f���D�	��S=�-;,s Μ�.�:��U��9�Ի��ǰ����d�)̈"���vrd�X�^��cR������!=��e�9�ns���a͈��c%�H�z{�`o��f�7�'!�@h�t�q�����xo(i��+�M��,JU��B�&�΂�es!ģՒ-��"bɔ�*��J�M���8ʛ���4mC��XH}b�����s/�0�U��HR�/��G�y���!��զ�K2�.v{�ss�����s<>H�����V�
��8��9�wW)�"S�6j��w%�5f��(�fr��*k>��H,�-�,N��d��}�z�F�5(��'2�r���
e��ME�J��O!.� F��{6�Ma��/��8o��%D̙�w��f�4F�Re�@�3:τ��|H�Tå��G�,r
*d�$ܯH>0v~:'J�wCε�6�BP��OM�ucﲾ�=Y�6�2*�"�O��i|��`���J���&���^dI�a��%�	�'{��}��T�j*I[07���C*��>/�i��7اb��p�����p�nl^o�$�8����͍�'�Z�x,HIE��)��
Wv���/5̜�9v]S��(G5qo�7f��������sN��)�c�jnG�I`��F��>j �"���i�S�>�뼅QE��w��0�ҋ}*�������zxL�2N	P��@���S"_����6�y꒷��J���-�qzȷ[���&r����b�<��W�Ta.�.�g���8Cޟc(P��g9;Z�x�Xk�`@���}u�����%��*�����k��
 <�0�j*Y�VS�O; 6 Y�~��PV�����b1�v6�����>5V�ih�L_�� �3��:K�Y��in_�"j��V,�;�d��j��g�'Fs�{�A�%�PO҂ğ��¨V��-�]�9��ꥣ3Dm�N~�����5���v�����mB����%#goa-��D/�o���.��w�s\�Y�o���ܙ��V��U%Fvf���M ���Ga!;>�_=�����h�����A�ɩnK��;��|m	[]`I�M\6�D�#KaL �A�3ߐ�k{]?E�LG��4Hߘ��ʆ�t�����ő�eBj�{��� �P�	�H�Ǎ"��bV؂���2�Y�UH�ZS�w�pC�II-?ŷ�i�_B.����-��⨚��/Se���~�����9|}�V/V02��%H�����h�1+�C�-��!�J�e/�ү��J����&�\U��'�;�ik2�+�7��O���<mwc>dn��n�uh�#�&�|�� ���l��[.�&��]���?Z�tD������T:3tMh�x�����R �I���ec>u�s\ޔ����Pzx���F	�	j�&Ax��mJ�,��߬����ΪsX�H�޸U����(����(2#�� ��G�\�c��K��:7�N]�.R��������Z�Z�x����Vi�3̋�zDNY���x���Q�V�g^X�?�@�GI��	u�^���3� j��*�R�@����Ŧ&y�o믥*t�{?��D��:^�23�b��E�D���U9͹�����IX���8y��@2EV�N*E�AD$}���۵�����n�����`�{��Bq�.���D2�
U���ѷ���O�Wi;_)<w�t�o)�.+ոv]�c��X�ӻ��Y�A�㐸�`�/��J�t��/�@ʍS�ٖFM�X4��+�[K�(�	b-�pm׏b{<��v����n_[AB�Y �F�ǖ����Ͳ(��y�2j�*�!�"�zj�8��ްT�7��֒��E$�A��Z���5P��7�e��������c��ػ�v�MF}DD;#�&F��˙�.b �F^LR�I��gnUy燆�oNil����4RZ��j�ܾ�6�Zԥsf�{���O��Ka��!t��5F���kqu^�}-;��Yh-�D��a�b��8g3pSA3I�K���;�u#n����p��81�M�-��D���7^�DPn/P"Pb�\=�o<k���:�����p�5I�_�3���׆��:2.8�Q�L94���x�L`�*�f�&C	�)2��Rqq<9�j�,d �6DS��!w��o�cz{
5�$�jtë��s�?ʊ���]W��a���2�wȫf��>�^n�$�o�A�������(7O��]�0��:)(�v�9��2,�ʺ����.2� r�rFh����J�4T�� k��;
ԣ/r�!)�ɜV(�Uʏs]?D�1(�T�_\HQ`�>}�7S�^$#-HAQ�4VbX'6�&�zpJ�ތ.���WqG�?]��T_�y"���ȋ�6�e		��1ܣT��V���3X�����oGљq�S�<��	��(*�N`��#�l7}_uCi�z7k����-��C��R�u���C��;I�����xev4�Id9ʎ�~خ!㑋��J�wzIs��6�i��5<p�l`7#m1"	q����b�ZᬋH���_�Z�MR�Ţx����N�?���V/�ʗL�y	�x'�����u���\�T�cn{����sA�0f:sE�<i�=�~�Ky%�_��)[�17��<m��g�A���B�␚j�ANߍ�c,!��p�#WE7RdG�.���o�M �l��0>����Ui��fʼ�0Ԍ�ն�j�5NNŀ�f��6TY�I�I�9$qꓝ�*���_^�I�O��#�K_/�L8�44m���?��^��A��O�Б�=�I�;�$��	:n��bi�ON
R�9���y��/�;o�ˆ��rW�S��i�����~��;L�5,��Bo���(<5�T��M�������!�?y�8�£F�760�_�_N��A-̓�$�j3���uo��"��s�u�Ķu�\W�Zy�F���]?��.�g.9�{1�}���?"���L��F�RX�T�C�8�<����Y"�bC��e�#��C9l��\ (V������&k�����H1�G��d�!�
הe���,������̴��^Cx ��"�.�'���4K�$�R�x���Δ>�r���'>�s�,�׈�}gX}�U�OeR��_��w��S�~�lݓ��u��)OpjM�����OS�n�x��*h��VC�cB�Iۤ���WlM�	٦�j��ܡ�Q���>�<��s�8֥��j7�}
F���㶳���D���̏�O�r��	�̪�X�l�!�9g��L�b����[nԶg�?����}���>ska-��[X=6Ń������D6��q:��|�,�'�VH-2#;�qc�e��	 �gܿ�ꡧ?�z�4_%u?���N �@�#d�E��,:����7��( ~�"ư砲��$��ŝ�<2w)�+��8���j����$Ҍ�R29K� Qa$��[l�    ���@��M����w�W�Bg��?��,��"z���]  m�ց4��qG��u'��-N1�Xa�D�l@�|�����W�-aPQ��xZ�j#z��T�	��W*s�N��yoב�=�̻��@��y�q��u25�y=�-n�p�m����dC�d�;�q�����5�N�J�RO1�U�h��r�S`�wa�C�#s�'P��-M\_�B.+l�7\eډ��ݷ����.���r͖C�zC|i���b�̑�:,b%@��b!T�+������P\t����1<OQԤ��Es��'������'5r+(�^�PR�5>}�q�G,���x����z�B�'��V���	s���
����.\��b�9G��B炘F� ��Z��q6X}��ؕ�]r��c�5�L:ϴ��=b*T"�����\�6L���]�� �@j.��K ;�ix�":��Tj��X�>�5���d_��%�*�>r�Oj̎���
�pX���'�#j������PO�r�
N�rl(����-�B;�#��4�A��1��+���ikZ�T�C��O�D:"ɠ�K�:��B\�g)�U��
uVHp���aN��;�-� I��"���c����o�q��b��VC���q��7�>V��J��ء��F�Pl"�s��m����6��ˬ��}]a��Ƶ��s��5;�an���GGW��V:�����Q�W�,c�8{����DĽ���z����R6��C��b/�F^HC�����
��#ؒ���"W?�ֻD�(j�D�����ӊ,�� �Rftw�HmjH+�!MjS���wd�n& <��o��I��!C0�;���0�^�YG�$L��)�4��5��?�Ef�rq��E�b���ʨ��#�#FG��u��O(k��/���UG�r1@��d�e���7�Y�j��r�Cی,m��P�Õ��ϕuQ�y�k�)E�R�ZP�N*�udzhy%;�e��K|?e��[�7k�K��P��Q�=T�4h���>�+�Hq4o+�^��a�3i����!��jm�ܭPB-�ݽ⭽_��]=��ٟD.(�[N�������S�sHư�R��s�vJ&}$R�V��]�kU�S�N	p^~s4fU�~u��;�3$e�{m���z��bD���࡮0�xJ�N���R��H�ِ|ZA���ûw4��e~,u��(���v;��`��P+|�C�2��g�!-XFVʺ�B4������RXI���{�~'���Ĥ��\<�kO~��	!�6V�06n6�RZS�ј��|-�6�a.�k㮼�<%W�3�:���!.�L�:�r�2��q=��%FMT���Q���DMy�/F�̘���
��f_��3N�7b�a��F���q�"��>��P�pM��y{+ݕ��C��G��eK�Eb�0�X��K�	x�|\(����q�=��(�/F��m5�t_b$:��y=�� s|�0�&FbNJx�R������(;t�8�i�X�b�����Q9�ؼdXg�X����k��D
�����iH�dY��?M!Q�����הI쇆��{��+V�b�YQ�$-J!�Ni�O�#f �i��b����e-�W�����Ӿb�A�_f)h0&hI��u���Z� �((�E}J0*��qД2�;V6~X���凉Gtv��F,Lۺ��9,;	 F��.#үHmռ��>��[������Tg��J9`F���W3Y�M~��9nrN&�[�(��a�H�R,�I/^��D�M�}�m�+D���ֈe:�	y��5rh�d�FRݒ���J)L�r����l_���W�)�|L��Ɓ�ٹ�P+�t%�hf�Pq�Cx��z�l�LY�r�!k��]����L�k,/��O7'�P�ӻ�i��i6pX���h�p¼�Kuy��׵�yc+�.�)��"��xZ�2�_���*�˚����`���)��ֲ�ٍ��p��-��\�i�AB�qbfX�L�5|q})]��A�zIA0׾��8��1�*�F�����v��85�Fi�4�<41���]��Z�}d�T�V!׽9�1~N7�|�I�]�ȲJԽ�>���H���fY����]1/�L���g� $/�b�ȡn|.�ShK鱆N��0q��HkKBOf3��P&/�����EɡQ��m�D�̽��3�ŗk�g��ךFך���0=Y�FX:@]��]�����zdo�ī����RI�p�c�dM�ũb��\���s�zz09 �|���ebY yj�Z�9gO�{x,�|�35�.C��K�z�^/qt*/uTL���*:Ճ�m6Ǟ�e���j����W�X��iʖ��@~��};�cRʶwʎ�T�5S�Ss���W�u�H��TI��ԋ�*RO�:9��S]˼�d̲���1�:E�p����l ��V�McYҭI3�S��r7J�@��bH�|n��g�%#G0�'���Ƭx-`�ɻ�[��/a��p���b�/��C}Y��B�D�ӂ+����애�2Κ`ԝR��S��:��F�w��	:Hw�S7=M����R���=���
;"@e���8uA՘���g��Ȕf
MO���� A��CÁ���M&�Y��`Y�ي�H�A<m���Bo���Y�VR��u�ȱ��Q�����̕?���zh�e�d��t�7�꺗�����ɽtӨ�4g�X�Hw�D���k�c$K�f�݄Z�Ր혬sNz�����W�sb+�H�=K��Y��q��4�;u�Y�
��0)H�*�j(����_`G�L��{�kZBA���H��Y/��F[GC��:n��fQ*����L�C�+�v.f��a��O�|I*����SG!��R�SF�'�>ًoR#���|�ٵ�s��ɉ�i
`�v��w��bp�4��hgk:TK��0�K:̻+:�����F��ak���H�.$S���"�ݩ`�KsNn�M'��`��3�/p4"iFJ�0�#�uv_�r;�$mu����|�S��`<z�� �W'���+��<Q6��mZ}����Ҥ>@�.�!���E١_���Rx�e�~>�i��&����N\C!���^e�kh<����'L:��x�R���<EV[E�GfAp�7מ��������>j_��ԏ]�U��ck��������#~���6�t_̩���Y�5�wYO�3T<n'���m�ǰ$���F~S���sZւ�jԆ(%H��}ȂH�A[w�уYH��6�����P�,���!�$��_:.�*��J� MǇ�f��X�J`��fQ|�����R�%��z)�ݝ@^rّ���]"���"�Ł��X�H�Ym��e�:z��C�|�`ΘHA0gDy��K��s&��.dϪ>��Iv� tτ�� x���1���[]AŤ�"cb�|���D�۾���q3]��L�3(�k,�N�X,Qxlre<rp<65�4���3�1PW=���Ē�?{5����a�ɿg/_�*�� �/���J�^Wj��	��<�Wk��AD�Uw)��p�
�]�|������r3_�D�?㠨v1C��z%.�b�\���4�q��r�Ψ�ki*Tc?S1b�'Oprn�i�>��˗����]��#�o۵P����y����[��v������9�@��KDB��\�����E�I��eM�͇K��=H򟛋GC�,�腞ߥ�2�e�!������!�;�2����;���va���.`&~~V���Q�Ib���9o�Y�k>���I���G����H6�tj(�)�s0�J�.#�I$I�z;��	�<��-�R[;G��@_�۳��^��s�;�x�Ԅ�ji�&�O"��u�D����v��S��I�G��c�|��i����둹��TNyNfb=(��vU�i�50�F��ϧa�;H?�����Ef���	�����@U��c�uIN�m�[3���:�H��	I_Gu��0R�7'�7i���N�[n%N�1���%(����t���"��Dw���O�8t#�LK��KM̆g2oS	a�<��^~#�|ň�F�yNg����q���S'/\e];�͜����mB��l �  �=��X.'6Y��_8�d�GpJ�a�Y�|h�Mu;�}d;�S-ۑ�L���j�|���΄�wo��M�BT�$����M�}�zx��	V����i�躒�vxi��g�J��d}D�XD�bF�%�i���_���Cͯ
�э����y����f����+s�������MBuJ>n�U��z|�Q�fܫ���upcƁe������eA�zz�p�=!.��1������#��V� }�(!{W��d�����p�
��{8)?d��z�=p���PT�?R�>(W�1�$�>�Y�4�>j�rS����%����[%�K�v���8�O��E��.Y�Xf����YL�J	�n
LT*"r#�*?�\����+,WV�=�6;-+">^���U�-���;V�����B�&9�K�bL빻�T�E��������F�Co�AU�#ˍ��(�3Í���ƍw$���frBn�G�C�'�� йe�v�ιP�:�YX�zw��֕c}Y�H&-#:�,wR���!7ǈ�i;����-i�m��L�z��I(���f|I�D1<�� ͔9���&�ƶ�4&VYBC
�b���Β���4I�8 ��K�v��c�<��ӑu�:+'6[rX�V�p5�
�/!{ո6�� k�r�������I����2#)�X}+j=�W���h�b�Zq%Ӯ݋�'z����nw���X�Ԋ�*cޘ��t�#��+ /�%�U���Y�2'7��:�B1w5�>�fj8J���,wAZ���@���z�m��P��Z*����2�L3�b�E
ֺ�J�ήVR�cG%�� �'[�z���r��u=J������QD]��?�%U�T���I��?�k���hi�ϭ��ZN��JR�:y'�Ve�k~�x��=U�I�Y�v�Q��2(Dd��M��f���jрS�t�Y,��i�k���r�[0���5H�A�7��:=�:�m7d{Y�ou�ğ 1�3����%��6ot�!8e���Cv�Nb�a ��W'F�ǯb@��~*.�_��H�Lm��x2
��j"��ş�[F����e&��|�����qRI��?)0-p�̃�M�~pp~ H?OMF�Tm�e�o�Wjy��6S/C5���"�vY���t�C�����q�lr�gPLv0��X��a�)��a�V;��\�^+�<�d�jך�ݎW�O;-����B��T�cAH����K�3eHQ�/
c����v�,��� :�)�97�ہ�-)PEU�o�T�p��JR�H�<<<�r�f���ʠ��y�>诖=�~lr^��`���P'n��@�M*�¹RA��#CF�#`�w{���"ͅO0�$��ey���f;������0��d+(<��#�����4��`~���V��]l�E��~l긩}?Z�b<C�=���HE;�p��畈6���&�,�O�������Y�]���f���n�Ca6���}Ap�D�D�X�y.>�P�ֈ��6z�(����?@�Ҕ}�p)x�:;mл3�M`��,k<II|@(���Q��䯉m���YLqe�d�A��w��+R|�`�b3/��Z����3	��������xkrݞ�H�z�gԜy�YŸ�Ҧ��Ė�;yC#�)k�Ӵ����a���*�b�`��c�ۣmh��P�xFyQ8n��@�#+�����v�"�2�d� ��x����^���DMd))l��U�x���i��<6��[ƫ��fNI��a��6�%7g��*��\�^�,�ViP�,���v��{�Q����=���Q��cE�m,\v�����W�:0+m��J���̴#�T+i9ˬ��_�=��L��_{�ێ�bb8g�ϥ�̫�+�-M:R�R: #ֆg5L>E���t��2�j� Ǚ�8�K2R�6����l-�H�o!3�����%.�sS\X���|-9��J��]�k�2������I�N�#�~8�	�
�<!)��0̉K�u����y^QU=
�(Ft�dB��}g�͢1��� GW43�*����)4�/�ž��S�Љ��2$�����˰�k�.99W/5�P�i/�ǔ���x*�І%������F��d��3�K���Me���=����q�M,x_ʂ4�gn%N;�3�v�
?���2��=��C�w������vT��S��װ�����x�� �-ƩA+��c��"i3<��L�K������0K"�H��kL�����u�Ԋ���'p�˭0ҷE[�<�m���k+��#d�*~bM��Cw��niHxC��
������{{�j�b�YLaa<�U#�p�M�V��yx�GWd"�|�� �&��o&���ׇH������{#�Ա�M��,J�lԩ�A�-��\l���x���"8�<�
Q�4�֫�+7�-�-o����{�ʟ^[���V49�Yy�XrR��2��DK���!OB+,�{�SЭ1�xI�(q�x�Rs=}�Po4��,l�0#{�>&t�+U���%��T�an���."�m�T[��چ�;kQ��1>�L�nj�1��O�wD�OM���9�<�����>�{nd�Z}&E��B�lh�t�<"�p?��q�4*�*����ώq8�(��������ZlQs0�k��e�
Q���~l�J�`���2E�g����̻j�T��Y⌼ɜ�RМrK�sG�(���]�H�`R�i�8g`�叼.1�ڋ�D-�(�n+����-��RiL:��&sC'U��f[�T�-Ҧ^�U�77�8i�gBx�T|®�$D�##Z�����"����H��)�5{�iX�V5�P,����J�;�Q�o�� �f;a���������#����x:�������eBv�.$ȧ��I_��Ǚ\Y�h�y�b����d��#�~�0KHߔ=$�f��g��yr=��D�PD��!�(���]L;ȁ��c3hF�%C=6f����G�`v�@wI�H;��8�<�6Đ���Y�<��\������j٥�g>�%؛[*B�[3YzS,�LU���2VA�E����0�N�(/kY�-2U�:�Yў#LR��+�����$J���8�N�l`����x��I�$0��W[R`#�H��%In�f�n%P�ɏ����KL0.�WI��d�w�7�mCx�����]�;�S6BN2O�	�yG��[�iU�� r���ݹ?G-Ef�O�'B�ь��$���%��M�i�D��y1C��~���ڛ�������N���jڥ�HpѺS20�RV��2eZ��j�w������q�wN�ُ�$��wY�O�|��lpS�p5����	#�/��!���k��(f�E#$F�ˎ���	��+Ӊ�d9n���D1�J�Ai��.���[n�l�i�
�#M��|X6MJM�$3M5�+�i�F>Dk�e<�Vs;ߎ�j@"���A��z|�5#^�_~-J�3)2��R5����h2D�a����oz�O�ԙW��h��j� ̇S�� ׌@�v2v��9j��	[�1�Xb��t��3����#��^�4Q�����Nň��!�����b����	
�#����%ʼ��l��6wz)Ćį߬5���r%��⟺�~��P��`aM ���W��p>��D,}�j�����u��D� !g?c���0Rg�1*�b�Y&a"YH��4���j�uГ?��C��>3���It r�>��gdm�`[���rcݺ����L'�L�$+>ˎ(1N��&
\=�u�K��1Vm7�9�w��vF���m眓�R$�#�o���gtU$��,��dG�D:���vrh��C�*D^ Δ� R�sb[#�:e���*6R-C/x#id�g��TԶ�����Y��%�]����t���en@4������<-m=�3�M�O������)2����W���sf�N�"ۻo�J��7�Q�@�����0���{�&,
�>����TU�r��&��߹���3'w7Fv��?n�z�j6�D$H:x�k�M���A���ߍ�o��:��;,��ߟ���G�5�      �      x�=�Y����E��iLS�����#��t܏�
	c0���h����_���k�_�����_2F�
����_/��s_2����y�F�7�������	���Q!��J��͐�^�B��I��v��s�����޿&d$����fț�K�K�����w߿���7{H�$܀���_����U���v�d�;/��{���&��K������`"�5-Y��-�K�}+1��H�ys�i��^O�_Z!��6�%��6P�1B���_�� �����$�I���.%X����Wes���o�;��h�����$� �#�������Q|/�IBOh��S�Eኇy[&d"��HR���i���xI��7��������&z�[�ngx;�}B�1hC��$�A��v�/�����d�R_��f
�Q�/}������/�����7��3/U��/��t�h��N���7U�B�w���߁���m�����6$�yQ@�!���'���o��I��Ҏ��f�d0V:#	/�h�}�|�nj��o�U
��7�ſ+%T�K�7;�������]���I9�CE>�!������K��5O��K;4Ce�T*/�t��;^Rq�*�y__����qC��3�6�$�j���~gT�rgƐz����w��MF�ɻ�R���|��%�ss�o�6��LV����/y,���䯘qb2f��ÿ�y�^/�3��P��d�����+ye'EhH��~�)8ox�+�^��+�Q���w1V�t������qGe��NMI�ϗ���[�6ҞЁ�{�E#�4:���Em/�����+�=�/.y�x�m����{���Z��J3-F�Ѓ��;���R�Y�-��Ks���I.'������Pn:Ⱥo�䄤8��p�h��.�E/�A'yi��)x1�.��H�g�P��X
<y�_��w��%񃔴��7��K���f�}�fi�Pi�+2Ǿd���,-�4��~3+lz�)�!7���<%d�������v�ۓ�$��u;#�KN�[a��a�t����+���6��KsCWJ�2�m3�C���ړηi�ЁDy�ҊƏ����Y8��m��jj��k��7���|���Н^�C�V}�D �n�_�����OO�&�øv�ws�K�z8�k�	�nY����q:�a	���׿M2��g�[[�������f8�c�	�Ѓ��ҝ�Q�'���d9z���C=���.�O���зB�닂�B7�)]�]��?��C_���]V��U�eB~�������.]���B޺��\����,��}���ݴ��h����^��i��.�|YnF���Ip�IBCR�Y�������t���y
����uy�/랗��qY	�Bvh�����7�eL{�{3&�������/����Ҏ$eeh�L#�1��/M�3Մ�4�^��z��x�F�v�E0�z�YIM�����L?��h�Vt�bMU|�2Hlh熙�O��'t�4����^���z��2���0룹�J�S�K�	E��ϗF3K�z�D��TU�PL��xS�\��B|����4��?�M�l/�W�����{��Q~�T}i�>՞L�}�2{aH ����׸���	4aN �#O7��U~�=�D`~�!�/�a9��������0|!4��&a�4m�ˤ��Le]��A�d���� <k��.p�m�~�=�e���I����{�|���>��1�Ksu���>�KE>����25R��L�7b���^�>�k�@>)���4�_��gikf��@hnݺw�^���}���l����"��m�fi��Of6��]�ʀJ�6i�-��7�ބO��ү58��Ц(�ܖf�>`R�}V�M��M��;1r�ﳿ�&������m�v���qގ�r� � �`��˭m�����/�'+�(_��u��:h i����e��>l|�7l�b\a�H/���PH�gp��v�tgHt_�>,�0۸K����P��X�6��!l`�q���_�Ax��]l�N��Y�Ce����g����L�Z͘�4�����6^������6X��M #���<����}c5�b��t6l�$��?a��<��Lc�Z���.��M;C�;|2�]�
W( {ڤD�O��}z��n�"�k����.�t�yf3pإ�L��!��qb��R��[\2r�4츖D�۸��@��|� �ʤ�M��v
@��}�hr�Ɯ6�+M���Mi�>P�%�a�#��X{�j�25z:�N��n�L[T�d�I�>�T�� �S�9m:N�%L4��y�i��XH�NKKE���9g�_+h�.b�#��80�[6Բ�5NR�e�,����J�|[P���r(��t�`~\S3����M����#R>��̘��f[��R�p���Ѵa����S��\
(��!�Y�Ӛ� �sL��Ѱb�R׬�a���V��90�U����
���mW�h�4f�)Ll�툷m�mm~�1��q�T4�MK\�帋��vݢq#�*؎��Ǵ�9U��u������^^휵5f4�m��М��v������2ym�T>=���8?��]�~��o;�kEҮ�݌�����~ްc���A�8�;�aqjR^���)&����i������᧟$�1���D� -T�y��;��s�x��_d�N�1�0c>���8���1��ג���q \@�>�<��
;�q�;|%h	�Ŏ�
��o���$�drKG����� )5�L�M$@��Mq�*�z�>�W&�>��Ă�ڪ��v1���"�6�RGƘE��'| .�������a�b��G2Ɋ�õ�5� �(���!C6y]�]V�s��k����}����m�o��f�P�~-����"�e�NIZC*3)W��֍@�*�2BS�rx�h��?�9e��f��m24#pԦI��m���9�=]�n�	�a'A𣫰��t
Gj,`*�66`1������<�5��į�.	��_9�^jC�U�PX� �T���]���Y�=�ߨ���a2
ta
���-a/m������y� U�*�4Xh~�|X��	����S�k,�� �a�����L�[���w�Ȟ!.Ѕ&L����L3�V ��c+�>����,�����d����@~��J��C�=0�0���J5^��'r꣔��ΧqoѺ�i*GO��������w3�G Z����_�5� H�K� y�"8�����A���i�
ެ��Xލ�]ǚAR"�>Y�K��cQ��~|��]��J �>�RE�4G+5돣�E�h���7ՓK��a ���w`��p���;�¨$-Ca(�1��g������@L�&]��Pݮ҇>ÌY��ܔK�v�����y0|N
�"���@���d�%a'���l�m��ۋm؎��T������ˏ�3����nc����67��� =���}���L���#öӌH���rؼ�8��B�|]�D��&g�����k���Ht��	�Z���wD�U"�]�c�]�w��2�X�1U@���m,o��>�����+e�Ț8��O���]� �r|���ߵM WH���3�:�Á<���g��4@�=@^�$�d(���MkZ�	��C��8AR4�����9�K'��t�с�;=���E9\yG&�@ �T��BDGӻ8��4�҄SW���b[[�m��O&��F�S8����Q@G�@�*i�y�ۡ>�ʰ}t}3'�t�ߦ�֍@3��g(��&�=���b]IR�'\^�D�2r鲺p�Z���5i��a˥�&@z����[ӒN/�j0�ii0H��ͳ��r 1G�嘨e�ii�E�.��u}����X�Nt=.�v�S��q������������H��͋�!!����L[�*�KrK��[�mM��1��y	��Ӟ���U����r��+\������O�ȃ%�v	��H[���GV �d@^�mO�|�u�]׊�q"�v���/��� +;���n�ѽ�_n]+W�h    �q��4<����>NC����{�M2��;��Ho9�F�)J���Y�< �%<��p�hI�a�:��1Q���ĒP'`��q�9|;u\4BɃ��8��Qr�\6�q\;v���N!u�J�8���|�SփwXd������������{��l�{F`)��]=�����<�5M2.^{ߵ�n���u���F�#�?�����XWOW�=�����	�ߥo��Ż|{����G���q����I��˯S]�� O�*�~.�׬�^t��Z.��Xx��mGӎ@M���*琲o�ݨ+u�@8��eSa��l�r���u��xv�n�Zy�
�<\���+�>��0��6�׮_le��CӸeS��Z��bB+�h��ŬU�,�!�0�zi��[��/��Y��rJ��:��.�O�^. �5B]��r��d��\�����#��X��26@ሣ2k��wG�{5 �������Ё.��44�mBQ���*R�25f`X�����%f yc� 06��AW%`v���8@S�?P8䦗�������R�'G�����Ǹ2������l�(����[��]?��BS�T�G�7]h@nҰi!|i3�鞎��h6E�-��޺W��Ί�7�p��pC�h���� �ƅr}� ���l���V��6\�[=h
�o`�@ᙵF������p[�� 2ZY9�#�?���ᦋ�$t��׵3 �r�0�*�+)Bgr
�}�(�i��ǆ^���3�7V��Q݅1b���#V��L*�[�� ��Fc[�M�s�^�D5�Q1܈�� �؁���}Q�|��������&�G"��L$C��l���Վ ��nt�Iİ:�o�p#���m��o�o�E�2o���P��p���#��1�7aA=�c�q�	hDqY���1�6���x2��dR=�i ��8>�[+4�o�������D��Ƿ�b��v�J���Ц,�J|ѵ*�b��.���L�/%���2;Є4���4��	҄ȜB4E�M@�1Er�`X��=ݧ�)b�i�����\>���N��I爡_p�!l��7v!��i'���<j8@Mw�L���y���ñ�p����^��}�y�t�d�e�8�L��L�YV�����]hZj�I8�����-�c1���04��+��^��kB�c�0iC.�w�t�[��#�r�Ǣ =�u������d�[6�rrw���2�h�-�sٞ��{�p�um��{��!Єti��-!�5�Wa�˓�x�f[v�u��#�r��01t�ta@MaK����D`J;�L� 2L���0�,���ww�����)�vF��zR�����Ych� ��rb�\UlG]](��m�o���WȩAa���Κ.]�x�.�3�v��,%6���ǔdu�<{�>j3��t�  ��ccO>�T���zw��d��c*&�;x�]$~i�S�}��u���[S`C��c���)��=�[ۍ�c�h q�;�gZ��^�����7QcBj�.?��v:,Xp�M�>��'�fC������A��Q��N �s�����÷�p�I`(�VGv�R�����]U1v��p+I@Q���u]-^6� oi4e��]'�dag��ŋ�j`�n;e
��;P@ގ�����r��>2܏�$W�n>z\�A���ܵ!p�@V�^�G�u�r��1���O�e��@�Zs�(��r`�cb�/N���Q&���������n���C��ld�}u��0���}�bT����g�ɸ�W����w�Q��ukH��9���0�  ���]���n['�r9Y�au��ey9��s[N��n.009�>����v���Y��eP�:M�\v�>�m�$�.�ŗ��4/`�����JL�S��|�Q*��!�#'s��+7�Kc�	�V����w �H�g<-&@~�tx�{�����|�N���6��v�FW�<����W�B���fr���#ݿ$j'�U(�OQvk"���xo�C�420�h��v��~6N�LK$�fV�,�C�[A�b:P�	��F���������d��lS�I�����j��pH ��*���}��*]
��k�	�y{���Nqw�L�
��X���6 �oL����l�f6��]7fש�a�a���ʛ�{�iq��ڗ�^�E"�L�mͦ��n����%뙊B�8���,p��{�,�:��s=��!s�i�>�q?̖��g����Qt��X(�V� �u�}�ջ[�;����®Fr����׷� �z������_L��ۖ�=��.ׯus}XӨ��T���v��W�P�%Ҁ#�ȷqhv�a=G#��0�J���|
[ei���ab���9�?(N�(������#��YrO+܅���I(N�6-?��L4X�.4u1��p�c���J1��v)cM 
Ʉ�h 9[�n�L���I�KF�qy���S���E��!C:�A���p�ǜ|10�$�u�c��.H: 1%�yqN,yS�ip�9��9�{
l`A�2BRL�9��U��`1}N���eI(��.@��f~0���o���q��c��_t�i�M�˴}a)f�;�Ͳ������1m~�eNV s�
�BL}!���m��e��~1uu�n혚8���:4��rts/�Rg'bQL-�&��_��f[6�2��� E��vj�@C�T//���!�٦�Wп�RV��m䎴�:�pHw�Yv�tLcRL�r��l��:b՟������t����]1�K@�S#�tK�4H�ܸ�M��г�OL�,PxTHR"W�N!��v���0��@���2�޶M�k�tL��L�.�)2MH	l�=-���mm�0`��K.�6��B&.`��-�T���	�i��@�zY��Ƕ�M�oZ|�@2n�ƾ�섑ٮO6��Q�h ����b\��/�m_ޮ;�ژzm &���e���WF�K�m�����3��5��ķzj��0��ǏPn���G�3��w���c�md�0�C�\�0|lZBh��0��p|�0��� E��8F�P2�F (�/�1Z}9�>	�0�[��id��Β��龑�-d�#@	�u(�+s\ i	pk_��K��d����"⇲�Qx���թ17��bޘn!	4�-�
�O���}�hj���#b -掔����¤9c^;���R�\�H�h����ŧm�#0�˸tm�kC�#0?N��q�\��H�K��L�i	P�,Z��ZY(�tzrL�;�� R���O#�@4ͭ���2CR�E�M��ׁ�� �\�j��P�Pf~��ŲZX<���Z^�2�(�KY޸�d�����G������Q0�L�y S8�iT��G}�d��9C�:�:�"6?s�=����.�5a���ЏIH���s雱4�,cq,�6HS��,�r����ǟ,z�tC	���	��2�������,�o`̇�^^�Ț�P�6�nÖmK���?�iR�o��ܧ ���L�l��^J���}�Jl� ����C�9�DN˗��=c�O%���Pq|io�틪��[k�-󘴀�˺934���M� 1�X� �c��p͆k6&֙Ed�P�A�[��\m��a���Gh^��-�͢�e��������a�_�W<tYW�L�$�#�2*F�)l
hZ�m'�M��e�M:f�e��Ep�e0�@ʦ�����X��饕$�1�1��Ed��jB*�O���0):ֽ)�)\k�Еc)si0�3)��UˈǎЫH(�6@�?À�˝&���$)�jP]e��Wc<Y�F�du�2�LO�܄�^4�Q��^��,�� v3ɂ"4-4���4��_���*���4[2D�2y��Os ��4j�r��r�҇daFY�O��O�D6>����\���E4��Ɣ5]8pP[�>Y�X��0���,id�-kА�[�a5y?��,�~����v�I�L�G[
\rK]I�S2BSW��,�&��"��r?�r����ci�!M��	���o��r�/����🁒9 �͟�S��B���i��ت�t*Y��    =�����Og"�]�����:��q�Il�y-�͂�����=��BJ]J��B
_>��7�'m&hW-�2m��O���yd�P��b�H��Q�4Ĭ/D�rM�0:#L�NQ�LSb�1I&u���ƴ�4�pY�N]_l�/��oT3�Z��Lǵ&��']���y�/�(���}& ���ʶ5���[dYc��]^,���������@� Ya1[�aஜ�T�A�{T�& Ϯ�G ��)ea]Y��礥��r��ҋ#�է���}� �Sq�
�I��ɶ��5�,M#�|�>�L:�fJӱ#0�񜎚��\�K��>��V��B^0�i:���eCi"Y�E�vѷ�ϴ�,Ck�]�%�N@�>Mci"Y�XF�@����Hk��M�=����W׏e4�@�L�H�\�cei	,e��T����8��g��q��.���a�3��88Vci� @�.>؟���6SR6��c�/����:���@%���f�@^c��(b�d�IM����%�uQy]�_��[B��X�|,|>`�H�\Ǯ��ra�%x�S��5 飺��I�� �D����[^?Ǵe�H�t��n]Y�eI :>f�!��mr��ei� �`R^�{�	���t�J�VY9�A:�v�cZ�Iy]�����{!���^����e��ex�@^��&�4f,Cq,6��@�z���@.����;BT�*6��Q��'˽'�������>.mK�|iMځԕJ�>�d�@����
3�hYM��*h��e ���� W�ـ��*��,�P*����V��r�,[��@�_t���e�k,Z�=,��bg3T��a���^ن�$x�Ӎ������6L��4S@�f4P㇣���6RG�+L��'�̭�c��ekC�XH��M���8��r����˂.3��@ۀ4��q?	Mxm���砀(��a{~�z�|�Y�a��e���H~���OV��*e�b��>�L�~'�)�<DH{��L����`	��a
=@
�h:L �	��
zSH�M�l4\R�;_ �
�&��d1���[�`mhR ����#��]n��(g���ۤhA�p-�5�k1��m�U4@��Jd�����ݝUJ���|�m��l.۰[�I �M����L�Zv��۝�j�A0�d
h2�>�da/�|��c!	}T�����2���� �Zw��v�K����;d;`�P��w��7l(�P�k��ml�c�,�=8dtt��9@d��ț��bk��lz	�6����m�m`�m0 �(�`<�=�����e�yǌEc�';Bnm�j��K�㌻^M.�+v���s����&���8�����B!�q<�����;�^ �؞'�sM�]jk�@����톗 'p�.${�,49iI7� k@W1��"С�l�M�R6�	4���D��R��'�Û92M[{�h?�6�t.24(0�\`�N�p%���J��k�Θ ��Wi� m���s��e���_�V3�Ѩn�`*D��_�@A������s.�Y��֬8�0���a���\�ebh�ϸ�.��t�C�ev�e�Д@A�L*W��6)���Uű���9�k��ml�M	��(��y��^�a[㏲����2�X�ۓR4-͹)�d{Iq\4jh �k���\!�{�?"Ѕ\�]l� �	�;�d����E��;e[��(*K�\���M�j�ߡ(ld��J��:�&����֗d�`�u)��J 5d����ck+ن�؞���S����p�[��K�.�6m��U��F~Sۛ��f>��bg�8"o�罹�C��I*�ȉA?�wt�f�ȁ����NR��l=:�4pwvp������$������-�#�G�l�#�\`��Yd�3����.#[3��cJM�c���$=B܋š{e���?=y��ud����� �}�Q�)��r���QF�^"[�	�������yA��nNp� ٜ�ZP
lo�d��f��K]8��^N�ʲ9�ec	���>�M�j�K�ƒ�{�kw�<���l#|l�?`r)C�?K&ٱ��౱tl-#���G0�K��]� ��tP�Ȅ�On�9T���c[��[��� ���8�=�e�屵�l�"[�	0�hB�Tcylm#�Ǭ�9$�dTO5��u
H��~U6 '�l�!��j)�O�!=�!=va�� HS�\.��K���E$���ڦ��u��g���rQS���}`��m@S��b�Ɩ��PN�S6��0�<�J���z�XL���l�Dv� P����1ΐ��`��&)��nV4Ze]s��)��@�[zX�8�����<,E"��\q:��99���)�?���@�dz�gZ�vt9�?��j��=�aE��(˩W�Tr(]2�C���!��`6Ц��ô�Pu�eS(�Y0BN�r���@������cx��s��rPULP�}�ޓ��jzr<����h	p���r�V�6�-�f� ����A8K��W��㡫�p�G���I�x���4�b7����4Oئ����V%����@�XO��2�<���M��& ͽ<>��T ��@�=s̐��M�g��E�h�8�2=��X��IG[F@���Q��ލ�q:��1�G���3���Ak2�^:��s�<��f�x�I�4�tË�v�<�秢�q�������;�y�/z0bOK	�+Kv;L ��sR�.ʆQ�x@���q�1s�<�4�H�g�������1Go�3�<:�7������=1?δO#W;0i^h�lsd=X�\ķ��W��q��8Z>f�����V�c�� W-��!���=�������o���Ū���h�8A(=�\��a#�ː!G'���#@�z�ި���� A��^��q�D=�����Ճm�#�.�/ u>=�P�Ǚ&���&�d4>�:��X�F��I�c�x��1����q�	s�^-G#��ؒ�x�6��I��x<��h��cDУF�	��cߘ�r\w}�_��m���hip���G._r\=:R7��.!M.�{���r^�T��R������8���5��#�̧
�;�^
|IKt~�����3X:�nJ�*v�])[fݤ���X%�1���z��8ni9�Tcl��z�Ky1���2i������lǢ�8��! M3akm2i,	Ǩǝ(׊c\��%��aq��L&Ӓp4�ܣ�z2���7.�����U��>����}%�I]�:oH� �:���&���]&��Pz�d �R۵�3��1��G� ��Q��@�FS��s}���w��8z�x���/�x���u�x��q\2@���M=Bǹ�}"��?�|����f8�y�3՜�O� ӤP�>�r59b�-c�8�e��;��^�b���Uǧ��U���*ʣZ�!�=�;y�#B�4��$M�c��F�sm����� ��٘���$�����xp��S�\�˸���c8� E�+�x�j��Ne<�S�g����H�x�ɏG��x�y�g7|���n���Z����q�	�&��(��%����%�VR�M�8S�ne�P� Sf���l�u�G���`�49ß�c�π)�%�H@�yI'
���a<�{@�_�G׉S�8ŏ{�X�����7�>�������W�n����';�5i(�~W����?~���@��Ǐ�c�8����Q��ǥpv4�h��\��"���<���q�q�����]���p��~�����ާ��MFA i�:~�пn�nA��ɞw�p��3�r�ɔ�=�r5�~�U�~�_Cqr��-�*~��˶7�?e9f9��)������3�]��cp�X��z�N�#rݭq��A��
�q�`�y��3�Ǫ^��n�F̸����|~�_}.4BsN��6�a4y���/ű��up�F�R�� ����6�q3�g�^��KƔ\�|2�Y��
�/��1%W�d�}Lʱ�%]��p��q=T���c�n}��Z�k�����U�z�������x��e1ˌlZm �Q_� -  �y=(�@S��Ҩ��ɺ! ���Pp�����5\l0P�2<JS�u/����v�Z�
�y�yx�]�2�e��}"	�����gףGn`�(�&;^��>ԏ9��X�Y?^p=1݃�5\�i\w\� �<ڰއ������������-��������r��k\�!�q0��@��w|'����j#��;�}x{�A.��;l�1=�}�?-�,`����� �!��m�9"��{<T��!������2i_		4��*\�dr������u�K�2�)��*_~7k��9��k܋�G;��Ȧ������F�$��͸�_��1ya����l@J�|u^�m R�xLo�m�@W�������������0p��x��(79���v����u/���>�qo��;��l O�hA�drK�"| ��4�u_�����6�.S�V=)���2�y\j 9��knCH�2�F��hL��״?��2zqR��^-�0���,�B}y-o�r$\��
�X(�7 ���S�Ж7Lh��?��W`k�w`1�44@^ל���@t@���5^�ݱt��ֶ�ۘ�)7>�P��8����W��՛⺯���%4���z$��û:jո��zu� ��4m�qܜO�k썋Y��Lw�ٸl"�:K����k'���1��W� ��8���M�� C�3z:�N�l;7n'E�C��zuq�n(�nA�6 c�v�@���w�끫׈�`�(�8�sm�%�y�8�JF���#X�[B����rk�ѸL h��`�Evn@�=q��:K�pV=�\x=�5��ʀ��� ��¦J�m����V��>~�߆�!���8�{|�5��u'���rM
��5!ܥ�/�tͱ,1=����k���p�4��ͤ7ES�5��Փ�^�ҳS eP���Ҝ��ZW/��&w�\�0�S��9ʨHV~�\?j0�\=1h������?����5���0�k�@a�Eߊk�ҫ�E�y���4a~p�\}M�>�s�M�ݏ�%��]�W�U��1q�Tr���P�t�����n�˸�ո�J��M��q=)��x�Q�n�=�5���hW J^,�􇸚Y�TO��׫�5�i MS��5-��xew����z����pf�P�klӫy��a��B:	�s�0�]mz= ���zLJ@J�Y*y0����Φ�(h:u��f'j��]��� ��h�Se�m��[5p%��rXa�#`��9����=%�5:�q;��S�P �c�,O�-������/��oe�}�4֔�R��4M�n����>c����X�[Zkʝ(��?���b\o}͗��@�EH�2��/+$_DE,D%t��X���F���x�0�F��$0��X�<�i������<N�<h�4�TcU[�pB���f-e�M�M��o�Lԛ�zQZT�M�<��<�0IF*æ4LjyNK:�ܭR�� �����ZL�ծz٠�e�����Qa��n�����ô�҅�z�)��>H��Ӌ0���w��t�G-};y�؞�L*sLO�����ܑ�X&)�(��@�a���Q�f����	[����9����s�@�/:��X'��q?�^J+�kim�~���|6��̖aQ��ioNF�(�?�.$G΋-ϗL!��f��b��F����%�j�Q&������e�LyH��!p~p*-A��q�p�L���\m+�6R�J_��

?�$�hc[#��a?��%L�e�@�ik�X��r߾:�Ϥ�>Y^r-���'�a�Ы��=*KQ�ӣ,A���{�Js�n��9��I`I3zHi�*�A�A4��Z�<��j�
L9��	��)Rn�)ϙA��'����
 �2ڄ�Ey=5h՜��w��#e��2�+���L�iϽ-Y����J�@(/ò�GJ;U��ڡy����rJ'�r�Na�"����V�⺿���^vy�`�0���2xk /��F�9�Li���er��R���
�mb��.�5�'L��_S�eSX�� $���2y T�aZ^���/e�2li@:����d��A���}��l@e����k���AV�o 
6�:�h�y�M o�gה�3��5e��ҕ&�Ӈ��<�� �x���2�v��-mOpУ�˄� ۦ�|���@^�-��u��^6�Pex��x�@n�+Nm�v�P�>�28l�S�>)��E��*��d�S:� �P�J����f� �r]��6=��l��wC4=ʃz?��������2ll�S����Z��rSN�S������t�gx�-�mg7䔆�r�¼Wnȩ�o2e���P(�p綜����)�PexW�^J�5�kip�+`���ш$�!)4Uet�@�a�K�
��xK�~�r�Nѵ4;�;v�'?����ڛJ#Tiv*w��>��	P/���0�i6e�ҜTn�T��wA�����s���V����:3tky
Ny&N�Y�D7=_S�5O�d��nA婽���<�����6��G�^"���۔�=�:dRM���_Kڜ꺐�L�@A�l�	��?�B7i�M/�&���M��.�#1�^�k<��<��<����)x<��6x��wJkR`�M���-�����:@\�~yJN�����Zz� 
�LW�	j���)b��F��4a��Ҵ�b~�.-Ge���y�4��_�)�k��%屹�Y��y��#��p(�E��(@�I��Sb��" Gg:@?�P�cA�@ڌ��܆��&.`��Z���I�_{�T?�>5��l�� ��_z���������8��      �   +   x�3��I���2���OI-J,I�2�t�K-JO-�L����� �,	�      �      x�34���̔����t�=... >�      �   �  x�u�Ao�0�ϳ���,�{k�*9��*Uʡ�5��{eC6���Dm�'����1̌'�4��hĀ�?~><�q���)y�e��ۦ/���vd��ht�25M�fz�)f��{P�j?�a]	,R���������|{��:�j,x��uA;v�<+�����`�vVhk��"y^���G��ga��|�[	,rZ� ��S�B��1�E�K1��0���ҤOLd�<�^)�89�Q^��;���i��P�)�Yg�Q;醋�
�C��+BC���e߃�����c��a��!%�k�g�V	E&>7�t��:@�.���O��M�0pD=�3
��b�gm��s�1>N�q���� \����o%8+�5���XG���}x�{6�+6M�,�S�%���\#�PZ	�ߢ�P$�h��A9�,�2���2�|6pDay]s;�ǊՐh<�q�>f��&�P�9�M�[�K��\����Z��h�x|:�[.�u���� �?��      �      x�3��M�I�2�tK�1b���� :��      �   &   x�3��M���2��MM�,��2��I,JO����� �u�      �   �  x�U��n�0���S�:��4� ��b[�!�zم���"y���o?R����H�����&������L.M�OJ���̕�`�r���7������]"k��	���}(F�	�R�Fj�y!��{�����&;�H���-k���ѣ�d���ؽ���^���t���'��O�&}�P�� ���t����fԎF�������g�������G�{J�y�+e&�&W��cbJP*̋�@�(�޳�T�����I�9L�V(ϣ���,qj���&��54�LT���$r�Z���1\?6?���@���"T
�Ͼ��U�G��*�|��~� U�����U���.gX
3�tk��?�Ac	� �"?�G2b?���>�v2I=a��~��
���/��_�)2�X�O�	B�d�MN�0�����]�)�O�ʿ��ٛ��i1��ɷ���(�w���.��2ꇕ�>�s��կO���/����      �   5   x�5��  �frjZ���;�XLV,�1Bn$(�&1I��w(d!��=%Mz      �      x������ � �      �      x������ � �      �      x������ � �      �   $   x�342�4�?NCN��tN ���=... vD      �      x������ � �     