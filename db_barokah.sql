-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2026 pada 06.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barokah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add closing', 7, 'add_closing'),
(26, 'Can change closing', 7, 'change_closing'),
(27, 'Can delete closing', 7, 'delete_closing'),
(28, 'Can view closing', 7, 'view_closing'),
(29, 'Can add order detail', 8, 'add_orderdetail'),
(30, 'Can change order detail', 8, 'change_orderdetail'),
(31, 'Can delete order detail', 8, 'delete_orderdetail'),
(32, 'Can view order detail', 8, 'view_orderdetail'),
(33, 'Can add orders', 9, 'add_orders'),
(34, 'Can change orders', 9, 'change_orders'),
(35, 'Can delete orders', 9, 'delete_orders'),
(36, 'Can view orders', 9, 'view_orders'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add close', 12, 'add_close'),
(46, 'Can change close', 12, 'change_close'),
(47, 'Can delete close', 12, 'delete_close'),
(48, 'Can view close', 12, 'view_close');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$CUIMdRhbwxv8OJmP6pQJqJ$zbjF3ilhPcVJsfH+ZZIBRBP/AOBZfMi28YsA9w/Ld48=', '2025-11-26 18:05:59.181576', 1, 'skupnuu', '', '', 'skupnuu@gmail.com', 1, 1, '2025-11-26 18:04:22.306782');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `closing`
--

CREATE TABLE `closing` (
  `id` int(11) NOT NULL,
  `std` int(11) NOT NULL,
  `avc` float NOT NULL,
  `itm` int(11) NOT NULL,
  `inc` float NOT NULL,
  `hpp` float NOT NULL,
  `prf` float NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `closing`
--

INSERT INTO `closing` (`id`, `std`, `avc`, `itm`, `inc`, `hpp`, `prf`, `created_at`, `user_id`) VALUES
(1, 2, 9, 3, 70000, 65000, 5000, '2026-01-13 00:04:04', 1),
(2, 2, 11, 3, 70000, 65000, 5000, '2026-02-14 00:08:42', 1),
(10, 2, 74, 6, 148000, 97000, 51000, '2026-02-15 14:33:02', 1),
(11, 1, 54, 3, 54000, 48500, 5500, '2026-02-16 14:35:24', 1),
(12, 2, 49, 5, 99000, 90000, 9000, '2026-02-17 14:36:20', 1),
(13, 5, 9600, 13, 48000, 33000, 15000, '2026-02-22 15:01:31', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'api', 'close'),
(7, 'api', 'closing'),
(8, 'api', 'orderdetail'),
(9, 'api', 'orders'),
(10, 'api', 'product'),
(11, 'api', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(23, 'contenttypes', '0001_initial', '2026-01-15 06:57:52.296082'),
(24, 'auth', '0001_initial', '2026-01-15 06:57:52.300092'),
(25, 'admin', '0001_initial', '2026-01-15 06:57:52.304863'),
(26, 'admin', '0002_logentry_remove_auto_add', '2026-01-15 06:57:52.307860'),
(27, 'admin', '0003_logentry_add_action_flag_choices', '2026-01-15 06:57:52.312577'),
(28, 'api', '0001_initial', '2026-01-15 06:57:52.316328'),
(29, 'contenttypes', '0002_remove_content_type_name', '2026-01-15 06:57:52.320202'),
(30, 'auth', '0002_alter_permission_name_max_length', '2026-01-15 06:57:52.323941'),
(31, 'auth', '0003_alter_user_email_max_length', '2026-01-15 06:57:52.327544'),
(32, 'auth', '0004_alter_user_username_opts', '2026-01-15 06:57:52.332154'),
(33, 'auth', '0005_alter_user_last_login_null', '2026-01-15 06:57:52.335140'),
(34, 'auth', '0006_require_contenttypes_0002', '2026-01-15 06:57:52.339553'),
(35, 'auth', '0007_alter_validators_add_error_messages', '2026-01-15 06:57:52.342935'),
(36, 'auth', '0008_alter_user_username_max_length', '2026-01-15 06:57:52.347385'),
(37, 'auth', '0009_alter_user_last_name_max_length', '2026-01-15 06:57:52.351993'),
(38, 'auth', '0010_alter_group_name_max_length', '2026-01-15 06:57:52.355733'),
(39, 'auth', '0011_update_proxy_permissions', '2026-01-15 06:57:52.359596'),
(40, 'auth', '0012_alter_user_first_name_max_length', '2026-01-15 06:57:52.363628'),
(41, 'sessions', '0001_initial', '2026-01-15 06:57:52.367319'),
(42, 'api', '0002_closing_alter_orders_created_at_delete_close', '2026-02-22 13:39:41.239270'),
(43, 'api', '0003_alter_orders_created_at', '2026-02-22 14:51:18.818265'),
(44, 'api', '0004_product_image', '2026-02-23 17:30:12.606095');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2b7nsm1js1s08ai04sep48u5ost3l98s', '.eJxVjEEOwiAQRe_C2hAYoBWX7j0DmWFAqgaS0q6Md7dNutDtf-_9twi4LiWsPc1hYnERWpx-N8L4THUH_MB6bzK2uswTyV2RB-3y1ji9rof7d1Cwl61OypNLJhoPANaxT4pNzoCkGa0CHDec1aC1tYODESkSn8kyaVKcrfh8AeqBOG0:1vOJtv:LP0CfejmOv3sY1-rmvGfKutp_O-0m58yjyCLE3Kuufk', '2025-12-10 18:05:59.199357');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `invoice`, `total`, `created_at`, `user_id`) VALUES
(29, '1-3012SRG7', 45000, '2025-12-30 00:00:00.000000', 1),
(30, '1-0301YIWR', 45000, '2026-01-03 00:00:00.000000', 1),
(31, '1-0401CFO9', 45000, '2026-01-03 00:00:00.000000', 1),
(32, '1-04017LS3', 54000, '2026-01-03 00:00:00.000000', 1),
(33, '1-0401EVBB', 45000, '2026-01-03 00:00:00.000000', 1),
(34, '1-0401IZJN', 54000, '2026-01-03 00:00:00.000000', 1),
(35, '1-040163ZE', 54000, '2026-01-03 00:00:00.000000', 1),
(36, '1-0401XGZQ', 54000, '2026-01-03 00:00:00.000000', 1),
(37, '1-04010A4A', 40000, '2026-01-03 00:00:00.000000', 1),
(38, '1-0401JIOQ', 25000, '2026-01-03 00:00:00.000000', 1),
(39, '1-04019IWC', 40000, '2026-01-03 00:00:00.000000', 1),
(40, '1-0401X-4E', 88000, '2026-01-03 00:00:00.000000', 1),
(41, '1-0501VG2B', 54000, '2026-01-04 00:00:00.000000', 1),
(42, '1-0501BBUW', 45000, '2026-01-04 00:00:00.000000', 1),
(43, '1-06019T4Z', 34000, '2026-01-05 00:00:00.000000', 1),
(44, '1-0601A8BC', 25000, '2026-01-05 00:00:00.000000', 1),
(45, '1-0601JKOJ', 45000, '2026-01-05 00:00:00.000000', 1),
(46, '1-1401Y1FS', 45000, '2026-01-13 00:00:00.000000', 1),
(47, '1-1401X2KI', 54000, '2026-01-13 00:00:00.000000', 1),
(48, '1-14012TSX', 25000, '2026-01-13 00:00:00.000000', 1),
(49, '1-14018DDV', 54000, '2026-01-13 00:00:00.000000', 1),
(50, '1-1401EB7Z', 34000, '2026-01-13 00:00:00.000000', 1),
(51, '1-1401GWMB', 34000, '2026-01-13 00:00:00.000000', 1),
(52, '1-1401Z4RA', 54000, '2026-01-13 00:00:00.000000', 1),
(53, '1-1401PNBS', 45000, '2026-01-13 00:00:00.000000', 1),
(54, '1-1401HBDT', 45000, '2026-01-13 00:00:00.000000', 1),
(55, '1-1401V5OI', 45000, '2026-01-13 00:00:00.000000', 1),
(56, '1-1501VLC4', 54000, '2026-01-15 00:00:00.000000', 1),
(57, '1-1501H7M1', 34000, '2026-01-15 00:00:00.000000', 1),
(58, '1-1501H6FU', 45000, '2026-01-15 00:00:00.000000', 1),
(59, '1-1501X6QS', 34000, '2026-01-15 00:00:00.000000', 1),
(60, '1-1501F_1P', 45000, '2026-01-15 00:00:00.000000', 1),
(61, '1-1601EBXI', 45000, '2026-01-15 00:00:00.000000', 1),
(62, '1-1601M8LS', 25000, '2026-01-15 00:00:00.000000', 1),
(71, '1-1701SY2I', 54000, '2026-01-17 00:00:00.000000', 1),
(73, '1-1701HU2U', 45000, '2026-01-17 00:00:00.000000', 1),
(74, '1-17019FQV', 34000, '2026-01-17 00:00:00.000000', 1),
(75, '1-1801HECV', 45000, '2026-01-18 00:00:00.000000', 1),
(76, '1-2201J40J', 34000, '2026-01-22 00:00:00.000000', 1),
(77, '1-2201EXII', 17500, '2026-01-22 00:00:00.000000', 1),
(78, '1-2201XNDM', 54000, '2026-01-22 00:00:00.000000', 1),
(79, '1-2201XDVR', 39000, '2026-01-22 00:00:00.000000', 1),
(80, '1-2201XIGT', 84000, '2026-01-22 00:00:00.000000', 1),
(81, '1-2401W8TP', 22500, '2026-01-24 00:00:00.000000', 1),
(82, '1-2501ZFJQ', 45000, '2026-01-25 00:00:00.000000', 1),
(83, '1-2601P41R', 10000, '2026-01-25 00:00:00.000000', 1),
(84, '1-30018PUE', 16000, '2026-01-29 00:00:00.000000', 1),
(85, '1-310156-M', 3500, '2026-01-31 00:00:00.000000', 1),
(86, '1-3101VEQT', 4500, '2026-01-31 00:00:00.000000', 1),
(87, '1-3101U-V2', 13000, '2026-01-31 00:00:00.000000', 1),
(88, '1-3101U-V2', 13000, '2026-01-31 00:00:00.000000', 1),
(89, '1-3101PZF2', 13000, '2026-01-31 00:00:00.000000', 1),
(90, '1-3101AIG5', 16000, '2026-01-31 00:00:00.000000', 1),
(91, '1-1202DH_N', 3000, '2026-02-11 00:00:00.000000', 1),
(92, '1-12027HJJ', 10500, '2026-02-11 00:00:00.000000', 1),
(93, '1-1202LG75', 3000, '2026-02-11 00:00:00.000000', 1),
(94, '1-2102WIHG', 1500, '2026-02-21 00:00:00.000000', 1),
(95, '1-2202W5GU', 16000, '2026-02-22 00:00:00.000000', 1),
(96, '1-2202L8QW', 3500, '2026-02-22 00:00:00.000000', 1),
(97, '1-2202WPQ4', 16000, '2026-02-22 00:00:00.000000', 1),
(98, '1-2202TLPP', 8000, '2026-02-22 15:00:30.337539', 1),
(99, '1-2202QGYZ', 4500, '2026-02-22 15:00:59.188935', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `user_id`) VALUES
(23, 29, 2, 1, 25000, '2025-12-30', 1),
(24, 30, 2, 1, 25000, '2026-01-03', 1),
(25, 30, 1, 1, 20000, '2026-01-03', 1),
(26, 39, 1, 2, 40000, '2026-01-04', 1),
(27, 40, 5, 2, 18000, '2026-01-04', 1),
(28, 40, 2, 2, 50000, '2026-01-04', 1),
(29, 40, 1, 1, 20000, '2026-01-04', 1),
(30, 41, 2, 1, 25000, '2026-01-05', 1),
(31, 41, 5, 1, 9000, '2026-01-05', 1),
(32, 41, 1, 1, 20000, '2026-01-05', 1),
(33, 42, 1, 1, 20000, '2026-01-05', 1),
(34, 42, 2, 1, 25000, '2026-01-05', 1),
(35, 43, 5, 1, 9000, '2026-01-06', 1),
(36, 43, 2, 1, 25000, '2026-01-06', 1),
(37, 44, 2, 1, 25000, '2026-01-06', 1),
(38, 45, 2, 1, 25000, '2026-01-06', 1),
(39, 45, 1, 1, 20000, '2026-01-06', 1),
(40, 46, 2, 1, 25000, '2026-01-14', 1),
(41, 46, 1, 1, 20000, '2026-01-14', 1),
(42, 47, 2, 1, 25000, '2026-01-14', 1),
(43, 47, 1, 1, 20000, '2026-01-14', 1),
(44, 47, 5, 1, 9000, '2026-01-14', 1),
(45, 48, 2, 1, 25000, '2026-01-14', 1),
(46, 49, 5, 1, 9000, '2026-01-14', 1),
(47, 49, 2, 1, 25000, '2026-01-14', 1),
(48, 49, 1, 1, 20000, '2026-01-14', 1),
(49, 50, 5, 1, 9000, '2026-01-14', 1),
(50, 50, 2, 1, 25000, '2026-01-14', 1),
(51, 51, 2, 1, 25000, '2026-01-14', 1),
(52, 51, 5, 1, 9000, '2026-01-14', 1),
(53, 52, 5, 1, 9000, '2026-01-14', 1),
(54, 52, 2, 1, 25000, '2026-01-14', 1),
(55, 52, 1, 1, 20000, '2026-01-14', 1),
(56, 53, 2, 1, 25000, '2026-01-14', 1),
(57, 53, 1, 1, 20000, '2026-01-14', 1),
(58, 54, 1, 1, 20000, '2026-01-14', 1),
(59, 54, 2, 1, 25000, '2026-01-14', 1),
(60, 55, 1, 1, 20000, '2026-01-14', 1),
(61, 55, 2, 1, 25000, '2026-01-14', 1),
(62, 56, 2, 1, 25000, '2026-01-15', 1),
(63, 56, 1, 1, 20000, '2026-01-15', 1),
(64, 56, 5, 1, 9000, '2026-01-15', 1),
(65, 57, 5, 1, 9000, '2026-01-15', 1),
(66, 57, 2, 1, 25000, '2026-01-15', 1),
(67, 58, 1, 1, 20000, '2026-01-15', 1),
(68, 58, 2, 1, 25000, '2026-01-15', 1),
(69, 59, 5, 1, 9000, '2026-01-15', 1),
(70, 59, 2, 1, 25000, '2026-01-15', 1),
(71, 60, 1, 1, 20000, '2026-01-15', 1),
(72, 60, 2, 1, 25000, '2026-01-15', 1),
(73, 61, 1, 1, 20000, '2026-01-16', 1),
(74, 61, 2, 1, 25000, '2026-01-16', 1),
(75, 62, 2, 1, 25000, '2026-01-16', 1),
(91, 71, 5, 1, 9000, '2026-01-17', 1),
(92, 71, 1, 1, 20000, '2026-01-17', 1),
(93, 71, 2, 1, 25000, '2026-01-17', 1),
(97, 73, 1, 1, 20000, '2026-01-17', 1),
(98, 73, 2, 1, 25000, '2026-01-17', 1),
(99, 74, 2, 1, 25000, '2026-01-17', 1),
(100, 74, 5, 1, 9000, '2026-01-17', 1),
(101, 75, 1, 1, 20000, '2026-01-18', 1),
(102, 75, 2, 1, 25000, '2026-01-18', 1),
(103, 76, 2, 1, 25000, '2026-01-22', 1),
(104, 76, 5, 1, 9000, '2026-01-22', 1),
(105, 77, 32, 1, 3000, '2026-01-22', 1),
(106, 77, 33, 1, 2500, '2026-01-22', 1),
(107, 77, 27, 1, 500, '2026-01-22', 1),
(108, 77, 28, 1, 500, '2026-01-22', 1),
(109, 77, 29, 1, 5000, '2026-01-22', 1),
(110, 77, 31, 1, 2500, '2026-01-22', 1),
(111, 77, 30, 1, 3500, '2026-01-22', 1),
(112, 78, 7, 2, 15000, '2026-01-22', 1),
(113, 78, 10, 2, 3000, '2026-01-22', 1),
(114, 78, 6, 2, 14000, '2026-01-22', 1),
(115, 78, 9, 2, 6000, '2026-01-22', 1),
(116, 78, 8, 2, 11000, '2026-01-22', 1),
(117, 78, 11, 2, 3000, '2026-01-22', 1),
(118, 78, 12, 1, 2000, '2026-01-22', 1),
(119, 79, 19, 3, 6000, '2026-01-22', 1),
(120, 79, 16, 3, 15000, '2026-01-22', 1),
(121, 79, 20, 3, 3000, '2026-01-22', 1),
(122, 79, 17, 3, 7500, '2026-01-22', 1),
(123, 79, 18, 3, 7500, '2026-01-22', 1),
(124, 80, 12, 42, 84000, '2026-01-22', 1),
(125, 81, 1, 1, 20000, '2026-01-24', 1),
(126, 81, 31, 1, 2500, '2026-01-24', 1),
(127, 82, 1, 1, 20000, '2026-01-25', 1),
(128, 82, 2, 1, 25000, '2026-01-25', 1),
(129, 83, 12, 2, 4000, '2026-01-26', 1),
(130, 83, 10, 1, 1500, '2026-01-26', 1),
(131, 83, 11, 3, 4500, '2026-01-26', 1),
(132, 84, 6, 1, 7000, '2026-01-30', 1),
(133, 84, 5, 1, 9000, '2026-01-30', 1),
(134, 85, 11, 1, 1500, '2026-01-31', 1),
(135, 85, 12, 1, 2000, '2026-01-31', 1),
(136, 86, 9, 1, 3000, '2026-01-31', 1),
(137, 86, 10, 1, 1500, '2026-01-31', 1),
(138, 89, 8, 1, 5500, '2026-01-31', 1),
(139, 89, 7, 1, 7500, '2026-01-31', 1),
(140, 90, 5, 1, 9000, '2026-01-31', 1),
(141, 90, 6, 1, 7000, '2026-01-31', 1),
(142, 91, 9, 1, 3000, '2026-02-12', 1),
(143, 92, 12, 1, 2000, '2026-02-12', 1),
(144, 92, 6, 1, 7000, '2026-02-12', 1),
(145, 92, 11, 1, 1500, '2026-02-12', 1),
(146, 93, 11, 1, 1500, '2026-02-12', 1),
(147, 93, 10, 1, 1500, '2026-02-12', 1),
(148, 94, 11, 1, 1500, '2026-02-21', 1),
(149, 95, 5, 1, 9000, '2026-02-22', 1),
(150, 95, 6, 1, 7000, '2026-02-22', 1),
(151, 96, 11, 1, 1500, '2026-02-22', 1),
(152, 96, 12, 1, 2000, '2026-02-22', 1),
(153, 97, 6, 1, 7000, '2026-02-22', 1),
(154, 97, 5, 1, 9000, '2026-02-22', 1),
(155, 98, 9, 1, 3000, '2026-02-22', 1),
(156, 98, 10, 1, 1500, '2026-02-22', 1),
(157, 98, 12, 1, 2000, '2026-02-22', 1),
(158, 98, 11, 1, 1500, '2026-02-22', 1),
(159, 99, 12, 1, 2000, '2026-02-22', 1),
(160, 99, 10, 1, 1500, '2026-02-22', 1),
(161, 99, 25, 1, 1000, '2026-02-22', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `hpp` float DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `hpp`, `category`, `stock`, `user_id`, `image`) VALUES
(1, 'Aqua galon', 20000, 18000, 'Kebutuhan rumah', 13, 1, NULL),
(2, 'Alamo gelas', 25000, 23500, 'Kebutuhan rumah', 16, 1, NULL),
(5, 'Kapal api sachet besar', 9000, 7000, 'Kebutuhan rumah', 86, 1, NULL),
(6, 'Pocari sweat', 7000, 6000, 'Minuman', 7, 1, NULL),
(7, 'Larutan cap kaki tiga', 7500, 6500, 'Minuman', 7, 1, NULL),
(8, 'Aqua botol besar', 5500, 51000, 'Minuman', 19, 1, NULL),
(9, 'Aqua botol kecil', 3000, 48000, 'Minuman', 17, 1, NULL),
(10, 'Top coffee sachet kecil', 1500, 9000, 'Kebutuhan rumah', 8, 1, NULL),
(11, 'Kapal api sachet kecil', 1500, 10000, 'Kebutuhan rumah', 9, 1, NULL),
(12, 'Top coffee sachet besar', 2000, 17000, 'Kebutuhan rumah', 10, 1, NULL),
(13, 'Luwak white coffee sachet', 2500, 15000, 'Kebutuhan rumah', 10, 1, NULL),
(14, 'Energen vanila sachet', 2500, 20000, 'Kebutuhan rumah', 10, 1, NULL),
(15, 'Chocolatos sachet', 2500, 21000, 'Kebutuhan rumah', 10, 1, NULL),
(16, 'Dancow sachet', 5000, 40000, 'Kebutuhan ibu & anak', 14, 1, NULL),
(17, 'Frisian flag putih sachet', 2500, 8000, 'Kebutuhan ibu & anak', 13, 1, NULL),
(18, 'Frisian flag coklat sachet', 2500, 8000, 'Kebutuhan ibu & anak', 13, 1, NULL),
(19, 'Nutrisari jeruk peras ', 2000, 13000, 'Minuman', 14, 1, NULL),
(20, 'Teh sariwangi ', 1000, 5000, 'Minuman', 13, 1, NULL),
(21, 'Teh sarimurni', 1500, 16000, 'Minuman', 12, 1, NULL),
(22, 'Desaku kunyit bubuk', 1000, 10000, 'Kebutuhan dapur', 12, 1, NULL),
(23, 'Desaku ketumbar bubuk', 500, 5000, 'Kebutuhan dapur', 10, 1, NULL),
(24, 'Desaku marinasi bubuk', 1000, 10000, 'Kebutuhan dapur', 12, 1, NULL),
(25, 'Ladaku', 1000, 10000, 'Kebutuhan dapur', 11, 1, NULL),
(26, 'Masako sapi', 500, 4500, 'Kebutuhan dapur', 12, 1, NULL),
(27, 'Masako ayam', 500, 4500, 'Kebutuhan dapur', 11, 1, NULL),
(28, 'Bio msg', 500, 21000, 'Kebutuhan dapur', 47, 1, NULL),
(29, 'Ajinomoto msg', 5000, 55000, 'Kebutuhan dapur', 18, 1, NULL),
(30, 'Saori', 3500, 26000, 'Kebutuhan dapur', 18, 1, NULL),
(31, 'Blueband', 2500, 20000, 'Kebutuhan dapur', 10, 1, NULL),
(32, 'Sajiku serbaguna', 3000, 25000, 'Kebutuhan dapur', 18, 1, NULL),
(33, 'Tepung jempol', 2500, 18000, 'Kebutuhan dapur', 18, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `kode_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `closing`
--
ALTER TABLE `closing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `closing_ibfk_1` (`user_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orders_user` (`user_id`),
  ADD KEY `idx_orders` (`invoice`,`total`,`created_at`);

--
-- Indeks untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_detail_order` (`order_id`),
  ADD KEY `idx_order_detail_product` (`product_id`),
  ADD KEY `idx_order_detail` (`quantity`,`price`),
  ADD KEY `order_detail_ibfk_3` (`user_id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_user` (`user_id`),
  ADD KEY `idx_product` (`name`,`price`,`hpp`,`category`,`stock`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`username`,`email`,`password`,`kode_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `closing`
--
ALTER TABLE `closing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `closing`
--
ALTER TABLE `closing`
  ADD CONSTRAINT `closing_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
