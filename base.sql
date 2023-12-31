PGDMP     8    !                {            ghts_cms #   14.8 (Ubuntu 14.8-0ubuntu0.22.10.1)    14.8 t   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33832    ghts_cms    DATABASE     Y   CREATE DATABASE ghts_cms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C.UTF-8';
    DROP DATABASE ghts_cms;
                postgres    false            �            1259    33868    admin_permissions    TABLE     g  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    33867    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    218            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    217            �            1259    34015    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    34014 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    244            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    243            �            1259    33890    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    33889    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    222            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    221            �            1259    33879    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    33878    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    220            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    219            �            1259    34027    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    34026    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    246            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    245                       1259    34342    components_shared_buttons    TABLE     �   CREATE TABLE public.components_shared_buttons (
    id integer NOT NULL,
    title character varying(255),
    link character varying(255),
    target character varying(255)
);
 -   DROP TABLE public.components_shared_buttons;
       public         heap    postgres    false                       1259    34341     components_shared_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_shared_buttons_id_seq;
       public          postgres    false    262            �           0    0     components_shared_buttons_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_shared_buttons_id_seq OWNED BY public.components_shared_buttons.id;
          public          postgres    false    261                       1259    34429    components_shared_cards    TABLE     �   CREATE TABLE public.components_shared_cards (
    id integer NOT NULL,
    title text,
    description text,
    slug character varying(255)
);
 +   DROP TABLE public.components_shared_cards;
       public         heap    postgres    false                       1259    34438 "   components_shared_cards_components    TABLE     �   CREATE TABLE public.components_shared_cards_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 6   DROP TABLE public.components_shared_cards_components;
       public         heap    postgres    false                       1259    34437 )   components_shared_cards_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_cards_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_shared_cards_components_id_seq;
       public          postgres    false    278            �           0    0 )   components_shared_cards_components_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_shared_cards_components_id_seq OWNED BY public.components_shared_cards_components.id;
          public          postgres    false    277                       1259    34428    components_shared_cards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_shared_cards_id_seq;
       public          postgres    false    276            �           0    0    components_shared_cards_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_shared_cards_id_seq OWNED BY public.components_shared_cards.id;
          public          postgres    false    275                       1259    34416    components_shared_images    TABLE     �   CREATE TABLE public.components_shared_images (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);
 ,   DROP TABLE public.components_shared_images;
       public         heap    postgres    false                       1259    34415    components_shared_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_shared_images_id_seq;
       public          postgres    false    274            �           0    0    components_shared_images_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_shared_images_id_seq OWNED BY public.components_shared_images.id;
          public          postgres    false    273                       1259    34353    components_shared_links    TABLE       CREATE TABLE public.components_shared_links (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    full_slug character varying(255),
    image_url character varying(255),
    target character varying(255),
    style text
);
 +   DROP TABLE public.components_shared_links;
       public         heap    postgres    false                       1259    34352    components_shared_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_shared_links_id_seq;
       public          postgres    false    264            �           0    0    components_shared_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_shared_links_id_seq OWNED BY public.components_shared_links.id;
          public          postgres    false    263                       1259    34386    components_shared_navigations    TABLE       CREATE TABLE public.components_shared_navigations (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    full_slug character varying(255),
    image_url character varying(255),
    target character varying(255),
    style text
);
 1   DROP TABLE public.components_shared_navigations;
       public         heap    postgres    false                       1259    34395 (   components_shared_navigations_components    TABLE     �   CREATE TABLE public.components_shared_navigations_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 <   DROP TABLE public.components_shared_navigations_components;
       public         heap    postgres    false                       1259    34394 /   components_shared_navigations_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_navigations_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_shared_navigations_components_id_seq;
       public          postgres    false    272            �           0    0 /   components_shared_navigations_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_shared_navigations_components_id_seq OWNED BY public.components_shared_navigations_components.id;
          public          postgres    false    271                       1259    34385 $   components_shared_navigations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_navigations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.components_shared_navigations_id_seq;
       public          postgres    false    270            �           0    0 $   components_shared_navigations_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.components_shared_navigations_id_seq OWNED BY public.components_shared_navigations.id;
          public          postgres    false    269            
           1259    34364    components_shared_titles    TABLE     �   CREATE TABLE public.components_shared_titles (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);
 ,   DROP TABLE public.components_shared_titles;
       public         heap    postgres    false            	           1259    34363    components_shared_titles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_shared_titles_id_seq;
       public          postgres    false    266            �           0    0    components_shared_titles_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_shared_titles_id_seq OWNED BY public.components_shared_titles.id;
          public          postgres    false    265                       1259    34375    components_shared_videos    TABLE     �   CREATE TABLE public.components_shared_videos (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);
 ,   DROP TABLE public.components_shared_videos;
       public         heap    postgres    false                       1259    34374    components_shared_videos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_shared_videos_id_seq;
       public          postgres    false    268            �           0    0    components_shared_videos_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_shared_videos_id_seq OWNED BY public.components_shared_videos.id;
          public          postgres    false    267            �            1259    33941    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    34076    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false            �            1259    34075    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    254            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    253            �            1259    33940    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    232            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    231            �            1259    34064    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false            �            1259    34063    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    252            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    251            �            1259    34004    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    34003    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    242            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    241            �            1259    33912    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            �            1259    33911 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    226            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    225            �            1259    34040 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            �            1259    34039 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    248            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    247            �            1259    33901    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            �            1259    33900    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    224            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    223            �            1259    33850    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    33849 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    214            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    213            �            1259    33841    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    33840    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    212            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    211            �            1259    33834    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    33833    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    210            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    209            �            1259    33932 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false            �            1259    33931 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    230            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    229            �            1259    34052 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false            �            1259    34051 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    250            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    249            �            1259    33921    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false            �            1259    33920    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    228            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    227            �            1259    33859    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    33858    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    216            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    215            �            1259    33973    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false            �            1259    33972    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    236            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    235                       1259    34100    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    34099     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    258            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    257            �            1259    33982    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false            �            1259    33981    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    238            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    237            �            1259    33993    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            �            1259    33992    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    240            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    239                       1259    34112    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    34111    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    260            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    259            �            1259    33958    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false            �            1259    33957    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    234                        0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    233                        1259    34088    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false            �            1259    34087 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    256                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    255                       2604    33871    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            )           2604    34018    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244                       2604    33893    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                       2604    33882    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            *           2604    34030    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            2           2604    34345    components_shared_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_shared_buttons_id_seq'::regclass);
 K   ALTER TABLE public.components_shared_buttons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    262    262            9           2604    34432    components_shared_cards id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_cards ALTER COLUMN id SET DEFAULT nextval('public.components_shared_cards_id_seq'::regclass);
 I   ALTER TABLE public.components_shared_cards ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            :           2604    34441 %   components_shared_cards_components id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_cards_components_id_seq'::regclass);
 T   ALTER TABLE public.components_shared_cards_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    278    278            8           2604    34419    components_shared_images id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_images ALTER COLUMN id SET DEFAULT nextval('public.components_shared_images_id_seq'::regclass);
 J   ALTER TABLE public.components_shared_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274            3           2604    34356    components_shared_links id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_links ALTER COLUMN id SET DEFAULT nextval('public.components_shared_links_id_seq'::regclass);
 I   ALTER TABLE public.components_shared_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            6           2604    34389     components_shared_navigations id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_navigations ALTER COLUMN id SET DEFAULT nextval('public.components_shared_navigations_id_seq'::regclass);
 O   ALTER TABLE public.components_shared_navigations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270            7           2604    34398 +   components_shared_navigations_components id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_navigations_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_navigations_components_id_seq'::regclass);
 Z   ALTER TABLE public.components_shared_navigations_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272            4           2604    34367    components_shared_titles id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_titles ALTER COLUMN id SET DEFAULT nextval('public.components_shared_titles_id_seq'::regclass);
 J   ALTER TABLE public.components_shared_titles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            5           2604    34378    components_shared_videos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_videos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_videos_id_seq'::regclass);
 J   ALTER TABLE public.components_shared_videos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267    268            #           2604    33944    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            .           2604    34079    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            -           2604    34067    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            (           2604    34007    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242                        2604    33915    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            +           2604    34043 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248                       2604    33904    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224                       2604    33853    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214                       2604    33844    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                       2604    33837    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            "           2604    33935 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            ,           2604    34055 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            !           2604    33924    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228                       2604    33862    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            %           2604    33976    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            0           2604    34103    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            &           2604    33985    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            '           2604    33996    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            1           2604    34115    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            $           2604    33961    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            /           2604    34091    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            �          0    33868    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    218   4      �          0    34015    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    244         �          0    33890    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    222         �          0    33879    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    220   d	      �          0    34027    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    246   
      �          0    34342    components_shared_buttons 
   TABLE DATA           L   COPY public.components_shared_buttons (id, title, link, target) FROM stdin;
    public          postgres    false    262   .
      �          0    34429    components_shared_cards 
   TABLE DATA           O   COPY public.components_shared_cards (id, title, description, slug) FROM stdin;
    public          postgres    false    276   K
      �          0    34438 "   components_shared_cards_components 
   TABLE DATA           y   COPY public.components_shared_cards_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    278   h
      �          0    34416    components_shared_images 
   TABLE DATA           B   COPY public.components_shared_images (id, title, url) FROM stdin;
    public          postgres    false    274   �
      �          0    34353    components_shared_links 
   TABLE DATA           g   COPY public.components_shared_links (id, title, slug, full_slug, image_url, target, style) FROM stdin;
    public          postgres    false    264   �
      �          0    34386    components_shared_navigations 
   TABLE DATA           m   COPY public.components_shared_navigations (id, title, slug, full_slug, image_url, target, style) FROM stdin;
    public          postgres    false    270   �
      �          0    34395 (   components_shared_navigations_components 
   TABLE DATA              COPY public.components_shared_navigations_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    272   �
      �          0    34364    components_shared_titles 
   TABLE DATA           B   COPY public.components_shared_titles (id, title, url) FROM stdin;
    public          postgres    false    266   �
      �          0    34375    components_shared_videos 
   TABLE DATA           B   COPY public.components_shared_videos (id, title, url) FROM stdin;
    public          postgres    false    268         �          0    33941    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    232   3      �          0    34076    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    254   �      �          0    34064    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    252   �      �          0    34004    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    242   �      �          0    33912    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    226   F      �          0    34040 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    248   c      �          0    33901    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    224   �      �          0    33850    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    214   �      �          0    33841    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    212   y#      �          0    33834    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    210   [,      �          0    33932 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    230   x,      �          0    34052 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    250   �,      �          0    33921    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    228   �,      �          0    33859    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    216   �,      �          0    33973    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    236   �,      �          0    34100    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    258   �-      �          0    33982    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    238   �-      �          0    33993    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    240   �.      �          0    34112    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    260   �.      �          0    33958    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    234   �.      �          0    34088    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    256   /                 0    0    admin_permissions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 69, true);
          public          postgres    false    217                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 69, true);
          public          postgres    false    243                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    221                       0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    219                       0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    245                       0    0     components_shared_buttons_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_shared_buttons_id_seq', 1, false);
          public          postgres    false    261                       0    0 )   components_shared_cards_components_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_shared_cards_components_id_seq', 1, false);
          public          postgres    false    277            	           0    0    components_shared_cards_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_shared_cards_id_seq', 1, false);
          public          postgres    false    275            
           0    0    components_shared_images_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_shared_images_id_seq', 1, false);
          public          postgres    false    273                       0    0    components_shared_links_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_shared_links_id_seq', 1, false);
          public          postgres    false    263                       0    0 /   components_shared_navigations_components_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.components_shared_navigations_components_id_seq', 1, false);
          public          postgres    false    271                       0    0 $   components_shared_navigations_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_shared_navigations_id_seq', 1, false);
          public          postgres    false    269                       0    0    components_shared_titles_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_shared_titles_id_seq', 1, false);
          public          postgres    false    265                       0    0    components_shared_videos_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.components_shared_videos_id_seq', 1, false);
          public          postgres    false    267                       0    0    files_folder_links_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, true);
          public          postgres    false    253                       0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 1, true);
          public          postgres    false    231                       0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);
          public          postgres    false    251                       0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    241                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    225                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    247                       0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    223                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 30, true);
          public          postgres    false    213                       0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 8, true);
          public          postgres    false    211                       0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    209                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    229                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    249                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    227                       0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    215                       0    0    up_permissions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.up_permissions_id_seq', 9, true);
          public          postgres    false    235                       0    0     up_permissions_role_links_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 9, true);
          public          postgres    false    257                        0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          postgres    false    237            !           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          postgres    false    239            "           0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          postgres    false    259            #           0    0    upload_folders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, true);
          public          postgres    false    233            $           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    255            E           2606    33875 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    218            �           2606    34020 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    244            �           2606    34024 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    244    244            M           2606    33897    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    222            I           2606    33886    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    220            �           2606    34032 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    246            �           2606    34036 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    246    246            �           2606    34349 8   components_shared_buttons components_shared_buttons_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_shared_buttons
    ADD CONSTRAINT components_shared_buttons_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_shared_buttons DROP CONSTRAINT components_shared_buttons_pkey;
       public            postgres    false    262            �           2606    34445 J   components_shared_cards_components components_shared_cards_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_cards_components
    ADD CONSTRAINT components_shared_cards_components_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_shared_cards_components DROP CONSTRAINT components_shared_cards_components_pkey;
       public            postgres    false    278            �           2606    34436 4   components_shared_cards components_shared_cards_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_shared_cards
    ADD CONSTRAINT components_shared_cards_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_shared_cards DROP CONSTRAINT components_shared_cards_pkey;
       public            postgres    false    276            �           2606    34450 A   components_shared_cards_components components_shared_cards_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_cards_components
    ADD CONSTRAINT components_shared_cards_unique UNIQUE (entity_id, component_id, field, component_type);
 k   ALTER TABLE ONLY public.components_shared_cards_components DROP CONSTRAINT components_shared_cards_unique;
       public            postgres    false    278    278    278    278            �           2606    34423 6   components_shared_images components_shared_images_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_shared_images
    ADD CONSTRAINT components_shared_images_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_shared_images DROP CONSTRAINT components_shared_images_pkey;
       public            postgres    false    274            �           2606    34360 4   components_shared_links components_shared_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_shared_links
    ADD CONSTRAINT components_shared_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_shared_links DROP CONSTRAINT components_shared_links_pkey;
       public            postgres    false    264            �           2606    34402 V   components_shared_navigations_components components_shared_navigations_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_navigations_components
    ADD CONSTRAINT components_shared_navigations_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_shared_navigations_components DROP CONSTRAINT components_shared_navigations_components_pkey;
       public            postgres    false    272            �           2606    34393 @   components_shared_navigations components_shared_navigations_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.components_shared_navigations
    ADD CONSTRAINT components_shared_navigations_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.components_shared_navigations DROP CONSTRAINT components_shared_navigations_pkey;
       public            postgres    false    270            �           2606    34457 M   components_shared_navigations_components components_shared_navigations_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_navigations_components
    ADD CONSTRAINT components_shared_navigations_unique UNIQUE (entity_id, component_id, field, component_type);
 w   ALTER TABLE ONLY public.components_shared_navigations_components DROP CONSTRAINT components_shared_navigations_unique;
       public            postgres    false    272    272    272    272            �           2606    34371 6   components_shared_titles components_shared_titles_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_shared_titles
    ADD CONSTRAINT components_shared_titles_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_shared_titles DROP CONSTRAINT components_shared_titles_pkey;
       public            postgres    false    266            �           2606    34382 6   components_shared_videos components_shared_videos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_shared_videos
    ADD CONSTRAINT components_shared_videos_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_shared_videos DROP CONSTRAINT components_shared_videos_pkey;
       public            postgres    false    268            �           2606    34081 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    254            �           2606    34085 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    254    254            a           2606    33948    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    232            �           2606    34071 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    252                       2606    34011    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    242            U           2606    33917 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    226            �           2606    34045 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    248            �           2606    34049 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    248    248            Q           2606    33908 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    224            @           2606    33857 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    214            >           2606    33848 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    212            <           2606    33839 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    210            ]           2606    33937 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    230            �           2606    34057 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    250            �           2606    34061 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    250    250            Y           2606    33928 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    228            B           2606    33866 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    216            s           2606    33978 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    236            �           2606    34105 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    258            �           2606    34109 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    258    258            w           2606    33989    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    238            {           2606    34000    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    240            �           2606    34117 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    260            �           2606    34121 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    260    260            �           2606    34093 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    256            �           2606    34097 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    256    256            k           2606    33967 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    234            m           2606    33969 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    234            o           2606    33965 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    234            C           1259    33876 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    218            �           1259    34021    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    244            �           1259    34022 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    244            �           1259    34025 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    244            F           1259    33877 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    218            K           1259    33898    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    222            N           1259    33899    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    222            G           1259    33887    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    220            �           1259    34033    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    246            �           1259    34034    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    246            �           1259    34037     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    246            �           1259    34038 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    246            J           1259    33888    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    220            �           1259    34447 ,   components_shared_cards_component_type_index    INDEX     �   CREATE INDEX components_shared_cards_component_type_index ON public.components_shared_cards_components USING btree (component_type);
 @   DROP INDEX public.components_shared_cards_component_type_index;
       public            postgres    false    278            �           1259    34448 !   components_shared_cards_entity_fk    INDEX     u   CREATE INDEX components_shared_cards_entity_fk ON public.components_shared_cards_components USING btree (entity_id);
 5   DROP INDEX public.components_shared_cards_entity_fk;
       public            postgres    false    278            �           1259    34446 #   components_shared_cards_field_index    INDEX     s   CREATE INDEX components_shared_cards_field_index ON public.components_shared_cards_components USING btree (field);
 7   DROP INDEX public.components_shared_cards_field_index;
       public            postgres    false    278            �           1259    34404 2   components_shared_navigations_component_type_index    INDEX     �   CREATE INDEX components_shared_navigations_component_type_index ON public.components_shared_navigations_components USING btree (component_type);
 F   DROP INDEX public.components_shared_navigations_component_type_index;
       public            postgres    false    272            �           1259    34405 '   components_shared_navigations_entity_fk    INDEX     �   CREATE INDEX components_shared_navigations_entity_fk ON public.components_shared_navigations_components USING btree (entity_id);
 ;   DROP INDEX public.components_shared_navigations_entity_fk;
       public            postgres    false    272            �           1259    34403 )   components_shared_navigations_field_index    INDEX        CREATE INDEX components_shared_navigations_field_index ON public.components_shared_navigations_components USING btree (field);
 =   DROP INDEX public.components_shared_navigations_field_index;
       public            postgres    false    272            _           1259    33955    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    232            �           1259    34082    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    254            �           1259    34083    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    254            �           1259    34086    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    254            �           1259    34072    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    252            �           1259    34074 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    252            �           1259    34073     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    252            b           1259    33956    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    232            }           1259    34012    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    242            �           1259    34013    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    242            S           1259    33918 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    226            �           1259    34046 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    248            �           1259    34047 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    248            �           1259    34050 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    248            V           1259    33919 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    226            O           1259    33909 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    224            R           1259    33910 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    224            [           1259    33938 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    230            �           1259    34058 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    250            �           1259    34059 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    250            �           1259    34062 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    250            ^           1259    33939 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    230            W           1259    33929 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    228            Z           1259    33930 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    228            q           1259    33979    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    236            �           1259    34106    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    258            �           1259    34107     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    258            �           1259    34110 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    258            t           1259    33980    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    236            u           1259    33990    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    238            x           1259    33991    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    238            y           1259    34001    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    240            �           1259    34118    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    260            �           1259    34119    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    260            �           1259    34122     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    260            |           1259    34002    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    240            c           1259    33950    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    232            d           1259    33954    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    232            e           1259    33949    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    232            f           1259    33952    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    232            g           1259    33953    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    232            h           1259    33951    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    232            i           1259    33970    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    234            �           1259    34094    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    256            �           1259    34095 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    256            �           1259    34098 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    256            p           1259    33971    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    234            �           2606    34123 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    220    218    3401            �           2606    34253 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    218    3397    244            �           2606    34258 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    222    3405    244            �           2606    34128 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    3401    218    220            �           2606    34143 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    222    3401    220            �           2606    34148 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    3401    220    222            �           2606    34133 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    3401    220    220            �           2606    34263 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    220    246    3401            �           2606    34268 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    3405    222    246            �           2606    34138 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    3401    220    220                       2606    34451 D   components_shared_cards_components components_shared_cards_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_cards_components
    ADD CONSTRAINT components_shared_cards_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_cards(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.components_shared_cards_components DROP CONSTRAINT components_shared_cards_entity_fk;
       public          postgres    false    3539    278    276                       2606    34408 P   components_shared_navigations_components components_shared_navigations_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_navigations_components
    ADD CONSTRAINT components_shared_navigations_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_navigations(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.components_shared_navigations_components DROP CONSTRAINT components_shared_navigations_entity_fk;
       public          postgres    false    3528    272    270            �           2606    34193    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    3401    220    232            �           2606    34298 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    232    254    3425            �           2606    34303 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    234    3439    254            �           2606    34293 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    232    3425    252            �           2606    34198    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    3401    232    220            �           2606    34243 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    220    242    3401            �           2606    34248 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    3401    220    242            �           2606    34163 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    226    3401    220            �           2606    34273 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    226    3413    248            �           2606    34278 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    248    224    3409            �           2606    34168 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    3401    220    226            �           2606    34153 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    220    3401    224            �           2606    34158 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    3401    224    220            �           2606    34183 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    230    220    3401            �           2606    34283 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    230    3421    250            �           2606    34288 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    228    250    3417            �           2606    34188 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    220    230    3401            �           2606    34173 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    228    3401    220            �           2606    34178 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    228    220    3401            �           2606    34213 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    220    236    3401                       2606    34318 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    236    3443    258                       2606    34323 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    3447    238    258            �           2606    34218 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    220    236    3401            �           2606    34223 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    220    238    3401            �           2606    34228 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    3401    220    238            �           2606    34233 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    3401    220    240                       2606    34328 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    240    260    3451                       2606    34333 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    238    260    3447            �           2606    34238 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    3401    240    220            �           2606    34203 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    234    3401    220                        2606    34308 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    256    234    3439                       2606    34313 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    256    3439    234            �           2606    34208 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    220    234    3401            �   �  x�ՙ�r�H���S�t^��`f��r�s�b�B�d�+�ﾍ�-EV��N���?�����F��m�{�ۇ�ݶ��J�����]<~�~~��P�҉T�4�R=(��Z�3���ܩϾ��}�_v�O^k�6K(2ԑ�?�a�� Vp��8��*�#  v�*�s.#�� U��N��"�\uD����{���z��
ԑafJhYV��_�!ٟM�/�L��̑��({KU�S��wCU���YPG�Lc�*27)�f��t�ʛJ�� #?2�Z��Z3��9v=���1ٔm��{��j�Gu����C������k!lP��ϵo�a�p�}9)m��˿�~S���a�w�u���g������Ͻ�;�J·n��I�c�)G@|��n�Ə}���@Jhô6�E6�G'��A���S�|�����p����S�|�o|\��B��:]�	^�P�/�O������Z�l1�N`����� ��Zn��Npw��v-(�c��ۍ3�LH[uڶ�3�t��Ӯn����EL渑�:a���};���s��"��xG� gϐ(c�LP'�[�EY��u�t"ܲ.�S�y¤�}����N�FiD�-���lc���fpY�N��M�R5�As��Dp��4�#k����s�G�NgYwe�b'�D����z�"�\��KͲ�Ϫ�,��:����=*E'Tʥ�:Ѳ(ZT�N�)W��/���O�d��m��{�)W�����s�*�{''�����^�v��^w�U�D�WQ#�֤�4&���SK�
���G�%Eʽ��N�p��DjR�y��N�u�JG����A���33���^�t��zߔ�ڏP˫�p,�\���y�a��~v�:�q��u��ϼ���r#�tr.Μ��S�6��mμ��RCIp��:y��}��E��+�d�N�#r΄Q����7��mTȰHs[*�d,O��΅�\3�N���8~���2�;�d�O�#΅c+u��Nm�.��9c��8?5�J��7X�&P'�C��:����Z�a�u��<B���u��C�kG��-�q�F䒛���c����p��"e��ŷ��'X!%�<�D�!�j��$ח����/a��ۯ�+�+��Nub� #��'.#ԉp�ֱ/�����p�]��2� ��?��!�Cҩ�Vc��ބ�c���bV~�	a�w�`W(�dI'�ab���b��tD<����� ���      �   [  x��ɍ%1�3̠��Υ�cȏ�K��Z�D0��X(��F�lF�p�:�G/�����Y��RF���źKY����Pf�]8�{�p�ù�E�2u�n�c���?���CT�o%�����b�;�̃4üHK�̇4��bl�e���T���X��Z�Q��ԾAY�b-�Z6K=���R۬��9ky��Z^��`-[�V[��V��h�U��k��hk�샶Vþhk�쇶V��a������q4fk�q4=k��X��h�uq��`��p.�Z/�a���~Xk}����~\-�����k��Z����W�gm�{���F^��Y��Z�ÿ$��{d      �   �   x�u��n� @g���ic'[��Y�f��%Fr��H���"W�TK�C�=��#ϔ���>(���o��Z�F��,@k�08�c�N\	%'��Ićw�l̶զ�=hs0�æ�އ�*���j�:9/1-=T�
kŢ.�9N�G�1a��Nٕ �12A�B���"3���a�Wy�ڪc.��Da�*�U\K�k�����E����~[�U~隦�br~3      �   �   x�U���0���)XiڿRB'	���Ҥ�����8�\r�.���R�֣k_�o�Zig��CXL$�2�T�h���*��ֶZZ2�hNzl����#L7w|2�}�r[i>xW^���MDf-��S)�7$��Rdۿ�K2B�qO0��-�      �      x�3�4�@�=... �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   x   x�3�t�	�u�+�K��!CCsNc3$�o�f�����d��	V������b�q���'��c(������b�r���+Y[X���7�4����� Yy*f      �      x�3�4A�=... ��      �      x������ � �      �   <   x�3�t�K��,�P�H���L��4202�54�54W04�2��20�373�)�D\1z\\\ �/U      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]koܸ��������ėu��v�f/�m�$H���ǣZ#��b������/)���PC͌�qBt����#��9�x9z�̚�4��E^���.�<�B%�=K��2�ӢM��L�d�������p�'��M��'c+e�7�P]��U5�|_6�ut���.�7��Y�J�I��2��O�X��?���g{�E��IQFk�kVE�fQ������Α�LP��^}�q|��:J�:�j�?�Q����81K+��8�.Q���tH�
�m�ゼ�V���T�e�d����2�b4/2�~p�V�R���bk'E�k�.*#���ܺ*y��Z�D�e���y�����kHq�4���l�f^�6�:E`+�C����kTl�X*V�WIB_M���eA~ښ����L�G�P���3�E5J^���M�8o�խ���ѵY&n]��AtU��hW��vŉ�몏�YZV�kX���ho���}����@DwESS�`�Ι�l}��Oj6{�U��?1S�����{f��.)8��)0Hё*�c�C��q����>�����MH�n�)	4C)�f6��?�b�lۂTg�����"u�χ񍉯nZ嶊j���򽐯rP��e7�xU
��o`z�$o�%8FB�O�ԓ�Zh��HK8������S�B�Q�%hh���ݔ�D�d�-����FV�F&ʱ��ѹu2� M��!T���_1���"���a^�tU���?V.�����&�+���P"��2-Q7z�8D��ҽH:C�2QA�28Z�!�Xf`��,S���Y�b�0�T	�p�VQ�� u���;��"@�,��
4�`��[a��P�A�m�.���$�q@��OE�N;�	n-���ֺ��kiG��g��?Hss�8���9�e�W3T�q=5;B�c�`G(��B(��B`^�y}��B��U��{ݡ��_��:CZl�'x�b-~��L&�#���(�O�NرpBX<Z�h��ѤQscY;��rU���<�2+�� 9�C��;E�H3�Co��*3� ˪��"g�C$��4���M�z���PPH�Qo�ҫ9��<e�hgE��j0�!��б����G���� ���4�ò��f^�04��C�����$�u�<d���t��8���1�~���M�n?��)����S�{�=�Iiu��C�6оC!���SAP�n3��Z�@�x��g[ih�ɦ�������"؅+�ø E|���q�w�{�i�����l��*� K�d�"��k�/���NhG��|@�إ�`<VA7 -���W�i�5*�ZG��<��l1��AEg�����n��l!����G�@b�w�|)kv#-��}���f�53�ϸ3`��~k���F��L�	d*���[��"�gĺ�5R��%��П0��9�������e��/¨�Ԩ�p7����u�AzF5��O?��>:�������iV�&Ic���Tu�_O(B~F�Tg[�*��E�U��Bã .�Q��Y9�5�{#�g��;❺���֨ɢ�ٯ�p�dV
�i����U�_1���|4毻ϩ'y�����C�d��IE���H>�ԸM/����.,`�a�Z|Lb��k�_���!�Ϻ[5��֤%J$�Bg�q���h����@ڃDP���6RR��~T����Gym$��BYJ���K�E�C��OҢ��x�#:�op0<7�b�W���ݘ�WD�N:kH׼`��E����2]w[����t4���i~�eZ���K�R�����X��4'�E�3�[��� p����ӤH\�HPvƪ�C�[M�Lg�]��:�ee�^$�WYqe�����#�fT�q۹ �����/!�msӬZNa5{��x۹`M��ִ�f-K!kj��/g��{Jĸ�f�8�[S���Zx���˨�n�2Q꒏zV98 bqO'+�~ǫ9;T͖��~��)5�mO�W1	�+2/�;��^���� �U9q�P�6����Ma� b�٠�g`�ؔ)�5��s�k�l�՗%�!<v^G�0�xw�5蠮
<wwԼ�)Y���y�$(o��i-��T:���b��.6�X_��L�u;+�X-�vϮ����}���wlg2@����B���y���EH\੣��d~�qv��%�=ƭ��vݸ��E�\r�}
�&�{w��)3���]j�@swG�M9h�� G��6��/���x�b�[1C��y�?���e::�G,i&��١L��Qg��#0���Ն����c�hbq������b��_d��{�~�gd�Ϛ,�g3���Tu� kF�ޮ��yoa��F��J��C�w����#���;�~\�!�l3�I�z��گ��#�U)6�]���-&0��Qs}� > | � �͹�
>� �n�Q���d�W��41�{�Ыw�0��ZA�20J�w�*���)��Zӎ��cvJ���`�_�Mo�u��^��#~\g�"�a "��͟�.JoX��n=�ז�����K�?#����C���%57�f���=�ݜ�Y��C� k�{� ���Ѩ{�CG��Oר���Ι�[�0�`:d���?vJ�-�`���-�߶+�
Y1xz8H}�@GbC�BT{0�6?J[Ƣ�>b��B+�v�d��N��j��[ʱ�~��<{'��W�T�,�q�K�7�޷G��n��Jл^U�]�Q�.�̻8?�v����h��V=v�Z��Z}��b��M��E�����k8e�K��h	�&.���4c���T�Q�cN�=6�޷;jޓ����	�+g �#��Ș�q0]�0�y�>Y� >�|�$��E�&˔S�4y���Q�kS���VvHkS���g���KAIHEO/	�!���ks��C	<$𐯙�l>�0�9�/K�sM�X�l~��(�SK��'Bst��h}�e1�Yt��vx����X�o,J�X�Gy<ǯ]� ��ۋ r�\Y��ل���7���Æ�R�L�e/#S��R�{*������򤖤
[��&�Y��l����q�D�t/���J�Ҿ��]��]v)Z��4��#2w���f�����9�������O�3j��17��a��{�o��ŷ��g������n(ǘv���}�s;v��EǾ#x�#4X.;��3<�=�z3���g��#�٦&�}u�tw��ȕ�	��X`gs��s2�J��.K�M��Cu�-�u�l.'e4�_�ɻ�2K�8� �yUG�e�~�����U��9Kkk���� v��#Y?�	�����p+��9���d���aJ�,���bh�{�8h4FL�u�x� ��8=�����${]ު�60��;�݋�e�)yq�S�PµI:���V�9j�&���"�}<����(8Ν��.��;jz��`;;`;�ó�//�V�SAe��[z�̮��/�/�����}&.��JOy������N&�y<�ޝ �&-}�d׬Y��R�0Y}b_Ĭ_���,]������K0�m��~��G�W|�)U.���_N}o�M�z���Z��Ƽ�ZWl���U�>��蘚ʴ!U�{��L
���E�z*�}���SI1�ؾ�B��z����P��l_IE������ȵ���`=~�\Xd���i�����y�^$Su�6ĐQ�{���m�j_�qi3u�C!je^�5�UU�B���Z��!Z����]Nv�y����Y��x�8�ѩ�ܜ:���LDWU|�ve�*G��p�]]���޴���C����V��(��+�#��:gTU�
ݒ��b���y�.^㏔t�*��U��/�ε�����)@A�XU?@O��q��
�� 4�]X���M&G��9�S�A�M���@{%<��]�hڤ�Ҷ݋��a�bsu�>ۨ{����*ݠ�kyР��la�r(���~�h-?�V�����e8����}�p�+�3X̧G���vf�Sh�0�.�OC���֐�<����y���M��T��@�+������;;����Q���b4�Á������p?$�C(�Z����W@s`��V9���D��n�t �  �GR>�ZI�L����G��/���q�����J�_��=v:ahn�?�l.�I�'Ů��á���@� p҃x��B©a�ʚn�+'Of�a)��-� ׽۬��4y ������6qZ�J�Q�Q���'��u��n���0AZ<�H�04�1�z�=�p���B�m�O��(�1sn�WNZN�^�ƴ3Q~���-bO�*�Bd���s�{�kr��>����q�e�Q|=���>��z��y*�p��TH;
��ٝ�I�C�(�;�Y��ߚ�D}�EA}Z%����<��УfVbU�i=o.��e��KK���Y�Ϥ�a��eQ��C��4O�۪�R�S��_	U��M��qX����H[=Y�Wu�Me�QU��Ge���m����C��t���>5߬ۤ������}�6�;_uB:VaY�c�K�d�Z�2��4Kk$��)�'J<=��Zqq��uѡU��Us���់��� .}y}�E�_���3u��(��ڡ'��R�V��B����]�Q=H�gj���~����j�D����#�Km��[�Q�cpai*����D??�DE������]{��s����f/�l��y��>��a��+�3�sP�Œ��`d��V���X�W8+������䶅ѻ(G��b<)*�K�������w�cqXbqh*��*����UF�{l�tU�����C�9f�ɨ�G���QVT�R�9}(��n]b�I3�ủ���5��`?�I���_��G�$�Fǂ�(����hVdY���Ո�Ԩ.F���z&\*���4���������]�D~�����o���y�_W��Xۦj�����첯�9����}�*��&�G�bZ��7�=6+����~N�sHỌDڜ�c�N�qp0z��wV������5�WxjR�h2��i5����۟~��$�򎞹-/Jn�<F		��-���|GdPMūˠ0�̌&�vL.၊�IZ���,rOY$�:�,1���Ĕ���ر�T�i\᷹E�:����X�PAǣ��������������L�p<9|������ӓ������<,����dR��N.��V�ekO�C~T�p�A_��[���^�j��J��	�^;W�5B����Xe��V�����c)�4��Q�Dt[.
��β���$��m$��1�Q�"W�0�o�6h��iβ'�1�1W�w!���!�ソv�cO����Ld/+�k���G~���QW��Q��%�#������\��5{�7�r��oaк?eL�;������J�l �G����ڎ�|k/L�@װK�����O�0B"���5��xY���@�0-��`���\���2-�>,��X��(є�"@�%��}1~��^��y]\�G g����wǮH�O����N^�r�'�,\W=52�������G�e·�G���1��������ƒ�7�ߏ�T��<?9E��Ǉ��T�l�#�͉���E)v�RS�e0��7mz�?��VU�.�x�N0������X���&���&е)�v	�B0$CB0�ۚ�NEHA�0�jf.9Dkd�FI���+�s�}�����LL�F���$�^�~�u95���mX��j�����T�eOL>b��L������)A�Ԑ��~{�I?�J��A��H�z>^D��_�?�6l���e䰀ʵ�*��Y�z��7���,4.      �   �  x��]�s�8n���n'q�&�Nۇ�������#�l����$��?! #��$���4iw%��v��ܼ�e1��pd-��e�h�����vh�툉��1�#kf��������/���?f��[�D���{���-�YB	��`�-
�c<���D�'�9]�P�[j-���f�O�W�K"{^/�#.v��
y�={᎓z����7���J]Pk"�C^�?����Q-�g$ 6�;R? H6����.1��/7���֊� �!�)�v���è`�#��R��c�'%�XR�a���Z�n�o8ܒ("�/�m}1�k'bص��6q�՝%k�Uzk52���m�Tz�)ULI��3+�+b���m��8JU�x����V��'�a�������׿�|��5Z�h/��x�@"P��P��f� ����kAH�^1�!��P�%,�0&�="��3`D��'�:��^b�$6e-޷�_��,�Y�(#�d��q8�υ�V[Ĩ��9^պQ`�sIi�u+�w(zB�dEAǳ�瑌4�E��S(��i�B�q���s��à�D��$�������$v�Iz�mJPpYzԹ�v�1��������T�MXq�aEH=�V�#Ê��ްb�\�aŀ��PX���wq�$��f�=f����"��J��\���G�	�#m@��@z�9�"xk2�'*�̸��g��+�GV8
��5K��s<"w{��}î��6'���O�)]������7�� �~�M���c��X��'��FI;܍j�	ݑLG�t�L��<?�y�P_M����=�j��>��#�<��#0>�H�vqxq[KJ�+��0�6�([6@�ubC���@�VI�
�R��t��B=T�$��D-y��#�v���J
��n���)ٕ e�r���K��{��_4�|�y,9���ײ�{.p�
�O��QN'*�s�p��0P�n����E�a V�-�5
�
�X�*[�.�gsaS{�5�;��mp6tG\���<�-f�;hr�dw�
��hQ�RK��ɂwWWf��ؒ�&��ت�X;(���X���\�Hi��e5��H263��8�1��}y�\f�,\���͒t6K��FX�%�����{}i�D�@e..����3�g�grP�o�����$�Y�w���5L��|�)!�H��4IJ��p��)RB�{�^�\��6�"�a��
��2]�w�\�xpCO�	C;`�,�����mP�	i3��r]��km�06���@8%p��y��G2�p����Jp�"/N^�>6k|$� �2|�I�ƌǤ"��Emh&����Ay��#$
7[��vd�Xe��؊�c+e[�f����du��y��~#ټW^�jT��b�\�5d��������6�3+�6ndB��4�J^��(��)�;�q��n��|JOZS������>w�ơ$Z~�F%ԋE�}�[���EEs�EG/=<�Uݧ"�sC��S)\]o����&�\��T�`&��`��SlQʖ#JW"�F
!�BS�>d���G$�9��B��2�H
�x��
���O�k��j�J")WWQk(Ul։=��׀�����R�v��?X=��%9i3�jԆ�b��k-D�:|>�Ƅ���Bg7����?�V���UE_���M��ط�kGq�!�^��82�à�1�['�ի?:Zqp(ܦ�PY���M
�i�{�pΖ���{U%+z�R��ګ��H�u��O\;������Q�k�z�_����-o,�<��	�@_gZ쁞��
�2�W�\�/US9��@{eU4T��D�!�Q���j�� �O�h��1�S�Jzme�)��	[GkH� ��	*t4�&
*M�zSR�4p{T�$/��4�IJ�Pv(�Qk��B�)�����6��:�P[�ǩ�z]��)�:�P�A�a���ۨ{����B�ޠ9�02SA|�/��`��^4�� AEu�9�^���(� ���'��qr`�M��dv�\u��Ґ��bͨk�����A�D'��	a����n��Ш�0��J�e�e�}q+hU4Û����/��ˣf�{�<��; Ȥ�D�L�=
Ԕb�6��H��I���״�`W�vf �@ދ���_���o.�o.�__\.ί��WW�.ϯ����_:W�����
]_ϯzwsqy��ٿo�����,l�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���K�0@��^�����5n�`Sa(��%��/�-R�&�z��&3�0�I*SU��h7(DeR1��6�0n�i]{�1O"�#V�xY�-����<�oTބ�Ӝ���@�W49M�5��}�;@���&��#R��ӟo$�����_��0���t���|g�
!���X�u�I���kJy�3�}      �   5   x���  ����$����ׁX�1����N�?-��n�&����&�d5	)      �   w   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�kh�kh�`hdedie`�g�C4����8J�r2�qXY�����l�Z�������� \�D�      �      x������ � �      �      x������ � �      �   6   x�3���O��4��7�4202�54�54W04�26�25�35��)n�i����� ߍ�      �      x������ � �     