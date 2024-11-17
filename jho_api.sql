-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2024 lúc 11:47 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jho_api`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `managed_by` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `created_by`, `managed_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'hihi', 'lctiendđ@gna.con', '1312312', 3, 9, NULL, '2024-11-16 11:15:40', '2024-11-17 03:18:04'),
(2, 'Rodger Renner', 'marilou.bogan@example.com', '934-841-0238', 18, 6, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(3, 'Rosalind Lesch', 'esta.smitham@example.org', '(743) 552-5067', 2, 9, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(4, 'Miss Lera Kihn Jr.', 'aubrey48@example.org', '949-819-0457', 6, 14, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(5, 'Dandre Boyle', 'tschaden@example.com', '747-995-7959', 12, 1, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(6, 'Carolina Effertz', 'lowell26@example.net', '1-458-276-5980', 8, 10, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(7, 'Karlie West V', 'mayer.kelsi@example.net', '223.295.3789', 19, 1, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(8, 'Ms. Hassie Beier DDS', 'elsie.towne@example.com', '(651) 253-1617', 13, 19, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(9, 'Bud Auer', 'wintheiser.georgianna@example.net', '917.498.5342', 18, 7, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(10, 'Lavinia Nitzsche', 'cindy.hintz@example.com', '(225) 391-4315', 12, 20, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(11, 'Mylene Braun', 'ryan.bradtke@example.org', '(310) 646-0305', 2, 4, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(12, 'Wanda Bogisich', 'hboehm@example.org', '1-615-333-8742', 16, 11, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(13, 'Arielle Hettinger III', 'eduardo62@example.net', '1-404-418-8287', 20, 15, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(14, 'Randall Upton II', 'pwalker@example.org', '980.671.6017', 21, 6, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(15, 'Sterling Schneider', 'langworth.heidi@example.net', '+18145108809', 4, 18, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(16, 'Jadon Connelly', 'nwilliamson@example.net', '1-931-386-5475', 20, 2, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(17, 'Prof. Jamey Gutmann', 'mante.era@example.org', '585-790-2206', 17, 11, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(18, 'Bernita Wolff', 'kgerhold@example.com', '(209) 673-9292', 16, 1, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(19, 'Julia Greenholt', 'birdie67@example.org', '+13255175255', 15, 14, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(20, 'Elna Pouros', 'eliza25@example.com', '+1.743.724.6794', 6, 20, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(21, 'Test contact 1', 'testcontaect34@gmail.comw', '0766667021', 1, 1, NULL, '2024-11-16 23:36:04', '2024-11-16 23:36:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_group_contact`
--

CREATE TABLE `contact_group_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_contact_id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_tag`
--

CREATE TABLE `contact_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_tag`
--

INSERT INTO `contact_tag` (`id`, `contact_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 21, 1, NULL, NULL),
(2, 21, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_contact`
--

CREATE TABLE `group_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_contact`
--

INSERT INTO `group_contact` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'necessitatibus', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(2, 'fugiat', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(3, 'velit', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(4, 'voluptatibus', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(5, 'minima', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(6, 'repellat', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(7, 'rerum', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(8, 'veritatis', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(9, 'aliquam', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(10, 'perspiciatis', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(11, 'quas', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(12, 'non', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(13, 'tempora', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(14, 'quidem', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(15, 'laboriosam', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(16, 'qui', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(17, 'est', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(18, 'similique', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(19, 'sit', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(20, 'sequi', NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `managers`
--

INSERT INTO `managers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Augusta Bashirian DVM', 'howell37@example.net', NULL, '$2y$12$PBkNogdO2f/BhwuznU7txO4WeBGFMmfQI5LTkN805mLh44H8vfycK', NULL, NULL, '2024-11-16 11:15:34', '2024-11-16 11:15:34'),
(2, 'Shawn Buckridge', 'dante.grimes@example.com', NULL, '$2y$12$.vFxpOA.pM3w2w30LarImO3DgIuCxxYVemi.mYmPuVmNhdWLToBf2', NULL, NULL, '2024-11-16 11:15:34', '2024-11-16 11:15:34'),
(3, 'Dr. Sarina Kling MD', 'bstrosin@example.com', NULL, '$2y$12$D.bpsxFsEfpenjZAcjhNW.3/Hxwd1UBj0TM7Hg1L0BPp9QJpkvT6G', NULL, NULL, '2024-11-16 11:15:34', '2024-11-16 11:15:34'),
(4, 'Henry Grady Sr.', 'keira44@example.com', NULL, '$2y$12$ZM/gAFcQdSo6SQ1JJ/fWrusJYg9cJslttMV3bK5Mymy2C1q9bIcd2', NULL, NULL, '2024-11-16 11:15:35', '2024-11-16 11:15:35'),
(5, 'Mr. Braulio Bogan', 'orlando94@example.org', NULL, '$2y$12$E8SXZ4sqtOJb4JLithv7b.gWvU856ARFI4In8kBntzqW63ZYigKPC', NULL, NULL, '2024-11-16 11:15:35', '2024-11-16 11:15:35'),
(6, 'Wilhelm Spinka', 'ebednar@example.org', NULL, '$2y$12$vtLbNAJIf3aumn1WKb98Ou3vCgEksM9VqyQ0PDIuqq2TVCWYrhnTy', NULL, NULL, '2024-11-16 11:15:35', '2024-11-16 11:15:35'),
(7, 'Kaycee Auer', 'wilber18@example.com', NULL, '$2y$12$XmruQbKQqK7fv0Z2GxrT1OC.rmmofHvle1a1tCJWIqxnQsavVXjDG', NULL, NULL, '2024-11-16 11:15:36', '2024-11-16 11:15:36'),
(8, 'Ms. Zetta Sporer IV', 'kassulke.lillie@example.com', NULL, '$2y$12$VAFqk4AwzVW6eeyLlM1NcuzaG1I3HsTHWGLOsEJLT69eekMv3i1/y', NULL, NULL, '2024-11-16 11:15:36', '2024-11-16 11:15:36'),
(9, 'Dr. Raymundo Jacobi', 'lynch.valentin@example.net', NULL, '$2y$12$nP6PqDHpY8ZjJ0F9lI6XJuc9p7LQeZuYzf70rVZCdBkiVCu.A2q5O', NULL, NULL, '2024-11-16 11:15:36', '2024-11-16 11:15:36'),
(10, 'Wyatt Brown', 'pjohnston@example.net', NULL, '$2y$12$CRIGcIUrfi0DIVfNtrJatuAEqZ2IkcPMiUKGW8/ycOrNR70RWzCE6', NULL, NULL, '2024-11-16 11:15:37', '2024-11-16 11:15:37'),
(11, 'Marjolaine Swift', 'michale96@example.org', NULL, '$2y$12$WeAEFLouOhrMKpBBrxpd4e8OwstxGFQ9F6S5FDflCh8jN.DCq1vsi', NULL, NULL, '2024-11-16 11:15:37', '2024-11-16 11:15:37'),
(12, 'Gilda Upton', 'qbuckridge@example.net', NULL, '$2y$12$UZal31PsirwBFrjXescUaOJQ3aBsjvZ1t7Y7PWlYzevcEaQ6OPTBC', NULL, NULL, '2024-11-16 11:15:37', '2024-11-16 11:15:37'),
(13, 'Eugene Muller', 'jude.streich@example.net', NULL, '$2y$12$n1NrIDLEumeBM1NunxwfgeJW6.9CPWP2bWsD60V39qz7ROBlBiW5G', NULL, NULL, '2024-11-16 11:15:38', '2024-11-16 11:15:38'),
(14, 'Emely Harris', 'muriel92@example.org', NULL, '$2y$12$GHu.QqgIlv3c3T9W75xd9epk6/Cwmo37//JIW8BAoevZcn0J0bzYO', NULL, NULL, '2024-11-16 11:15:38', '2024-11-16 11:15:38'),
(15, 'Emory Cole IV', 'tcrooks@example.net', NULL, '$2y$12$um0ZZ.HqlerI.r8bpEEhSuEz22apVA2LXXJFYBunvAbBABwM3etcC', NULL, NULL, '2024-11-16 11:15:38', '2024-11-16 11:15:38'),
(16, 'Jordi Blanda', 'runolfsson.paige@example.org', NULL, '$2y$12$b1duv4pVuGMZ9iDXiitEKOrNK.5ska2GwZ..gDr4FP3kst/4qLWdC', NULL, NULL, '2024-11-16 11:15:39', '2024-11-16 11:15:39'),
(17, 'Aida Beatty', 'nkerluke@example.org', NULL, '$2y$12$NOBGclvt.QKoYK0zMLYrcOdchi/zRhUZ/usbexttDCwMTav5j3Oke', NULL, NULL, '2024-11-16 11:15:39', '2024-11-16 11:15:39'),
(18, 'Dee Prohaska', 'coty.ebert@example.com', NULL, '$2y$12$YDPVtKOyh60YclnWNpgpoe8gIrP4kY99WJTVr.p9AS2hWy5qjraG.', NULL, NULL, '2024-11-16 11:15:39', '2024-11-16 11:15:39'),
(19, 'Talon Crist', 'anika28@example.org', NULL, '$2y$12$sJ2x94tDRNSM9ZR47lfUMOyMkj0E7DneaWUTPNpKEzBdqzAvS8062', NULL, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40'),
(20, 'Miss Theresa Watsica', 'geoffrey61@example.org', NULL, '$2y$12$oZ.o838tkkh9DmP/e9MwW.4ZzlXD511jrXBhej1j846rKZKaAZzrW', NULL, NULL, '2024-11-16 11:15:40', '2024-11-16 11:15:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_15_124811_create_tags_table', 1),
(6, '2024_11_15_124815_create_group_contact_table', 1),
(7, '2024_11_15_124816_create_contacts_table', 1),
(8, '2024_11_15_124817_create_contact_group_contact_table', 1),
(9, '2024_11_15_124858_create_contact_tag_table', 1),
(10, '2024_11_16_074028_create_managers_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'API Token', 'c9507dd60f88f7d11c450787cc58f8bf4dcdd03bca4166aaf41a4ddd3a70222c', '[\"*\"]', NULL, NULL, '2024-11-17 02:32:35', '2024-11-17 02:32:35'),
(3, 'App\\Models\\User', 1, 'API Token', 'b7ab5ca057d7c24de8e57c1f89c148335f99a610d4c0046cdc1c03fe68b89ca1', '[\"*\"]', NULL, NULL, '2024-11-17 02:33:08', '2024-11-17 02:33:08'),
(4, 'App\\Models\\User', 1, 'API Token', '18f8f291f3f59df2fc5ea3ba084fff390199b7595c1b78cb830eedad76a0dcc0', '[\"*\"]', NULL, NULL, '2024-11-17 02:34:59', '2024-11-17 02:34:59'),
(5, 'App\\Models\\User', 1, 'API Token', '4fe970cc8900532014d958c4c4606b4b83f001b5ded1838a89a5b6b254a1a873', '[\"*\"]', NULL, NULL, '2024-11-17 02:35:46', '2024-11-17 02:35:46'),
(6, 'App\\Models\\User', 1, 'API Token', '02b7083db643faef2e1de7ae4cdaff6256d60386d83c70934b66ca2a3cfae300', '[\"*\"]', NULL, NULL, '2024-11-17 02:36:28', '2024-11-17 02:36:28'),
(7, 'App\\Models\\User', 1, 'API Token', '2cd1237d00e95a77143e9477c2c827749e7fe12b411a8b2bfcc5aa57a93cf06a', '[\"*\"]', NULL, NULL, '2024-11-17 02:37:40', '2024-11-17 02:37:40'),
(8, 'App\\Models\\User', 1, 'API Token', 'fddcd132b2ba86239cab9e3d23f1b050a5baaca292680bfef571b0e3cba50f42', '[\"*\"]', NULL, NULL, '2024-11-17 02:40:13', '2024-11-17 02:40:13'),
(9, 'App\\Models\\User', 1, 'API Token', '5797b737766f55a810cdfcfdad116a7d80ba754c5d8227b6f8ab40019dd943f2', '[\"*\"]', NULL, NULL, '2024-11-17 02:42:29', '2024-11-17 02:42:29'),
(10, 'App\\Models\\User', 1, 'API Token', '509b476db3678fdd888c9e7bd6b865d4f9dadbfd105a8e8f4fc7425b8fa2c2ba', '[\"*\"]', NULL, NULL, '2024-11-17 02:44:52', '2024-11-17 02:44:52'),
(11, 'App\\Models\\User', 1, 'API Token', 'ac87efa8c230bf1a91d7271266f13ebaa9b11cf69da76f2178ccb7970a67268b', '[\"*\"]', NULL, NULL, '2024-11-17 02:49:32', '2024-11-17 02:49:32'),
(12, 'App\\Models\\User', 1, 'API Token', '4e2f8f3354b4adaefa315a44889bb1ef28d87fe46117fd068296886447e4824c', '[\"*\"]', NULL, NULL, '2024-11-17 02:54:11', '2024-11-17 02:54:11'),
(13, 'App\\Models\\User', 1, 'API Token', '1ef510c8c7e0632ffc12b04d5c343b7a3e0be5af79791fc37a2224806fd5236c', '[\"*\"]', NULL, NULL, '2024-11-17 02:59:38', '2024-11-17 02:59:38'),
(14, 'App\\Models\\User', 1, 'API Token', 'fc7a7bcabf092776b885a8d4d8cd4a40fc6cf5f179fe6c1a55cd7f6ff5483f8a', '[\"*\"]', NULL, NULL, '2024-11-17 03:05:44', '2024-11-17 03:05:44'),
(15, 'App\\Models\\User', 1, 'API Token', '0b7632f189826675e4e06783e248489300e415d712e9a95b8019dc891afb95ab', '[\"*\"]', '2024-11-17 03:18:43', NULL, '2024-11-17 03:14:59', '2024-11-17 03:18:43'),
(16, 'App\\Models\\User', 1, 'API Token', '0da918123eb2ca13dc257d35db6c4504f205f4de5502939d59e85e7e7d2a27e6', '[\"*\"]', '2024-11-17 03:47:08', NULL, '2024-11-17 03:45:22', '2024-11-17 03:47:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `color_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cum', '#d2b776', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(2, 'quaerat', '#7a5779', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(3, 'consequatur', '#0d9ebd', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(4, 'animi', '#d29cff', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(5, 'est', '#d9fe5e', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(6, 'dolorum', '#2f16dd', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(7, 'voluptas', '#5c9f48', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(8, 'qui', '#14c697', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(9, 'nesciunt', '#635ca1', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(10, 'dolores', '#1f792d', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(11, 'accusantium', '#d909b0', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(12, 'beatae', '#a244a7', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(13, 'et', '#aee7ba', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(14, 'tempora', '#70eb47', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(15, 'eum', '#c2442a', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(16, 'error', '#c487b7', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(17, 'animi', '#1994ab', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(18, 'repellendus', '#63d4a0', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(19, 'et', '#b39163', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(20, 'alias', '#1b2bb3', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joel Kovacek DDS', 'jho@demo.com', NULL, '$2y$12$zQpDsRaI1QPFB85cwD71Iu59F9mcVRCYMQ8rHb/4eciNdjRf6f0PW', NULL, '2024-11-16 11:15:26', '2024-11-16 11:15:26'),
(2, 'Elaina Conn', 'mertie.watsica@example.net', NULL, '$2y$12$egEA90wBVNp.SavFFXwNQe4FqTj2eNFzR.U3l3hxsPPhEGvgftENW', NULL, '2024-11-16 11:15:26', '2024-11-16 11:15:26'),
(3, 'Emery Dickinson', 'florencio.parisian@example.com', NULL, '$2y$12$Z6HP4qKIyD2vR6/rW.ftbOEHIT02WVOOn47kvESv7B3zISjTVRP5S', NULL, '2024-11-16 11:15:27', '2024-11-16 11:15:27'),
(4, 'Lew Anderson', 'bernadette92@example.org', NULL, '$2y$12$prtCiLPVuUUwqbdMf6.YTu/BHwcBGbZ0hQPgAAIZkHNs7.0CdOo1a', NULL, '2024-11-16 11:15:27', '2024-11-16 11:15:27'),
(5, 'Javonte Buckridge I', 'claudia75@example.org', NULL, '$2y$12$mSY/OKc1WBPiucupj5CT/.lcshJ5FBNLs45dId50mrfUUAioTe5mq', NULL, '2024-11-16 11:15:27', '2024-11-16 11:15:27'),
(6, 'Alba Mayert', 'wisozk.zechariah@example.org', NULL, '$2y$12$UJj.6Cvxr8ouCPaX8n/4C.GP5mKVYPoHTGezvhXP3BTvMjqeTdMtG', NULL, '2024-11-16 11:15:28', '2024-11-16 11:15:28'),
(7, 'Kyra Mayert', 'amber.yost@example.com', NULL, '$2y$12$V7uxGl5ninrf3JkOm0Gnke1Ac1DbkJx4CykuWEmgxIw/VguhIq3mK', NULL, '2024-11-16 11:15:28', '2024-11-16 11:15:28'),
(8, 'Prof. Leopoldo Hilpert IV', 'zdenesik@example.org', NULL, '$2y$12$nTLevkHz8Cq2bX6prePZBeVfjFEvh2cAWRh8SCHYcE944gj4CR4Ua', NULL, '2024-11-16 11:15:28', '2024-11-16 11:15:28'),
(9, 'Dr. Gregorio Daniel', 'corkery.aida@example.com', NULL, '$2y$12$OTx656QP/W0xpvF6zWsoxuJJjaQe2xoOpaYhErP6.zaeH8LrfiyPq', NULL, '2024-11-16 11:15:29', '2024-11-16 11:15:29'),
(10, 'Weldon Predovic', 'ernser.chase@example.org', NULL, '$2y$12$dA/NZBBjfCs8EpJqrBB2T.MSkOz.qO59B5.l7P0e04V094t0IFi/q', NULL, '2024-11-16 11:15:29', '2024-11-16 11:15:29'),
(11, 'Aurore Tromp', 'cassin.ansel@example.com', NULL, '$2y$12$xaO357mbORJGJBXI2v38/uTLfwgpyukPlfC6Kb6.k61NYeLWPZYvm', NULL, '2024-11-16 11:15:29', '2024-11-16 11:15:29'),
(12, 'Fern Hermiston', 'jbailey@example.com', NULL, '$2y$12$RjA4Xa3KpA8cgh6MKcrqA.Ks.5M7oIQfFckPpd3iqmwXwU9hKXJVu', NULL, '2024-11-16 11:15:30', '2024-11-16 11:15:30'),
(13, 'Trycia Reilly Jr.', 'eldridge23@example.org', NULL, '$2y$12$060F/3z1OM6.v/R7MTi9huKaI3Ntu2zO85ktWQqlH5jH9pPuo6JP6', NULL, '2024-11-16 11:15:30', '2024-11-16 11:15:30'),
(14, 'Prof. Edmund Oberbrunner Sr.', 'mohr.dee@example.org', NULL, '$2y$12$tLmM7qLrNBaTyUjKLpNz4O7jx5Zr0QQQddx9oSVwENUNo99gFO62O', NULL, '2024-11-16 11:15:30', '2024-11-16 11:15:30'),
(15, 'Prof. Zelda Baumbach', 'krista04@example.org', NULL, '$2y$12$mHhP4/AikCC9.2HBag.acuIai08SzCQTMhhVKduWnGmFAsPwPXie6', NULL, '2024-11-16 11:15:31', '2024-11-16 11:15:31'),
(16, 'Tatum Gulgowski', 'ukassulke@example.org', NULL, '$2y$12$0Ok3NoE6lbyEFWPr0MLDt.aEZcKhRRYljwxoXe0Tpu5BnmUGDa6w.', NULL, '2024-11-16 11:15:31', '2024-11-16 11:15:31'),
(17, 'Bailey Schroeder', 'stracke.clemmie@example.org', NULL, '$2y$12$vMMHv/ZSXbAaK85EI4ZiVuIv3H5r/jQHKz0dz5rZBxB3wSZWwRfQG', NULL, '2024-11-16 11:15:32', '2024-11-16 11:15:32'),
(18, 'Mrs. Daniela Kshlerin', 'mckenzie64@example.com', NULL, '$2y$12$uRXkaXtSwvXaRkECknm1leTAiPcFvZOA6Hp/Sqe0XCXLltxsc3oyK', NULL, '2024-11-16 11:15:32', '2024-11-16 11:15:32'),
(19, 'Mr. Harold Conn', 'hane.may@example.org', NULL, '$2y$12$SvGu6QIi5aZEb.qnIs5kqOE08JfB7p1SxwH0XJo/YKtMCaAZ4Imdu', NULL, '2024-11-16 11:15:32', '2024-11-16 11:15:32'),
(20, 'Abbey Schiller', 'kub.elenora@example.net', NULL, '$2y$12$JgGHApcfAASfNxUFg7i32.2JvKrJQ0eZWqnxUpH611sICWrDQtMLG', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33'),
(21, 'Susanna Schamberger', 'clittle@example.org', NULL, '$2y$12$7VPJOSag6ugAZAhN44IASevCzL.awtJehHJP/L/746FpYnX25fb.y', NULL, '2024-11-16 11:15:33', '2024-11-16 11:15:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`),
  ADD KEY `contacts_created_by_foreign` (`created_by`),
  ADD KEY `contacts_managed_by_foreign` (`managed_by`);

--
-- Chỉ mục cho bảng `contact_group_contact`
--
ALTER TABLE `contact_group_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_group_contact_group_contact_id_foreign` (`group_contact_id`),
  ADD KEY `contact_group_contact_contact_id_foreign` (`contact_id`);

--
-- Chỉ mục cho bảng `contact_tag`
--
ALTER TABLE `contact_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_tag_contact_id_foreign` (`contact_id`),
  ADD KEY `contact_tag_tag_id_foreign` (`tag_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `group_contact`
--
ALTER TABLE `group_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `managers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `contact_group_contact`
--
ALTER TABLE `contact_group_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact_tag`
--
ALTER TABLE `contact_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_contact`
--
ALTER TABLE `group_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contacts_managed_by_foreign` FOREIGN KEY (`managed_by`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `contact_group_contact`
--
ALTER TABLE `contact_group_contact`
  ADD CONSTRAINT `contact_group_contact_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `contact_group_contact_group_contact_id_foreign` FOREIGN KEY (`group_contact_id`) REFERENCES `group_contact` (`id`);

--
-- Các ràng buộc cho bảng `contact_tag`
--
ALTER TABLE `contact_tag`
  ADD CONSTRAINT `contact_tag_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `contact_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
