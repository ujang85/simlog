/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.3.22-MariaDB-1ubuntu1 : Database - sim_logistik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('admin','1',1592119916),
('admin','5',1563346703),
('user-bangsal','10',1597748842),
('user-bangsal','6',1578815278),
('user-bangsal','7',1578758869),
('user-bangsal','8',1578824480),
('user-bangsal','9',1583503953),
('user-biasa','4',1592119956);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
('/AdminModule/*',2,NULL,NULL,NULL,1576748159,1576748159),
('/AdminModule/default/*',2,NULL,NULL,NULL,1576748158,1576748158),
('/AdminModule/default/index',2,NULL,NULL,NULL,1576748162,1576748162),
('/aduan-alat-listrik/*',2,NULL,NULL,NULL,1578813758,1578813758),
('/aduan-alat-listrik/cetak',2,NULL,NULL,NULL,1578813759,1578813759),
('/aduan-alat-listrik/index',2,NULL,NULL,NULL,1578813760,1578813760),
('/aduan-alat-medis/*',2,NULL,NULL,NULL,1578799592,1578799592),
('/aduan-alat-medis/cetak',2,NULL,NULL,NULL,1578799593,1578799593),
('/aduan-alat-medis/create',2,NULL,NULL,NULL,1578799594,1578799594),
('/aduan-alat-medis/index',2,NULL,NULL,NULL,1578799602,1578799602),
('/aduan-alat-medis/update',2,NULL,NULL,NULL,1578799601,1578799601),
('/aduan-alat-nonmedis/*',2,NULL,NULL,NULL,1579008452,1579008452),
('/aduan-alat-nonmedis/cetak',2,NULL,NULL,NULL,1579008453,1579008453),
('/aduan-alat-nonmedis/create',2,NULL,NULL,NULL,1579008454,1579008454),
('/aduan-alat-nonmedis/index',2,NULL,NULL,NULL,1579008455,1579008455),
('/aduan-alat-nonmedis/update',2,NULL,NULL,NULL,1579008456,1579008456),
('/aduan-alat-sanitasi/*',2,NULL,NULL,NULL,1578825157,1578825157),
('/aduan-alat-sanitasi/index',2,NULL,NULL,NULL,1578825158,1578825158),
('/aduan-alat-sanitasi/update',2,NULL,NULL,NULL,1578825159,1578825159),
('/aduan-alat-sanitasi/view',2,NULL,NULL,NULL,1578825160,1578825160),
('/aduan-bangunan/index',2,NULL,NULL,NULL,1583594067,1583594067),
('/aduan-bangunan/perbaikan',2,NULL,NULL,NULL,1613809104,1613809104),
('/aduan-bangunan/update',2,NULL,NULL,NULL,1583594118,1583594118),
('/aduan-listrik/cetak',2,NULL,NULL,NULL,1613287727,1613287727),
('/aduan-listrik/index',2,NULL,NULL,NULL,1583595083,1583595083),
('/aduan-listrik/perbaikan',2,NULL,NULL,NULL,1583596664,1583596664),
('/aduan-listrik/update',2,NULL,NULL,NULL,1583595085,1583595085),
('/aduan-nonmedis/index',2,NULL,NULL,NULL,1583596121,1583596121),
('/aduan-nonmedis/perbaikan',2,NULL,NULL,NULL,1583596932,1583596932),
('/aduan-nonmedis/update',2,NULL,NULL,NULL,1583596122,1583596122),
('/aduan-sanitasi/index',2,NULL,NULL,NULL,1583596027,1583596027),
('/aduan-sanitasi/perbaikan',2,NULL,NULL,NULL,1583596828,1583596828),
('/aduan-sanitasi/update',2,NULL,NULL,NULL,1583596028,1583596028),
('/aduan/*',2,NULL,NULL,NULL,1578750045,1578750045),
('/aduan/bulk-delete',2,NULL,NULL,NULL,1578750056,1578750056),
('/aduan/cetak',2,NULL,NULL,NULL,1578750049,1578750049),
('/aduan/cetak2',2,NULL,NULL,NULL,1613287435,1613287435),
('/aduan/create',2,NULL,NULL,NULL,1578750051,1578750051),
('/aduan/delete',2,NULL,NULL,NULL,1578750052,1578750052),
('/aduan/index',2,NULL,NULL,NULL,1578750054,1578750054),
('/aduan/update',2,NULL,NULL,NULL,1578750055,1578750055),
('/aduan/view',2,NULL,NULL,NULL,1578750045,1578750045),
('/alat-listrik-pm/*',2,NULL,NULL,NULL,1582728692,1582728692),
('/alat-listrik-pm/index',2,NULL,NULL,NULL,1582728693,1582728693),
('/alat-listrik-pm/update',2,NULL,NULL,NULL,1582728694,1582728694),
('/alat-listrik-pm/view',2,NULL,NULL,NULL,1582728695,1582728695),
('/alat-listrik/*',2,NULL,NULL,NULL,1560410554,1560410554),
('/alat-listrik/bulk-delete',2,NULL,NULL,NULL,1560410555,1560410555),
('/alat-listrik/create',2,NULL,NULL,NULL,1560410556,1560410556),
('/alat-listrik/delete',2,NULL,NULL,NULL,1560410557,1560410557),
('/alat-listrik/get-alat',2,NULL,NULL,NULL,1578813735,1578813735),
('/alat-listrik/index',2,NULL,NULL,NULL,1560410558,1560410558),
('/alat-listrik/update',2,NULL,NULL,NULL,1560410559,1560410559),
('/alat-listrik/view',2,NULL,NULL,NULL,1560410559,1560410559),
('/alat-mebel/*',2,NULL,NULL,NULL,1560506973,1560506973),
('/alat-medis-kalibrasi/*',2,NULL,NULL,NULL,1582726455,1582726455),
('/alat-medis-kalibrasi/index',2,NULL,NULL,NULL,1582726450,1582726450),
('/alat-medis-kalibrasi/update',2,NULL,NULL,NULL,1582726452,1582726452),
('/alat-medis-kalibrasi/view',2,NULL,NULL,NULL,1582726454,1582726454),
('/alat-medis-pm/*',2,NULL,NULL,NULL,1582728325,1582728325),
('/alat-medis-pm/index',2,NULL,NULL,NULL,1582728328,1582728328),
('/alat-medis-pm/update',2,NULL,NULL,NULL,1582728329,1582728329),
('/alat-medis/*',2,NULL,NULL,NULL,1546138935,1546138935),
('/alat-medis/bulk-delete',2,NULL,NULL,NULL,1546138936,1546138936),
('/alat-medis/create',2,NULL,NULL,NULL,1546138937,1546138937),
('/alat-medis/delete',2,NULL,NULL,NULL,1546138938,1546138938),
('/alat-medis/get-alat',2,NULL,NULL,NULL,1556005469,1556005469),
('/alat-medis/index',2,NULL,NULL,NULL,1546138939,1546138939),
('/alat-medis/update',2,NULL,NULL,NULL,1546138940,1546138940),
('/alat-medis/view',2,NULL,NULL,NULL,1546138941,1546138941),
('/alat-nonmedis-pm/*',2,NULL,NULL,NULL,1582728764,1582728764),
('/alat-nonmedis-pm/index',2,NULL,NULL,NULL,1582728765,1582728765),
('/alat-nonmedis-pm/update',2,NULL,NULL,NULL,1582728766,1582728766),
('/alat-nonmedis-pm/view',2,NULL,NULL,NULL,1582728767,1582728767),
('/alat-rs/*',2,NULL,NULL,NULL,1560409830,1560409830),
('/alat-rs/bulk-delete',2,NULL,NULL,NULL,1560409831,1560409831),
('/alat-rs/create',2,NULL,NULL,NULL,1560409832,1560409832),
('/alat-rs/delete',2,NULL,NULL,NULL,1560409832,1560409832),
('/alat-rs/index',2,NULL,NULL,NULL,1560409834,1560409834),
('/alat-rs/update',2,NULL,NULL,NULL,1560409835,1560409835),
('/alat-rs/view',2,NULL,NULL,NULL,1560409835,1560409835),
('/alat-sanitasi-pm/*',2,NULL,NULL,NULL,1582728768,1582728768),
('/alat-sanitasi-pm/index',2,NULL,NULL,NULL,1582728769,1582728769),
('/alat-sanitasi-pm/update',2,NULL,NULL,NULL,1582728770,1582728770),
('/alat-sanitasi-pm/view',2,NULL,NULL,NULL,1582728770,1582728770),
('/alat-sanitasi/*',2,NULL,NULL,NULL,1560442061,1560442061),
('/alat-sanitasi/create',2,NULL,NULL,NULL,1582728776,1582728776),
('/alat-sanitasi/get-alat',2,NULL,NULL,NULL,1582728779,1582728779),
('/alat-sanitasi/get-alat2',2,NULL,NULL,NULL,1582728780,1582728780),
('/alat-sanitasi/index',2,NULL,NULL,NULL,1560442060,1560442060),
('/alat-sanitasi/view',2,NULL,NULL,NULL,1582728792,1582728792),
('/coba-servis/index',2,NULL,NULL,NULL,1583156489,1583156489),
('/data-gedung-pm/*',2,NULL,NULL,NULL,1582725791,1582725791),
('/data-gedung-pm/create',2,NULL,NULL,NULL,1582725792,1582725792),
('/data-gedung-pm/index',2,NULL,NULL,NULL,1582725793,1582725793),
('/data-gedung-pm/update',2,NULL,NULL,NULL,1582725793,1582725793),
('/data-gedung-pm/view',2,NULL,NULL,NULL,1582725795,1582725795),
('/data-gedung/*',2,NULL,NULL,NULL,1546141375,1546141375),
('/data-gedung/bulk-delete',2,NULL,NULL,NULL,1546141376,1546141376),
('/data-gedung/create',2,NULL,NULL,NULL,1546141377,1546141377),
('/data-gedung/delete',2,NULL,NULL,NULL,1546141378,1546141378),
('/data-gedung/index',2,NULL,NULL,NULL,1546141379,1546141379),
('/data-gedung/update',2,NULL,NULL,NULL,1546141380,1546141380),
('/data-gedung/view',2,NULL,NULL,NULL,1546141381,1546141381),
('/detail-km/*',2,NULL,NULL,NULL,1582725777,1582725777),
('/detail-km/create',2,NULL,NULL,NULL,1582725777,1582725777),
('/detail-km/delete',2,NULL,NULL,NULL,1582725779,1582725779),
('/detail-km/index',2,NULL,NULL,NULL,1582725780,1582725780),
('/detail-km/update',2,NULL,NULL,NULL,1582725781,1582725781),
('/detail-km/view',2,NULL,NULL,NULL,1582725782,1582725782),
('/gii/*',2,NULL,NULL,NULL,1542784770,1542784770),
('/gii/default/*',2,NULL,NULL,NULL,1542784771,1542784771),
('/gii/default/action',2,NULL,NULL,NULL,1542784772,1542784772),
('/gii/default/diff',2,NULL,NULL,NULL,1542784773,1542784773),
('/gii/default/index',2,NULL,NULL,NULL,1542784774,1542784774),
('/gii/default/preview',2,NULL,NULL,NULL,1542784775,1542784775),
('/gii/default/view',2,NULL,NULL,NULL,1542784777,1542784777),
('/gridview/*',2,NULL,NULL,NULL,1578750068,1578750068),
('/gridview/export/*',2,NULL,NULL,NULL,1546240950,1546240950),
('/gridview/export/download',2,NULL,NULL,NULL,1546240951,1546240951),
('/group-alat/*',2,NULL,NULL,NULL,1543201747,1543201747),
('/group-alat/create',2,NULL,NULL,NULL,1543201748,1543201748),
('/group-alat/delete',2,NULL,NULL,NULL,1543201750,1543201750),
('/group-alat/index',2,NULL,NULL,NULL,1543201751,1543201751),
('/group-alat/update',2,NULL,NULL,NULL,1543201752,1543201752),
('/group-alat/view',2,NULL,NULL,NULL,1543201753,1543201753),
('/histori-kl/*',2,NULL,NULL,NULL,1544061374,1544061374),
('/histori-kl/bulk-delete',2,NULL,NULL,NULL,1544061375,1544061375),
('/histori-kl/create',2,NULL,NULL,NULL,1544061377,1544061377),
('/histori-kl/delete',2,NULL,NULL,NULL,1544061377,1544061377),
('/histori-kl/index',2,NULL,NULL,NULL,1544061378,1544061378),
('/histori-kl/update',2,NULL,NULL,NULL,1544061379,1544061379),
('/histori-kl/view',2,NULL,NULL,NULL,1544061380,1544061380),
('/histori-pm/*',2,NULL,NULL,NULL,1543978646,1543978646),
('/histori-pm/create',2,NULL,NULL,NULL,1543978646,1543978646),
('/histori-pm/delete',2,NULL,NULL,NULL,1543978648,1543978648),
('/histori-pm/index',2,NULL,NULL,NULL,1543978648,1543978648),
('/histori-pm/update',2,NULL,NULL,NULL,1543978649,1543978649),
('/histori-pm/view',2,NULL,NULL,NULL,1543978650,1543978650),
('/jadwal-kalibrasi/index',2,NULL,NULL,NULL,1582727351,1582727351),
('/jadwal-kalibrasi/update',2,NULL,NULL,NULL,1582728220,1582728220),
('/jadwal-pm-gedung/*',2,NULL,NULL,NULL,1613650552,1613650552),
('/jadwal-pm-gedung/index',2,NULL,NULL,NULL,1582729693,1582729693),
('/jadwal-pm-gedung/view',2,NULL,NULL,NULL,1613650558,1613650558),
('/jadwal-pm-listrik/index',2,NULL,NULL,NULL,1582736592,1582736592),
('/jadwal-pm-listrik/update',2,NULL,NULL,NULL,1582736679,1582736679),
('/jadwal-pm-medis/*',2,NULL,NULL,NULL,1579181100,1579181100),
('/jadwal-pm-medis/create',2,NULL,NULL,NULL,1579181101,1579181101),
('/jadwal-pm-medis/index',2,NULL,NULL,NULL,1579181102,1579181102),
('/jadwal-pm-medis/update',2,NULL,NULL,NULL,1579181103,1579181103),
('/jadwal-pm-nonmedis/index',2,NULL,NULL,NULL,1583593882,1583593882),
('/jadwal-pm-nonmedis/update',2,NULL,NULL,NULL,1583593883,1583593883),
('/jadwal-pm-sanitasi/index',2,NULL,NULL,NULL,1583593758,1583593758),
('/jadwal-pm-sanitasi/update',2,NULL,NULL,NULL,1583593759,1583593759),
('/jadwal-pm/*',2,NULL,NULL,NULL,1579181356,1579181356),
('/jadwal-pm/create',2,NULL,NULL,NULL,1579181355,1579181355),
('/jadwal-pm/index',2,NULL,NULL,NULL,1579181358,1579181358),
('/jadwal-pm/update',2,NULL,NULL,NULL,1579181360,1579181360),
('/kalibrasi/index',2,NULL,NULL,NULL,1592229713,1592229713),
('/km-alat-medis/*',2,NULL,NULL,NULL,1579020007,1579020007),
('/km-alat-medis/create',2,NULL,NULL,NULL,1579020008,1579020008),
('/km-alat-medis/index',2,NULL,NULL,NULL,1579020009,1579020009),
('/km-alat-medis/update',2,NULL,NULL,NULL,1579020010,1579020010),
('/km/*',2,NULL,NULL,NULL,1556074659,1556074659),
('/km/create',2,NULL,NULL,NULL,1556074660,1556074660),
('/km/create-xx',2,NULL,NULL,NULL,1556074661,1556074661),
('/km/delete',2,NULL,NULL,NULL,1556074662,1556074662),
('/km/index',2,NULL,NULL,NULL,1556074664,1556074664),
('/km/update',2,NULL,NULL,NULL,1556074665,1556074665),
('/km/update-xx',2,NULL,NULL,NULL,1556074668,1556074668),
('/km/view',2,NULL,NULL,NULL,1556074669,1556074669),
('/komp-biaya/*',2,NULL,NULL,NULL,1543886342,1543886342),
('/komp-biaya/create',2,NULL,NULL,NULL,1543886344,1543886344),
('/komp-biaya/delete',2,NULL,NULL,NULL,1543886345,1543886345),
('/komp-biaya/index',2,NULL,NULL,NULL,1543886346,1543886346),
('/komp-biaya/update',2,NULL,NULL,NULL,1543886347,1543886347),
('/komp-biaya/view',2,NULL,NULL,NULL,1543886348,1543886348),
('/log-teknisi/*',2,NULL,NULL,NULL,1583923880,1583923880),
('/log-teknisi/create',2,NULL,NULL,NULL,1583923882,1583923882),
('/log-teknisi/delete',2,NULL,NULL,NULL,1583923883,1583923883),
('/log-teknisi/index',2,NULL,NULL,NULL,1583923884,1583923884),
('/log-teknisi/update',2,NULL,NULL,NULL,1583923885,1583923885),
('/log-teknisi/view',2,NULL,NULL,NULL,1583923886,1583923886),
('/mimin/*',2,NULL,NULL,NULL,1583425552,1583425552),
('/mimin/role/*',2,NULL,NULL,NULL,1583425554,1583425554),
('/mimin/role/create',2,NULL,NULL,NULL,1583425558,1583425558),
('/mimin/role/delete',2,NULL,NULL,NULL,1583425559,1583425559),
('/mimin/role/index',2,NULL,NULL,NULL,1583425563,1583425563),
('/mimin/role/permission',2,NULL,NULL,NULL,1583425564,1583425564),
('/mimin/role/update',2,NULL,NULL,NULL,1583425568,1583425568),
('/mimin/role/view',2,NULL,NULL,NULL,1583425569,1583425569),
('/mimin/route/*',2,NULL,NULL,NULL,1583425555,1583425555),
('/mimin/route/create',2,NULL,NULL,NULL,1583425557,1583425557),
('/mimin/route/delete',2,NULL,NULL,NULL,1583425559,1583425559),
('/mimin/route/generate',2,NULL,NULL,NULL,1583425562,1583425562),
('/mimin/route/index',2,NULL,NULL,NULL,1583425565,1583425565),
('/mimin/route/update',2,NULL,NULL,NULL,1583425567,1583425567),
('/mimin/route/view',2,NULL,NULL,NULL,1583425569,1583425569),
('/mimin/user/*',2,NULL,NULL,NULL,1583425556,1583425556),
('/mimin/user/create',2,NULL,NULL,NULL,1583425557,1583425557),
('/mimin/user/delete',2,NULL,NULL,NULL,1583425560,1583425560),
('/mimin/user/index',2,NULL,NULL,NULL,1583425561,1583425561),
('/mimin/user/update',2,NULL,NULL,NULL,1583425565,1583425565),
('/mimin/user/view',2,NULL,NULL,NULL,1583425566,1583425566),
('/pemakai/*',2,NULL,NULL,NULL,1543055944,1543055944),
('/pemakai/create',2,NULL,NULL,NULL,1543193436,1543193436),
('/pemakai/delete',2,NULL,NULL,NULL,1543193436,1543193436),
('/pemakai/index',2,NULL,NULL,NULL,1543055945,1543055945),
('/pemakai/update',2,NULL,NULL,NULL,1543193438,1543193438),
('/pemakai/view',2,NULL,NULL,NULL,1543055946,1543055946),
('/pm-listrik/*',2,NULL,NULL,NULL,1560649028,1560649028),
('/pm-sanitasi/*',2,NULL,NULL,NULL,1560922576,1560922576),
('/pm-sanitasi/bulk-delete',2,NULL,NULL,NULL,1560922579,1560922579),
('/pm-sanitasi/create',2,NULL,NULL,NULL,1560922580,1560922580),
('/pm-sanitasi/delete',2,NULL,NULL,NULL,1560922585,1560922585),
('/pm-sanitasi/index',2,NULL,NULL,NULL,1560922584,1560922584),
('/pm-sanitasi/update',2,NULL,NULL,NULL,1560922586,1560922586),
('/pm-sanitasi/view',2,NULL,NULL,NULL,1560922582,1560922582),
('/pm/*',2,NULL,NULL,NULL,1547013669,1547013669),
('/pm/bulk-delete',2,NULL,NULL,NULL,1547013670,1547013670),
('/pm/create',2,NULL,NULL,NULL,1547013671,1547013671),
('/pm/delete',2,NULL,NULL,NULL,1547013671,1547013671),
('/pm/index',2,NULL,NULL,NULL,1547013672,1547013672),
('/pm/update',2,NULL,NULL,NULL,1547013673,1547013673),
('/pm/view',2,NULL,NULL,NULL,1547013675,1547013675),
('/suplayer/*',2,NULL,NULL,NULL,1542815479,1542815479),
('/suplayer/create',2,NULL,NULL,NULL,1542815481,1542815481),
('/suplayer/delete',2,NULL,NULL,NULL,1542815483,1542815483),
('/suplayer/index',2,NULL,NULL,NULL,1542815485,1542815485),
('/suplayer/update',2,NULL,NULL,NULL,1542815486,1542815486),
('/suplayer/view',2,NULL,NULL,NULL,1542815488,1542815488),
('/tb-alat-rs/*',2,NULL,NULL,NULL,1543465191,1543465191),
('/tb-alat-rs/create',2,NULL,NULL,NULL,1543465192,1543465192),
('/tb-alat-rs/delete',2,NULL,NULL,NULL,1543465193,1543465193),
('/tb-alat-rs/index',2,NULL,NULL,NULL,1543465194,1543465194),
('/tb-alat-rs/update',2,NULL,NULL,NULL,1543465194,1543465194),
('/tb-alat-rs/view',2,NULL,NULL,NULL,1543465195,1543465195),
('/tb-pemakai/*',2,NULL,NULL,NULL,1542790055,1542790055),
('/tb-pemakai/create',2,NULL,NULL,NULL,1542790057,1542790057),
('/tb-pemakai/delete',2,NULL,NULL,NULL,1542790058,1542790058),
('/tb-pemakai/index',2,NULL,NULL,NULL,1542790059,1542790059),
('/tb-pemakai/update',2,NULL,NULL,NULL,1542790060,1542790060),
('/tb-pemakai/view',2,NULL,NULL,NULL,1542790061,1542790061),
('/tb-teknisi/*',2,NULL,NULL,NULL,1543659809,1543659809),
('/tb-teknisi/create',2,NULL,NULL,NULL,1543659811,1543659811),
('/tb-teknisi/delete',2,NULL,NULL,NULL,1543659812,1543659812),
('/tb-teknisi/index',2,NULL,NULL,NULL,1543659813,1543659813),
('/tb-teknisi/update',2,NULL,NULL,NULL,1543659814,1543659814),
('/tb-teknisi/view',2,NULL,NULL,NULL,1543659815,1543659815),
('/teknisi/*',2,NULL,NULL,NULL,1582725743,1582725743),
('/teknisi/create',2,NULL,NULL,NULL,1582725745,1582725745),
('/teknisi/delete',2,NULL,NULL,NULL,1582725746,1582725746),
('/teknisi/index',2,NULL,NULL,NULL,1582725747,1582725747),
('/teknisi/update',2,NULL,NULL,NULL,1582725748,1582725748),
('/teknisi/view',2,NULL,NULL,NULL,1582725749,1582725749),
('admin',1,NULL,NULL,NULL,1542784311,1613287735),
('user-bangsal',1,NULL,NULL,NULL,1578758777,1578813722),
('user-biasa',1,NULL,NULL,NULL,1556005458,1556005458);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values 
('admin','/AdminModule/*'),
('admin','/AdminModule/default/*'),
('admin','/AdminModule/default/index'),
('admin','/aduan-alat-listrik/*'),
('admin','/aduan-alat-listrik/cetak'),
('admin','/aduan-alat-listrik/index'),
('admin','/aduan-alat-medis/*'),
('admin','/aduan-alat-nonmedis/*'),
('admin','/aduan-alat-nonmedis/cetak'),
('admin','/aduan-alat-nonmedis/create'),
('admin','/aduan-alat-nonmedis/index'),
('admin','/aduan-alat-nonmedis/update'),
('admin','/aduan-alat-sanitasi/*'),
('admin','/aduan-alat-sanitasi/index'),
('admin','/aduan-alat-sanitasi/update'),
('admin','/aduan-alat-sanitasi/view'),
('admin','/aduan-bangunan/index'),
('admin','/aduan-bangunan/perbaikan'),
('admin','/aduan-bangunan/update'),
('admin','/aduan-listrik/cetak'),
('admin','/aduan-listrik/index'),
('admin','/aduan-listrik/perbaikan'),
('admin','/aduan-listrik/update'),
('admin','/aduan-nonmedis/index'),
('admin','/aduan-nonmedis/perbaikan'),
('admin','/aduan-nonmedis/update'),
('admin','/aduan-sanitasi/index'),
('admin','/aduan-sanitasi/perbaikan'),
('admin','/aduan-sanitasi/update'),
('admin','/aduan/*'),
('admin','/aduan/bulk-delete'),
('admin','/aduan/cetak'),
('admin','/aduan/cetak2'),
('admin','/aduan/create'),
('admin','/aduan/delete'),
('admin','/aduan/index'),
('admin','/aduan/update'),
('admin','/aduan/view'),
('admin','/alat-listrik-pm/*'),
('admin','/alat-listrik-pm/index'),
('admin','/alat-listrik-pm/update'),
('admin','/alat-listrik-pm/view'),
('admin','/alat-listrik/*'),
('admin','/alat-listrik/bulk-delete'),
('admin','/alat-listrik/create'),
('admin','/alat-listrik/delete'),
('admin','/alat-listrik/index'),
('admin','/alat-listrik/update'),
('admin','/alat-listrik/view'),
('admin','/alat-mebel/*'),
('admin','/alat-medis-kalibrasi/*'),
('admin','/alat-medis-kalibrasi/index'),
('admin','/alat-medis-kalibrasi/update'),
('admin','/alat-medis-kalibrasi/view'),
('admin','/alat-medis-pm/*'),
('admin','/alat-medis-pm/index'),
('admin','/alat-medis-pm/update'),
('admin','/alat-medis/*'),
('admin','/alat-medis/bulk-delete'),
('admin','/alat-medis/create'),
('admin','/alat-medis/delete'),
('admin','/alat-medis/index'),
('admin','/alat-medis/update'),
('admin','/alat-medis/view'),
('admin','/alat-nonmedis-pm/*'),
('admin','/alat-nonmedis-pm/index'),
('admin','/alat-nonmedis-pm/update'),
('admin','/alat-nonmedis-pm/view'),
('admin','/alat-rs/*'),
('admin','/alat-rs/bulk-delete'),
('admin','/alat-rs/create'),
('admin','/alat-rs/delete'),
('admin','/alat-rs/index'),
('admin','/alat-rs/update'),
('admin','/alat-rs/view'),
('admin','/alat-sanitasi-pm/*'),
('admin','/alat-sanitasi-pm/index'),
('admin','/alat-sanitasi-pm/update'),
('admin','/alat-sanitasi-pm/view'),
('admin','/alat-sanitasi/*'),
('admin','/alat-sanitasi/create'),
('admin','/alat-sanitasi/get-alat'),
('admin','/alat-sanitasi/get-alat2'),
('admin','/alat-sanitasi/index'),
('admin','/alat-sanitasi/view'),
('admin','/coba-servis/index'),
('admin','/data-gedung-pm/*'),
('admin','/data-gedung-pm/create'),
('admin','/data-gedung-pm/index'),
('admin','/data-gedung-pm/update'),
('admin','/data-gedung-pm/view'),
('admin','/data-gedung/*'),
('admin','/data-gedung/bulk-delete'),
('admin','/data-gedung/create'),
('admin','/data-gedung/delete'),
('admin','/data-gedung/index'),
('admin','/data-gedung/update'),
('admin','/data-gedung/view'),
('admin','/detail-km/*'),
('admin','/detail-km/create'),
('admin','/detail-km/delete'),
('admin','/detail-km/index'),
('admin','/detail-km/update'),
('admin','/detail-km/view'),
('admin','/gii/*'),
('admin','/gii/default/*'),
('admin','/gii/default/action'),
('admin','/gii/default/diff'),
('admin','/gii/default/index'),
('admin','/gii/default/preview'),
('admin','/gii/default/view'),
('admin','/gridview/*'),
('admin','/gridview/export/*'),
('admin','/gridview/export/download'),
('admin','/group-alat/*'),
('admin','/group-alat/create'),
('admin','/group-alat/delete'),
('admin','/group-alat/index'),
('admin','/group-alat/update'),
('admin','/group-alat/view'),
('admin','/histori-kl/*'),
('admin','/histori-kl/bulk-delete'),
('admin','/histori-kl/create'),
('admin','/histori-kl/delete'),
('admin','/histori-kl/index'),
('admin','/histori-kl/update'),
('admin','/histori-kl/view'),
('admin','/histori-pm/*'),
('admin','/histori-pm/create'),
('admin','/histori-pm/delete'),
('admin','/histori-pm/index'),
('admin','/histori-pm/update'),
('admin','/histori-pm/view'),
('admin','/jadwal-kalibrasi/index'),
('admin','/jadwal-kalibrasi/update'),
('admin','/jadwal-pm-gedung/*'),
('admin','/jadwal-pm-gedung/index'),
('admin','/jadwal-pm-gedung/view'),
('admin','/jadwal-pm-listrik/index'),
('admin','/jadwal-pm-listrik/update'),
('admin','/jadwal-pm-medis/*'),
('admin','/jadwal-pm-medis/create'),
('admin','/jadwal-pm-medis/index'),
('admin','/jadwal-pm-medis/update'),
('admin','/jadwal-pm-nonmedis/index'),
('admin','/jadwal-pm-nonmedis/update'),
('admin','/jadwal-pm-sanitasi/index'),
('admin','/jadwal-pm-sanitasi/update'),
('admin','/jadwal-pm/*'),
('admin','/jadwal-pm/create'),
('admin','/jadwal-pm/index'),
('admin','/jadwal-pm/update'),
('admin','/kalibrasi/index'),
('admin','/km-alat-medis/*'),
('admin','/km-alat-medis/create'),
('admin','/km-alat-medis/index'),
('admin','/km-alat-medis/update'),
('admin','/km/*'),
('admin','/km/create'),
('admin','/km/create-xx'),
('admin','/km/delete'),
('admin','/km/index'),
('admin','/km/update'),
('admin','/km/update-xx'),
('admin','/km/view'),
('admin','/komp-biaya/*'),
('admin','/komp-biaya/create'),
('admin','/komp-biaya/delete'),
('admin','/komp-biaya/index'),
('admin','/komp-biaya/update'),
('admin','/komp-biaya/view'),
('admin','/log-teknisi/*'),
('admin','/log-teknisi/create'),
('admin','/log-teknisi/delete'),
('admin','/log-teknisi/index'),
('admin','/log-teknisi/update'),
('admin','/log-teknisi/view'),
('admin','/mimin/*'),
('admin','/mimin/role/*'),
('admin','/mimin/role/create'),
('admin','/mimin/role/delete'),
('admin','/mimin/role/index'),
('admin','/mimin/role/permission'),
('admin','/mimin/role/update'),
('admin','/mimin/role/view'),
('admin','/mimin/route/*'),
('admin','/mimin/route/create'),
('admin','/mimin/route/delete'),
('admin','/mimin/route/generate'),
('admin','/mimin/route/index'),
('admin','/mimin/route/update'),
('admin','/mimin/route/view'),
('admin','/mimin/user/*'),
('admin','/mimin/user/create'),
('admin','/mimin/user/delete'),
('admin','/mimin/user/index'),
('admin','/mimin/user/update'),
('admin','/mimin/user/view'),
('admin','/pemakai/*'),
('admin','/pemakai/create'),
('admin','/pemakai/delete'),
('admin','/pemakai/index'),
('admin','/pemakai/update'),
('admin','/pemakai/view'),
('admin','/pm-listrik/*'),
('admin','/pm-sanitasi/*'),
('admin','/pm-sanitasi/bulk-delete'),
('admin','/pm-sanitasi/create'),
('admin','/pm-sanitasi/delete'),
('admin','/pm-sanitasi/index'),
('admin','/pm-sanitasi/update'),
('admin','/pm-sanitasi/view'),
('admin','/pm/*'),
('admin','/pm/bulk-delete'),
('admin','/pm/create'),
('admin','/pm/delete'),
('admin','/pm/index'),
('admin','/pm/update'),
('admin','/pm/view'),
('admin','/suplayer/*'),
('admin','/suplayer/create'),
('admin','/suplayer/delete'),
('admin','/suplayer/index'),
('admin','/suplayer/update'),
('admin','/suplayer/view'),
('admin','/tb-alat-rs/*'),
('admin','/tb-alat-rs/create'),
('admin','/tb-alat-rs/delete'),
('admin','/tb-alat-rs/index'),
('admin','/tb-alat-rs/update'),
('admin','/tb-alat-rs/view'),
('admin','/tb-pemakai/*'),
('admin','/tb-teknisi/*'),
('admin','/tb-teknisi/create'),
('admin','/tb-teknisi/delete'),
('admin','/tb-teknisi/index'),
('admin','/tb-teknisi/update'),
('admin','/tb-teknisi/view'),
('admin','/teknisi/*'),
('admin','/teknisi/create'),
('admin','/teknisi/delete'),
('admin','/teknisi/index'),
('admin','/teknisi/update'),
('admin','/teknisi/view'),
('user-bangsal','/aduan-alat-listrik/*'),
('user-bangsal','/aduan-alat-listrik/cetak'),
('user-bangsal','/aduan-alat-listrik/index'),
('user-bangsal','/aduan-alat-medis/*'),
('user-bangsal','/aduan-alat-medis/cetak'),
('user-bangsal','/aduan-alat-medis/create'),
('user-bangsal','/aduan-alat-medis/index'),
('user-bangsal','/aduan-alat-medis/update'),
('user-bangsal','/aduan-alat-nonmedis/*'),
('user-bangsal','/aduan-alat-nonmedis/cetak'),
('user-bangsal','/aduan-alat-nonmedis/create'),
('user-bangsal','/aduan-alat-nonmedis/index'),
('user-bangsal','/aduan-alat-nonmedis/update'),
('user-bangsal','/aduan-alat-sanitasi/*'),
('user-bangsal','/aduan-alat-sanitasi/index'),
('user-bangsal','/aduan-alat-sanitasi/update'),
('user-bangsal','/aduan-alat-sanitasi/view'),
('user-bangsal','/aduan/cetak'),
('user-bangsal','/aduan/create'),
('user-bangsal','/aduan/index'),
('user-bangsal','/aduan/view'),
('user-bangsal','/alat-listrik/index'),
('user-bangsal','/alat-medis/index'),
('user-bangsal','/alat-medis/update'),
('user-bangsal','/alat-medis/view'),
('user-biasa','/alat-medis/*'),
('user-biasa','/alat-medis/bulk-delete'),
('user-biasa','/alat-medis/create'),
('user-biasa','/alat-medis/delete'),
('user-biasa','/alat-medis/get-alat'),
('user-biasa','/alat-medis/index'),
('user-biasa','/alat-medis/update'),
('user-biasa','/alat-medis/view');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

