/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.6-MariaDB : Database - apotekku
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`apotekku` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `apotekku`;

/*Table structure for table `cetak_nota` */

DROP TABLE IF EXISTS `cetak_nota`;

CREATE TABLE `cetak_nota` (
  `no_nota` int(11) NOT NULL,
  `no_transaksi` varchar(10) DEFAULT NULL,
  `nama_obat` varchar(100) DEFAULT NULL,
  `harga_obat` int(11) DEFAULT NULL,
  `jumlah_beli` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  PRIMARY KEY (`no_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cetak_nota` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2019_11_26_122549_create_model_users_table',1),
(2,'2019_11_27_151453_create_kasirs_table',2);

/*Table structure for table `obat` */

DROP TABLE IF EXISTS `obat`;

CREATE TABLE `obat` (
  `kode_obat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_obat` varchar(100) NOT NULL,
  `jenis_obat` varchar(100) NOT NULL,
  `dosis_obat` varchar(50) NOT NULL,
  `kegunaan_obat` varchar(200) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  `stok_obat` int(11) NOT NULL,
  `kadaluarsa` date DEFAULT NULL,
  PRIMARY KEY (`kode_obat`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `obat` */

insert  into `obat`(`kode_obat`,`nama_obat`,`jenis_obat`,`dosis_obat`,`kegunaan_obat`,`harga_obat`,`stok_obat`,`kadaluarsa`) values 
(2,'neuralgin','tablet','200 mg','sakit kepala',10000,100,'2019-12-24'),
(4,'salep 88','salep','100mg','penyakit kulit',5000,2000,'2019-12-25'),
(6,'paramex','tablet','500mg','sakit kepala',2000,230,'2022-01-03'),
(7,'Antiplapet','tablet','300mg','Pereda nyeri',15000,120,'2023-12-31'),
(8,'Antisipkotik','Kapsul','50mg','obat luka',13000,30,'2020-12-19'),
(9,'Biotin','Kapsul','100mg','Pereda nyeri',2000,13,'2022-12-14'),
(10,'qqq','qq','11','qq',200,11,'2020-01-16'),
(11,'ww','ww','50mg','ww',200,12,'2020-01-22'),
(12,'ee','ee','50mg','ee',100,13,'2020-01-31'),
(13,'rr','rr','300mg','rr',300,14,'2020-01-29'),
(14,'tt','tt','500mg','tt',500,67,'2020-01-22'),
(15,'yy','yy','200 mg','yy',600,34,'2020-01-18'),
(16,'uu','uu','50mg','uu',700,45,'2020-01-29'),
(17,'ee','ee','50mg','ee',100,13,'2020-01-31');

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL AUTO_INCREMENT,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(50) NOT NULL,
  `pegawai_alamat` text NOT NULL,
  `pegawai_telepon` varchar(15) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `gaji_pokok` int(12) NOT NULL,
  `pegawai_jenisKelamin` varchar(20) NOT NULL,
  `pegawai_status` varchar(15) NOT NULL,
  `pegawai_tm` int(11) DEFAULT NULL,
  `pegawai_tl` int(11) DEFAULT NULL,
  `pegawai_thr` int(11) DEFAULT NULL,
  `pegawai_photo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pegawai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `pegawai` */

insert  into `pegawai`(`pegawai_id`,`pegawai_nama`,`pegawai_jabatan`,`pegawai_alamat`,`pegawai_telepon`,`pegawai_umur`,`gaji_pokok`,`pegawai_jenisKelamin`,`pegawai_status`,`pegawai_tm`,`pegawai_tl`,`pegawai_thr`,`pegawai_photo`) values 
(2,'Restu Saputra','Staff','Perum. SDN 2 Batu Putuk, RT 003, LK 2, Batu Putuk, Teluk Betung Utara Lampung, Indonesia','+6282186111476',30,2500000,'LAKI -LAKI','tetap',50000,40000,200000,NULL),
(3,'yogi','Apotekker','teluk betung','081262255899',23,3000000,'LAKI -LAKI','tetap',120000,150000,300000,NULL),
(4,'yogi','Apotekker','teluk betung','081262255899',23,3000000,'LAKI -LAKI','tetap',120000,150000,300000,NULL),
(5,'yogi','Apotekker','teluk betung','081262255899',23,3000000,'LAKI -LAKI','tetap',120000,150000,300000,NULL),
(6,'yogi','Apotekker','teluk betung','081262255899',23,3000000,'LAKI -LAKI','tetap',120000,150000,300000,NULL);

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `no_transaksi` varchar(10) NOT NULL,
  `tanggal` varchar(100) DEFAULT NULL,
  `kode_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  PRIMARY KEY (`no_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `penjualan` */

insert  into `penjualan`(`no_transaksi`,`tanggal`,`kode_obat`,`nama_obat`,`harga_obat`,`jumlah_beli`,`total_bayar`) values 
('123','123',1123,'res',200,2,2000);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`name`,`remember_token`,`level`,`created_at`,`updated_at`) values 
(3,'restusaputra','restusaputraxxxayu@gmail.com','$2y$10$Lfj0GCqM/2FAz.i9uCZqTeigrvE02HBHKLN4l4I0gPnyzdGw3raN6','Restu Saputra',NULL,'admin','2019-11-28 16:40:48','2019-11-28 16:40:48'),
(4,'rendriardinata','rianhidayat881@gmail.com','$2y$10$6q.dVZXJgzKLNf5U3eTCZewVQeFsQ8Hpo0fennJqt7OK7cNFPaQQS','Rendri Ardinata',NULL,'apoteker','2019-11-28 16:43:00','2019-11-28 16:43:00'),
(5,'rianhhhh','rian@gmail.com','$2y$10$QZhVhxALXSEytzswdHyGcuQ3L1iPDzmOap6lNJQ.87GaKjbu9qYdy','Rian Hidayat',NULL,'owner','2019-11-28 16:44:38','2019-11-28 16:44:38'),
(6,'yogiSanjaya','yogisanjaya@gmail.com','$2y$10$RkF8F1CNzTsND1EH9TyBE.ee6WGXhje6KaXvSnxVSilBRNUXA3sSe','yogi sanjaya',NULL,'kasir','2019-12-30 10:53:08','2019-12-30 10:53:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
