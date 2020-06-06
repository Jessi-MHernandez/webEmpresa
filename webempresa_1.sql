-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2020 a las 19:34:38
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webempresa_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add categoria', 7, 'add_category'),
(20, 'Can change categoria', 7, 'change_category'),
(21, 'Can delete categoria', 7, 'delete_category'),
(22, 'Can add entrada', 8, 'add_post'),
(23, 'Can change entrada', 8, 'change_post'),
(24, 'Can delete entrada', 8, 'delete_post'),
(25, 'Can add pagina', 9, 'add_page'),
(26, 'Can change pagina', 9, 'change_page'),
(27, 'Can delete pagina', 9, 'delete_page'),
(28, 'Can add servicio', 10, 'add_service'),
(29, 'Can change servicio', 10, 'change_service'),
(30, 'Can delete servicio', 10, 'delete_service'),
(31, 'Can add enlace', 11, 'add_link'),
(32, 'Can change enlace', 11, 'change_link'),
(33, 'Can delete enlace', 11, 'delete_link');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `published` datetime(6) NOT NULL,
  `image` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog', 'category'),
(8, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(9, 'pages', 'page'),
(10, 'services', 'service'),
(6, 'sessions', 'session'),
(11, 'social', 'link');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-28 16:51:03.958216'),
(2, 'auth', '0001_initial', '2020-05-28 16:51:15.946238'),
(3, 'admin', '0001_initial', '2020-05-28 16:51:17.641618'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-28 16:51:17.689720'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-05-28 16:51:18.368806'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-05-28 16:51:21.158075'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-05-28 16:51:22.434505'),
(8, 'auth', '0004_alter_user_username_opts', '2020-05-28 16:51:22.604459'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-05-28 16:51:23.460633'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-05-28 16:51:23.496589'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-05-28 16:51:23.563542'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-05-28 16:51:25.059180'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-05-28 16:51:25.254129'),
(14, 'blog', '0001_initial', '2020-05-28 16:51:29.272315'),
(15, 'blog', '0002_auto_20200522_1737', '2020-05-28 16:51:29.322912'),
(16, 'blog', '0003_auto_20200523_2153', '2020-05-28 16:51:31.192338'),
(17, 'pages', '0001_initial', '2020-05-28 16:51:31.546713'),
(18, 'pages', '0002_auto_20200523_1403', '2020-05-28 16:51:31.706363'),
(19, 'pages', '0003_auto_20200523_1416', '2020-05-28 16:51:31.751832'),
(20, 'services', '0001_initial', '2020-05-28 16:51:31.995930'),
(21, 'services', '0002_auto_20200523_2153', '2020-05-28 16:51:32.153956'),
(22, 'sessions', '0001_initial', '2020-05-28 16:51:32.696429'),
(23, 'social', '0001_initial', '2020-05-28 16:51:32.976867');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `order` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_service`
--

CREATE TABLE `services_service` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `subtitle` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_link`
--

CREATE TABLE `social_link` (
  `id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indices de la tabla `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_categories_post_id_category_id_ed4f1727_uniq` (`post_id`,`category_id`),
  ADD KEY `blog_post_categories_category_id_2211dae5_fk_blog_category_id` (`category_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services_service`
--
ALTER TABLE `services_service`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `social_link`
--
ALTER TABLE `social_link`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services_service`
--
ALTER TABLE `services_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `social_link`
--
ALTER TABLE `social_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD CONSTRAINT `blog_post_categories_category_id_2211dae5_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  ADD CONSTRAINT `blog_post_categories_post_id_c34e7be1_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
