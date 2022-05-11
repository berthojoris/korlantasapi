-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table korlantas_prod.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table korlantas_prod.model_has_roles: ~39 rows (approximately)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1),
	(1, 'App\\Models\\User', 2),
	(1, 'App\\Models\\User', 3),
	(2, 'App\\Models\\User', 4),
	(3, 'App\\Models\\User', 5),
	(3, 'App\\Models\\User', 6),
	(3, 'App\\Models\\User', 7),
	(3, 'App\\Models\\User', 8),
	(3, 'App\\Models\\User', 9),
	(3, 'App\\Models\\User', 10),
	(3, 'App\\Models\\User', 11),
	(3, 'App\\Models\\User', 12),
	(3, 'App\\Models\\User', 13),
	(3, 'App\\Models\\User', 14),
	(3, 'App\\Models\\User', 15),
	(3, 'App\\Models\\User', 16),
	(3, 'App\\Models\\User', 17),
	(3, 'App\\Models\\User', 18),
	(3, 'App\\Models\\User', 19),
	(3, 'App\\Models\\User', 20),
	(3, 'App\\Models\\User', 21),
	(3, 'App\\Models\\User', 22),
	(3, 'App\\Models\\User', 23),
	(3, 'App\\Models\\User', 24),
	(3, 'App\\Models\\User', 25),
	(3, 'App\\Models\\User', 26),
	(3, 'App\\Models\\User', 27),
	(3, 'App\\Models\\User', 28),
	(3, 'App\\Models\\User', 29),
	(3, 'App\\Models\\User', 30),
	(3, 'App\\Models\\User', 31),
	(3, 'App\\Models\\User', 32),
	(3, 'App\\Models\\User', 33),
	(3, 'App\\Models\\User', 34),
	(3, 'App\\Models\\User', 35),
	(3, 'App\\Models\\User', 36),
	(3, 'App\\Models\\User', 37),
	(3, 'App\\Models\\User', 38),
	(5, 'App\\Models\\User', 39);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table korlantas_prod.poldas
CREATE TABLE IF NOT EXISTS `poldas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `polda_assign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurisdiction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headquarters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `official_site` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `poldas_created_by_foreign` (`created_by`),
  KEY `poldas_updated_by_foreign` (`updated_by`),
  CONSTRAINT `poldas_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `poldas_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table korlantas_prod.poldas: ~34 rows (approximately)
