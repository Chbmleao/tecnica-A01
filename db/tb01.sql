PGDMP         9                z            tb01    14.2    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    tb01    DATABASE     d   CREATE DATABASE tb01 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE tb01;
                postgres    false            �            1259    24577    tb01    TABLE     �   CREATE TABLE public.tb01 (
    id integer NOT NULL,
    col_texto text NOT NULL,
    col_dt timestamp without time zone NOT NULL
);
    DROP TABLE public.tb01;
       public         heap    postgres    false            �            1259    24576    tb01_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb01_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tb01_id_seq;
       public          postgres    false    210            �           0    0    tb01_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tb01_id_seq OWNED BY public.tb01.id;
          public          postgres    false    209            \           2604    24580    tb01 id    DEFAULT     b   ALTER TABLE ONLY public.tb01 ALTER COLUMN id SET DEFAULT nextval('public.tb01_id_seq'::regclass);
 6   ALTER TABLE public.tb01 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    24577    tb01 
   TABLE DATA           5   COPY public.tb01 (id, col_texto, col_dt) FROM stdin;
    public          postgres    false    210   
       �           0    0    tb01_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tb01_id_seq', 13, true);
          public          postgres    false    209            ^           2606    24584    tb01 tb01_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tb01
    ADD CONSTRAINT tb01_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tb01 DROP CONSTRAINT tb01_pkey;
       public            postgres    false    210            �   �   x�m�=N1��s
.��g<?�;DJII�
Q@�`�'�����u���1�����82�H8V�ʄb%�����6$q�	���A1��3V)!YV� ��s�LJr�^ڤ�F*�0`����z����DI�G����'"���p�>-ۇ���I�%C	�_�}���Ɂ��2�d�f��
3�F�\\���|i}/("��=�����Q�Bh����f�     