/*Table structure for table `brg_keluar` */

DROP TABLE IF EXISTS `brg_keluar`;

CREATE TABLE `brg_keluar` (
  `id_keluar` int(10) NOT NULL AUTO_INCREMENT,
  `nota_keluar` varchar(100) DEFAULT '0',
  `id_barang_keluar` int(5) DEFAULT NULL,
  `qty_keluar` int(3) DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `unit` int(5) DEFAULT NULL,
  `pengebon2` varchar(50) DEFAULT NULL,
  `kode_user2` int(3) DEFAULT NULL,
  `kode_trans` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_keluar`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `brg_keluar` */

insert  into `brg_keluar`(`id_keluar`,`nota_keluar`,`id_barang_keluar`,`qty_keluar`,`tgl_keluar`,`jam_keluar`,`unit`,`pengebon2`,`kode_user2`,`kode_trans`) values 
(1,'out54455',1,12,'2021-07-07','17:18:15',11,'Untung',2,5),
(2,'out544',3,20,'2021-07-07','17:26:15',4,'Budi',2,6);

/*Table structure for table `brg_masuk` */

DROP TABLE IF EXISTS `brg_masuk`;

CREATE TABLE `brg_masuk` (
  `id_masuk` int(10) NOT NULL AUTO_INCREMENT,
  `no_nota` varchar(100) DEFAULT '0',
  `id_barang_masuk` int(5) DEFAULT NULL,
  `qty_masuk` int(3) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `kd_suplayer` int(5) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `kode_user` int(3) DEFAULT NULL,
  `id_trans` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_masuk`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `brg_masuk` */

insert  into `brg_masuk`(`id_masuk`,`no_nota`,`id_barang_masuk`,`qty_masuk`,`tgl_masuk`,`jam_masuk`,`kd_suplayer`,`harga`,`kode_user`,`id_trans`) values 
(1,'w233343',1,10,'2021-07-06',NULL,69,9000000,1,1),
(2,'r444454',3,200,'2021-07-06',NULL,41,150000,1,2),
(3,'fdfr44',2,21,'2021-07-15','22:48:25',4,300000,1,3),
(4,'kc24445454',3,230,'2021-07-07','16:43:45',3,30000,1,4);

/*Table structure for table `bulan` */

DROP TABLE IF EXISTS `bulan`;

CREATE TABLE `bulan` (
  `id_bulan` int(11) NOT NULL AUTO_INCREMENT,
  `bulan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_bulan`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `bulan` */

insert  into `bulan`(`id_bulan`,`bulan`) values 
(1,'Januari'),
(2,'Februari'),
(3,'Maret'),
(4,'April'),
(5,'Mei'),
(6,'Juni'),
(7,'Juli'),
(8,'Agustus'),
(9,'September'),
(10,'Oktober'),
(11,'Nopember'),
(12,'Desember');

/*Table structure for table `group_alat` */

DROP TABLE IF EXISTS `group_alat`;

CREATE TABLE `group_alat` (
  `id_group` int(3) NOT NULL AUTO_INCREMENT,
  `kode_group` varchar(20) DEFAULT NULL,
  `nama_group` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `group_alat` */

insert  into `group_alat`(`id_group`,`kode_group`,`nama_group`) values 
(1,'O2','GAS OKSIGEN'),
(2,'NO2','GAS NITROGEN');

/*Table structure for table `jenis_brg` */

DROP TABLE IF EXISTS `jenis_brg`;

CREATE TABLE `jenis_brg` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `jenis_barang` varchar(100) DEFAULT NULL,
  `kode_jenis` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `jenis_brg` */

insert  into `jenis_brg`(`id`,`jenis_barang`,`kode_jenis`) values 
(1,'Oksigen Cair',NULL),
(2,'Oksigen Tabung sedang',NULL),
(3,'Oksigen tabung kecil',NULL);

/*Table structure for table `master_barang` */

DROP TABLE IF EXISTS `master_barang`;

CREATE TABLE `master_barang` (
  `id_brg` int(5) NOT NULL AUTO_INCREMENT,
  `kode_brg` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `merk_type` varchar(100) DEFAULT NULL,
  `jns` int(3) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `stok_min` int(10) DEFAULT 0,
  `group_alat` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_brg`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `master_barang` */

insert  into `master_barang`(`id_brg`,`kode_brg`,`nama_barang`,`merk_type`,`jns`,`satuan`,`stok_min`,`group_alat`) values 
(1,'LNG-01','oksigen cair','samator',1,'2',0,1),
(2,'TB-01','Oksigen Tabung Sedang','samator',2,'1',0,1),
(3,'TB-02','Oksigen Tabung Kecil','Samator',3,'1',0,1);

/*Table structure for table `pemakai` */

DROP TABLE IF EXISTS `pemakai`;

CREATE TABLE `pemakai` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) DEFAULT NULL,
  `hapus` enum('T','Y') DEFAULT 'T',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `pemakai` */

insert  into `pemakai`(`id`,`user`,`hapus`) values 
(1,'Sentral Rumah Sakit','T'),
(2,'00','T'),
(3,'Amarta','T'),
(4,'Anesteshi','T'),
(5,'Cendrawasih','T'),
(6,'CSSD','T'),
(7,'Farmasi','T'),
(8,'HD','T'),
(9,'IBS','T'),
(10,'ICC','T'),
(11,'ICCU','T'),
(12,'ICU','T'),
(13,'IKR','T'),
(14,'IMP','T'),
(15,'Inst. PA','T'),
(16,'INST. PK','T'),
(17,'IPSRS','T'),
(18,'IRD','T'),
(19,'IRJ','T'),
(20,'IRM','T'),
(21,'Irna I','T'),
(22,'Irna II','T'),
(23,'Irna III','T'),
(24,'Irna IV','T'),
(25,'Irna V','T'),
(26,'Kontap','T'),
(27,'ODC','T'),
(28,'PICU','T'),
(29,'Pilih User','T'),
(30,'PJT','T'),
(31,'Radiologi','T'),
(32,'Radiologi teraphy','T'),
(33,'Stroke','T'),
(34,'Tulip','T'),
(35,'UPTD','T');

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `satuan` */

insert  into `satuan`(`id`,`nama_satuan`) values 
(1,'TABUNG'),
(2,'TON'),
(3,'BUAH'),
(4,'PACK'),
(5,'BOKS'),
(6,'UNIT'),
(7,'PCS');

/*Table structure for table `suplayer` */

DROP TABLE IF EXISTS `suplayer`;

CREATE TABLE `suplayer` (
  `id_suplayer` int(5) NOT NULL AUTO_INCREMENT,
  `kd_suplayer` varchar(20) DEFAULT NULL,
  `nama_spl` varchar(130) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `sales` varchar(120) DEFAULT NULL,
  `telp_sales` varchar(30) DEFAULT NULL,
  `hapus` varchar(2) DEFAULT 'T',
  PRIMARY KEY (`id_suplayer`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

/*Data for the table `suplayer` */

insert  into `suplayer`(`id_suplayer`,`kd_suplayer`,`nama_spl`,`alamat`,`telp`,`sales`,`telp_sales`,`hapus`) values 
(1,'SP-1','-','alamat..','0000','nama sales','nama sales','T'),
(2,'SP-2','0','alamat..','0000','nama sales','nama sales','T'),
(3,'SP-3','AbadiNusa. PT','alamat..','0000','nama sales','nama sales','T'),
(4,'SP-4','ABM. PT','alamat..','0000','nama sales','nama sales','T'),
(5,'SP-5','Abuming. PT','alamat..','0000','nama sales','nama sales','T'),
(6,'SP-6','Advance Medicare Corpora. PT','alamat..','0000','nama sales','nama sales','T'),
(7,'SP-7','AMPM. PT','alamat..','0000','nama sales','nama sales','T'),
(8,'SP-8','Andini. PT','alamat..','0000','nama sales','nama sales','T'),
(9,'SP-9','anugrah argon medica. PT','alamat..','0000','nama sales','nama sales','T'),
(10,'SP-10','Atra Widiya Agung. PT','alamat..','0000','nama sales','nama sales','T'),
(11,'SP-11','B. Braun PT.','alamat..','0000','nama sales','nama sales','T'),
(12,'SP-12','Barang Umum','alamat..','0000','nama sales','nama sales','T'),
(13,'SP-13','Becton Dickinson Indonesia. PT','alamat..','0000','nama sales','nama sales','T'),
(14,'SP-14','Berca','alamat..','0000','nama sales','nama sales','T'),
(15,'SP-15','Bersaudara. PT','alamat..','0000','nama sales','nama sales','T'),
(16,'SP-16','Berto Bersaudara. PT','alamat..','0000','nama sales','nama sales','T'),
(17,'SP-17','Besindo. PT','alamat..','0000','nama sales','nama sales','T'),
(18,'SP-18','Beta Medica. PT','alamat..','0000','nama sales','nama sales','T'),
(19,'SP-19','Bina bakti. PT','alamat..','0000','nama sales','nama sales','T'),
(20,'SP-20','Biogen Scientific. PT','alamat..','0000','nama sales','nama sales','T'),
(21,'SP-21','Biotech Farma. PT','alamat..','0000','nama sales','nama sales','T'),
(22,'SP-22','Bisawi Tumbuh Selaras. PT','alamat..','0000','nama sales','nama sales','T'),
(23,'SP-23','BUR. PT','alamat..','0000','nama sales','nama sales','T'),
(24,'SP-24','Citra Medika Lestari','alamat..','0000','nama sales','nama sales','T'),
(25,'SP-25','Citra Vita Buana. CV','alamat..','0000','nama sales','nama sales','T'),
(26,'SP-26','Citra Vita Buana. PT','alamat..','0000','nama sales','nama sales','T'),
(27,'SP-27','Demka Sakti. PT','alamat..','0000','nama sales','nama sales','T'),
(28,'SP-28','Dos Ni Roha. PT','alamat..','0000','nama sales','nama sales','T'),
(29,'SP-29','Drager. PT','alamat..','0000','nama sales','nama sales','T'),
(30,'SP-30','Elo Karsa Utama. PT','alamat..','0000','nama sales','nama sales','T'),
(31,'SP-31','Enseval Medical Prima. PT','alamat..','0000','nama sales','nama sales','T'),
(32,'SP-32','Fajar Mas Murni. PT','alamat..','0000','nama sales','nama sales','T'),
(33,'SP-33','Fresenius. PT','alamat..','0000','nama sales','nama sales','T'),
(34,'SP-34','Galfa Foto','alamat..','0000','nama sales','nama sales','T'),
(35,'SP-35','Global Medika Utama. PT','alamat..','0000','nama sales','nama sales','T'),
(36,'SP-36','Global Selaras Medika. PT','alamat..','0000','nama sales','nama sales','T'),
(37,'SP-37','GPS. PT','alamat..','0000','nama sales','nama sales','T'),
(38,'SP-38','Graha Ismaya. PT','alamat..','0000','nama sales','nama sales','T'),
(39,'SP-39','Gratia Jaya Mulya. PT','alamat..','0000','nama sales','nama sales','T'),
(40,'SP-40','Hartec. PT','alamat..','0000','nama sales','nama sales','T'),
(41,'SP-41','IDM. PT','alamat..','0000','nama sales','nama sales','T'),
(42,'SP-42','IDS MED','alamat..','0000','nama sales','nama sales','T'),
(43,'SP-43','IHS. PT','alamat..','0000','nama sales','nama sales','T'),
(44,'SP-44','Indonusa Dua Medika. PT','alamat..','0000','nama sales','nama sales','T'),
(45,'SP-45','Indosopha. PT','alamat..','0000','nama sales','nama sales','T'),
(46,'SP-46','Jembatan Dua.PT','alamat..','0000','nama sales','nama sales','T'),
(47,'SP-47','Johnson and Johnson. PT','alamat..','0000','nama sales','nama sales','T'),
(48,'SP-48','Karindo Alkestron. PT','alamat..','0000','nama sales','nama sales','T'),
(49,'SP-49','Kurnia Abadi Selaras. PT','alamat..','0000','nama sales','nama sales','T'),
(50,'SP-50','Labora','alamat..','0000','nama sales','nama sales','T'),
(51,'SP-51','MAK. PT','alamat..','0000','nama sales','nama sales','T'),
(52,'SP-52','MBS. PT','alamat..','0000','nama sales','nama sales','T'),
(53,'SP-53','Medesa. PT','alamat..','0000','nama sales','nama sales','T'),
(54,'SP-54','Medika Jaya Raksa. PT','alamat..','0000','nama sales','nama sales','T'),
(55,'SP-55','Medika Jaya. PT','alamat..','0000','nama sales','nama sales','T'),
(56,'SP-56','Medison. PT','alamat..','0000','nama sales','nama sales','T'),
(57,'SP-57','Meditro. PT','alamat..','0000','nama sales','nama sales','T'),
(58,'SP-58','Megah Alkesindo. PT','alamat..','0000','nama sales','nama sales','T'),
(59,'SP-59','Mendjangan. PT','alamat..','0000','nama sales','nama sales','T'),
(60,'SP-60','Merapi. PT','alamat..','0000','nama sales','nama sales','T'),
(61,'SP-61','MHJ. PT','alamat..','0000','nama sales','nama sales','T'),
(62,'SP-62','Modern Photo','alamat..','0000','nama sales','nama sales','T'),
(63,'SP-63','Murti Indah Sentosa. PT','alamat..','0000','nama sales','nama sales','T'),
(64,'SP-64','New Modul International','alamat..','0000','nama sales','nama sales','T'),
(65,'SP-65','Nugra Karsera. PT','alamat..','0000','nama sales','nama sales','T'),
(66,'SP-66','Opmic PT','alamat..','0000','nama sales','nama sales','T'),
(67,'SP-67','Philips','alamat..','0000','nama sales','nama sales','T'),
(68,'SP-68','Pilih Nama Suplayer','alamat..','0000','nama sales','nama sales','T'),
(69,'SP-69','Prima Alkesindo Nusantara. PT','alamat..','0000','nama sales','nama sales','T'),
(70,'SP-70','Rajawali Nusantara. PT','alamat..','0000','nama sales','nama sales','T'),
(71,'SP-71','Sekarguna Medika. PT','alamat..','0000','nama sales','nama sales','T'),
(72,'SP-72','Sinabung. PT','alamat..','0000','nama sales','nama sales','T'),
(73,'SP-73','Sinko Prima Aloy','alamat..','0000','nama sales','nama sales','T'),
(74,'SP-74','SMO. PT','alamat..','0000','nama sales','nama sales','T'),
(75,'SP-75','Surgika Alkesindo. PT','alamat..','0000','nama sales','nama sales','T'),
(76,'SP-76','Surya Jaya Lestari. PT','alamat..','0000','nama sales','nama sales','T'),
(77,'SP-77','Tawada. PT','alamat..','0000','nama sales','nama sales','T'),
(78,'SP-78','Thomasong. PT','alamat..','0000','nama sales','nama sales','T'),
(79,'SP-79','Timur Raya Lestari. PT','alamat..','0000','nama sales','nama sales','T'),
(80,'SP-80','Tricipta Jaya. PT','alamat..','0000','nama sales','nama sales','T'),
(81,'SP-81','Usamed. PT','alamat..','0000','nama sales','nama sales','T'),
(82,'SP-82','Versacon Medical. PT','alamat..','0000','nama sales','nama sales','T'),
(83,'SP-83','Wego Medika. PT','alamat..','0000','nama sales','nama sales','T');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `tgl_transaksi` date DEFAULT NULL,
  `id_barang` int(5) DEFAULT NULL,
  `trans_masuk` int(4) DEFAULT 0,
  `trans_keluar` int(4) DEFAULT 0,
  `harga_beli` int(8) DEFAULT 0,
  `no_nota` varchar(20) DEFAULT '00',
  `suplayer_id` int(3) DEFAULT NULL,
  `pengebon` varchar(50) DEFAULT '0',
  `unit_bagian` int(3) DEFAULT NULL,
  `id_user` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id`,`tgl_transaksi`,`id_barang`,`trans_masuk`,`trans_keluar`,`harga_beli`,`no_nota`,`suplayer_id`,`pengebon`,`unit_bagian`,`id_user`) values 
(1,'2021-07-06',1,10,0,9000000,'w233343',69,'0',NULL,NULL),
(2,'2021-07-06',3,200,0,150000,'r444454',41,'0',NULL,NULL),
(3,'2021-07-15',2,21,0,300000,'fdfr44',4,'0',NULL,NULL),
(4,'2021-07-07',3,230,0,30000,'kc24445454',3,'0',NULL,NULL),
(5,'2021-07-07',1,0,12,0,'out54455',NULL,'Untung',11,NULL),
(6,'2021-07-07',3,0,20,0,'out544',NULL,'Budi',4,NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `unit` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`,`unit`) values 
(1,'ujang','-DGtfs-M2YPUhi6bbuVlN1poIwlA9Vqk','$2y$13$/Z46VzQcSvNa3I1CGS9iS.jt6gJLcELTmJC2LmbThJ90QWf4i/8qK',NULL,'uj@rsud.com',10,1528082314,1528082314,1),
(2,'test123','ZPdWJzVtMfR0S97Pv2hLrJpxwp8DYQU5','$2y$13$L6yQTj6D2XLEHg7B1t15HOrkyZtRKP/GgiswEHC.ZRdfe25VQBn4y',NULL,'test@rsud.com',10,1528179442,1528179442,1),
(3,'user2','VYzTeY2JpJDfz65P3WxujgCxhvP3TV5Y','$2y$13$74ihpKZFZxPWG8pxxinJjeMnyDDvc6FOcczihpVkqNvLvGl0.pGqy',NULL,'user2@rs.com',10,1541039752,1541039869,1),
(4,'dani','dyMs-kpSI6whbPhA7trBvd_uQvj97adP','$2y$13$5mJPYh0lMUMqX/b1/MaoXejtkONztbDNa2pY7ppX5qC65Q4ZNhjhm',NULL,'dani@gmail.com',10,1556005193,1582553079,1),
(5,'kuat','ywF8DfG8k9hhUUlZEDZyvdTOz00Gfxzs','$2y$13$.4zlgXYKAjqFFpx1/TeWA.w2bZxiLSrsPVIvxGT.wZw4VDVULpNsO',NULL,'kuat@yahoo.com',10,1563346488,1617266412,1),
(6,'kemo','T5hYb4PE6fRngefDvXQMh88c_FXddOrQ','$2y$13$SbWhfd7czsTZ9B7GeAbWluL.xvSXEsfwwhvDRzbrSCROj99tGCwZ6',NULL,'kemo@rs.com',10,1578757978,1578757978,6),
(7,'ird','oqvkQ0Klvf_5slRs4h2zo3tTgRhVcWnS','$2y$13$755V53tEkHFxhNDnBnXOkOIJ0IrDfsS2s2g2lg5xY7yCmWbkgWlpq',NULL,'ird@rs.com',10,1578758507,1592717425,18),
(8,'saputri','ynsp1sRbtRw7K5GlEL8wfe9yKyRRiVUr','$2y$13$nPsndS9oI58nanvrsQsHy.OdlsRjWyj4vwRay/SpGDP4S70ubzDIa',NULL,'edelweis@rs.com',10,1578823071,1578823071,3),
(9,'mawar2','bxcARny3cfKsUQbG8HYhbJOsDATQ3fP_','$2y$13$SziBaEsD3KBxIv4Cl/N1Yu25/OknMkjyOK7PJMizchj7WozRc25qy',NULL,'mawar2@gmail.com',10,1583503894,1583503894,2),
(10,'ibs','vPdRMohDZOhlqr5i361e9__SLJR7Xzfh','$2y$13$8FI4qeao/XYaV2zLvjQwmOjU4c6E4vm488yotNm1ae4vWQrQUJ3fO',NULL,'ibs@rs.com',10,1597748818,1597748818,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