/*!40000 ALTER TABLE `poldas` DISABLE KEYS */;
INSERT INTO `poldas` (`id`, `uuid`, `name`, `short_name`, `logo`, `polda_assign`, `jurisdiction`, `headquarters`, `type`, `official_site`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, '993cd22e-bebb-447f-ad2e-6d19acae0680', 'Aceh', 'aceh', 'aceh.png', 'poldaaceh', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(2, 'b2a549a6-37d1-437b-9c79-67d7b74a68e4', 'Sumatera Utara', 'sumut', 'sumut.png', 'poldasumut', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(3, 'c55459bf-7f48-4641-b8e8-8e36c6ccc83f', 'Sumatera Barat', 'sumbar', 'sumbar.png', 'poldasumbar', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(4, '764e0388-9c7b-459a-b7a8-51a8d98d42d1', 'Riau', 'riau', 'riau.png', 'poldariau', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(5, '13e51f97-4a72-4cc4-bde9-f286cc60c3d0', 'Kepulauan Riau', 'kepri', 'kepri.png', 'poldakepri', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(6, 'c75968b1-d119-426c-9b30-da330a50f0b0', 'Jambi', 'jambi', 'jambi.png', 'poldajambi', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(7, '56fc30cb-a770-4ce4-80b8-cd38329258cc', 'Bengkulu', 'bengkulu', 'bengkulu.png', 'poldabengkulu', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(8, '2ab97520-1ec2-4e1e-a205-ffe5b1984ec9', 'Sumatera Selatan', 'sumsel', 'sumsel.png', 'poldasumsel', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(9, '7f579484-269e-46ad-84f4-d0fe6cec1e3c', 'Kepulauan Bangka Belitung', 'babel', 'babel.png', 'poldababel', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(10, '1e420cd1-97e5-4eb3-9bb8-e05d8d21d50a', 'Lampung', 'lampung', 'lampung.png', 'poldalampung', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(11, '4de3bd35-2968-4d45-8057-744026c2a747', 'Metropolitan Jakarta Raya', 'metro-jaya', 'metro_jaya.png', 'poldametrojaya', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(12, '255dbbff-04c5-404a-a4d0-88f7e3349b6b', 'Banten', 'banten', 'banten.png', 'poldabanten', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(13, '74061c7b-593d-4a7b-ac6d-3a261a3a87ee', 'Jawa Barat', 'jabar', 'jabar.png', 'poldajabar', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(14, '198ee825-3dc8-4b0b-846e-99ec3532ee8a', 'Jawa Tengah', 'jateng', 'jateng.png', 'poldajateng', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(15, '3199a4a7-278e-4b30-bf7b-6350437d7476', 'Daerah Istimewa Yogyakarta', 'diy', 'diy.png', 'poldadiy', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(16, '46b25777-7377-431f-bd0d-774a38d29abf', 'Jawa Timur', 'jatim', 'jatim.png', 'poldajatim', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(17, 'edc53682-fb18-4510-a19d-d25ee9a4e5f9', 'Kalimantan Barat', 'kalbar', 'kalbar.png', 'poldakalbar', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(18, '45bc0674-3725-4b9f-b0c8-6d62e5ce8749', 'Kalimantan Tengah', 'kalteng', 'kalteng.png', 'poldakalteng', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(19, '2e0c7352-1179-4f6c-a79b-6880daa8660a', 'Kalimantan Selatan', 'kalsel', 'kalsel.png', 'poldakalsel', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(20, '13be035b-c2ff-4775-b374-c25a4b22477f', 'Kalimantan Timur', 'kaltim', 'kaltim.png', 'poldakaltim', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(21, '826b872f-8943-490c-aa1c-157e33f5a53f', 'Kalimantan Utara', 'kaltara', 'kaltara.png', 'poldakaltara', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(22, '2880b5d5-3878-4f09-8cca-6cef9a7edf30', 'Sulawesi Utara', 'sulut', 'sulut.png', 'poldasulut', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(23, '035c7f26-5943-4a63-8adc-352c4446ab94', 'Gorontalo', 'gorontalo', 'gorontalo.png', 'poldagorontalo', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(24, '165c57d7-8d48-466d-b8f9-d70ad655a067', 'Sulawesi Tengah', 'sulteng', 'sulteng.png', 'poldasulteng', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(25, 'bca85b61-f9bc-49e4-b260-3b9c33583ce1', 'Sulawesi Barat', 'sulbar', 'sulbar.png', 'poldasulbar', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(26, 'e1e00f97-0879-4d1c-8b7f-256046db2813', 'Sulawesi Selatan', 'sulsel', 'sulsel.png', 'poldasulsel', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(27, '328aa3da-2061-40b9-adb9-f1b982305039', 'Sulawesi Tenggara', 'sultra', 'sultra.png', 'poldasulteng', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(28, '49b8a4a7-a2c3-4dee-80bf-2b18572e6905', 'Bali', 'bali', 'bali.png', 'poldabali', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(29, '74a519d1-4e33-48c5-b368-1c2261536070', 'Nusa Tenggara Barat', 'ntb', 'ntb.png', 'poldantb', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(30, '70c0819e-d7e7-4ad9-8f8f-ecd5affef12e', 'Nusa Tenggara Timur', 'ntt', 'ntt.png', 'poldantt', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(31, 'd53740dc-a9ad-456d-880c-91af295aff84', 'Maluku Utara', 'malut', 'malut.png', 'poldamalut', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(32, 'f79d91a9-499e-46d4-8572-d864811c2cae', 'Maluku', 'maluku', 'maluku.png', 'poldamaluku', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(33, '6358123b-106a-460b-a5ea-d3c63c3944a1', 'Papua Barat', 'pabar', 'pabar.png', 'poldapabar', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(34, '5589ae03-8c59-4a1d-a25f-ecc1413273f5', 'Papua', 'papua', 'papua.png', 'poldapapua', NULL, NULL, NULL, NULL, 1, NULL, '2021-05-05 19:14:51', '2021-05-05 19:14:51');
/*!40000 ALTER TABLE `poldas` ENABLE KEYS */;

-- Dumping structure for table korlantas_prod.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table korlantas_prod.roles: ~5 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'administrator', 'web', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(2, 'access_pusat', 'web', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(3, 'access_daerah', 'web', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(4, 'access_dashboard', 'web', '2021-08-09 05:43:26', '2021-08-09 05:43:26'),
	(5, 'access_laporan', 'web', '2021-10-03 01:52:31', '2021-10-03 01:52:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table korlantas_prod.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table korlantas_prod.role_has_permissions: ~25 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(2, 4),
	(2, 5);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table korlantas_prod.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table korlantas_prod.users: ~39 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `profile`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Bertho', 'berthojoris@gmail.com', NULL, 'HaXvqPnGIsQuS6wZ3OSi.png', '2021-05-05 19:14:48', '$2y$10$Yc2mL4kXARZrXkGB2ISfk.3gUB.E/oO7mq3iCnkT5REeELwrRBp6K', 'aLDO4df7ytMS1A4tz4fFdWMoWivZzCyVNpnRxpJZ8O4vIOWetmM6oaFm1V4D', '2021-05-05 19:14:48', '2021-11-23 13:15:06'),
	(2, 'Cas', 'lukicasmadi@gmail.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$mEsLGLCu6f6s/mSBhHMz5usEeQFSes/TjmC9BHYfWyqqZVx00BYLm', 'HmdH84R0PI', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(3, 'crt', 'crt@gmail.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$MtM4wFw52zvpzgRyn4cDle78drneXWXydI/3xI8eU528srJk0R4iS', 'xMCGKMuAtTb3iYIBcVgGeSUKY7IPT2PHCimdMnmAISveeVg0JJScFX2e6HXQ', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(4, 'korlantas', 'free@korlantas.com', NULL, 'AG2ixujXUrRS6AzBfPVn.png', '2021-05-05 19:14:48', '$2y$10$QhyprPVyRvpjVTyXYiZte.EAWWuJ2ondulCUEtxw5HKlRbEAuyY7W', 'JukKagOEYtgpRJJ1KXsBCv408TN2dotZ06oqGPdNOvxb9LgcNN2hqrwZIKpV', '2021-05-05 19:14:48', '2021-11-23 12:03:37'),
	(5, 'poldaaceh', 'free@poldaaceh.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$nRU5VZmIVTgLH7YgIO6ZgONu.7DL3EOFav.3/EZChL6YvssFOAPRe', 'naTcqkyydUU5sMlydsGo0yMI0eaph7fX9vUg0iZDGLL9sogRaP1O2UonztiK', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(6, 'poldasumut', 'free@poldasumut.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$lFxKEbmgaa.5h.P9LER/lOnHbGgq.9gP7e1jxcgLht4LRVDBD6QWq', 'Jy38WkPGrC', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(7, 'poldasumbar', 'free@poldasumbar.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$nhSyBWZ6QUuECnInCWcYQeskOH.ZNX2Qp19KMMHqqfe3/wJdSXTgq', 'NiU9bNdpWYaXE4ZXShI98Kn0XRckAxLcV8kFpUzP5IAlJMSkXr5x8nnJj8IY', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(8, 'poldariau', 'free@poldariau.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$G6hsgfUj8/o/LLWctRlORemoVHNWsbDGzeo7OYuTfZo2rRU9e.kUy', 'pCVr7podTcY2WCtoDGUHktZshhdduLnAoHZLIAoOLQYPIP8G6BWJsXwZjJPI', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(9, 'poldakepri', 'free@poldakepri.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$ZAZkcaknwlr3isKs4k4mrONydiv5dQC7h6AmzLY0L4tYgNvYi4FwK', 'ACr1sLnAUadkvLg56VSyApqootxjXjwQhQgjQUQ7BMeFOk1Y2aLRotrsVO7t', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(10, 'poldajambi', 'free@poldajambi.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$v1KblX0esVKf.5vdt8YkIuVBDg8mwqHDDIVvXBKze6e109nNUGgo.', 'bztmnTvdEf', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(11, 'poldababel', 'free@poldababel.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$Oh8wn4O75Xzri9jpqPVxSeim0edKkiaCVaHNuiA2EtFibwFvbJ25i', 'TJMjlzOlVoQjKrh6EjVCpPTchHRQoWbSeM5ttz4YzEPno9MB6Fg4kLcG8LOA', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(12, 'poldabengkulu', 'free@poldabengkulu.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$cTbKgATto552P/f0e6LmxeyzdORKEVzZVr7owU42sP9eqv7KPfr9e', '4SS36zUE8slYDm26eOpiPUtV4Pw2fOEnsav73VZs9XffJ4w3DO6BNzzmOr8s', '2021-05-05 19:14:48', '2021-05-05 19:14:48'),
	(13, 'poldasumsel', 'free@poldasumsel.com', NULL, NULL, '2021-05-05 19:14:48', '$2y$10$7cwYP/9ozB2VT2VzA.df5.XMMGKz9MHWqE70vgY6HRTVHnEhhWoKe', 'BuuJQXhyA08urt523hQvhP2b1MC8Hn5aE5Zkt1DLuxaOWWG9WlUFBqiyznA3', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(14, 'poldalampung', 'free@poldalampung.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$UEEblN86xPMNBLN0Jk0bleDmxK4IyONQw6ynnnzGLoGgPYFBCPK7q', 'au5UNsD4BfdAskAOntI9xIAyhqmQB11M0kkUVaQIkyymMc3TwqlNd0Lv95b4', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(15, 'poldabanten', 'free@poldabanten.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$j/LfXlytdzljMjfbOh9y3eYf1OgOrTmN4W4x6QTH6saxde3H3seA2', 'tYRxHi2cSkGsyc5DYzK8goEEd2zNY4X9D1xlOLIaEF7TJYoqH799VL59uwez', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(16, 'poldametrojaya', 'free@poldametrojaya.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$5FFCU7/lw9lqlguZDFI.9OD0KX.H1OsrviIVeKk5GggtE75ByN8XC', 'dG7TS2sB3PvoPGzR4yNmqA5ba6FnS1FV7mrSQJ0WM0Od7masACKl2AhkBAMz', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(17, 'poldajabar', 'free@poldajabar.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$sLba1rUlaaSoVsXKMc3BG.5h2U4vVrzSUtISwhyKRZ1PWZjn4BFwa', 'tzIDBKZJCg', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(18, 'poldajateng', 'free@poldajateng.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$XEA6FW31RvFx7S.znKgC8eMoETLdTCgo9GmNSt1FQzSzDO7GWvFD6', 'lal6b3ZtzdCHCrblrtALfE7n9C6SCtmW3rWj0RMqny8zpddSpJJbauVUhcIe', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(19, 'poldadiy', 'free@poldadiy.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$bKy5P7jVzX643mj1mAuxl.rE0p21EdxhbhxUNrkwoEm0gFLAtB8Bm', '6jh9QuqlVzCLB4IQq5jlW4XRv0Y8YQu6fGjeUiKW8kpuA9Wyen7ft6m8adGP', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(20, 'poldajatim', 'free@poldajatim.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$aiqsWU/W5GIl0ipXYtX0ae/4aA63vWjvC6DYfbkFWKbD4hGzYhvcu', 'YLWD5C8q6Z', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(21, 'poldabali', 'free@poldabali.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$Tw3/x.KTGJGCGjfZfuafR.Hfvj7IT6/RW.sD2giOLu71lZTnVDCzm', '32bmmaHP9dg29L6bFBUsQNB3KBrOdg2zuyCwt3MybgQxaFQUMjvgfstJqHlL', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(22, 'poldakaltim', 'free@poldakaltim.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$/cQ6Ntjr6UnRimHvdc9oAuLP545aS70vYlm1gncLcjceudM/pMGai', 'B5A4kGna45hLzOkKATKYrhLP5XfyIUTIUQI6Ni7Q05TcVG1D3rWUpJMo8EtR', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(23, 'poldakalsel', 'free@poldakalsel.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$NEM1JhwPW3gXcL4t4SzILegioV0f5hckskcDwlABJCaNdcUdH2oEi', 'NSWaWyAwchA3UznWi4w8JgGtaZhjMbsNfVFHrAMpukXVLEFo1pRyD7aGg96o', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(24, 'poldakalteng', 'free@poldakalteng.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$4SH8MFIHA2hMmffM0l9/LO3NrMIEq9Z5HGNC8fjUzM3zrMBrzH72G', 'S8xyQfO5JidBKyPNHkfuAr98m4Ts3SdxiV0EWe1Jl9hKXEstMQ1OY1o7D2np', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(25, 'poldakalbar', 'free@poldakalbar.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$9QQD8DkZ2LbavAKOpBePG.AUubnFVMO6konjVF6ExxKoG4jCL1ha2', 'afYMktiSn9MZ6BHEsCochc3SXk2Mp1Hi2QO4xxBqjGspe0TMITrLRskNk6LS', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(26, 'poldantb', 'free@poldantb.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$zJACfNKr2pCtswS.CJFUvuQs7liv6CmuZdN40OGTXh/4A1uLChQWm', 'e4LYWw4yaJa0qzswFrU2DdKKJ7q8mD1vvBg5ZUNKhPNADc0LoLCxysaOihYG', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(27, 'poldantt', 'free@poldantt.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$WG/0wKpMntpcq7PxmghiVOV9C5PO/6yRmYiFwZGxy/Kj0moy6ycP6', '5Rmv277zZfEbcgxAQydfxhqq2nEXlQyEG07DYdJ2oreROfcx1FjcS9Ju4Lq1', '2021-05-05 19:14:49', '2021-05-05 19:14:49'),
	(28, 'poldasulut', 'free@poldasulut.com', NULL, NULL, '2021-05-05 19:14:49', '$2y$10$FVjBoEINRZEjDcMHqF5oWOPHB47RgrWouTDJZfDpVJonZQ1I62WLi', 'AF9pEOhEp8m5ztiJdCTuH5dpLfMstZPvfVkYthXo3gseofFlP3uQjFAAik0i', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(29, 'poldasulteng', 'free@poldasulteng.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$2SrXAOVFalLGNhJw20kx/egPv0gRLzR4nKnLeSxBRfTJ8DtExjX4u', 'umXkRTlTY3WtTP8WyJIu3NHG5lzwbELDrVkcUxh7w8Zm3OtrH6O0qo5M3BpB', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(30, 'poldasulsel', 'free@poldasulsel.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$Mk/t5Yt6bLDhRa.qhAQZ/eX52REqG9FwSZ5IfHh9JNEPwoiARVAgK', '7EqJvrG5kj126dKSPdnYW48BV93Y4QzM2jxj3qeuGze2b4njNPzkVThKeBKt', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(31, 'poldasultra', 'free@poldasultra.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$oEdakcZ2OfTInhPEP5Tl6.wr.Gd1XhV9jWc5K/D.3yn4oC15GPZ9y', '9BKIceqQgoKw55DOlBWoQAL9Bw7vqDPOMRSDVnTO7zPzJp5lfxEwfGOgAQLD', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(32, 'poldagorontalo', 'free@poldagorontalo.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$YbKPY/ggpTURtaxMB92LSOSupzWaReWclNpUHLk7bimSoxmxR6T6e', 'XY0HPeDlTojrJq9Hvc3HVgVOO9ZJpovthDFiDPk9sTMXw47KsxcoDvCIiQDb', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(33, 'poldamaluku', 'free@poldamaluku.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$KeK/wNWPV6liAaAeM7dqjOeFqIHUBP2DAnr3kpE6Pfni7C1BxPdgi', 'QJYy7C5054Ea2UflpLeeRXpGZ7WIdDMQ7YBxIe8fealCTVSlp3FvaSuaTGch', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(34, 'poldamalut', 'free@poldamalut.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$hZbrJrl0XhSIoSnzgpzWUeoilPRSfuia8VCR6h4Qqhc5gF3R5eZYa', 'apRlMGliOirekODCO9FcWus3qeMRFIo0S2zUJ9cVDIR0tR5q2CPaOL3tISyh', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(35, 'poldapapua', 'free@poldapapua.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$ZBKBSk9WKs5p20uVHkqR7eeU/iuJ5ggc5ehXc/LxqpczenwusrbYO', 'vE9Hex8k3byNK74rZcyisp75fSotYMvOlNQEqJqwijlFFfopdihKkSljJPwJ', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(36, 'poldapabar', 'free@poldapabar.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$IpyJFEuncMCconZd1o5CFe5YOwbJxvQOCWvAfTnQyo4EpsvzieE7u', 'An8bjGOmqwDDBbZ7WQowMRKNmnIH1jPrJH4xepoEgSysc4Vqb6x91CG35ls8', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(37, 'poldasulbar', 'free@poldasulbar.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$Y58qjAi01KLYZIOR1AcNO.JSv8m2FJm0GbQhgI19r3JBuCx5z3KbS', 'g54pVL0Sz8WdznRuMh9aFSnAXX3bMozkcJHDI9kEVbsxoizzOjxU7Dzmx6M7', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(38, 'poldakaltara', 'free@poldakaltara.com', NULL, NULL, '2021-05-05 19:14:50', '$2y$10$WkB7aaFJYOVfZUHrG2dbBecfSYMEsgVkhFoX9wQz05TdImOvSdjhK', 'DzyQxCj0K0h3U8azXnYNw7IoD1fmGH6SKC5nWzSXB6M6efNBdThbug03lLnC', '2021-05-05 19:14:50', '2021-05-05 19:14:50'),
	(39, 'oprk3ikorlantas', 'monitoring@sislapops.id', NULL, NULL, NULL, '$2y$10$lwL9nu6sTX.G.w5lX3V/qe1jpZm0bzotN/7be/FvGQdg05LO5N75q', NULL, '2021-08-09 05:46:10', '2021-08-09 05:46:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table korlantas_prod.user_has_poldas
CREATE TABLE IF NOT EXISTS `user_has_poldas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `polda_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_has_poldas_user_id_foreign` (`user_id`),
  KEY `user_has_poldas_polda_id_foreign` (`polda_id`),
  CONSTRAINT `user_has_poldas_polda_id_foreign` FOREIGN KEY (`polda_id`) REFERENCES `poldas` (`id`),
  CONSTRAINT `user_has_poldas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table korlantas_prod.user_has_poldas: ~34 rows (approximately)
/*!40000 ALTER TABLE `user_has_poldas` DISABLE KEYS */;
INSERT INTO `user_has_poldas` (`id`, `user_id`, `polda_id`, `created_at`, `updated_at`) VALUES
	(1, 5, 1, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(2, 6, 2, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(3, 7, 3, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(4, 8, 4, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(5, 9, 5, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(6, 10, 6, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(7, 11, 9, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(8, 12, 7, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(9, 13, 8, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(10, 14, 10, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(11, 15, 12, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(12, 16, 11, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(13, 17, 13, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(14, 18, 14, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(15, 19, 15, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(16, 20, 16, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(17, 21, 28, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(18, 22, 20, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(19, 23, 19, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(20, 24, 18, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(21, 25, 17, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(22, 26, 29, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(23, 27, 30, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(24, 28, 22, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(25, 29, 24, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(26, 30, 26, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(27, 32, 23, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(28, 33, 32, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(29, 34, 31, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(30, 35, 34, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(31, 36, 33, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(32, 37, 25, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(33, 38, 21, '2021-05-05 19:14:51', '2021-05-05 19:14:51'),
	(34, 31, 27, '2021-05-07 03:00:47', '2021-05-07 03:00:47');
/*!40000 ALTER TABLE `user_has_poldas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
