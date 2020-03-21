-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk fintegra
CREATE DATABASE IF NOT EXISTS `fintegra` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fintegra`;

-- membuang struktur untuk table fintegra.barang
CREATE TABLE IF NOT EXISTS `barang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masterbrg_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.barang: ~12 rows (lebih kurang)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id`, `kode`, `masterbrg_id`, `nama`, `jenis`, `harga`, `created_at`, `updated_at`) VALUES
	(1, '01', 1, 'mouse', 'gadget', 10000, NULL, '2020-02-24 10:33:01'),
	(2, '02', 1, 'Handphone', 'gadget', 1000000, NULL, '2020-02-24 03:17:33'),
	(3, '03', 1, 'laptop', 'gadget', 5000000, NULL, '2020-02-24 10:32:53'),
	(4, '04', 2, 'celana pendek', 'pakaian', 75000, '2020-02-22 08:41:56', '2020-02-24 03:18:51'),
	(5, '05', 2, 'baju gamis', 'pakaian', 150000, '2020-02-22 08:43:00', '2020-02-24 03:19:00'),
	(7, '06', 4, 'kanvas rem', 'sparepart', 100000, '2020-02-22 08:46:43', '2020-02-24 03:19:15'),
	(9, '08', 3, 'pomad gatsby', 'kosmetik', 80000, '2020-02-22 08:51:35', '2020-02-24 03:19:40'),
	(10, '09', 3, 'BOS parfum', 'kosmetik', 500000, '2020-02-22 08:52:35', '2020-02-24 03:19:54'),
	(12, '010', 2, 'sweater', 'pakaian', 150000, '2020-02-22 09:36:21', '2020-02-24 10:49:51'),
	(13, '011', 4, 'ban radial', 'sparepart', 300000, '2020-02-22 09:37:05', '2020-02-24 03:20:44'),
	(14, '012', 4, 'kanvas kopling', 'sparepart', 135000, '2020-02-22 09:41:33', '2020-02-24 03:40:39'),
	(15, '013', 1, 'ipad', 'gadget', 1000000, '2020-02-24 03:16:51', '2020-02-24 03:41:50'),
	(16, '014', 4, 'shockbreker', 'sparepart', 500000, '2020-02-24 10:41:19', '2020-02-24 10:41:19'),
	(17, '015', 2, 'blazer', 'pakaian', 300000, '2020-02-24 10:44:13', '2020-02-24 10:44:13');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.kupon
CREATE TABLE IF NOT EXISTS `kupon` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_brg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.kupon: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `kupon` DISABLE KEYS */;
INSERT INTO `kupon` (`id`, `id_kupon`, `kode_brg`, `kode_customer`, `nama_brg`, `jumlah`, `diskon`, `created_at`, `updated_at`) VALUES
	(4, '75', '01', '101', 'handphone', 9, '0', '2020-02-24 02:31:39', '2020-02-24 10:09:44'),
	(5, '02', '01', '102', 'laptop', 15, '20%', '2020-02-24 02:32:44', '2020-02-24 12:07:41'),
	(6, '77', '06', '103', 'lampu LED', 20, '50%', '2020-02-24 02:40:40', '2020-02-24 02:40:40'),
	(7, '78', '04', '104', 'celana pendek', 4, '0', '2020-02-24 03:46:24', '2020-02-24 03:46:24');
/*!40000 ALTER TABLE `kupon` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.masterbrg
CREATE TABLE IF NOT EXISTS `masterbrg` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.masterbrg: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `masterbrg` DISABLE KEYS */;
INSERT INTO `masterbrg` (`id`, `kode`, `jenis`, `created_at`, `updated_at`) VALUES
	(1, '001', 'gadget', NULL, NULL),
	(2, '002', 'pakaian', NULL, NULL),
	(3, '003', 'kosmetik', NULL, NULL),
	(4, '004', 'sparepart', NULL, NULL),
	(5, '005', 'aksesoris', NULL, NULL);
/*!40000 ALTER TABLE `masterbrg` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.mastercus
CREATE TABLE IF NOT EXISTS `mastercus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.mastercus: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `mastercus` DISABLE KEYS */;
INSERT INTO `mastercus` (`id`, `kode`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
	(1, '101', 'denis', 'depok', NULL, NULL),
	(2, '102', 'rendy', 'bekasi', NULL, NULL),
	(3, '103', 'yuli', 'bandung', NULL, NULL),
	(4, '104', 'shintya', 'banten', NULL, NULL);
/*!40000 ALTER TABLE `mastercus` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.mastersupllier
CREATE TABLE IF NOT EXISTS `mastersupllier` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.mastersupllier: ~2 rows (lebih kurang)
/*!40000 ALTER TABLE `mastersupllier` DISABLE KEYS */;
INSERT INTO `mastersupllier` (`id`, `kode`, `nama`, `alamat`, `no_tlp`, `created_at`, `updated_at`) VALUES
	(1, '01', 'tono', 'jakarta', '081122546758', NULL, NULL),
	(2, '02', 'beny', 'bandung', '081254673882', NULL, NULL),
	(3, '03', 'ariel', 'surabaya', '082356783221', NULL, NULL);
/*!40000 ALTER TABLE `mastersupllier` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.migrations: ~22 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_02_13_040118_create_pegawai_table', 1),
	(5, '2020_02_21_065219_create_category_barang_table', 2),
	(6, '2020_02_21_065415_create_master_barang_table', 2),
	(7, '2020_02_21_065612_create_master_customer_table', 2),
	(8, '2020_02_21_065656_create_master_suplier_table', 2),
	(9, '2020_02_21_065732_create_kupon_table', 2),
	(10, '2020_02_21_065744_create_penjualan_table', 2),
	(11, '2020_02_21_065942_create_pembelian_table', 2),
	(12, '2020_02_21_072250_create_category_barang_table', 3),
	(13, '2020_02_21_074553_create_master_barang_table', 4),
	(14, '2020_02_21_082203_create_master_customer_table', 5),
	(15, '2020_02_21_083329_create_master_suplier_table', 6),
	(16, '2020_02_22_025502_create_masterbrg_table', 7),
	(17, '2020_02_22_030425_create_mastercus_table', 8),
	(18, '2020_02_22_034910_create_mastersupllier_table', 9),
	(19, '2020_02_22_043310_create_barang_table', 10),
	(20, '2020_02_22_044621_create_penjualan_table', 11),
	(21, '2020_02_22_051631_create_kupon_table', 12),
	(22, '2020_02_22_053626_create_kupon_table', 13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.pembelian
CREATE TABLE IF NOT EXISTS `pembelian` (
  `id` int(11) DEFAULT NULL,
  `id_penjualan` varchar(255) DEFAULT NULL,
  `id_kupon` varchar(255) DEFAULT NULL,
  `barang` varchar(10) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `Total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel fintegra.pembelian: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` (`id`, `id_penjualan`, `id_kupon`, `barang`, `harga`, `Total_bayar`) VALUES
	(NULL, '45', 'handphone', '1000000', 10, 10000000),
	(NULL, '46', 'laptop', '5000000', 15, 60000000),
	(NULL, '47', 'lampu LED', '250000', 20, 2500000),
	(NULL, '48', 'celana pendek', '75000', 4, 300000);
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.penjualan
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_penjualan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.penjualan: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` (`id`, `id_penjualan`, `barang`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
	(5, '11', 'handphone', '1000000', 10, NULL, NULL),
	(6, '12', 'laptop', '5000000', 15, NULL, NULL),
	(7, '15', 'lampu LED', '250000', 20, NULL, NULL),
	(8, '16', 'celana pendek', '75000', 4, NULL, NULL);
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;

-- membuang struktur untuk table fintegra.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel fintegra.users: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
