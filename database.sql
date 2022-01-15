-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'Kya6YOiVhYwrI53MDx1c8vC8HqDTuCZ2',1,'2021-10-18 07:55:51','2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2026-10-18 00:00:00','top-slider-image-1','27VEKFOB3Q5J','promotion/1.jpg','/products',0,1,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(2,'Top Slider Image 2','2026-10-18 00:00:00','top-slider-image-2','SLCZBWZXDSDO','promotion/2.jpg','/products',0,2,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(3,'Homepage middle 1','2026-10-18 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(4,'Homepage middle 2','2026-10-18 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(5,'Homepage middle 3','2026-10-18 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(6,'Homepage big 1','2026-10-18 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(7,'Homepage bottom small','2026-10-18 00:00:00','not_set','LN4MXUKCWSDY','promotion/7.jpg','/products',0,7,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(8,'Product sidebar','2026-10-18 00:00:00','product-sidebar','B621LIO3D4WH','promotion/8.jpg','/products',0,8,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(9,'Homepage big 2','2026-10-18 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ut qui est cupiditate et vel. Qui necessitatibus qui ut enim dignissimos aspernatur consequatur. Et doloremque facere doloremque quas optio quibusdam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(2,'Fashion',0,'A est nisi architecto cumque qui perferendis. Non sint sunt deleniti est. Sunt non quam quod omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(3,'Electronic',0,'Illo temporibus consequatur tempore sed rerum vitae sint. Quae ut sed ipsa consectetur id. Ullam maiores est praesentium animi dolorem. Qui quia consequatur aut perspiciatis nostrum nulla.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(4,'Commercial',0,'A est est saepe accusamus ut ipsam similique. Quam eum maiores ad laborum ratione in. Iusto sequi quod ratione a. In dolor rerum error ipsa fuga rerum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(5,'Thương mại điện tử',0,'Eos illum veritatis eaque porro. Sit non eum provident autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(6,'Fashion',0,'Sapiente sit corporis harum molestias quod. Suscipit quis quis sequi deserunt. Sed et illum non sit ad vitae perspiciatis reiciendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(7,'Electronic',0,'Commodi quia repudiandae quo eveniet. Sint quaerat saepe id non in fuga accusantium. Quis qui architecto doloremque rerum animi maxime officiis et. Omnis omnis amet tempore maiores.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(8,'Thương mại',0,'Doloribus fuga et placeat. Nisi iure nisi molestiae illum commodi et omnis. Et tempore laboriosam quia ea autem quibusdam doloremque. Voluptatum in non mollitia ea.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-10-18 07:55:46','2021-10-18 07:55:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Wade Kertzmann','lelah.beahan@example.com','678-602-9395','6054 Mraz Way Apt. 193\nPort Bill, WI 50366-5728','Voluptas esse quidem maiores labore.','Qui iure dolorem eum voluptas harum. Ipsa unde et eos. Ipsam excepturi eligendi suscipit. Ut assumenda sunt debitis fugiat beatae labore ipsum. Harum aut cum a iusto. Ex quo quia aliquid totam. Laboriosam sequi modi fugit rerum quia dolores minus iusto. Itaque et neque et. Ut beatae accusamus ut necessitatibus fugit quae nihil. Alias ipsa aspernatur cumque temporibus accusantium rerum optio.','read','2021-10-18 07:55:38','2021-10-18 07:55:38'),(2,'Nola Hettinger','goldner.waylon@example.com','989.840.3617','3809 Isabella Point Apt. 890\nNew Estrellatown, RI 35721-4378','Quo delectus quisquam tenetur ad est.','Aut praesentium molestias tempora aperiam. Sequi optio ipsa perferendis quod. Nemo id sit dolorum distinctio. Fugit rerum fugiat non dolor qui. Et laboriosam autem ut dolore dolores reiciendis consequatur. Nisi et et delectus omnis incidunt velit voluptatem. Libero alias sunt debitis et laborum molestiae. Ut at officiis voluptates quia itaque veritatis hic. Iste quo nostrum dolores perferendis. Iusto ex sunt doloribus saepe.','read','2021-10-18 07:55:38','2021-10-18 07:55:38'),(3,'Ilene Larkin','jacobi.angie@example.org','(918) 305-4052','80885 Erwin Expressway Suite 743\nOberbrunnerstad, NC 67035-3064','Illo id nisi quos ut.','Accusantium enim porro exercitationem officia. Ipsa consectetur eveniet ullam omnis voluptates eveniet. Qui optio et quod. Cum quaerat numquam nulla ratione ea. Corrupti a quasi id eaque soluta. Ab vel illum doloribus optio soluta ut. Praesentium consequatur dolorem quia tempora neque officia praesentium. Adipisci corrupti non aperiam et accusantium. Porro quaerat harum animi consectetur eius nobis quidem labore. Ea quos deleniti veritatis aut eaque.','unread','2021-10-18 07:55:38','2021-10-18 07:55:38'),(4,'Garfield Mann','lexus.dickens@example.org','(850) 306-8182','757 Kody Stream\nMeggieville, AK 77183','Dolore dolore quia saepe sit.','Consectetur minima praesentium quia praesentium ut. Laborum omnis rem illo repudiandae voluptas earum. Accusantium sunt nostrum a voluptas cumque accusamus vel expedita. Et hic dignissimos non et ipsam qui. Inventore aperiam dolore culpa consequatur quibusdam sed. Voluptatem maxime et omnis animi. Eligendi doloribus quidem velit voluptates est a ut. Voluptas sed pariatur eos aspernatur. Autem animi eos ut et. Autem quo facilis ut debitis quam odit autem. Non dignissimos similique sit nostrum.','unread','2021-10-18 07:55:38','2021-10-18 07:55:38'),(5,'Dr. Elvis Brekke II','kunze.vivien@example.org','+1.272.206.2776','2286 Omer Plain\nRebeccaborough, MA 72098-0657','Ratione dolorem sapiente voluptate placeat est.','Provident a sequi facere aut architecto totam. Omnis est temporibus at libero aut. Laboriosam nulla quae optio sit totam. Voluptas corrupti assumenda nam quos dolore. Sit molestias et corporis ut non et. Id dolore aperiam ipsum dicta. Nulla rerum aut quidem explicabo ab officiis voluptatum et.','read','2021-10-18 07:55:38','2021-10-18 07:55:38'),(6,'Jaylen Stanton','emanuel59@example.com','681-798-8539','569 Dorian Camp\nStokeschester, AK 22719-9268','Nesciunt enim et suscipit quasi vitae quia.','Magni nobis omnis necessitatibus eaque. Enim molestiae illo consequatur fuga magnam earum magnam. Non explicabo sunt molestiae et dolorum sed. Voluptates hic vero perferendis. Sapiente aut architecto velit in commodi blanditiis. Dolorem quasi et id mollitia molestiae et inventore. Et aut expedita dignissimos cum atque. Ut consequatur facilis sit nemo. Exercitationem molestias velit dolorem et aliquid odio voluptas. Numquam placeat neque qui sed hic et et.','read','2021-10-18 07:55:38','2021-10-18 07:55:38'),(7,'Prof. Albina Schumm','okling@example.org','+1.630.883.9505','49788 Batz Course Apt. 375\nGianniside, WI 02940','Consequatur cumque et alias voluptas.','Ut pariatur aut earum qui. Modi iste molestias commodi officia. Laborum id nobis quo officiis. In praesentium doloremque consectetur maxime dolores. Aut modi dignissimos aut consequuntur harum optio. Dignissimos cumque vel et consequatur voluptatem. Vel facilis repellat reiciendis explicabo. Saepe vitae aut dolorum temporibus sint id.','read','2021-10-18 07:55:38','2021-10-18 07:55:38'),(8,'Denis Koch','joseph.hudson@example.net','1-678-653-0433','22793 Langworth Parkway Apt. 103\nNorth Leliafort, TN 00102','Dolor est minus rerum saepe nesciunt asperiores.','Quia modi ut molestiae vel molestiae. Fuga nihil est soluta ea incidunt eligendi ut. Est magnam dolorem hic quas perspiciatis sequi ratione. Ullam voluptatem est sed delectus. Soluta nobis praesentium repellat nobis veniam. Quisquam eos optio quo vel veritatis quo corrupti. Consectetur qui nisi sit nihil rerum molestiae.','unread','2021-10-18 07:55:38','2021-10-18 07:55:38'),(9,'Rossie Zemlak','imedhurst@example.com','540-945-5962','7227 Elza Street\nPort Luciano, AK 69426-4334','Itaque aut nihil libero ea debitis laudantium.','Delectus corporis sed autem velit facere optio. Laboriosam nulla consequatur quo enim. Voluptas iure quibusdam facere iste voluptatum ut. Doloremque earum impedit qui autem quod explicabo debitis. Debitis accusamus consequatur dolorem nesciunt quod. Consequatur molestias commodi numquam nihil accusantium. Rem consequatur mollitia et numquam expedita.','read','2021-10-18 07:55:38','2021-10-18 07:55:38'),(10,'Skyla Sporer','zelma.lockman@example.com','+16514319756','918 Myrtie Course\nLake Braxton, TN 51618-4201','Qui inventore nihil deserunt ab eos qui.','Ut quisquam vero sed. Ullam qui et dolor aut molestias laudantium nihil. Incidunt sequi vitae incidunt dolorum cum. Voluptates delectus soluta harum deleniti sint est eaque. Provident eum sunt inventore ab quam. Autem quos hic maiores ut porro. Animi distinctio facere et hic beatae aut provident iure. Suscipit illum eius omnis nihil sed qui. Quia sunt perspiciatis aut atque porro blanditiis. Qui et dolor ab vel quidem nulla repudiandae. Quia non dolore accusantium minima quos sed.','unread','2021-10-18 07:55:38','2021-10-18 07:55:38');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2021-10-18 07:55:09','2021-10-18 07:55:09');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `decimals` tinyint(3) unsigned DEFAULT 0,
  `order` int(10) unsigned DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(2,'EUR','€',0,2,1,0,0.84,'2021-10-18 07:55:09','2021-10-18 07:55:09'),(3,'VND','₫',0,0,2,0,23203,'2021-10-18 07:55:09','2021-10-18 07:55:09');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Mr. Jan Dibbert','customer@botble.com','+17323505294','GA','South Carolina','Bauchview','912 West Pine Suite 901',1,1,'2021-10-18 07:55:35','2021-10-18 07:55:35','31695'),(2,'Mr. Jan Dibbert','customer@botble.com','+15319986476','MG','North Dakota','North Oralborough','53443 Altenwerth Shoals Suite 172',1,0,'2021-10-18 07:55:35','2021-10-18 07:55:35','65335-1257'),(3,'Ms. Clotilde Watsica V','vendor@botble.com','+18011573499','KE','Kentucky','Schillerville','3625 Leilani Fields',2,1,'2021-10-18 07:55:35','2021-10-18 07:55:35','49819-9769'),(4,'Ms. Clotilde Watsica V','vendor@botble.com','+19089650456','TK','Michigan','Marcellaberg','828 Dewitt Point',2,0,'2021-10-18 07:55:35','2021-10-18 07:55:35','63108'),(5,'Mr. Gilbert Johnson','reichert.antwon@example.org','+16784331100','IR','Michigan','Wilsonton','52169 Susana Passage',3,1,'2021-10-18 07:55:35','2021-10-18 07:55:35','84492-7114'),(6,'Dr. Jake Stiedemann III','kenny.farrell@example.net','+16014603404','UY','Oklahoma','Jerrellfort','9895 Ferry Ridges',4,1,'2021-10-18 07:55:36','2021-10-18 07:55:36','98302'),(7,'Eleanore Cremin','ckrajcik@example.org','+19728557247','SE','North Dakota','Mistytown','8098 Joanny Meadows',5,1,'2021-10-18 07:55:36','2021-10-18 07:55:36','15769'),(8,'Sammy Kunde I','sabernathy@example.org','+13863489860','SI','Virginia','Lake Nathan','28877 Kaitlyn Crescent',6,1,'2021-10-18 07:55:36','2021-10-18 07:55:36','13815-8817'),(9,'Roxane Kuhlman','sipes.roberto@example.org','+14328791602','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',7,1,'2021-10-18 07:55:37','2021-10-18 07:55:37','99960'),(10,'Thalia Brown','jreichert@example.com','+12312225240','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',8,1,'2021-10-18 07:55:37','2021-10-18 07:55:37','34113-2232'),(11,'Darron Feest II','olangosh@example.com','+17328265758','DM','New York','Barrowsside','2020 Nick Station Suite 627',9,1,'2021-10-18 07:55:37','2021-10-18 07:55:37','27663'),(12,'Jany Cremin','ukutch@example.net','+14247608388','JO','New Hampshire','North Allene','371 Avis Hollow',10,1,'2021-10-18 07:55:38','2021-10-18 07:55:38','71199');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Mr. Jan Dibbert','customer@botble.com','$2y$10$p9GXrzWXVY7KrN6curAhReaWxgbbR6Rww0MLGih1LNd2SmxBl68s.','customers/9.jpg',NULL,'+16518482762',NULL,'2021-10-18 07:55:35','2021-10-18 07:55:35','2021-10-18 14:55:35',NULL,'activated',0,NULL),(2,'Ms. Clotilde Watsica V','vendor@botble.com','$2y$10$LmwIs84ey8zylORDkYC3kumjIpZ.mow6h3mxzPEEwPduAoPLrpVbS','customers/6.jpg',NULL,'+18303149965',NULL,'2021-10-18 07:55:35','2021-10-18 07:55:59','2021-10-18 14:55:35',NULL,'activated',1,'2021-10-18 14:55:59'),(3,'Mr. Gilbert Johnson','reichert.antwon@example.org','$2y$10$ZOyGlc9j8gaILZIbcP0Yp.yUBrA2GczrH11Tcm8r4P/pZlmiTLBDe','customers/1.jpg',NULL,'+18029169164',NULL,'2021-10-18 07:55:35','2021-10-18 07:55:35','2021-10-18 14:55:35',NULL,'activated',0,NULL),(4,'Dr. Jake Stiedemann III','kenny.farrell@example.net','$2y$10$w1rqKfn3tBmXsjynKXKoCO8//AZVSy/LiGJZHcVZAAAEm4mpyZvlq','customers/2.jpg',NULL,'+17624298959',NULL,'2021-10-18 07:55:36','2021-10-18 07:55:59','2021-10-18 14:55:36',NULL,'activated',1,'2021-10-18 14:55:59'),(5,'Eleanore Cremin','ckrajcik@example.org','$2y$10$tbgxEUje.tQVRBQ5Oq3ud.alLPss6tLKBU/6zJPioISSE0HMSHqaq','customers/3.jpg',NULL,'+17434803618',NULL,'2021-10-18 07:55:36','2021-10-18 07:56:00','2021-10-18 14:55:36',NULL,'activated',1,'2021-10-18 14:56:00'),(6,'Sammy Kunde I','sabernathy@example.org','$2y$10$2nXz0kmVKM6NUD2by52z.uSuwXQkBiTdsU14652FOhZlrlk43pjU6','customers/4.jpg',NULL,'+17258838096',NULL,'2021-10-18 07:55:36','2021-10-18 07:56:00','2021-10-18 14:55:36',NULL,'activated',1,'2021-10-18 14:56:00'),(7,'Roxane Kuhlman','sipes.roberto@example.org','$2y$10$gijtNMOvGD.H5Wyx9uqym.6NejbevjBsiCdRs7rDwzcfMeCYODi6q','customers/5.jpg',NULL,'+12403290895',NULL,'2021-10-18 07:55:37','2021-10-18 07:55:37','2021-10-18 14:55:37',NULL,'activated',0,NULL),(8,'Thalia Brown','jreichert@example.com','$2y$10$WJ4cWSj5MQEx0epv6n4I4udL1KF8oGrBg/qNv/8nQSVJ4fZtZUPE6','customers/6.jpg',NULL,'+17268640890',NULL,'2021-10-18 07:55:37','2021-10-18 07:55:37','2021-10-18 14:55:37',NULL,'activated',0,NULL),(9,'Darron Feest II','olangosh@example.com','$2y$10$UPufUaPouEkVap/RIcccaeg6A61rY2lI9aWFxiYb.AawJKtmGy2fG','customers/7.jpg',NULL,'+17314528597',NULL,'2021-10-18 07:55:37','2021-10-18 07:56:00','2021-10-18 14:55:37',NULL,'activated',1,'2021-10-18 14:56:00'),(10,'Jany Cremin','ukutch@example.net','$2y$10$Mhh/drK6ITIPQnQOHymOc.0dfgdm2GeNbhG38P7q.XWUmhIZoSMpa','customers/8.jpg',NULL,'+18302551905',NULL,'2021-10-18 07:55:38','2021-10-18 07:55:38','2021-10-18 14:55:38',NULL,'activated',0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_collection_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) unsigned NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `sold` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,40.9275,14,5),(1,2,29.97,17,2),(1,3,12.4,8,1),(1,4,326.1292,17,5),(1,5,620.5,6,4),(1,6,172.8,19,5),(1,7,324,9,2),(1,8,426.3638,10,5),(1,9,434.28,7,3),(1,10,642.72,8,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2021-11-17 00:00:00','published','2021-10-18 07:55:38','2021-10-18 07:55:38');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',1,'31695'),(2,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',2,'31695'),(3,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',3,'34113-2232'),(4,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',4,'34113-2232'),(5,'Roxane Kuhlman','+14328791602','sipes.roberto@example.org','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',5,'99960'),(6,'Roxane Kuhlman','+14328791602','sipes.roberto@example.org','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',6,'99960'),(7,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',7,'71199'),(8,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',8,'71199'),(9,'Roxane Kuhlman','+14328791602','sipes.roberto@example.org','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',9,'99960'),(10,'Roxane Kuhlman','+14328791602','sipes.roberto@example.org','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',10,'99960'),(11,'Roxane Kuhlman','+14328791602','sipes.roberto@example.org','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',11,'99960'),(12,'Roxane Kuhlman','+14328791602','sipes.roberto@example.org','CG','New Mexico','South Sedrick','9851 Funk Square Suite 790',12,'99960'),(13,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',13,'31695'),(14,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',14,'31695'),(15,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',15,'34113-2232'),(16,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',16,'34113-2232'),(17,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',17,'34113-2232'),(18,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',18,'31695'),(19,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',19,'31695'),(20,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',20,'71199'),(21,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',21,'71199'),(22,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',22,'71199'),(23,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',23,'31695'),(24,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',24,'31695'),(25,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',25,'31695'),(26,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',26,'71199'),(27,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',27,'71199'),(28,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',28,'34113-2232'),(29,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',29,'34113-2232'),(30,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',30,'34113-2232'),(31,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',31,'34113-2232'),(32,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',32,'34113-2232'),(33,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',33,'34113-2232'),(34,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',34,'71199'),(35,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',35,'71199'),(36,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',36,'34113-2232'),(37,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',37,'34113-2232'),(38,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',38,'71199'),(39,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',39,'34113-2232'),(40,'Thalia Brown','+12312225240','jreichert@example.com','MU','New York','Schillershire','93375 Irwin Haven Apt. 122',40,'34113-2232'),(41,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',41,'71199'),(42,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',42,'71199'),(43,'Jany Cremin','+14247608388','ukutch@example.net','JO','New Hampshire','North Allene','371 Avis Hollow',43,'71199'),(44,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',44,'31695'),(45,'Mr. Jan Dibbert','+17323505294','customer@botble.com','GA','South Carolina','Bauchview','912 West Pine Suite 901',45,'31695');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2021-10-13 07:56:01','2021-10-13 07:56:01'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2021-10-13 07:56:01','2021-10-13 07:56:01'),(3,'confirm_payment','Payment was confirmed (amount $3,151.60) by %user_name%',0,1,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2021-10-01 15:56:01','2021-10-01 15:56:01'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2021-10-01 15:56:01','2021-10-01 15:56:01'),(7,'create_shipment','Created shipment for order',0,2,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(8,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2021-10-02 11:56:01','2021-10-02 11:56:01'),(9,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2021-10-02 11:56:01','2021-10-02 11:56:01'),(10,'create_shipment','Created shipment for order',0,3,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(11,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2021-10-10 09:56:01','2021-10-10 09:56:01'),(12,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2021-10-10 09:56:01','2021-10-10 09:56:01'),(13,'confirm_payment','Payment was confirmed (amount $1,505.70) by %user_name%',0,4,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(14,'create_shipment','Created shipment for order',0,4,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2021-10-03 07:56:01','2021-10-03 07:56:01'),(16,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2021-10-03 07:56:01','2021-10-03 07:56:01'),(17,'confirm_payment','Payment was confirmed (amount $1,771.25) by %user_name%',0,5,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(18,'create_shipment','Created shipment for order',0,5,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(19,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,5,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2021-10-07 19:56:01','2021-10-07 19:56:01'),(21,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2021-10-07 19:56:01','2021-10-07 19:56:01'),(22,'create_shipment','Created shipment for order',0,6,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2021-10-14 01:56:01','2021-10-14 01:56:01'),(24,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2021-10-14 01:56:01','2021-10-14 01:56:01'),(25,'confirm_payment','Payment was confirmed (amount $1,820.60) by %user_name%',0,7,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(26,'create_shipment','Created shipment for order',0,7,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2021-10-14 01:56:01','2021-10-14 01:56:01'),(28,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2021-10-14 01:56:01','2021-10-14 01:56:01'),(29,'confirm_payment','Payment was confirmed (amount $577.50) by %user_name%',0,8,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(30,'create_shipment','Created shipment for order',0,8,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2021-10-10 07:56:01','2021-10-10 07:56:01'),(32,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2021-10-10 07:56:01','2021-10-10 07:56:01'),(33,'create_shipment','Created shipment for order',0,9,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2021-10-11 15:56:01','2021-10-11 15:56:01'),(35,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2021-10-11 15:56:01','2021-10-11 15:56:01'),(36,'create_shipment','Created shipment for order',0,10,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(37,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,10,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2021-10-14 07:56:01','2021-10-14 07:56:01'),(39,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2021-10-14 07:56:01','2021-10-14 07:56:01'),(40,'confirm_payment','Payment was confirmed (amount $1,123.50) by %user_name%',0,11,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(41,'create_shipment','Created shipment for order',0,11,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(42,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2021-10-16 23:56:01','2021-10-16 23:56:01'),(44,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2021-10-16 23:56:01','2021-10-16 23:56:01'),(45,'confirm_payment','Payment was confirmed (amount $1,397.00) by %user_name%',0,12,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(46,'create_shipment','Created shipment for order',0,12,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(47,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2021-10-09 13:56:01','2021-10-09 13:56:01'),(49,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2021-10-09 13:56:01','2021-10-09 13:56:01'),(50,'confirm_payment','Payment was confirmed (amount $3,716.90) by %user_name%',0,13,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(51,'create_shipment','Created shipment for order',0,13,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2021-10-05 19:56:01','2021-10-05 19:56:01'),(53,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2021-10-05 19:56:01','2021-10-05 19:56:01'),(54,'create_shipment','Created shipment for order',0,14,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(55,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,14,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2021-10-17 03:56:01','2021-10-17 03:56:01'),(57,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2021-10-17 03:56:01','2021-10-17 03:56:01'),(58,'create_shipment','Created shipment for order',0,15,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(59,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2021-10-08 23:56:01','2021-10-08 23:56:01'),(61,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2021-10-08 23:56:01','2021-10-08 23:56:01'),(62,'confirm_payment','Payment was confirmed (amount $2,549.40) by %user_name%',0,16,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(63,'create_shipment','Created shipment for order',0,16,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2021-10-06 15:56:01','2021-10-06 15:56:01'),(65,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2021-10-06 15:56:01','2021-10-06 15:56:01'),(66,'confirm_payment','Payment was confirmed (amount $760.10) by %user_name%',0,17,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(67,'create_shipment','Created shipment for order',0,17,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(68,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2021-10-08 13:56:01','2021-10-08 13:56:01'),(70,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2021-10-08 13:56:01','2021-10-08 13:56:01'),(71,'confirm_payment','Payment was confirmed (amount $62.00) by %user_name%',0,18,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(72,'create_shipment','Created shipment for order',0,18,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(73,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2021-10-09 15:56:01','2021-10-09 15:56:01'),(75,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2021-10-09 15:56:01','2021-10-09 15:56:01'),(76,'create_shipment','Created shipment for order',0,19,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2021-10-08 07:56:02','2021-10-08 07:56:02'),(78,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2021-10-08 07:56:02','2021-10-08 07:56:02'),(79,'confirm_payment','Payment was confirmed (amount $1,188.60) by %user_name%',0,20,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(80,'create_shipment','Created shipment for order',0,20,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(81,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,20,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2021-10-08 07:56:02','2021-10-08 07:56:02'),(83,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2021-10-08 07:56:02','2021-10-08 07:56:02'),(84,'create_shipment','Created shipment for order',0,21,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(85,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2021-10-11 07:56:02','2021-10-11 07:56:02'),(86,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2021-10-11 07:56:02','2021-10-11 07:56:02'),(87,'confirm_payment','Payment was confirmed (amount $577.50) by %user_name%',0,22,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(88,'create_shipment','Created shipment for order',0,22,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(89,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2021-10-13 17:56:02','2021-10-13 17:56:02'),(90,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2021-10-13 17:56:02','2021-10-13 17:56:02'),(91,'confirm_payment','Payment was confirmed (amount $168.53) by %user_name%',0,23,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(92,'create_shipment','Created shipment for order',0,23,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(93,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,23,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(94,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2021-10-12 19:56:02','2021-10-12 19:56:02'),(95,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2021-10-12 19:56:02','2021-10-12 19:56:02'),(96,'confirm_payment','Payment was confirmed (amount $1,701.90) by %user_name%',0,24,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(97,'create_shipment','Created shipment for order',0,24,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(98,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,24,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2021-10-09 03:56:02','2021-10-09 03:56:02'),(100,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2021-10-09 03:56:02','2021-10-09 03:56:02'),(101,'create_shipment','Created shipment for order',0,25,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(102,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(103,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(104,'confirm_payment','Payment was confirmed (amount $4,435.50) by %user_name%',0,26,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(105,'create_shipment','Created shipment for order',0,26,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(106,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,26,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(107,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(108,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(109,'confirm_payment','Payment was confirmed (amount $2,222.70) by %user_name%',0,27,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(110,'create_shipment','Created shipment for order',0,27,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2021-10-16 19:56:02','2021-10-16 19:56:02'),(112,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2021-10-16 19:56:02','2021-10-16 19:56:02'),(113,'confirm_payment','Payment was confirmed (amount $168.53) by %user_name%',0,28,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(114,'create_shipment','Created shipment for order',0,28,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(115,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,28,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2021-10-14 13:56:02','2021-10-14 13:56:02'),(117,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2021-10-14 13:56:02','2021-10-14 13:56:02'),(118,'create_shipment','Created shipment for order',0,29,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(120,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(121,'confirm_payment','Payment was confirmed (amount $1,820.60) by %user_name%',0,30,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(122,'create_shipment','Created shipment for order',0,30,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(123,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,30,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(125,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(126,'confirm_payment','Payment was confirmed (amount $1,451.10) by %user_name%',0,31,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(127,'create_shipment','Created shipment for order',0,31,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(128,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,31,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(129,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2021-10-12 11:56:02','2021-10-12 11:56:02'),(130,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2021-10-12 11:56:02','2021-10-12 11:56:02'),(131,'confirm_payment','Payment was confirmed (amount $2,509.50) by %user_name%',0,32,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(132,'create_shipment','Created shipment for order',0,32,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2021-10-13 15:56:02','2021-10-13 15:56:02'),(134,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2021-10-13 15:56:02','2021-10-13 15:56:02'),(135,'confirm_payment','Payment was confirmed (amount $1,397.00) by %user_name%',0,33,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(136,'create_shipment','Created shipment for order',0,33,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(137,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(138,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2021-10-13 19:56:02','2021-10-13 19:56:02'),(139,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2021-10-13 19:56:02','2021-10-13 19:56:02'),(140,'create_shipment','Created shipment for order',0,34,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(141,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,34,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2021-10-17 07:56:02','2021-10-17 07:56:02'),(143,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2021-10-17 07:56:02','2021-10-17 07:56:02'),(144,'confirm_payment','Payment was confirmed (amount $1,318.90) by %user_name%',0,35,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(145,'create_shipment','Created shipment for order',0,35,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(146,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,35,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(147,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2021-10-15 19:56:02','2021-10-15 19:56:02'),(148,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2021-10-15 19:56:02','2021-10-15 19:56:02'),(149,'create_shipment','Created shipment for order',0,36,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(150,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2021-10-14 13:56:02','2021-10-14 13:56:02'),(152,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2021-10-14 13:56:02','2021-10-14 13:56:02'),(153,'create_shipment','Created shipment for order',0,37,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(154,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,37,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2021-10-15 07:56:02','2021-10-15 07:56:02'),(156,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2021-10-15 07:56:02','2021-10-15 07:56:02'),(157,'confirm_payment','Payment was confirmed (amount $2,305.80) by %user_name%',0,38,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(158,'create_shipment','Created shipment for order',0,38,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2021-10-15 19:56:02','2021-10-15 19:56:02'),(160,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2021-10-15 19:56:02','2021-10-15 19:56:02'),(161,'create_shipment','Created shipment for order',0,39,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(162,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2021-10-16 13:56:02','2021-10-16 13:56:02'),(164,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2021-10-16 13:56:02','2021-10-16 13:56:02'),(165,'confirm_payment','Payment was confirmed (amount $1,260.00) by %user_name%',0,40,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(166,'create_shipment','Created shipment for order',0,40,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(167,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,40,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2021-10-17 03:56:02','2021-10-17 03:56:02'),(169,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2021-10-17 03:56:02','2021-10-17 03:56:02'),(170,'confirm_payment','Payment was confirmed (amount $22.00) by %user_name%',0,41,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(171,'create_shipment','Created shipment for order',0,41,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(172,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2021-10-16 15:56:02','2021-10-16 15:56:02'),(174,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2021-10-16 15:56:02','2021-10-16 15:56:02'),(175,'confirm_payment','Payment was confirmed (amount $1,134.00) by %user_name%',0,42,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(176,'create_shipment','Created shipment for order',0,42,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(177,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(178,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2021-10-17 23:56:02','2021-10-17 23:56:02'),(179,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2021-10-17 23:56:02','2021-10-17 23:56:02'),(180,'confirm_payment','Payment was confirmed (amount $1,274.70) by %user_name%',0,43,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(181,'create_shipment','Created shipment for order',0,43,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2021-10-17 15:56:02','2021-10-17 15:56:02'),(183,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2021-10-17 15:56:02','2021-10-17 15:56:02'),(184,'create_shipment','Created shipment for order',0,44,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(185,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,44,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2021-10-18 01:56:02','2021-10-18 01:56:02'),(187,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2021-10-18 01:56:02','2021-10-18 01:56:02'),(188,'create_shipment','Created shipment for order',0,45,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(189,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(190,'update_status','Order confirmed by %user_name%',0,5,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(191,'update_status','Order confirmed by %user_name%',0,11,NULL,'2021-10-18 07:56:03','2021-10-18 07:56:03'),(192,'update_status','Order confirmed by %user_name%',0,12,NULL,'2021-10-18 07:56:04','2021-10-18 07:56:04'),(193,'update_status','Order confirmed by %user_name%',0,17,NULL,'2021-10-18 07:56:04','2021-10-18 07:56:04'),(194,'update_status','Order confirmed by %user_name%',0,18,NULL,'2021-10-18 07:56:05','2021-10-18 07:56:05'),(195,'update_status','Order confirmed by %user_name%',0,20,NULL,'2021-10-18 07:56:06','2021-10-18 07:56:06'),(196,'update_status','Order confirmed by %user_name%',0,23,NULL,'2021-10-18 07:56:06','2021-10-18 07:56:06'),(197,'update_status','Order confirmed by %user_name%',0,24,NULL,'2021-10-18 07:56:07','2021-10-18 07:56:07'),(198,'update_status','Order confirmed by %user_name%',0,26,NULL,'2021-10-18 07:56:08','2021-10-18 07:56:08'),(199,'update_status','Order confirmed by %user_name%',0,28,NULL,'2021-10-18 07:56:08','2021-10-18 07:56:08'),(200,'update_status','Order confirmed by %user_name%',0,30,NULL,'2021-10-18 07:56:09','2021-10-18 07:56:09'),(201,'update_status','Order confirmed by %user_name%',0,31,NULL,'2021-10-18 07:56:11','2021-10-18 07:56:11'),(202,'update_status','Order confirmed by %user_name%',0,33,NULL,'2021-10-18 07:56:12','2021-10-18 07:56:12'),(203,'update_status','Order confirmed by %user_name%',0,35,NULL,'2021-10-18 07:56:13','2021-10-18 07:56:13'),(204,'update_status','Order confirmed by %user_name%',0,40,NULL,'2021-10-18 07:56:14','2021-10-18 07:56:14'),(205,'update_status','Order confirmed by %user_name%',0,41,NULL,'2021-10-18 07:56:14','2021-10-18 07:56:14'),(206,'update_status','Order confirmed by %user_name%',0,42,NULL,'2021-10-18 07:56:15','2021-10-18 07:56:15');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) unsigned DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,566.00,56.60,'[]',29,'Red & Black Headphone',1527.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(2,1,1,1270.00,127.00,'[]',72,'Aveeno Moisturizing Body Shower 450ml',777.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(3,2,3,549.00,54.90,'[]',57,'Sound Intone I65 Earphone White Version',1569.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(4,2,2,607.00,60.70,'[]',81,'MVMTH Classical Leather Watch In Black',1474.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(5,3,2,564.00,56.40,'[]',43,'Samsung Smart Phone',1178.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(6,3,3,1236.00,123.60,'[]',46,'Herschel Leather Duffle Bag In Brown Color',1581.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(7,3,1,600.00,60.00,'[]',66,'Apple MacBook Air Retina 12-Inch Laptop',504.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(8,4,2,717.00,71.70,'[]',85,'Ciate Palemore Lipstick Bold Red Color',1772.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(9,5,1,40.50,4.05,'[]',26,'Smart Watches',859.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(10,5,3,557.00,55.70,'[]',53,'EPSION Plaster Printer',1749.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(11,6,3,1236.00,123.60,'[]',48,'Herschel Leather Duffle Bag In Brown Color',1581.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(12,6,3,607.00,60.70,'[]',78,'MVMTH Classical Leather Watch In Black',2211.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(13,7,2,549.00,54.90,'[]',54,'Sound Intone I65 Earphone White Version',1046.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(14,7,1,607.00,60.70,'[]',79,'MVMTH Classical Leather Watch In Black',737.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(15,8,1,525.00,52.50,'[]',71,'Samsung Gear VR Virtual Reality Headset',834.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(16,9,1,730.00,73.00,'[]',33,'Smart Watch External',561.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(17,10,1,1195.00,119.50,'[]',50,'Xbox One Wireless Controller Black Color',862.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(18,11,2,535.00,53.50,'[]',60,'B&O Play Mini Bluetooth Speaker',1690.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(19,12,1,1270.00,127.00,'[]',72,'Aveeno Moisturizing Body Shower 450ml',777.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(20,13,3,1199.00,119.90,'[]',74,'NYX Beauty Couton Pallete Makeup 12',1992.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(21,14,1,717.00,71.70,'[]',85,'Ciate Palemore Lipstick Bold Red Color',886.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(22,15,1,80.25,8.03,'[]',25,'Dual Camera 20MP',704.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(23,16,3,607.00,60.70,'[]',79,'MVMTH Classical Leather Watch In Black',2211.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(24,16,1,607.00,60.70,'[]',81,'MVMTH Classical Leather Watch In Black',737.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(25,17,1,691.00,69.10,'[]',82,'Baxter Care Hair Kit For Bearded Mens',511.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(26,18,3,20.00,2.00,'[]',27,'Beat Headphone',2130.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(27,19,1,1195.00,119.50,'[]',50,'Xbox One Wireless Controller Black Color',862.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(28,20,2,566.00,56.60,'[]',31,'Red & Black Headphone',1018.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(29,21,3,600.00,60.00,'[]',68,'Apple MacBook Air Retina 12-Inch Laptop',1512.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(30,22,1,525.00,52.50,'[]',71,'Samsung Gear VR Virtual Reality Headset',834.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(31,23,2,80.25,8.03,'[]',25,'Dual Camera 20MP',1408.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(32,24,3,549.00,54.90,'[]',54,'Sound Intone I65 Earphone White Version',1569.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(33,25,2,1199.00,119.90,'[]',74,'NYX Beauty Couton Pallete Makeup 12',1328.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(34,26,3,1236.00,123.60,'[]',45,'Herschel Leather Duffle Bag In Brown Color',1581.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(35,26,1,549.00,54.90,'[]',57,'Sound Intone I65 Earphone White Version',523.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(36,27,3,717.00,71.70,'[]',86,'Ciate Palemore Lipstick Bold Red Color',2658.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(37,28,2,80.25,8.03,'[]',25,'Dual Camera 20MP',1408.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(38,29,3,564.00,56.40,'[]',41,'Samsung Smart Phone',1767.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(39,29,2,549.00,54.90,'[]',54,'Sound Intone I65 Earphone White Version',1046.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(40,29,1,560.00,56.00,'[]',62,'Apple MacBook Air Retina 13.3-Inch Laptop',856.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(41,30,2,549.00,54.90,'[]',55,'Sound Intone I65 Earphone White Version',1046.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(42,30,1,607.00,60.70,'[]',79,'MVMTH Classical Leather Watch In Black',737.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(43,31,2,691.00,69.10,'[]',83,'Baxter Care Hair Kit For Bearded Mens',1022.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(44,32,2,1195.00,119.50,'[]',50,'Xbox One Wireless Controller Black Color',1724.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(45,33,1,1270.00,127.00,'[]',72,'Aveeno Moisturizing Body Shower 450ml',777.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(46,34,1,1236.00,123.60,'[]',47,'Herschel Leather Duffle Bag In Brown Color',527.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(47,35,1,1199.00,119.90,'[]',75,'NYX Beauty Couton Pallete Makeup 12',664.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(48,36,1,549.00,54.90,'[]',54,'Sound Intone I65 Earphone White Version',523.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(49,37,3,535.00,53.50,'[]',58,'B&O Play Mini Bluetooth Speaker',2535.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(50,38,1,549.00,54.90,'[]',55,'Sound Intone I65 Earphone White Version',523.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(51,38,3,549.00,54.90,'[]',57,'Sound Intone I65 Earphone White Version',1569.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(52,39,3,557.00,55.70,'[]',52,'EPSION Plaster Printer',1749.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(53,40,2,600.00,60.00,'[]',65,'Apple MacBook Air Retina 12-Inch Laptop',1008.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(54,41,1,20.00,2.00,'[]',28,'Beat Headphone',710.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(55,42,2,540.00,54.00,'[]',38,'Audio Equipment',1366.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(56,43,2,607.00,60.70,'[]',79,'MVMTH Classical Leather Watch In Black',1474.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(57,44,3,1102.00,110.20,'[]',39,'Smart Televisions',2532.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(58,45,3,549.00,54.90,'[]',54,'Sound Intone I65 Earphone White Version',1569.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(59,45,1,549.00,54.90,'[]',57,'Sound Intone I65 Earphone White Version',523.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(60,45,1,560.00,56.00,'[]',64,'Apple MacBook Air Retina 13.3-Inch Laptop',856.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,1,'1','default','pending',3151.60,183.60,0.00,NULL,NULL,0.00,2968.00,1,NULL,1,'0bhcPWEAeTWlIvrRBxmS0l9rvqul8',1,'2021-10-13 07:56:01','2021-10-18 07:56:01',5),(2,1,'1','default','pending',2976.60,115.60,0.00,NULL,NULL,0.00,2861.00,1,NULL,1,'PaNihQ0pPKebbB0K7ISr4nT6cDGDu',2,'2021-10-01 15:56:01','2021-10-18 07:56:01',3),(3,8,'1','default','pending',5676.00,240.00,0.00,NULL,NULL,0.00,5436.00,1,NULL,1,'rL6avUpCe071hMummLBmHtqog7AoG',3,'2021-10-02 11:56:01','2021-10-18 07:56:01',3),(4,8,'1','default','pending',1505.70,71.70,0.00,NULL,NULL,0.00,1434.00,1,NULL,1,'F5MgkPKIJDwTTnKHhKSdQh21WltA8',4,'2021-10-10 09:56:01','2021-10-18 07:56:01',5),(5,7,'1','default','completed',1771.25,59.75,0.00,NULL,NULL,0.00,1711.50,1,NULL,1,'QYypnAFFllbNg5dOr2idXvZFtss0q',5,'2021-10-03 07:56:01','2021-10-18 07:56:02',5),(6,7,'1','default','pending',5713.30,184.30,0.00,NULL,NULL,0.00,5529.00,1,NULL,1,'mJpqVnifn6BTEBq5QEwS9sU8KmSNR',6,'2021-10-07 19:56:01','2021-10-18 07:56:01',3),(7,10,'1','default','pending',1820.60,115.60,0.00,NULL,NULL,0.00,1705.00,1,NULL,1,'iupJlK92sHE04PLuCIp9uU1OPbLqc',7,'2021-10-14 01:56:01','2021-10-18 07:56:01',3),(8,10,'1','default','pending',577.50,52.50,0.00,NULL,NULL,0.00,525.00,1,NULL,1,'K0VQ0AafKqfzFUddTmlIGoZhf8ILk',8,'2021-10-14 01:56:01','2021-10-18 07:56:01',2),(9,7,'1','default','pending',803.00,73.00,0.00,NULL,NULL,0.00,730.00,1,NULL,1,'1jUPj81xvMrK5xs9CMC5YkLrNizBW',9,'2021-10-10 07:56:01','2021-10-18 07:56:01',2),(10,7,'1','default','pending',1314.50,119.50,0.00,NULL,NULL,0.00,1195.00,1,NULL,1,'QTu1JlvkEnrIffv6scHUm66BKgi4M',10,'2021-10-11 15:56:01','2021-10-18 07:56:01',4),(11,7,'1','default','completed',1123.50,53.50,0.00,NULL,NULL,0.00,1070.00,1,NULL,1,'i5GXm9gWbkcRpHUWw1dXe68Z3XV7q',11,'2021-10-14 07:56:01','2021-10-18 07:56:03',1),(12,7,'1','default','completed',1397.00,127.00,0.00,NULL,NULL,0.00,1270.00,1,NULL,1,'wr3Nw4yw1cXgc3jfLRPubIEwpCqNc',12,'2021-10-16 23:56:01','2021-10-18 07:56:04',5),(13,1,'1','default','pending',3716.90,119.90,0.00,NULL,NULL,0.00,3597.00,1,NULL,1,'H3a4HcoSKi5dVh5V1PU5HgjhwnZVE',13,'2021-10-09 13:56:01','2021-10-18 07:56:01',2),(14,1,'1','default','pending',788.70,71.70,0.00,NULL,NULL,0.00,717.00,1,NULL,1,'YpH0Goahim9Uo04cRhKsx6hl3WKgu',14,'2021-10-05 19:56:01','2021-10-18 07:56:01',5),(15,8,'1','default','pending',88.28,8.03,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'xQy7ECKJDK5SLwkvdAWjaIuhIUKjS',15,'2021-10-17 03:56:01','2021-10-18 07:56:01',4),(16,8,'1','default','pending',2549.40,121.40,0.00,NULL,NULL,0.00,2428.00,1,NULL,1,'r3ji6cXD7poEtjzXk7xFX9wHm3TKN',16,'2021-10-08 23:56:01','2021-10-18 07:56:01',3),(17,8,'1','default','completed',760.10,69.10,0.00,NULL,NULL,0.00,691.00,1,NULL,1,'qlaiQbJ7AjkWehVQuknDljvcEQbEL',17,'2021-10-06 15:56:01','2021-10-18 07:56:04',2),(18,1,'1','default','completed',62.00,2.00,0.00,NULL,NULL,0.00,60.00,1,NULL,1,'S1Do0NZ1HBjQn4DzyvXrkBIhAxanx',18,'2021-10-08 13:56:01','2021-10-18 07:56:05',5),(19,1,'1','default','pending',1314.50,119.50,0.00,NULL,NULL,0.00,1195.00,1,NULL,1,'vBQzgHSRaiAKjyYAWCNNNUxS5jnTf',19,'2021-10-09 15:56:01','2021-10-18 07:56:01',4),(20,10,'1','default','completed',1188.60,56.60,0.00,NULL,NULL,0.00,1132.00,1,NULL,1,'kQYW52hAcVVGcNwzw0mJW7t36VTXk',20,'2021-10-08 07:56:02','2021-10-18 07:56:06',5),(21,10,'1','default','pending',1860.00,60.00,0.00,NULL,NULL,0.00,1800.00,1,NULL,1,'FMIgiCZEeDNxpBlZxKOcjCx3IryHC',21,'2021-10-08 07:56:02','2021-10-18 07:56:02',3),(22,10,'1','default','pending',577.50,52.50,0.00,NULL,NULL,0.00,525.00,1,NULL,1,'D4uYqP5jPs7mIi3qcssIbN2Kj4mTM',22,'2021-10-11 07:56:02','2021-10-18 07:56:02',2),(23,1,'1','default','completed',168.53,8.03,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'MHn5Kmkm6dyqDHifCWFzmNSvrygBk',23,'2021-10-13 17:56:02','2021-10-18 07:56:06',4),(24,1,'1','default','completed',1701.90,54.90,0.00,NULL,NULL,0.00,1647.00,1,NULL,1,'YOUr2J5QAvl3R4t4wLhPUnCDVF6jM',24,'2021-10-12 19:56:02','2021-10-18 07:56:07',3),(25,1,'1','default','pending',2517.90,119.90,0.00,NULL,NULL,0.00,2398.00,1,NULL,1,'fhjb99yJmIRvdibTAGxrOhQVUwnk7',25,'2021-10-09 03:56:02','2021-10-18 07:56:02',2),(26,10,'1','default','completed',4435.50,178.50,0.00,NULL,NULL,0.00,4257.00,1,NULL,1,'qM0HWFbjk6bEUphkcreh6ZOGELCTT',26,'2021-10-14 23:56:02','2021-10-18 07:56:08',3),(27,10,'1','default','pending',2222.70,71.70,0.00,NULL,NULL,0.00,2151.00,1,NULL,1,'IYxWzHBCWJMEbm3gO2iaKKXzOI1gZ',27,'2021-10-14 23:56:02','2021-10-18 07:56:02',5),(28,8,'1','default','completed',168.53,8.03,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'IozcuB2GtNa70gSm8ygwlegS3LKQH',28,'2021-10-16 19:56:02','2021-10-18 07:56:08',4),(29,8,'1','default','pending',3517.30,167.30,0.00,NULL,NULL,0.00,3350.00,1,NULL,1,'AYTLy0k9GGqDHxtL2zw8JPxnA90eK',29,'2021-10-14 13:56:02','2021-10-18 07:56:02',3),(30,8,'1','default','completed',1820.60,115.60,0.00,NULL,NULL,0.00,1705.00,1,NULL,1,'sLeJ4MRbTEvteRPQS3vtv3A5M6OZa',30,'2021-10-14 23:56:02','2021-10-18 07:56:09',3),(31,8,'1','default','completed',1451.10,69.10,0.00,NULL,NULL,0.00,1382.00,1,NULL,1,'wO2HbMCjR5vitNcf0vqG3Y719LYdo',31,'2021-10-14 23:56:02','2021-10-18 07:56:11',2),(32,8,'1','default','pending',2509.50,119.50,0.00,NULL,NULL,0.00,2390.00,1,NULL,1,'3UuaJcvqVivb5vO0b27earDqg2EPT',32,'2021-10-12 11:56:02','2021-10-18 07:56:02',4),(33,8,'1','default','completed',1397.00,127.00,0.00,NULL,NULL,0.00,1270.00,1,NULL,1,'qoB46yMFOrx4hW0lMXrqNWFAfaOAO',33,'2021-10-13 15:56:02','2021-10-18 07:56:12',5),(34,10,'1','default','pending',1359.60,123.60,0.00,NULL,NULL,0.00,1236.00,1,NULL,1,'bvsyKIYaOlVkEBJ4oBfWYNSv5EYgY',34,'2021-10-13 19:56:02','2021-10-18 07:56:02',3),(35,10,'1','default','completed',1318.90,119.90,0.00,NULL,NULL,0.00,1199.00,1,NULL,1,'351CJG3mospehknHiuiQGDmrXEHEm',35,'2021-10-17 07:56:02','2021-10-18 07:56:13',2),(36,8,'1','default','pending',603.90,54.90,0.00,NULL,NULL,0.00,549.00,1,NULL,1,'hy6UNNxr7LEVJVN0jhdz78YGQwX1p',36,'2021-10-15 19:56:02','2021-10-18 07:56:02',3),(37,8,'1','default','pending',1658.50,53.50,0.00,NULL,NULL,0.00,1605.00,1,NULL,1,'859zHhDSMP9SJJQMPwZKTUNE76ngO',37,'2021-10-14 13:56:02','2021-10-18 07:56:02',1),(38,10,'1','default','pending',2305.80,109.80,0.00,NULL,NULL,0.00,2196.00,1,NULL,1,'d8FF9RveUF4KgBvBo0ldoLJpXtbqG',38,'2021-10-15 07:56:02','2021-10-18 07:56:02',3),(39,8,'1','default','pending',1726.70,55.70,0.00,NULL,NULL,0.00,1671.00,1,NULL,1,'NUP0Dh8MFf0K0GSSRp0d9LtqhIV4D',39,'2021-10-15 19:56:02','2021-10-18 07:56:02',5),(40,8,'1','default','completed',1260.00,60.00,0.00,NULL,NULL,0.00,1200.00,1,NULL,1,'mGEAdWA0HpWRmtWdYtMmu6Xs4GTi5',40,'2021-10-16 13:56:02','2021-10-18 07:56:14',3),(41,10,'1','default','completed',22.00,2.00,0.00,NULL,NULL,0.00,20.00,1,NULL,1,'AjQ2b9EDWrRJSlHvydAZPWgqfskYI',41,'2021-10-17 03:56:02','2021-10-18 07:56:14',5),(42,10,'1','default','completed',1134.00,54.00,0.00,NULL,NULL,0.00,1080.00,1,NULL,1,'X9Lkx1NHnqdNxNB15WXquCFP0pNZU',42,'2021-10-16 15:56:02','2021-10-18 07:56:15',1),(43,10,'1','default','pending',1274.70,60.70,0.00,NULL,NULL,0.00,1214.00,1,NULL,1,'5PCHzJsmi9VQQihcGscf2vrwhDAWP',43,'2021-10-17 23:56:02','2021-10-18 07:56:02',3),(44,1,'1','default','pending',3416.20,110.20,0.00,NULL,NULL,0.00,3306.00,1,NULL,1,'Io3VTMOE5RyC5mtOXivOJktxn8qdJ',44,'2021-10-17 15:56:02','2021-10-18 07:56:02',4),(45,1,'1','default','pending',2921.80,165.80,0.00,NULL,NULL,0.00,2756.00,1,NULL,1,'PE8opDkHargBZhNbAak4I4dpNOIDb',45,'2021-10-18 01:56:02','2021-10-18 07:56:02',3);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2021-10-18 07:55:33','2021-10-18 07:55:33'),(2,'Size','size','text',1,1,1,'published',1,'2021-10-18 07:55:33','2021-10-18 07:55:33');
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(6,2,'S','s',NULL,NULL,1,1,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(7,2,'M','m',NULL,NULL,1,2,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(8,2,'L','l',NULL,NULL,1,3,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(9,2,'XL','xl',NULL,NULL,1,4,'published','2021-10-18 07:55:33','2021-10-18 07:55:33'),(10,2,'XXL','xxl',NULL,NULL,1,5,'published','2021-10-18 07:55:33','2021-10-18 07:55:33');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(23,'Networking',17,NULL,'published',1,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2021-10-18 07:55:10','2021-10-18 07:55:10');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,19,1),(2,7,1),(3,24,1),(4,18,1),(5,14,2),(6,26,2),(7,5,2),(8,30,2),(9,16,3),(10,28,3),(11,4,3),(12,24,3),(13,3,4),(14,29,4),(15,25,4),(16,3,5),(17,4,5),(18,19,5),(19,27,5),(20,17,6),(21,30,6),(22,16,6),(23,35,6),(24,7,7),(25,26,7),(26,32,7),(27,17,7),(28,27,8),(29,22,8),(30,25,8),(31,34,8),(32,22,9),(33,9,9),(34,31,9),(35,13,10),(36,9,10),(37,12,10),(38,34,10),(39,25,11),(40,2,11),(41,6,11),(42,22,11),(43,7,12),(44,37,12),(45,33,12),(46,25,12),(47,7,13),(48,5,13),(49,27,13),(50,16,13),(51,3,14),(52,14,14),(53,30,14),(54,25,14),(55,36,15),(56,4,15),(57,15,15),(58,33,15),(59,10,16),(60,8,16),(61,31,16),(62,22,16),(63,7,17),(64,19,17),(65,29,17),(66,31,17),(67,19,18),(68,34,18),(69,22,18),(70,15,18),(71,13,19),(72,8,19),(73,12,19),(74,34,19),(75,29,20),(76,9,20),(77,3,20),(78,25,20),(79,29,21),(80,12,21),(81,19,21),(82,31,21),(83,17,22),(84,19,22),(85,6,22),(86,26,22),(87,26,23),(88,22,23),(89,8,23),(90,19,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,1,3),(4,2,4),(5,2,5),(6,3,6),(7,3,7),(8,3,8),(9,2,9),(10,2,10),(11,3,11),(12,3,12),(13,3,13),(14,1,14),(15,3,15),(16,1,16),(17,3,17),(18,1,18),(19,1,19),(20,3,20),(21,3,21),(22,3,22),(23,2,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2021-10-18 07:55:10','2021-10-18 07:55:10',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2021-10-18 07:55:10','2021-10-18 07:55:10',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2021-10-18 07:55:10','2021-10-18 07:55:10',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,9),(2,1,6),(3,1,13),(4,1,19),(5,2,15),(6,2,10),(7,2,11),(8,2,6),(9,2,18),(10,3,17),(11,3,19),(12,3,13),(13,3,18),(14,3,14),(15,3,4),(16,4,16),(17,4,2),(18,4,19),(19,4,5),(20,4,11),(21,4,6),(22,4,10),(23,5,18),(24,5,16),(25,5,1),(26,5,17),(27,5,14),(28,5,9),(29,6,7),(30,6,14),(31,6,18),(32,6,9),(33,6,11),(34,6,16),(35,7,2),(36,7,19),(37,7,14),(38,7,5),(39,7,9),(40,8,6),(41,8,1),(42,8,12),(43,8,4),(44,8,9),(45,8,3),(46,8,2),(47,9,14),(48,9,11),(49,9,10),(50,9,19),(51,9,20),(52,9,18),(53,9,3),(54,10,19),(55,10,3),(56,10,20),(57,10,15),(58,10,1),(59,11,10),(60,11,2),(61,11,5),(62,11,3),(63,12,9),(64,12,16),(65,12,2),(66,12,4),(67,12,11),(68,12,1),(69,13,8),(70,13,3),(71,13,11),(72,13,19),(73,13,1),(74,13,15),(75,14,7),(76,14,11),(77,14,6),(78,14,4),(79,14,3),(80,14,19),(81,14,10),(82,15,16),(83,15,6),(84,15,17),(85,15,5),(86,15,8),(87,16,8),(88,16,9),(89,16,11),(90,16,14),(91,16,15),(92,16,10),(93,17,3),(94,17,1),(95,17,8),(96,17,20),(97,17,16),(98,17,9),(99,17,4),(100,18,6),(101,18,14),(102,18,5),(103,18,8),(104,18,2),(105,18,16),(106,18,13),(107,19,12),(108,19,13),(109,19,2),(110,19,3),(111,19,16),(112,19,15),(113,19,8),(114,20,19),(115,20,16),(116,20,8),(117,20,4),(118,20,12),(119,20,18),(120,20,15),(121,21,12),(122,21,15),(123,21,1),(124,21,3),(125,21,9),(126,21,17),(127,21,18),(128,22,9),(129,22,19),(130,22,4),(131,22,7),(132,22,8),(133,22,14),(134,23,11),(135,23,3),(136,23,5),(137,23,8),(138,23,16),(139,23,12);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,12),(1,21),(2,6),(2,9),(2,18),(3,15);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2021-10-18 07:55:10','2021-10-18 07:55:10'),(2,'New','#00c9a7','published','2021-10-18 07:55:10','2021-10-18 07:55:10'),(3,'Sale','#fe9931','published','2021-10-18 07:55:10','2021-10-18 07:55:10');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,5),(2,2),(2,5),(3,1),(3,2),(4,1),(4,2),(4,3),(5,2),(5,4),(5,6),(6,1),(6,4),(6,5),(7,2),(7,3),(7,4),(8,3),(8,5),(9,3),(9,5),(9,6),(10,3),(10,5),(11,1),(11,2),(11,6),(12,1),(12,2),(12,6),(13,2),(13,3),(14,2),(14,4),(14,6),(15,2),(15,4),(15,6),(16,4),(16,5),(17,1),(17,2),(17,5),(18,2),(18,4),(19,3),(19,4),(19,5),(20,1),(20,6),(21,5),(21,6),(22,1),(22,3),(22,4),(23,1),(23,4),(23,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2021-10-18 07:55:38','2021-10-18 07:55:38'),(2,'Mobile',NULL,'published','2021-10-18 07:55:38','2021-10-18 07:55:38'),(3,'Iphone',NULL,'published','2021-10-18 07:55:38','2021-10-18 07:55:38'),(4,'Printer',NULL,'published','2021-10-18 07:55:38','2021-10-18 07:55:38'),(5,'Office',NULL,'published','2021-10-18 07:55:38','2021-10-18 07:55:38'),(6,'IT',NULL,'published','2021-10-18 07:55:38','2021-10-18 07:55:38');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(2,6,1),(3,4,2),(4,7,2),(5,3,3),(6,7,3),(7,2,4),(8,9,4),(9,2,5),(10,7,5),(11,2,6),(12,7,6),(13,3,7),(14,7,7),(15,1,8),(16,9,8),(17,1,9),(18,7,9),(19,4,10),(20,6,10),(21,4,11),(22,10,11),(23,2,12),(24,7,12),(25,3,13),(26,10,13),(27,2,14),(28,8,14),(29,4,15),(30,10,15),(31,3,16),(32,7,16),(33,1,17),(34,10,17),(35,3,18),(36,7,18),(37,1,19),(38,9,19),(39,1,20),(40,10,20),(41,5,21),(42,6,21),(43,1,22),(44,6,22),(45,2,23),(46,8,23),(47,5,24),(48,10,24),(49,5,25),(50,8,25),(51,3,26),(52,6,26),(53,2,27),(54,9,27),(55,3,28),(56,6,28),(57,1,29),(58,8,29),(59,5,30),(60,7,30),(61,5,31),(62,7,31),(63,3,32),(64,10,32),(65,5,33),(66,9,33),(67,5,34),(68,8,34),(69,2,35),(70,6,35),(71,1,36),(72,7,36),(73,5,37),(74,10,37),(75,1,38),(76,10,38),(77,5,39),(78,10,39),(79,2,40),(80,10,40),(81,2,41),(82,6,41),(83,3,42),(84,8,42),(85,3,43),(86,7,43),(87,1,44),(88,7,44),(89,3,45),(90,7,45),(91,3,46),(92,8,46),(93,1,47),(94,7,47),(95,1,48),(96,10,48),(97,5,49),(98,7,49),(99,3,50),(100,7,50),(101,5,51),(102,7,51),(103,2,52),(104,6,52),(105,4,53),(106,10,53),(107,3,54),(108,10,54),(109,4,55),(110,10,55),(111,4,56),(112,9,56),(113,2,57),(114,9,57),(115,1,58),(116,10,58),(117,3,59),(118,6,59),(119,4,60),(120,7,60),(121,5,61),(122,7,61),(123,1,62),(124,8,62),(125,2,63),(126,6,63);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `configurable_product_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,3,1),(5,28,3,0),(6,29,4,1),(7,30,4,0),(8,31,4,0),(9,32,5,1),(10,33,5,0),(11,34,5,0),(12,35,6,1),(13,36,6,0),(14,37,7,1),(15,38,7,0),(16,39,8,1),(17,40,8,0),(18,41,9,1),(19,42,9,0),(20,43,9,0),(21,44,9,0),(22,45,10,1),(23,46,10,0),(24,47,10,0),(25,48,10,0),(26,49,11,1),(27,50,11,0),(28,51,12,1),(29,52,12,0),(30,53,12,0),(31,54,13,1),(32,55,13,0),(33,56,13,0),(34,57,13,0),(35,58,14,1),(36,59,14,0),(37,60,14,0),(38,61,15,1),(39,62,15,0),(40,63,15,0),(41,64,15,0),(42,65,16,1),(43,66,16,0),(44,67,16,0),(45,68,16,0),(46,69,17,1),(47,70,17,0),(48,71,17,0),(49,72,18,1),(50,73,18,0),(51,74,19,1),(52,75,19,0),(53,76,20,1),(54,77,20,0),(55,78,21,1),(56,79,21,0),(57,80,21,0),(58,81,21,0),(59,82,22,1),(60,83,22,0),(61,84,23,1),(62,85,23,0),(63,86,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute`
--

DROP TABLE IF EXISTS `ec_product_with_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute`
--

LOCK TABLES `ec_product_with_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute` VALUES (1,4,1),(2,7,1),(3,5,2),(4,9,2),(5,2,3),(6,10,3),(7,3,4),(8,6,4),(9,1,5),(10,8,5),(11,3,6),(12,10,6),(13,2,7),(14,8,7),(15,4,8),(16,9,8),(17,2,9),(18,6,9),(19,5,10),(20,10,10),(21,3,11),(22,9,11),(23,2,12),(24,7,12),(25,1,13),(26,8,13),(27,4,14),(28,9,14),(29,1,15),(30,8,15),(31,4,16),(32,8,16),(33,3,17),(34,7,17),(35,5,18),(36,9,18),(37,3,19),(38,7,19),(39,1,20),(40,7,20),(41,2,21),(42,10,21),(43,4,22),(44,9,22),(45,5,23),(46,8,23);
/*!40000 ALTER TABLE `ec_product_with_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int(11) DEFAULT 0,
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `store_id` int(10) unsigned DEFAULT NULL,
  `approved_by` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-120-A0',0,16,0,1,1,5,0,0,80.25,NULL,NULL,NULL,20.00,18.00,20.00,704.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,97510,'in_stock',0,'Botble\\ACL\\Models\\User',4,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-114-A0',0,20,0,1,1,2,0,0,40.5,NULL,NULL,NULL,14.00,18.00,16.00,859.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,57280,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-159-A0',0,11,0,1,1,3,0,0,20,NULL,NULL,NULL,12.00,18.00,16.00,710.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,173027,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-184-A0',0,17,0,1,1,6,0,0,566,486.76,NULL,NULL,12.00,10.00,13.00,509.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,121688,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-152-A0',0,12,0,1,1,3,0,0,730,NULL,NULL,NULL,10.00,10.00,16.00,561.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,20035,'in_stock',0,'Botble\\ACL\\Models\\User',2,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-196-A0',0,15,0,1,1,5,0,0,480,NULL,NULL,NULL,20.00,15.00,19.00,538.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,128311,'in_stock',0,'Botble\\ACL\\Models\\User',4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-190-A0',0,12,0,1,1,2,0,0,540,NULL,NULL,NULL,13.00,11.00,11.00,683.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,27007,'in_stock',0,'Botble\\ACL\\Models\\User',1,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-129-A0',0,16,0,1,1,7,0,0,1102,804.46,NULL,NULL,10.00,20.00,16.00,844.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,10534,'in_stock',0,'Botble\\ACL\\Models\\User',4,0),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-190-A0',0,15,0,1,1,5,0,0,564,NULL,NULL,NULL,12.00,17.00,13.00,589.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,159934,'in_stock',0,'Botble\\ACL\\Models\\User',3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-139-A0',0,11,0,1,0,4,0,0,1236,NULL,NULL,NULL,16.00,13.00,18.00,527.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,106548,'in_stock',0,'Botble\\ACL\\Models\\User',3,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-180-A0',0,13,0,1,0,4,0,0,1195,NULL,NULL,NULL,16.00,14.00,17.00,862.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,144185,'in_stock',0,'Botble\\ACL\\Models\\User',4,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-181-A0',0,12,0,1,0,4,0,0,557,389.9,NULL,NULL,17.00,20.00,11.00,583.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,121379,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-110-A0',0,20,0,1,0,4,0,0,549,NULL,NULL,NULL,10.00,19.00,17.00,523.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,22785,'in_stock',0,'Botble\\ACL\\Models\\User',3,0),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-164-A0',0,12,0,1,0,1,0,0,535,NULL,NULL,NULL,11.00,10.00,11.00,845.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,105324,'in_stock',0,'Botble\\ACL\\Models\\User',1,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-181-A0',0,17,0,1,0,6,0,0,560,NULL,NULL,NULL,14.00,19.00,16.00,856.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,127089,'in_stock',0,'Botble\\ACL\\Models\\User',3,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-151-A0',0,15,0,1,0,1,0,0,600,456,NULL,NULL,11.00,15.00,20.00,504.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,125755,'in_stock',0,'Botble\\ACL\\Models\\User',3,0),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-120-A0',0,20,0,1,0,2,0,0,525,NULL,NULL,NULL,14.00,13.00,12.00,834.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,104289,'in_stock',0,'Botble\\ACL\\Models\\User',2,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-189-A0',0,12,0,1,0,7,0,0,1270,NULL,NULL,NULL,20.00,15.00,18.00,777.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,196253,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-158-A0',0,14,0,1,0,6,0,0,1199,NULL,NULL,NULL,19.00,11.00,10.00,664.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,111172,'in_stock',0,'Botble\\ACL\\Models\\User',2,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-181-A0',0,20,0,1,0,5,0,0,721,620.06,NULL,NULL,11.00,13.00,10.00,615.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,55251,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-147-A0',0,14,0,1,0,2,0,0,607,NULL,NULL,NULL,19.00,11.00,16.00,737.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,175467,'in_stock',0,'Botble\\ACL\\Models\\User',3,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-188-A0',0,18,0,1,0,5,0,0,691,NULL,NULL,NULL,20.00,10.00,17.00,511.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,86391,'in_stock',0,'Botble\\ACL\\Models\\User',2,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-112-A0',0,20,0,1,0,7,0,0,717,NULL,NULL,NULL,19.00,20.00,17.00,886.00,'2021-10-18 07:55:32','2021-10-18 07:56:01',1,34232,'in_stock',0,'Botble\\ACL\\Models\\User',5,0),(24,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-120-A0',0,16,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,18.00,20.00,704.00,'2021-10-18 07:55:32','2021-10-18 07:55:32',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(25,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-120-A0-A1',0,16,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,18.00,20.00,704.00,'2021-10-18 07:55:32','2021-10-18 07:55:32',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-114-A0',0,20,0,1,0,2,1,0,40.5,NULL,NULL,NULL,14.00,18.00,16.00,859.00,'2021-10-18 07:55:32','2021-10-18 07:55:32',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(27,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-159-A0',0,11,0,1,0,3,1,0,20,NULL,NULL,NULL,12.00,18.00,16.00,710.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-159-A0-A1',0,11,0,1,0,3,1,0,20,NULL,NULL,NULL,12.00,18.00,16.00,710.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(29,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-184-A0',0,17,0,1,0,6,1,0,566,486.76,NULL,NULL,12.00,10.00,13.00,509.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(30,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-184-A0-A1',0,17,0,1,0,6,1,0,566,475.44,NULL,NULL,12.00,10.00,13.00,509.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-184-A0-A2',0,17,0,1,0,6,1,0,566,503.74,NULL,NULL,12.00,10.00,13.00,509.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(32,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-152-A0',0,12,0,1,0,3,1,0,730,NULL,NULL,NULL,10.00,10.00,16.00,561.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(33,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-152-A0-A1',0,12,0,1,0,3,1,0,730,NULL,NULL,NULL,10.00,10.00,16.00,561.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(34,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-152-A0-A2',0,12,0,1,0,3,1,0,730,NULL,NULL,NULL,10.00,10.00,16.00,561.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(35,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-196-A0',0,15,0,1,0,5,1,0,480,NULL,NULL,NULL,20.00,15.00,19.00,538.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-196-A0-A1',0,15,0,1,0,5,1,0,480,NULL,NULL,NULL,20.00,15.00,19.00,538.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(37,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-190-A0',0,12,0,1,0,2,1,0,540,NULL,NULL,NULL,13.00,11.00,11.00,683.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-190-A0-A1',0,12,0,1,0,2,1,0,540,NULL,NULL,NULL,13.00,11.00,11.00,683.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(39,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-129-A0',0,16,0,1,0,7,1,0,1102,804.46,NULL,NULL,10.00,20.00,16.00,844.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(40,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-129-A0-A1',0,16,0,1,0,7,1,0,1102,936.7,NULL,NULL,10.00,20.00,16.00,844.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(41,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-190-A0',0,15,0,1,0,5,1,0,564,NULL,NULL,NULL,12.00,17.00,13.00,589.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(42,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-190-A0-A1',0,15,0,1,0,5,1,0,564,NULL,NULL,NULL,12.00,17.00,13.00,589.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(43,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-190-A0-A2',0,15,0,1,0,5,1,0,564,NULL,NULL,NULL,12.00,17.00,13.00,589.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(44,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-190-A0-A3',0,15,0,1,0,5,1,0,564,NULL,NULL,NULL,12.00,17.00,13.00,589.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-139-A0',0,11,0,1,0,4,1,0,1236,NULL,NULL,NULL,16.00,13.00,18.00,527.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-139-A0-A1',0,11,0,1,0,4,1,0,1236,NULL,NULL,NULL,16.00,13.00,18.00,527.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-139-A0-A2',0,11,0,1,0,4,1,0,1236,NULL,NULL,NULL,16.00,13.00,18.00,527.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(48,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-139-A0-A3',0,11,0,1,0,4,1,0,1236,NULL,NULL,NULL,16.00,13.00,18.00,527.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(49,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-180-A0',0,13,0,1,0,4,1,0,1195,NULL,NULL,NULL,16.00,14.00,17.00,862.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(50,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-180-A0-A1',0,13,0,1,0,4,1,0,1195,NULL,NULL,NULL,16.00,14.00,17.00,862.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(51,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-181-A0',0,12,0,1,0,4,1,0,557,389.9,NULL,NULL,17.00,20.00,11.00,583.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(52,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-181-A0-A1',0,12,0,1,0,4,1,0,557,434.46,NULL,NULL,17.00,20.00,11.00,583.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(53,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-181-A0-A2',0,12,0,1,0,4,1,0,557,451.17,NULL,NULL,17.00,20.00,11.00,583.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(54,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-110-A0',0,20,0,1,0,4,1,0,549,NULL,NULL,NULL,10.00,19.00,17.00,523.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(55,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-110-A0-A1',0,20,0,1,0,4,1,0,549,NULL,NULL,NULL,10.00,19.00,17.00,523.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(56,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-110-A0-A2',0,20,0,1,0,4,1,0,549,NULL,NULL,NULL,10.00,19.00,17.00,523.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(57,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-110-A0-A3',0,20,0,1,0,4,1,0,549,NULL,NULL,NULL,10.00,19.00,17.00,523.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(58,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-164-A0',0,12,0,1,0,1,1,0,535,NULL,NULL,NULL,11.00,10.00,11.00,845.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(59,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-164-A0-A1',0,12,0,1,0,1,1,0,535,NULL,NULL,NULL,11.00,10.00,11.00,845.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(60,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-164-A0-A2',0,12,0,1,0,1,1,0,535,NULL,NULL,NULL,11.00,10.00,11.00,845.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(61,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-181-A0',0,17,0,1,0,6,1,0,560,NULL,NULL,NULL,14.00,19.00,16.00,856.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(62,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-181-A0-A1',0,17,0,1,0,6,1,0,560,NULL,NULL,NULL,14.00,19.00,16.00,856.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(63,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-181-A0-A2',0,17,0,1,0,6,1,0,560,NULL,NULL,NULL,14.00,19.00,16.00,856.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(64,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-181-A0-A3',0,17,0,1,0,6,1,0,560,NULL,NULL,NULL,14.00,19.00,16.00,856.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(65,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-151-A0',0,15,0,1,0,1,1,0,600,456,NULL,NULL,11.00,15.00,20.00,504.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(66,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-151-A0-A1',0,15,0,1,0,1,1,0,600,522,NULL,NULL,11.00,15.00,20.00,504.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(67,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-151-A0-A2',0,15,0,1,0,1,1,0,600,492,NULL,NULL,11.00,15.00,20.00,504.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-151-A0-A3',0,15,0,1,0,1,1,0,600,462,NULL,NULL,11.00,15.00,20.00,504.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(69,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-120-A0',0,20,0,1,0,2,1,0,525,NULL,NULL,NULL,14.00,13.00,12.00,834.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(70,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-120-A0-A1',0,20,0,1,0,2,1,0,525,NULL,NULL,NULL,14.00,13.00,12.00,834.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(71,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-120-A0-A2',0,20,0,1,0,2,1,0,525,NULL,NULL,NULL,14.00,13.00,12.00,834.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(72,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-189-A0',0,12,0,1,0,7,1,0,1270,NULL,NULL,NULL,20.00,15.00,18.00,777.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(73,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-189-A0-A1',0,12,0,1,0,7,1,0,1270,NULL,NULL,NULL,20.00,15.00,18.00,777.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-158-A0',0,14,0,1,0,6,1,0,1199,NULL,NULL,NULL,19.00,11.00,10.00,664.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(75,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-158-A0-A1',0,14,0,1,0,6,1,0,1199,NULL,NULL,NULL,19.00,11.00,10.00,664.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(76,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-181-A0',0,20,0,1,0,5,1,0,721,620.06,NULL,NULL,11.00,13.00,10.00,615.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(77,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-181-A0-A1',0,20,0,1,0,5,1,0,721,584.01,NULL,NULL,11.00,13.00,10.00,615.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(78,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-147-A0',0,14,0,1,0,2,1,0,607,NULL,NULL,NULL,19.00,11.00,16.00,737.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(79,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-147-A0-A1',0,14,0,1,0,2,1,0,607,NULL,NULL,NULL,19.00,11.00,16.00,737.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(80,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21-2.jpg\"]','SW-147-A0-A2',0,14,0,1,0,2,1,0,607,NULL,NULL,NULL,19.00,11.00,16.00,737.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(81,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-147-A0-A3',0,14,0,1,0,2,1,0,607,NULL,NULL,NULL,19.00,11.00,16.00,737.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(82,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-188-A0',0,18,0,1,0,5,1,0,691,NULL,NULL,NULL,20.00,10.00,17.00,511.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(83,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-188-A0-A1',0,18,0,1,0,5,1,0,691,NULL,NULL,NULL,20.00,10.00,17.00,511.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(84,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-112-A0',0,20,0,1,0,7,1,0,717,NULL,NULL,NULL,19.00,20.00,17.00,886.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(85,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-112-A0-A1',0,20,0,1,0,7,1,0,717,NULL,NULL,NULL,19.00,20.00,17.00,886.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0),(86,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-112-A0-A2',0,20,0,1,0,7,1,0,717,NULL,NULL,NULL,19.00,20.00,17.00,886.00,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL,0,'in_stock',0,'Botble\\ACL\\Models\\User',NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,6,20,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(2,3,11,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(3,8,17,5.00,'Clean & perfect source code','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/9.jpg\"}'),(4,5,20,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(5,1,20,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(6,9,21,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(7,4,4,3.00,'Clean & perfect source code','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(8,6,14,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(9,3,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(10,2,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(11,8,5,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(12,6,6,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(13,1,20,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(14,5,23,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(15,9,14,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(16,1,23,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(17,3,1,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(18,10,1,2.00,'Clean & perfect source code','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(19,6,19,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(20,5,14,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\"]'),(21,9,11,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(22,6,16,1.00,'Best ecommerce CMS online store!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(23,5,9,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/19.jpg\"}'),(24,10,3,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(25,5,21,5.00,'Best ecommerce CMS online store!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(26,2,6,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(27,10,10,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/16.jpg\"}'),(28,2,8,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\"]'),(29,7,2,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(30,7,21,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(31,6,14,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(32,9,3,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/18.jpg\"}'),(33,1,11,4.00,'Clean & perfect source code','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(34,8,2,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/19.jpg\"}'),(35,8,19,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\"]'),(36,2,17,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(37,8,13,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(38,2,13,5.00,'Best ecommerce CMS online store!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(39,3,1,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(40,7,5,1.00,'Clean & perfect source code','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/14.jpg\"}'),(41,3,11,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(42,8,5,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(43,3,2,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(44,9,16,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(45,3,9,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\"]'),(46,2,23,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),(47,5,22,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(48,6,13,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(49,8,21,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\"]'),(50,9,19,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\"]'),(51,7,23,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\"]'),(52,1,2,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(53,6,5,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(54,3,4,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(55,4,19,1.00,'Good app, good backup service and support. Good documentation.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(56,10,6,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(57,6,4,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(58,6,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(59,8,7,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/23.jpg\"}'),(60,5,22,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(61,7,11,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/8.jpg\"}'),(62,10,18,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\"]'),(63,8,19,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(64,2,23,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(65,9,15,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(66,3,13,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/9.jpg\"}'),(67,5,1,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(68,8,18,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/12.jpg\"}'),(69,7,16,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/10.jpg\"}'),(70,7,16,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(71,1,9,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\"]'),(72,2,13,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(73,10,14,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(74,1,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(75,10,1,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(76,6,3,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(77,7,4,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(78,9,1,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(79,5,22,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(80,6,19,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(81,7,13,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\"]'),(82,9,7,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/20.jpg\"}'),(83,5,2,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(84,10,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(85,10,20,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(86,2,13,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(87,6,10,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(88,3,3,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(89,5,6,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(90,8,1,4.00,'Good app, good backup service and support. Good documentation.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(91,9,2,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/11.jpg\"}'),(92,3,3,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(93,7,3,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\"]'),(94,1,15,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(95,1,6,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\"]'),(96,4,21,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/4.jpg\"]'),(97,2,6,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(98,3,11,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(99,9,15,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(100,9,6,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-10-18 07:55:38','2021-10-18 07:55:38','[\"products\\/3.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `shipment_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2021-10-13 07:56:01','2021-10-13 07:56:01'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2021-10-16 15:56:01','2021-10-18 07:56:01'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2021-10-01 15:56:01','2021-10-01 15:56:01'),(4,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2021-10-16 15:56:01','2021-10-18 07:56:01'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2021-10-02 11:56:01','2021-10-02 11:56:01'),(6,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2021-10-16 17:56:01','2021-10-18 07:56:01'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2021-10-10 09:56:01','2021-10-10 09:56:01'),(8,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2021-10-16 17:56:01','2021-10-18 07:56:01'),(9,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2021-10-03 07:56:01','2021-10-03 07:56:01'),(10,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2021-10-16 19:56:01','2021-10-18 07:56:01'),(11,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,5,5,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2021-10-07 19:56:01','2021-10-07 19:56:01'),(13,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2021-10-16 19:56:01','2021-10-18 07:56:01'),(14,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2021-10-14 01:56:01','2021-10-14 01:56:01'),(15,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2021-10-16 21:56:01','2021-10-18 07:56:01'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2021-10-14 01:56:01','2021-10-14 01:56:01'),(17,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2021-10-16 21:56:01','2021-10-18 07:56:01'),(18,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2021-10-10 07:56:01','2021-10-10 07:56:01'),(19,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2021-10-16 23:56:01','2021-10-18 07:56:01'),(20,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2021-10-11 15:56:01','2021-10-11 15:56:01'),(21,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2021-10-16 23:56:01','2021-10-18 07:56:01'),(22,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,10,10,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(23,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2021-10-14 07:56:01','2021-10-14 07:56:01'),(24,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2021-10-16 23:56:01','2021-10-18 07:56:01'),(25,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,11,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(26,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2021-10-16 23:56:01','2021-10-16 23:56:01'),(27,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2021-10-16 23:56:01','2021-10-18 07:56:01'),(28,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,12,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(29,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2021-10-09 13:56:01','2021-10-09 13:56:01'),(30,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2021-10-17 01:56:01','2021-10-18 07:56:01'),(31,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2021-10-05 19:56:01','2021-10-05 19:56:01'),(32,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2021-10-17 01:56:01','2021-10-18 07:56:01'),(33,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,14,14,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(34,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2021-10-17 03:56:01','2021-10-17 03:56:01'),(35,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2021-10-17 03:56:01','2021-10-18 07:56:01'),(36,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,15,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(37,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2021-10-08 23:56:01','2021-10-08 23:56:01'),(38,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2021-10-17 03:56:01','2021-10-18 07:56:01'),(39,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2021-10-06 15:56:01','2021-10-06 15:56:01'),(40,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2021-10-17 03:56:01','2021-10-18 07:56:01'),(41,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,17,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(42,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2021-10-08 13:56:01','2021-10-08 13:56:01'),(43,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2021-10-17 05:56:01','2021-10-18 07:56:01'),(44,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,18,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(45,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2021-10-09 15:56:01','2021-10-09 15:56:01'),(46,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2021-10-17 05:56:02','2021-10-18 07:56:02'),(47,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2021-10-08 07:56:02','2021-10-08 07:56:02'),(48,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2021-10-17 07:56:02','2021-10-18 07:56:02'),(49,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,20,20,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(50,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2021-10-08 07:56:02','2021-10-08 07:56:02'),(51,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,21,21,'2021-10-17 07:56:02','2021-10-18 07:56:02'),(52,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2021-10-11 07:56:02','2021-10-11 07:56:02'),(53,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,22,22,'2021-10-17 07:56:02','2021-10-18 07:56:02'),(54,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2021-10-13 17:56:02','2021-10-13 17:56:02'),(55,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,23,23,'2021-10-17 09:56:02','2021-10-18 07:56:02'),(56,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,23,23,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(57,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2021-10-12 19:56:02','2021-10-12 19:56:02'),(58,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,24,24,'2021-10-17 09:56:02','2021-10-18 07:56:02'),(59,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,24,24,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(60,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2021-10-09 03:56:02','2021-10-09 03:56:02'),(61,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,25,25,'2021-10-17 09:56:02','2021-10-18 07:56:02'),(62,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(63,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,26,26,'2021-10-17 11:56:02','2021-10-18 07:56:02'),(64,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,26,26,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(65,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(66,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,27,27,'2021-10-17 11:56:02','2021-10-18 07:56:02'),(67,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2021-10-16 19:56:02','2021-10-16 19:56:02'),(68,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,28,28,'2021-10-17 13:56:02','2021-10-18 07:56:02'),(69,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,28,28,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(70,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2021-10-14 13:56:02','2021-10-14 13:56:02'),(71,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,29,29,'2021-10-17 13:56:02','2021-10-18 07:56:02'),(72,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(73,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,30,30,'2021-10-17 15:56:02','2021-10-18 07:56:02'),(74,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,30,30,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(75,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2021-10-14 23:56:02','2021-10-14 23:56:02'),(76,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,31,31,'2021-10-17 15:56:02','2021-10-18 07:56:02'),(77,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,31,31,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(78,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2021-10-12 11:56:02','2021-10-12 11:56:02'),(79,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,32,32,'2021-10-17 17:56:02','2021-10-18 07:56:02'),(80,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2021-10-13 15:56:02','2021-10-13 15:56:02'),(81,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,33,33,'2021-10-17 17:56:02','2021-10-18 07:56:02'),(82,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,33,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(83,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2021-10-13 19:56:02','2021-10-13 19:56:02'),(84,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,34,34,'2021-10-17 19:56:02','2021-10-18 07:56:02'),(85,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,34,34,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(86,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,34,34,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(87,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2021-10-17 07:56:02','2021-10-17 07:56:02'),(88,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,35,35,'2021-10-17 19:56:02','2021-10-18 07:56:02'),(89,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,35,35,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(90,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2021-10-15 19:56:02','2021-10-15 19:56:02'),(91,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,36,36,'2021-10-17 21:56:02','2021-10-18 07:56:02'),(92,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,36,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(93,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2021-10-14 13:56:02','2021-10-14 13:56:02'),(94,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,37,37,'2021-10-17 21:56:02','2021-10-18 07:56:02'),(95,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,37,37,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(96,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,37,37,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(97,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2021-10-15 07:56:02','2021-10-15 07:56:02'),(98,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,38,38,'2021-10-17 23:56:02','2021-10-18 07:56:02'),(99,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2021-10-15 19:56:02','2021-10-15 19:56:02'),(100,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,39,39,'2021-10-18 01:56:02','2021-10-18 07:56:02'),(101,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,39,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(102,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2021-10-16 13:56:02','2021-10-16 13:56:02'),(103,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,40,40,'2021-10-18 01:56:02','2021-10-18 07:56:02'),(104,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,40,40,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(105,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2021-10-17 03:56:02','2021-10-17 03:56:02'),(106,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,41,41,'2021-10-18 03:56:02','2021-10-18 07:56:02'),(107,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,41,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(108,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2021-10-16 15:56:02','2021-10-16 15:56:02'),(109,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,42,42,'2021-10-18 03:56:02','2021-10-18 07:56:02'),(110,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,42,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(111,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2021-10-17 23:56:02','2021-10-17 23:56:02'),(112,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,43,43,'2021-10-18 03:56:02','2021-10-18 07:56:02'),(113,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2021-10-17 15:56:02','2021-10-17 15:56:02'),(114,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,44,44,'2021-10-18 05:56:02','2021-10-18 07:56:02'),(115,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,44,44,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(116,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2021-10-18 01:56:02','2021-10-18 01:56:02'),(117,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,45,45,'2021-10-18 05:56:02','2021-10-18 07:56:02'),(118,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,45,'2021-10-18 07:56:02','2021-10-18 07:56:02');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2304.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(2,2,NULL,3043.00,NULL,'','approved',2976.60,'pending','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(3,3,NULL,3263.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(4,4,NULL,1772.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(5,5,NULL,2608.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(6,6,NULL,3792.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(7,7,NULL,1783.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(8,8,NULL,834.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(9,9,NULL,561.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(10,10,NULL,862.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(11,11,NULL,1690.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(12,12,NULL,777.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(13,13,NULL,1992.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(14,14,NULL,886.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(15,15,NULL,704.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(16,16,NULL,2948.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(17,17,NULL,511.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(18,18,NULL,2130.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(19,19,NULL,862.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(20,20,NULL,1018.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(21,21,NULL,1512.00,NULL,'','approved',1860.00,'pending','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(22,22,NULL,834.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(23,23,NULL,1408.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(24,24,NULL,1569.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(25,25,NULL,1328.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(26,26,NULL,2104.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(27,27,NULL,2658.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(28,28,NULL,1408.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(29,29,NULL,3669.00,NULL,'','approved',3517.30,'pending','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(30,30,NULL,1783.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(31,31,NULL,1022.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(32,32,NULL,1724.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(33,33,NULL,777.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(34,34,NULL,527.00,NULL,'','delivered',1359.60,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(35,35,NULL,664.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(36,36,NULL,523.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(37,37,NULL,2535.00,NULL,'','delivered',1658.50,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(38,38,NULL,2092.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(39,39,NULL,1749.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(40,40,NULL,1008.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(41,41,NULL,710.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(42,42,NULL,1366.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(43,43,NULL,1474.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(44,44,NULL,2532.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02'),(45,45,NULL,2948.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-10-18 07:56:02','2021-10-18 07:56:02');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2021-10-18 07:55:38','2021-10-18 07:55:38');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int(10) unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2021-10-18 07:55:38','2021-10-18 07:55:38');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2021-10-18 07:55:38','2021-10-18 07:55:38'),(2,'None',0.000000,2,'published','2021-10-18 07:55:38','2021-10-18 07:55:38');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(2,'PAYMENT',1,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(3,'ORDER & RETURNS',2,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(4,'VẬN CHUYỂN',0,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(5,'THANH TOÁN',1,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(6,'ĐƠN HÀNG & HOÀN TRẢ',2,'published','2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(11,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. ',4,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(12,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. ',4,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(13,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. ',4,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(14,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. ',5,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(15,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. ',5,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(16,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. ',5,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(17,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. ',5,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(18,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. ',6,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(19,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. ',6,'published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(20,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ',6,'published','2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','de79d8e3adad4a18a965c5d3df0f247e',1,'Botble\\Blog\\Models\\Category'),(2,'en_US','7983c34c774ba8577b10a6049e54a5fd',2,'Botble\\Blog\\Models\\Category'),(3,'en_US','2b3228147406951fb729a807c8573e43',3,'Botble\\Blog\\Models\\Category'),(4,'en_US','784861cb4b9b6c6b6288163857294a1d',4,'Botble\\Blog\\Models\\Category'),(5,'vi','de79d8e3adad4a18a965c5d3df0f247e',5,'Botble\\Blog\\Models\\Category'),(6,'vi','7983c34c774ba8577b10a6049e54a5fd',6,'Botble\\Blog\\Models\\Category'),(7,'vi','2b3228147406951fb729a807c8573e43',7,'Botble\\Blog\\Models\\Category'),(8,'vi','784861cb4b9b6c6b6288163857294a1d',8,'Botble\\Blog\\Models\\Category'),(9,'en_US','3fcab8a93e798a9d0ac70e170dc901c1',1,'Botble\\Blog\\Models\\Tag'),(10,'en_US','9769ae0e383d3c55f45eb52b964260b7',2,'Botble\\Blog\\Models\\Tag'),(11,'en_US','705abff9a14d1fad875dcd3ba158ece9',3,'Botble\\Blog\\Models\\Tag'),(12,'en_US','8f9844f93151fb141244eb670c20f9c6',4,'Botble\\Blog\\Models\\Tag'),(13,'en_US','dc5f80155d5960adf9981913bcf9438f',5,'Botble\\Blog\\Models\\Tag'),(14,'vi','3fcab8a93e798a9d0ac70e170dc901c1',6,'Botble\\Blog\\Models\\Tag'),(15,'vi','9769ae0e383d3c55f45eb52b964260b7',7,'Botble\\Blog\\Models\\Tag'),(16,'vi','705abff9a14d1fad875dcd3ba158ece9',8,'Botble\\Blog\\Models\\Tag'),(17,'vi','8f9844f93151fb141244eb670c20f9c6',9,'Botble\\Blog\\Models\\Tag'),(18,'vi','dc5f80155d5960adf9981913bcf9438f',10,'Botble\\Blog\\Models\\Tag'),(19,'en_US','bc357cacfef76e927605aad2678235ed',1,'Botble\\Blog\\Models\\Post'),(20,'en_US','b2e7347af985be64df846769733309b9',2,'Botble\\Blog\\Models\\Post'),(21,'en_US','dfdb407ed2f20abcc2745ca42bf7677a',3,'Botble\\Blog\\Models\\Post'),(22,'en_US','7b8d8a4b84d16154e6d623d6df69325a',4,'Botble\\Blog\\Models\\Post'),(23,'en_US','27d63101faf048844ae2f35821312abf',5,'Botble\\Blog\\Models\\Post'),(24,'en_US','82de9f7833b43c115fecd6a7b2bae7bb',6,'Botble\\Blog\\Models\\Post'),(25,'en_US','eddf79111d225a966fb685a0505d8fb3',7,'Botble\\Blog\\Models\\Post'),(26,'en_US','df62a65c47b7c97d9c03a3dc2ec45d97',8,'Botble\\Blog\\Models\\Post'),(27,'en_US','3dc865e6586fec4bb34d21dce452ab0d',9,'Botble\\Blog\\Models\\Post'),(28,'en_US','5a2836ed7e46c23b2455e9133f2a3f58',10,'Botble\\Blog\\Models\\Post'),(29,'en_US','a82a942fbea97da537d0ab67ab649084',11,'Botble\\Blog\\Models\\Post'),(30,'vi','bc357cacfef76e927605aad2678235ed',12,'Botble\\Blog\\Models\\Post'),(31,'vi','b2e7347af985be64df846769733309b9',13,'Botble\\Blog\\Models\\Post'),(32,'vi','dfdb407ed2f20abcc2745ca42bf7677a',14,'Botble\\Blog\\Models\\Post'),(33,'vi','7b8d8a4b84d16154e6d623d6df69325a',15,'Botble\\Blog\\Models\\Post'),(34,'vi','27d63101faf048844ae2f35821312abf',16,'Botble\\Blog\\Models\\Post'),(35,'vi','82de9f7833b43c115fecd6a7b2bae7bb',17,'Botble\\Blog\\Models\\Post'),(36,'vi','eddf79111d225a966fb685a0505d8fb3',18,'Botble\\Blog\\Models\\Post'),(37,'vi','df62a65c47b7c97d9c03a3dc2ec45d97',19,'Botble\\Blog\\Models\\Post'),(38,'vi','3dc865e6586fec4bb34d21dce452ab0d',20,'Botble\\Blog\\Models\\Post'),(39,'vi','5a2836ed7e46c23b2455e9133f2a3f58',21,'Botble\\Blog\\Models\\Post'),(40,'vi','a82a942fbea97da537d0ab67ab649084',22,'Botble\\Blog\\Models\\Post'),(41,'en_US','b697769b7d1cb4977c26f6f188be8d20',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(42,'vi','b697769b7d1cb4977c26f6f188be8d20',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(43,'en_US','a3580500f23a53ce58b09d3eca7f3907',1,'Botble\\Page\\Models\\Page'),(44,'en_US','cf09a9dbac876f3fef1490aabab66ae8',2,'Botble\\Page\\Models\\Page'),(45,'en_US','be0b5405c3d1cc39a64bfa0ce27fdb7a',3,'Botble\\Page\\Models\\Page'),(46,'en_US','221f3bf95c26c26301efb9aea2527035',4,'Botble\\Page\\Models\\Page'),(47,'en_US','e869c3498cb87ffbf738549742581feb',5,'Botble\\Page\\Models\\Page'),(48,'en_US','510ed66a1eea07d8f6892ace7f12943e',6,'Botble\\Page\\Models\\Page'),(49,'en_US','8ce4b2ff7f6bef4405c17b643e9fd27b',7,'Botble\\Page\\Models\\Page'),(50,'en_US','680aca3d616eea37841a99d854c7139e',8,'Botble\\Page\\Models\\Page'),(51,'en_US','080c2c908ba5c5ecb75e263f634c9f05',9,'Botble\\Page\\Models\\Page'),(52,'en_US','f1efdab766227fea118d6620d6f00460',10,'Botble\\Page\\Models\\Page'),(53,'en_US','1070f20124d439f794ddfa20d9309806',11,'Botble\\Page\\Models\\Page'),(54,'en_US','019e0ade362a093577d5e557af23995c',12,'Botble\\Page\\Models\\Page'),(55,'vi','a3580500f23a53ce58b09d3eca7f3907',13,'Botble\\Page\\Models\\Page'),(56,'vi','cf09a9dbac876f3fef1490aabab66ae8',14,'Botble\\Page\\Models\\Page'),(57,'vi','be0b5405c3d1cc39a64bfa0ce27fdb7a',15,'Botble\\Page\\Models\\Page'),(58,'vi','221f3bf95c26c26301efb9aea2527035',16,'Botble\\Page\\Models\\Page'),(59,'vi','e869c3498cb87ffbf738549742581feb',17,'Botble\\Page\\Models\\Page'),(60,'vi','510ed66a1eea07d8f6892ace7f12943e',18,'Botble\\Page\\Models\\Page'),(61,'vi','8ce4b2ff7f6bef4405c17b643e9fd27b',19,'Botble\\Page\\Models\\Page'),(62,'vi','680aca3d616eea37841a99d854c7139e',20,'Botble\\Page\\Models\\Page'),(63,'vi','080c2c908ba5c5ecb75e263f634c9f05',21,'Botble\\Page\\Models\\Page'),(64,'vi','f1efdab766227fea118d6620d6f00460',22,'Botble\\Page\\Models\\Page'),(65,'vi','1070f20124d439f794ddfa20d9309806',23,'Botble\\Page\\Models\\Page'),(66,'vi','019e0ade362a093577d5e557af23995c',24,'Botble\\Page\\Models\\Page'),(67,'en_US','212ef4b72c200e4cce5b2450c01bda40',1,'Botble\\Faq\\Models\\FaqCategory'),(68,'en_US','d53fbcd58a0a6a55b828bd29f5e55bc5',2,'Botble\\Faq\\Models\\FaqCategory'),(69,'en_US','417f16205ffcf5578e1f2967705757ef',3,'Botble\\Faq\\Models\\FaqCategory'),(70,'vi','212ef4b72c200e4cce5b2450c01bda40',4,'Botble\\Faq\\Models\\FaqCategory'),(71,'vi','d53fbcd58a0a6a55b828bd29f5e55bc5',5,'Botble\\Faq\\Models\\FaqCategory'),(72,'vi','417f16205ffcf5578e1f2967705757ef',6,'Botble\\Faq\\Models\\FaqCategory'),(73,'en_US','b28d32882cac82fec14d10644a72f74a',1,'Botble\\Faq\\Models\\Faq'),(74,'en_US','1bc4a75ed5298d01b89eca2d158ba17d',2,'Botble\\Faq\\Models\\Faq'),(75,'en_US','afe5adc0064ae4008799d6fa05d8cf4e',3,'Botble\\Faq\\Models\\Faq'),(76,'en_US','45e367b2ebc6d133360c821c0947d16c',4,'Botble\\Faq\\Models\\Faq'),(77,'en_US','37b99346833e7a4acd79a0229dc60f11',5,'Botble\\Faq\\Models\\Faq'),(78,'en_US','b946d57a413a44789a497a2b86a5112a',6,'Botble\\Faq\\Models\\Faq'),(79,'en_US','ff7a46867beab3fe240690122ad01850',7,'Botble\\Faq\\Models\\Faq'),(80,'en_US','514a19172070dcb74220ff983c65e6f8',8,'Botble\\Faq\\Models\\Faq'),(81,'en_US','70dfc8c332d5f340a0413bba3357cd29',9,'Botble\\Faq\\Models\\Faq'),(82,'en_US','7b5a32337d334a84be29d84cb9b7a1f1',10,'Botble\\Faq\\Models\\Faq'),(83,'vi','b28d32882cac82fec14d10644a72f74a',11,'Botble\\Faq\\Models\\Faq'),(84,'vi','1bc4a75ed5298d01b89eca2d158ba17d',12,'Botble\\Faq\\Models\\Faq'),(85,'vi','afe5adc0064ae4008799d6fa05d8cf4e',13,'Botble\\Faq\\Models\\Faq'),(86,'vi','45e367b2ebc6d133360c821c0947d16c',14,'Botble\\Faq\\Models\\Faq'),(87,'vi','37b99346833e7a4acd79a0229dc60f11',15,'Botble\\Faq\\Models\\Faq'),(88,'vi','b946d57a413a44789a497a2b86a5112a',16,'Botble\\Faq\\Models\\Faq'),(89,'vi','ff7a46867beab3fe240690122ad01850',17,'Botble\\Faq\\Models\\Faq'),(90,'vi','514a19172070dcb74220ff983c65e6f8',18,'Botble\\Faq\\Models\\Faq'),(91,'vi','70dfc8c332d5f340a0413bba3357cd29',19,'Botble\\Faq\\Models\\Faq'),(92,'vi','7b5a32337d334a84be29d84cb9b7a1f1',20,'Botble\\Faq\\Models\\Faq'),(93,'en_US','6d0c39fe737a363d6069eb0383c3d092',1,'Botble\\Menu\\Models\\MenuLocation'),(94,'en_US','77aede8bb17f736922dd62881c93ffb0',1,'Botble\\Menu\\Models\\Menu'),(95,'en_US','94b322c93904ddb20270a275b8ec9ccd',2,'Botble\\Menu\\Models\\Menu'),(96,'en_US','3821dc274c2e1e5b18e3ccc0d3f00044',3,'Botble\\Menu\\Models\\Menu'),(97,'en_US','aaad8980e3471e6a8d46cf84f7c60118',4,'Botble\\Menu\\Models\\Menu'),(98,'vi','e88fa1da0fb3e9891fc68ef3276a8f4e',2,'Botble\\Menu\\Models\\MenuLocation'),(99,'vi','77aede8bb17f736922dd62881c93ffb0',5,'Botble\\Menu\\Models\\Menu'),(100,'vi','94b322c93904ddb20270a275b8ec9ccd',6,'Botble\\Menu\\Models\\Menu'),(101,'vi','3821dc274c2e1e5b18e3ccc0d3f00044',7,'Botble\\Menu\\Models\\Menu'),(102,'vi','aaad8980e3471e6a8d46cf84f7c60118',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',2200,'brands/1.jpg','[]','2021-10-18 07:55:08','2021-10-18 07:55:08',NULL),(2,0,'2',1,'image/jpeg',2685,'brands/2.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(3,0,'3',1,'image/jpeg',2311,'brands/3.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(4,0,'4',1,'image/jpeg',2374,'brands/4.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(5,0,'5',1,'image/jpeg',1927,'brands/5.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(6,0,'6',1,'image/jpeg',2519,'brands/6.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(7,0,'7',1,'image/jpeg',3043,'brands/7.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(8,0,'1',2,'image/jpeg',5173,'product-categories/1.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(9,0,'2',2,'image/jpeg',7355,'product-categories/2.jpg','[]','2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(10,0,'3',2,'image/jpeg',4427,'product-categories/3.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(11,0,'4',2,'image/jpeg',2963,'product-categories/4.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(12,0,'5',2,'image/jpeg',5016,'product-categories/5.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(13,0,'6',2,'image/jpeg',4101,'product-categories/6.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(14,0,'7',2,'image/jpeg',2576,'product-categories/7.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(15,0,'8',2,'image/jpeg',4670,'product-categories/8.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(16,0,'1',3,'image/jpeg',4911,'products/1.jpg','[]','2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(17,0,'10-1',3,'image/jpeg',120755,'products/10-1.jpg','[]','2021-10-18 07:55:11','2021-10-18 07:55:11',NULL),(18,0,'10-2',3,'image/jpeg',148563,'products/10-2.jpg','[]','2021-10-18 07:55:11','2021-10-18 07:55:11',NULL),(19,0,'10',3,'image/jpeg',11176,'products/10.jpg','[]','2021-10-18 07:55:11','2021-10-18 07:55:11',NULL),(20,0,'11-1',3,'image/jpeg',13706,'products/11-1.jpg','[]','2021-10-18 07:55:12','2021-10-18 07:55:12',NULL),(21,0,'11-2',3,'image/jpeg',16809,'products/11-2.jpg','[]','2021-10-18 07:55:12','2021-10-18 07:55:12',NULL),(22,0,'11-3',3,'image/jpeg',23991,'products/11-3.jpg','[]','2021-10-18 07:55:12','2021-10-18 07:55:12',NULL),(23,0,'11',3,'image/jpeg',8234,'products/11.jpg','[]','2021-10-18 07:55:12','2021-10-18 07:55:12',NULL),(24,0,'12-1',3,'image/jpeg',47775,'products/12-1.jpg','[]','2021-10-18 07:55:12','2021-10-18 07:55:12',NULL),(25,0,'12-2',3,'image/jpeg',52722,'products/12-2.jpg','[]','2021-10-18 07:55:13','2021-10-18 07:55:13',NULL),(26,0,'12-3',3,'image/jpeg',57295,'products/12-3.jpg','[]','2021-10-18 07:55:13','2021-10-18 07:55:13',NULL),(27,0,'12',3,'image/jpeg',9642,'products/12.jpg','[]','2021-10-18 07:55:13','2021-10-18 07:55:13',NULL),(28,0,'13-1',3,'image/jpeg',7494,'products/13-1.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(29,0,'13',3,'image/jpeg',7266,'products/13.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(30,0,'14',3,'image/jpeg',6626,'products/14.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(31,0,'15-1',3,'image/jpeg',9014,'products/15-1.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(32,0,'15',3,'image/jpeg',6629,'products/15.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(33,0,'16',3,'image/jpeg',8558,'products/16.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(34,0,'17-1',3,'image/jpeg',63248,'products/17-1.jpg','[]','2021-10-18 07:55:14','2021-10-18 07:55:14',NULL),(35,0,'17-2',3,'image/jpeg',71404,'products/17-2.jpg','[]','2021-10-18 07:55:15','2021-10-18 07:55:15',NULL),(36,0,'17-3',3,'image/jpeg',58949,'products/17-3.jpg','[]','2021-10-18 07:55:15','2021-10-18 07:55:15',NULL),(37,0,'17',3,'image/jpeg',7050,'products/17.jpg','[]','2021-10-18 07:55:16','2021-10-18 07:55:16',NULL),(38,0,'18-1',3,'image/jpeg',527022,'products/18-1.jpg','[]','2021-10-18 07:55:16','2021-10-18 07:55:16',NULL),(39,0,'18-2',3,'image/jpeg',43849,'products/18-2.jpg','[]','2021-10-18 07:55:16','2021-10-18 07:55:16',NULL),(40,0,'18-3',3,'image/jpeg',63876,'products/18-3.jpg','[]','2021-10-18 07:55:17','2021-10-18 07:55:17',NULL),(41,0,'18',3,'image/jpeg',61587,'products/18.jpg','[]','2021-10-18 07:55:17','2021-10-18 07:55:17',NULL),(42,0,'19-1',3,'image/jpeg',23166,'products/19-1.jpg','[]','2021-10-18 07:55:17','2021-10-18 07:55:17',NULL),(43,0,'19-2',3,'image/jpeg',12306,'products/19-2.jpg','[]','2021-10-18 07:55:17','2021-10-18 07:55:17',NULL),(44,0,'19-3',3,'image/jpeg',51458,'products/19-3.jpg','[]','2021-10-18 07:55:17','2021-10-18 07:55:17',NULL),(45,0,'19',3,'image/jpeg',227872,'products/19.jpg','[]','2021-10-18 07:55:18','2021-10-18 07:55:18',NULL),(46,0,'2-1',3,'image/jpeg',85522,'products/2-1.jpg','[]','2021-10-18 07:55:18','2021-10-18 07:55:18',NULL),(47,0,'2-2',3,'image/jpeg',122423,'products/2-2.jpg','[]','2021-10-18 07:55:18','2021-10-18 07:55:18',NULL),(48,0,'2-3',3,'image/jpeg',61996,'products/2-3.jpg','[]','2021-10-18 07:55:19','2021-10-18 07:55:19',NULL),(49,0,'2',3,'image/jpeg',10832,'products/2.jpg','[]','2021-10-18 07:55:19','2021-10-18 07:55:19',NULL),(50,0,'20-1',3,'image/jpeg',108013,'products/20-1.jpg','[]','2021-10-18 07:55:20','2021-10-18 07:55:20',NULL),(51,0,'20-2',3,'image/jpeg',107598,'products/20-2.jpg','[]','2021-10-18 07:55:20','2021-10-18 07:55:20',NULL),(52,0,'20-3',3,'image/jpeg',31959,'products/20-3.jpg','[]','2021-10-18 07:55:20','2021-10-18 07:55:20',NULL),(53,0,'20',3,'image/jpeg',12798,'products/20.jpg','[]','2021-10-18 07:55:21','2021-10-18 07:55:21',NULL),(54,0,'21-1',3,'image/jpeg',92022,'products/21-1.jpg','[]','2021-10-18 07:55:21','2021-10-18 07:55:21',NULL),(55,0,'21-2',3,'image/jpeg',73796,'products/21-2.jpg','[]','2021-10-18 07:55:21','2021-10-18 07:55:21',NULL),(56,0,'21',3,'image/jpeg',72410,'products/21.jpg','[]','2021-10-18 07:55:22','2021-10-18 07:55:22',NULL),(57,0,'22-1',3,'image/jpeg',50174,'products/22-1.jpg','[]','2021-10-18 07:55:22','2021-10-18 07:55:22',NULL),(58,0,'22-2',3,'image/jpeg',63267,'products/22-2.jpg','[]','2021-10-18 07:55:23','2021-10-18 07:55:23',NULL),(59,0,'22-3',3,'image/jpeg',125017,'products/22-3.jpg','[]','2021-10-18 07:55:24','2021-10-18 07:55:24',NULL),(60,0,'22',3,'image/jpeg',88636,'products/22.jpg','[]','2021-10-18 07:55:24','2021-10-18 07:55:24',NULL),(61,0,'23-1',3,'image/jpeg',64117,'products/23-1.jpg','[]','2021-10-18 07:55:24','2021-10-18 07:55:24',NULL),(62,0,'23-2',3,'image/jpeg',96786,'products/23-2.jpg','[]','2021-10-18 07:55:25','2021-10-18 07:55:25',NULL),(63,0,'23-3',3,'image/jpeg',46477,'products/23-3.jpg','[]','2021-10-18 07:55:25','2021-10-18 07:55:25',NULL),(64,0,'23',3,'image/jpeg',68142,'products/23.jpg','[]','2021-10-18 07:55:26','2021-10-18 07:55:26',NULL),(65,0,'3',3,'image/jpeg',8388,'products/3.jpg','[]','2021-10-18 07:55:26','2021-10-18 07:55:26',NULL),(66,0,'4-1',3,'image/jpeg',39071,'products/4-1.jpg','[]','2021-10-18 07:55:26','2021-10-18 07:55:26',NULL),(67,0,'4-2',3,'image/jpeg',35982,'products/4-2.jpg','[]','2021-10-18 07:55:27','2021-10-18 07:55:27',NULL),(68,0,'4-3',3,'image/jpeg',62867,'products/4-3.jpg','[]','2021-10-18 07:55:27','2021-10-18 07:55:27',NULL),(69,0,'4',3,'image/jpeg',5547,'products/4.jpg','[]','2021-10-18 07:55:28','2021-10-18 07:55:28',NULL),(70,0,'5-1',3,'image/jpeg',72383,'products/5-1.jpg','[]','2021-10-18 07:55:28','2021-10-18 07:55:28',NULL),(71,0,'5-2',3,'image/jpeg',108591,'products/5-2.jpg','[]','2021-10-18 07:55:28','2021-10-18 07:55:28',NULL),(72,0,'5-3',3,'image/jpeg',63741,'products/5-3.jpg','[]','2021-10-18 07:55:29','2021-10-18 07:55:29',NULL),(73,0,'5',3,'image/jpeg',98052,'products/5.jpg','[]','2021-10-18 07:55:29','2021-10-18 07:55:29',NULL),(74,0,'6',3,'image/jpeg',10944,'products/6.jpg','[]','2021-10-18 07:55:29','2021-10-18 07:55:29',NULL),(75,0,'7',3,'image/jpeg',10160,'products/7.jpg','[]','2021-10-18 07:55:30','2021-10-18 07:55:30',NULL),(76,0,'8-1',3,'image/jpeg',9986,'products/8-1.jpg','[]','2021-10-18 07:55:30','2021-10-18 07:55:30',NULL),(77,0,'8-2',3,'image/jpeg',8132,'products/8-2.jpg','[]','2021-10-18 07:55:30','2021-10-18 07:55:30',NULL),(78,0,'8-3',3,'image/jpeg',7867,'products/8-3.jpg','[]','2021-10-18 07:55:30','2021-10-18 07:55:30',NULL),(79,0,'8',3,'image/jpeg',10459,'products/8.jpg','[]','2021-10-18 07:55:30','2021-10-18 07:55:30',NULL),(80,0,'9-1',3,'image/jpeg',623616,'products/9-1.jpg','[]','2021-10-18 07:55:30','2021-10-18 07:55:30',NULL),(81,0,'9-2',3,'image/jpeg',647454,'products/9-2.jpg','[]','2021-10-18 07:55:31','2021-10-18 07:55:31',NULL),(82,0,'9',3,'image/jpeg',16733,'products/9.jpg','[]','2021-10-18 07:55:32','2021-10-18 07:55:32',NULL),(83,0,'1',4,'image/jpeg',11752,'customers/1.jpg','[]','2021-10-18 07:55:33','2021-10-18 07:55:33',NULL),(84,0,'10',4,'image/jpeg',27814,'customers/10.jpg','[]','2021-10-18 07:55:33','2021-10-18 07:55:33',NULL),(85,0,'2',4,'image/jpeg',19005,'customers/2.jpg','[]','2021-10-18 07:55:33','2021-10-18 07:55:33',NULL),(86,0,'3',4,'image/jpeg',20400,'customers/3.jpg','[]','2021-10-18 07:55:33','2021-10-18 07:55:33',NULL),(87,0,'4',4,'image/jpeg',26819,'customers/4.jpg','[]','2021-10-18 07:55:34','2021-10-18 07:55:34',NULL),(88,0,'5',4,'image/jpeg',14367,'customers/5.jpg','[]','2021-10-18 07:55:34','2021-10-18 07:55:34',NULL),(89,0,'6',4,'image/jpeg',12367,'customers/6.jpg','[]','2021-10-18 07:55:34','2021-10-18 07:55:34',NULL),(90,0,'7',4,'image/jpeg',20652,'customers/7.jpg','[]','2021-10-18 07:55:34','2021-10-18 07:55:34',NULL),(91,0,'8',4,'image/jpeg',21164,'customers/8.jpg','[]','2021-10-18 07:55:34','2021-10-18 07:55:34',NULL),(92,0,'9',4,'image/jpeg',6084,'customers/9.jpg','[]','2021-10-18 07:55:34','2021-10-18 07:55:34',NULL),(93,0,'1',5,'image/jpeg',532819,'news/1.jpg','[]','2021-10-18 07:55:38','2021-10-18 07:55:38',NULL),(94,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2021-10-18 07:55:38','2021-10-18 07:55:38',NULL),(95,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2021-10-18 07:55:39','2021-10-18 07:55:39',NULL),(96,0,'2',5,'image/jpeg',553729,'news/2.jpg','[]','2021-10-18 07:55:40','2021-10-18 07:55:40',NULL),(97,0,'3',5,'image/jpeg',522223,'news/3.jpg','[]','2021-10-18 07:55:41','2021-10-18 07:55:41',NULL),(98,0,'4',5,'image/jpeg',910908,'news/4.jpg','[]','2021-10-18 07:55:42','2021-10-18 07:55:42',NULL),(99,0,'5',5,'image/jpeg',666561,'news/5.jpg','[]','2021-10-18 07:55:43','2021-10-18 07:55:43',NULL),(100,0,'6',5,'image/jpeg',431929,'news/6.jpg','[]','2021-10-18 07:55:44','2021-10-18 07:55:44',NULL),(101,0,'7',5,'image/jpeg',568268,'news/7.jpg','[]','2021-10-18 07:55:44','2021-10-18 07:55:44',NULL),(102,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2021-10-18 07:55:45','2021-10-18 07:55:45',NULL),(103,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2021-10-18 07:55:45','2021-10-18 07:55:45',NULL),(104,0,'1',6,'image/jpeg',139880,'sliders/1.jpg','[]','2021-10-18 07:55:46','2021-10-18 07:55:46',NULL),(105,0,'2',6,'image/jpeg',85128,'sliders/2.jpg','[]','2021-10-18 07:55:47','2021-10-18 07:55:47',NULL),(106,0,'3',6,'image/jpeg',85668,'sliders/3.jpg','[]','2021-10-18 07:55:47','2021-10-18 07:55:47',NULL),(107,0,'1',7,'image/jpeg',56015,'promotion/1.jpg','[]','2021-10-18 07:55:48','2021-10-18 07:55:48',NULL),(108,0,'2',7,'image/jpeg',39964,'promotion/2.jpg','[]','2021-10-18 07:55:48','2021-10-18 07:55:48',NULL),(109,0,'3',7,'image/jpeg',71948,'promotion/3.jpg','[]','2021-10-18 07:55:48','2021-10-18 07:55:48',NULL),(110,0,'4',7,'image/jpeg',94590,'promotion/4.jpg','[]','2021-10-18 07:55:49','2021-10-18 07:55:49',NULL),(111,0,'5',7,'image/jpeg',96153,'promotion/5.jpg','[]','2021-10-18 07:55:49','2021-10-18 07:55:49',NULL),(112,0,'6',7,'image/jpeg',160910,'promotion/6.jpg','[]','2021-10-18 07:55:49','2021-10-18 07:55:49',NULL),(113,0,'7',7,'image/jpeg',59044,'promotion/7.jpg','[]','2021-10-18 07:55:50','2021-10-18 07:55:50',NULL),(114,0,'8',7,'image/jpeg',39964,'promotion/8.jpg','[]','2021-10-18 07:55:50','2021-10-18 07:55:50',NULL),(115,0,'9',7,'image/jpeg',54865,'promotion/9.jpg','[]','2021-10-18 07:55:50','2021-10-18 07:55:50',NULL),(116,0,'app',8,'image/png',88771,'general/app.png','[]','2021-10-18 07:55:51','2021-10-18 07:55:51',NULL),(117,0,'coming-soon',8,'image/jpeg',83359,'general/coming-soon.jpg','[]','2021-10-18 07:55:52','2021-10-18 07:55:52',NULL),(118,0,'favicon',8,'image/png',5147,'general/favicon.png','[]','2021-10-18 07:55:52','2021-10-18 07:55:52',NULL),(119,0,'logo-dark',8,'image/png',906,'general/logo-dark.png','[]','2021-10-18 07:55:52','2021-10-18 07:55:52',NULL),(120,0,'logo-light',8,'image/png',1430,'general/logo-light.png','[]','2021-10-18 07:55:53','2021-10-18 07:55:53',NULL),(121,0,'logo',8,'image/png',892,'general/logo.png','[]','2021-10-18 07:55:53','2021-10-18 07:55:53',NULL),(122,0,'newsletter',8,'image/jpeg',25569,'general/newsletter.jpg','[]','2021-10-18 07:55:53','2021-10-18 07:55:53',NULL),(123,0,'payment-method-1',8,'image/jpeg',976,'general/payment-method-1.jpg','[]','2021-10-18 07:55:53','2021-10-18 07:55:53',NULL),(124,0,'payment-method-2',8,'image/jpeg',1122,'general/payment-method-2.jpg','[]','2021-10-18 07:55:53','2021-10-18 07:55:53',NULL),(125,0,'payment-method-3',8,'image/jpeg',1040,'general/payment-method-3.jpg','[]','2021-10-18 07:55:54','2021-10-18 07:55:54',NULL),(126,0,'payment-method-4',8,'image/jpeg',722,'general/payment-method-4.jpg','[]','2021-10-18 07:55:54','2021-10-18 07:55:54',NULL),(127,0,'payment-method-5',8,'image/jpeg',773,'general/payment-method-5.jpg','[]','2021-10-18 07:55:54','2021-10-18 07:55:54',NULL),(128,0,'1',9,'image/png',11920,'stores/1.png','[]','2021-10-18 07:55:54','2021-10-18 07:55:54',NULL),(129,0,'10',9,'image/png',6583,'stores/10.png','[]','2021-10-18 07:55:54','2021-10-18 07:55:54',NULL),(130,0,'11',9,'image/png',6934,'stores/11.png','[]','2021-10-18 07:55:55','2021-10-18 07:55:55',NULL),(131,0,'12',9,'image/png',7396,'stores/12.png','[]','2021-10-18 07:55:55','2021-10-18 07:55:55',NULL),(132,0,'13',9,'image/png',5881,'stores/13.png','[]','2021-10-18 07:55:55','2021-10-18 07:55:55',NULL),(133,0,'14',9,'image/png',7188,'stores/14.png','[]','2021-10-18 07:55:55','2021-10-18 07:55:55',NULL),(134,0,'15',9,'image/png',7142,'stores/15.png','[]','2021-10-18 07:55:56','2021-10-18 07:55:56',NULL),(135,0,'16',9,'image/png',4659,'stores/16.png','[]','2021-10-18 07:55:56','2021-10-18 07:55:56',NULL),(136,0,'17',9,'image/png',6781,'stores/17.png','[]','2021-10-18 07:55:56','2021-10-18 07:55:56',NULL),(137,0,'2',9,'image/png',12300,'stores/2.png','[]','2021-10-18 07:55:57','2021-10-18 07:55:57',NULL),(138,0,'3',9,'image/png',10778,'stores/3.png','[]','2021-10-18 07:55:57','2021-10-18 07:55:57',NULL),(139,0,'4',9,'image/png',10771,'stores/4.png','[]','2021-10-18 07:55:57','2021-10-18 07:55:57',NULL),(140,0,'5',9,'image/png',13041,'stores/5.png','[]','2021-10-18 07:55:57','2021-10-18 07:55:57',NULL),(141,0,'6',9,'image/png',14006,'stores/6.png','[]','2021-10-18 07:55:58','2021-10-18 07:55:58',NULL),(142,0,'7',9,'image/png',5978,'stores/7.png','[]','2021-10-18 07:55:58','2021-10-18 07:55:58',NULL),(143,0,'8',9,'image/png',6586,'stores/8.png','[]','2021-10-18 07:55:58','2021-10-18 07:55:58',NULL),(144,0,'9',9,'image/png',6173,'stores/9.png','[]','2021-10-18 07:55:59','2021-10-18 07:55:59',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2021-10-18 07:55:08','2021-10-18 07:55:08',NULL),(2,0,'product-categories','product-categories',0,'2021-10-18 07:55:09','2021-10-18 07:55:09',NULL),(3,0,'products','products',0,'2021-10-18 07:55:10','2021-10-18 07:55:10',NULL),(4,0,'customers','customers',0,'2021-10-18 07:55:33','2021-10-18 07:55:33',NULL),(5,0,'news','news',0,'2021-10-18 07:55:38','2021-10-18 07:55:38',NULL),(6,0,'sliders','sliders',0,'2021-10-18 07:55:46','2021-10-18 07:55:46',NULL),(7,0,'promotion','promotion',0,'2021-10-18 07:55:48','2021-10-18 07:55:48',NULL),(8,0,'general','general',0,'2021-10-18 07:55:51','2021-10-18 07:55:51',NULL),(9,0,'stores','stores',0,'2021-10-18 07:55:54','2021-10-18 07:55:54',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2021-10-18 07:55:51','2021-10-18 07:55:51'),(2,5,'main-menu','2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `reference_id` int(10) unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(31,5,30,14,'Botble\\Page\\Models\\Page','/ve-chung-toi',NULL,0,'Về chúng tôi',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(32,5,30,15,'Botble\\Page\\Models\\Page','/dieu-khoan-su-dung',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(33,5,30,16,'Botble\\Page\\Models\\Page','/dieu-khoan-va-dieu-kien',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(34,5,30,17,'Botble\\Page\\Models\\Page','/dieu-kien-hoan-hang',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(35,5,30,24,'Botble\\Page\\Models\\Page','/sap-ra-mat',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(41,5,0,18,'Botble\\Page\\Models\\Page','/tin-tuc',NULL,0,'Tin tức',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(42,5,0,19,'Botble\\Page\\Models\\Page','/cau-hoi-thuong-gap',NULL,0,'FAQs',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(43,5,0,20,'Botble\\Page\\Models\\Page','/lien-he',NULL,0,'Liên hệ',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(44,6,0,15,'Botble\\Page\\Models\\Page','/dieu-khoan-su-dung',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(45,6,0,16,'Botble\\Page\\Models\\Page','/dieu-khoan-va-dieu-kien',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(46,6,0,17,'Botble\\Page\\Models\\Page','/dieu-kien-hoan-hang',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(47,6,0,19,'Botble\\Page\\Models\\Page','/cau-hoi-thuong-gap',NULL,0,'FAQs',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(49,7,0,14,'Botble\\Page\\Models\\Page','/ve-chung-toi',NULL,0,'Về chúng tôi',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(50,7,0,22,'Botble\\Page\\Models\\Page','/tiep-thi-lien-ket',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(51,7,0,23,'Botble\\Page\\Models\\Page','/tuyen-dung',NULL,0,'Tuyển dụng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(52,7,0,20,'Botble\\Page\\Models\\Page','/lien-he',NULL,0,'Liên hệ',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(53,8,0,18,'Botble\\Page\\Models\\Page','/tin-tuc',NULL,0,'Tin tức',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(2,'Quick links','quick-links','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(3,'Company','company','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(4,'Business','business','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(5,'Menu chính','menu-chinh','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(7,'Công ty','cong-ty','published','2021-10-18 07:55:51','2021-10-18 07:55:51'),(8,'Doanh nghiệp','doanh-nghiep','published','2021-10-18 07:55:51','2021-10-18 07:55:51');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2021-10-18 07:55:10','2021-10-18 07:55:10');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_05_03_000001_create_customer_columns',1),(15,'2019_05_03_000002_create_subscriptions_table',1),(16,'2019_05_03_000003_create_subscription_items_table',1),(17,'2019_08_19_000000_create_failed_jobs_table',1),(18,'2021_08_02_084121_fix_old_shortcode',1),(19,'2020_11_18_150916_ads_create_ads_table',2),(20,'2015_06_29_025744_create_audit_history',3),(21,'2015_06_18_033822_create_blog_table',4),(22,'2021_02_16_092633_remove_default_value_for_author_type',4),(23,'2016_06_17_091537_create_contacts_table',5),(24,'2020_03_05_041139_create_ecommerce_tables',6),(25,'2020_09_22_135635_update_taxes_table',6),(26,'2020_09_29_101006_add_views_into_ec_products_table',6),(27,'2020_10_01_152311_make_column_image_in_product_attributes_table_nullable',6),(28,'2020_10_06_073439_improve_ecommerce_database',6),(29,'2020_11_01_040415_update_table_ec_order_addresses',6),(30,'2020_11_04_091510_make_column_phone_in_order_addresses_nullable',6),(31,'2020_11_30_015801_update_table_ec_product_categories',6),(32,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(33,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(34,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(35,'2021_02_18_073505_update_table_ec_reviews',6),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(37,'2021_03_10_025153_change_column_tax_amount',6),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(39,'2021_04_28_074008_ecommerce_create_product_label_table',6),(40,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(41,'2021_06_28_153141_correct_slugs_data',6),(42,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(43,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(44,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(45,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(46,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(47,'2018_07_09_221238_create_faq_table',7),(48,'2016_10_03_032336_create_languages_table',8),(49,'2021_07_06_030002_create_marketplace_table',9),(50,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',9),(51,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',9),(52,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',9),(53,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',9),(54,'2017_10_24_154832_create_newsletter_table',10),(55,'2017_05_18_080441_create_payment_tables',11),(56,'2021_03_27_144913_add_customer_type_into_table_payments',11),(57,'2021_05_24_034720_make_column_currency_nullable',11),(58,'2021_08_09_161302_add_metadata_column_to_payments_table',11),(59,'2017_07_11_140018_create_simple_slider_table',12),(60,'2016_10_07_193005_create_translations_table',13),(61,'2021_10_19_020859_update_metadata_field',14),(62,'2021_10_25_021023_fix-priority-load-for-language-advanced',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) unsigned DEFAULT 0.00,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) unsigned DEFAULT 0.00,
  `current_balance` decimal(15,2) unsigned DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,9,5,1771.25,0.00,1771.25,0.00,'USD',NULL,'2021-10-14 07:56:02','2021-10-14 07:56:02',0,NULL),(2,2,11,1123.50,0.00,1123.50,0.00,'USD',NULL,'2021-10-13 07:56:03','2021-10-13 07:56:03',0,NULL),(3,9,12,1397.00,0.00,1397.00,1771.25,'USD',NULL,'2021-10-07 11:56:04','2021-10-07 11:56:04',0,NULL),(4,4,17,760.10,0.00,760.10,0.00,'USD',NULL,'2021-10-16 19:56:04','2021-10-16 19:56:04',0,NULL),(5,9,18,62.00,0.00,62.00,3168.25,'USD',NULL,'2021-10-02 11:56:05','2021-10-02 11:56:05',0,NULL),(6,9,20,1188.60,0.00,1188.60,3230.25,'USD',NULL,'2021-10-09 13:56:06','2021-10-09 13:56:06',0,NULL),(7,6,23,168.53,0.00,168.53,0.00,'USD',NULL,'2021-10-08 07:56:06','2021-10-08 07:56:06',0,NULL),(8,5,24,1701.90,0.00,1701.90,0.00,'USD',NULL,'2021-10-01 15:56:07','2021-10-01 15:56:07',0,NULL),(9,5,26,4435.50,0.00,4435.50,1701.90,'USD',NULL,'2021-10-07 01:56:08','2021-10-07 01:56:08',0,NULL),(10,6,28,168.53,0.00,168.53,168.53,'USD',NULL,'2021-09-24 03:56:08','2021-09-24 03:56:08',0,NULL),(11,5,30,1820.60,0.00,1820.60,6137.40,'USD',NULL,'2021-09-27 15:56:09','2021-09-27 15:56:09',0,NULL),(12,4,31,1451.10,0.00,1451.10,760.10,'USD',NULL,'2021-10-12 23:56:11','2021-10-12 23:56:11',0,NULL),(13,9,33,1397.00,0.00,1397.00,4418.85,'USD',NULL,'2021-09-28 11:56:12','2021-09-28 11:56:12',0,NULL),(14,4,35,1318.90,0.00,1318.90,2211.20,'USD',NULL,'2021-10-06 07:56:13','2021-10-06 07:56:13',0,NULL),(15,5,40,1260.00,0.00,1260.00,7958.00,'USD',NULL,'2021-09-27 19:56:14','2021-09-27 19:56:14',0,NULL),(16,9,41,22.00,0.00,22.00,5815.85,'USD',NULL,'2021-10-07 19:56:14','2021-10-07 19:56:14',0,NULL),(17,2,42,1134.00,0.00,1134.00,1123.50,'USD',NULL,'2021-10-07 13:56:15','2021-10-07 13:56:15',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) unsigned DEFAULT 0.00,
  `current_balance` decimal(15,2) unsigned DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,345.00,2257.50,'USD','','{\"name\":\"Marlen Hagenes\",\"number\":\"+13212916374\",\"full_name\":\"Dr. Kamren Thiel\",\"description\":\"Doug Reichert III\"}',NULL,0,'pending',NULL,'2021-10-18 07:56:16','2021-10-18 07:56:16',NULL),(2,2,0.00,242.00,1912.50,'USD','','{\"name\":\"Marlen Hagenes\",\"number\":\"+13212916374\",\"full_name\":\"Dr. Kamren Thiel\",\"description\":\"Doug Reichert III\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:17','2021-10-18 07:56:17',NULL),(3,2,0.00,196.00,1670.50,'USD','','{\"name\":\"Marlen Hagenes\",\"number\":\"+13212916374\",\"full_name\":\"Dr. Kamren Thiel\",\"description\":\"Doug Reichert III\"}',NULL,0,'pending',NULL,'2021-10-18 07:56:17','2021-10-18 07:56:17',NULL),(4,2,0.00,420.00,1474.50,'USD','','{\"name\":\"Marlen Hagenes\",\"number\":\"+13212916374\",\"full_name\":\"Dr. Kamren Thiel\",\"description\":\"Doug Reichert III\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:18','2021-10-18 07:56:18',NULL),(5,4,0.00,785.00,3530.10,'USD','','{\"name\":\"Mr. Guido Fritsch MD\",\"number\":\"+13213303385\",\"full_name\":\"Demarcus Pouros\",\"description\":\"Angelo Pouros\"}',NULL,0,'pending',NULL,'2021-10-18 07:56:19','2021-10-18 07:56:19',NULL),(6,4,0.00,794.00,2745.10,'USD','','{\"name\":\"Mr. Guido Fritsch MD\",\"number\":\"+13213303385\",\"full_name\":\"Demarcus Pouros\",\"description\":\"Angelo Pouros\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:20','2021-10-18 07:56:20',NULL),(7,4,0.00,283.00,1951.10,'USD','','{\"name\":\"Mr. Guido Fritsch MD\",\"number\":\"+13213303385\",\"full_name\":\"Demarcus Pouros\",\"description\":\"Angelo Pouros\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:20','2021-10-18 07:56:20',NULL),(8,4,0.00,493.00,1668.10,'USD','','{\"name\":\"Mr. Guido Fritsch MD\",\"number\":\"+13213303385\",\"full_name\":\"Demarcus Pouros\",\"description\":\"Angelo Pouros\"}',NULL,0,'completed',NULL,'2021-10-18 07:56:21','2021-10-18 07:56:21',NULL),(9,5,0.00,694.00,9218.00,'USD','','{\"name\":\"Kristoffer Harber\",\"number\":\"+13529279580\",\"full_name\":\"Antonia Keebler\",\"description\":\"Dr. Arlo Beier\"}',NULL,0,'pending',NULL,'2021-10-18 07:56:22','2021-10-18 07:56:22',NULL),(10,5,0.00,1842.00,8524.00,'USD','','{\"name\":\"Kristoffer Harber\",\"number\":\"+13529279580\",\"full_name\":\"Antonia Keebler\",\"description\":\"Dr. Arlo Beier\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:22','2021-10-18 07:56:22',NULL),(11,5,0.00,581.00,6682.00,'USD','','{\"name\":\"Kristoffer Harber\",\"number\":\"+13529279580\",\"full_name\":\"Antonia Keebler\",\"description\":\"Dr. Arlo Beier\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:23','2021-10-18 07:56:23',NULL),(12,5,0.00,1656.00,6101.00,'USD','','{\"name\":\"Kristoffer Harber\",\"number\":\"+13529279580\",\"full_name\":\"Antonia Keebler\",\"description\":\"Dr. Arlo Beier\"}',NULL,0,'pending',NULL,'2021-10-18 07:56:24','2021-10-18 07:56:24',NULL),(13,6,0.00,37.00,337.06,'USD','','{\"name\":\"Mrs. Demetris Schmeler\",\"number\":\"+15133307758\",\"full_name\":\"Mr. Camden Jakubowski Sr.\",\"description\":\"Rick Rutherford\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:24','2021-10-18 07:56:24',NULL),(14,6,0.00,22.00,300.06,'USD','','{\"name\":\"Mrs. Demetris Schmeler\",\"number\":\"+15133307758\",\"full_name\":\"Mr. Camden Jakubowski Sr.\",\"description\":\"Rick Rutherford\"}',NULL,0,'completed',NULL,'2021-10-18 07:56:25','2021-10-18 07:56:25',NULL),(15,6,0.00,49.00,278.06,'USD','','{\"name\":\"Mrs. Demetris Schmeler\",\"number\":\"+15133307758\",\"full_name\":\"Mr. Camden Jakubowski Sr.\",\"description\":\"Rick Rutherford\"}',NULL,0,'processing',NULL,'2021-10-18 07:56:26','2021-10-18 07:56:26',NULL),(16,6,0.00,61.00,229.06,'USD','','{\"name\":\"Mrs. Demetris Schmeler\",\"number\":\"+15133307758\",\"full_name\":\"Mr. Camden Jakubowski Sr.\",\"description\":\"Rick Rutherford\"}',NULL,0,'completed',NULL,'2021-10-18 07:56:27','2021-10-18 07:56:27',NULL),(17,9,0.00,808.00,5837.85,'USD','','{\"name\":\"Ms. Sydnie Hintz Sr.\",\"number\":\"+13098133130\",\"full_name\":\"Prof. Amalia Davis II\",\"description\":\"Joanie Kutch\"}',NULL,0,'completed',NULL,'2021-10-18 07:56:28','2021-10-18 07:56:28',NULL),(18,9,0.00,1528.00,5029.85,'USD','','{\"name\":\"Ms. Sydnie Hintz Sr.\",\"number\":\"+13098133130\",\"full_name\":\"Prof. Amalia Davis II\",\"description\":\"Joanie Kutch\"}',NULL,0,'completed',NULL,'2021-10-18 07:56:28','2021-10-18 07:56:28',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'Daisy Tillman','belle.ledner@example.com','+19594724418','74254 Kuhic Forest Suite 617','UY','Louisiana','Bartellfort',2,'stores/1.png','Est velit repellendus aspernatur sapiente quia.','Excepturi ullam repudiandae autem et. Sequi ut voluptas unde porro aspernatur. Sequi beatae asperiores sit unde quos voluptatem.','published',NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(2,'Dianna Price','jadyn.dietrich@example.org','+15073106903','9302 Stoltenberg Glen','ZW','Kansas','New Lonzofort',4,'stores/2.png','Officia in et ducimus sit.','A nobis hic aut laboriosam qui. Nostrum ipsum dolore eos autem qui dolore et voluptatem. Qui eos amet rerum sit debitis ab id.','published',NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(3,'Amie O\'Hara','heller.orval@example.com','+18289103964','92763 Lavon Mountain','BJ','Missouri','Violetteview',5,'stores/3.png','Voluptas dolor corrupti rem error.','Dolor et rem laboriosam quo tempora ea. Culpa quisquam provident laboriosam velit sed quasi vero. Quo ipsa facere rerum nisi sint.','published',NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(4,'Nya Jast','yadira17@example.org','+13315433861','651 Hayes Unions','BE','Colorado','Lake Louisafurt',6,'stores/4.png','Eum eum quaerat est consequuntur.','Id ut accusamus sunt doloremque minima. Laboriosam quia provident et accusamus mollitia. Adipisci quo cupiditate cupiditate beatae velit.','published',NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01'),(5,'Ally Treutel IV','emile.bednar@example.net','+19792948657','590 Prohaska Valleys','SZ','Kansas','Labadiefurt',9,'stores/5.png','Nisi dolorem alias quo ab vel natus qui et.','At autem cumque repellendus quod dolor vero. Non ut et eaque accusantium id neque. Suscipit labore vel accusantium.','published',NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,1054.50,0.00,2257.50,'$2y$10$B43n6ELkvu1qPh1NGxy04u1w6Kh7iIh1TP1pQFn02TaPhFtanSZtO','{\"name\":\"Marlen Hagenes\",\"number\":\"+13212916374\",\"full_name\":\"Dr. Kamren Thiel\",\"description\":\"Doug Reichert III\"}','2021-10-18 07:55:59','2021-10-18 07:56:19'),(2,4,1175.10,0.00,3530.10,'$2y$10$nwVSie1nOqPUclWwalKS4ehDDnyXBthVjP0HvfN.8K36vCaxM8CpO','{\"name\":\"Mr. Guido Fritsch MD\",\"number\":\"+13213303385\",\"full_name\":\"Demarcus Pouros\",\"description\":\"Angelo Pouros\"}','2021-10-18 07:56:00','2021-10-18 07:56:22'),(3,5,4445.00,0.00,9218.00,'$2y$10$u896Ztf6I1K3MF8/ERnBq.MDsbtZzuomxkK6hcKNWtaO1lye63qB2','{\"name\":\"Kristoffer Harber\",\"number\":\"+13529279580\",\"full_name\":\"Antonia Keebler\",\"description\":\"Dr. Arlo Beier\"}','2021-10-18 07:56:00','2021-10-18 07:56:24'),(4,6,168.06,0.00,337.06,'$2y$10$zPcLFNILe.k4c2OY49QyEOiN6v.8Mh7GvQehqc0Zd79eZSZfnY6rO','{\"name\":\"Mrs. Demetris Schmeler\",\"number\":\"+15133307758\",\"full_name\":\"Mr. Camden Jakubowski Sr.\",\"description\":\"Rick Rutherford\"}','2021-10-18 07:56:00','2021-10-18 07:56:28'),(5,9,3501.85,0.00,5837.85,'$2y$10$1RP9MkrE3UCxLS8/qFH8t.gz4Go1sGumIRkZabgf4BEdwJY/gAmei','{\"name\":\"Ms. Sydnie Hintz Sr.\",\"number\":\"+13098133130\",\"full_name\":\"Prof. Amalia Davis II\",\"description\":\"Joanie Kutch\"}','2021-10-18 07:56:01','2021-10-18 07:56:29');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(2,'About us','<p>She had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice timidly. \'Would you like the three were all shaped like the look of it at all,\' said the King hastily said, and went back to the Queen. An invitation for the Duchess said in a wondering tone. \'Why, what a delightful thing a bit!\' said the King, and the whole she thought of herself, \'I don\'t even know what a dear quiet thing,\' Alice went timidly up to Alice, and she walked up towards it rather timidly, as.</p><p>March Hare, who had followed him into the open air. \'IF I don\'t know one,\' said Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'I daresay it\'s a very difficult game indeed. The players all played at once crowded round her, about the right size again; and the shrill voice of the Lobster; I heard him declare, \"You have baked me too brown, I must have prizes.\' \'But who has won?\' This question the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time you were never.</p><p>THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, who was talking. \'How CAN I have ordered\'; and she grew no larger: still it was indeed: she was quite surprised to see if she meant to take out of the Queen till she shook the house, \"Let us both go to law: I will just explain to you to learn?\' \'Well, there was a general clapping of hands at this: it was looking up into the court, by the English, who wanted leaders, and had just.</p><p>Alice (she was rather doubtful whether she could do, lying down on the end of the moment how large she had sat down in an undertone, \'important--unimportant--unimportant--important--\' as if his heart would break. She pitied him deeply. \'What is it?\' \'Why,\' said the Cat, and vanished. Alice was only sobbing,\' she thought, and rightly too, that very few little girls of her sharp little chin into Alice\'s head. \'Is that the meeting adjourn, for the immediate adoption of more broken glass.) \'Now.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(3,'Terms Of Use','<p>There was a table in the sea, some children digging in the book,\' said the Duchess: you\'d better leave off,\' said the Footman. \'That\'s the judge,\' she said to one of the jury eagerly wrote down all three dates on their backs was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a very fine day!\' said a timid and tremulous sound.] \'That\'s different from what I get\" is the same size: to be ashamed of yourself,\' said Alice, \'and why it is you hate--C.</p><p>I heard him declare, \"You have baked me too brown, I must go and live in that poky little house, on the floor, as it can\'t possibly make me giddy.\' And then, turning to Alice, and she heard something splashing about in the pictures of him), while the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to day.\' This was not quite like the three gardeners instantly threw themselves flat upon their faces. There was nothing on it (as she had never left off staring at the March Hare and the.</p><p>King said to the waving of the Rabbit\'s voice along--\'Catch him, you by the Queen merely remarking that a red-hot poker will burn you if you only kept on good terms with him, he\'d do almost anything you liked with the game,\' the Queen furiously, throwing an inkstand at the Mouse\'s tail; \'but why do you call it sad?\' And she kept fanning herself all the creatures wouldn\'t be in a dreamy sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then I\'ll tell him--it was for bringing the.</p><p>The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to taste it, and then treading on my tail. See how eagerly the lobsters to the King, going up to Alice, and sighing. \'It IS the same thing,\' said the Mouse only growled in reply. \'Idiot!\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, timidly; \'some of the month is it?\' Alice panted as she could, for the immediate adoption of more broken glass.) \'Now tell me, Pat.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(4,'Terms & Conditions','<p>OUTSIDE.\' He unfolded the paper as he fumbled over the edge with each hand. \'And now which is which?\' she said this, she came up to them to be sure! However, everything is to-day! And yesterday things went on in these words: \'Yes, we went to the shore, and then the Mock Turtle, and to her daughter \'Ah, my dear! Let this be a lesson to you to death.\"\' \'You are old,\' said the March Hare. \'I didn\'t write it, and then hurried on, Alice started to her very much confused, \'I don\'t even know what a.</p><p>Gryphon repeated impatiently: \'it begins \"I passed by his garden.\"\' Alice did not come the same thing as a last resource, she put one arm out of the Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its eyelids, so he did,\' said the Dormouse: \'not in that ridiculous fashion.\' And he got up and straightening itself out again, so she took courage, and went back to my right size again; and the little golden key in the pool, \'and she sits purring so.</p><p>Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the Lobster Quadrille?\' the Gryphon whispered in a more subdued tone, and added with a knife, it usually bleeds; and she very good-naturedly began hunting about for them, but they all crowded together at one corner of it: for she was ever to get her head to keep herself from being run over; and the turtles all advance! They are waiting on the glass table as before, \'and things are worse than ever,\' thought the poor little.</p><p>Tell us all about it!\' and he wasn\'t one?\' Alice asked. The Hatter opened his eyes. He looked anxiously over his shoulder with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, with a kind of thing that would be grand, certainly,\' said Alice hastily; \'but I\'m not looking for eggs, as it was good practice to say \'creatures,\' you see, so many out-of-the-way things to happen, that it ought to have it explained,\' said the King replied. Here the other two were using it as far down.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(5,'Refund Policy','<p>Do you think, at your age, it is to find that the poor little thing sobbed again (or grunted, it was talking in his throat,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you turned a back-somersault in at all?\' said the March Hare went \'Sh! sh!\' and the little door about fifteen inches high: she tried to curtsey as she spoke--fancy CURTSEYING as you\'re falling through the neighbouring pool--she could hear the very tones of the window, I only knew how to set.</p><p>Alice, and she had read several nice little histories about children who had followed him into the sky. Alice went timidly up to them she heard something like this:-- \'Fury said to Alice. \'What IS the fun?\' said Alice. \'It must have prizes.\' \'But who has won?\' This question the Dodo could not taste theirs, and the fall NEVER come to the shore. CHAPTER III. A Caucus-Race and a scroll of parchment in the night? Let me think: was I the same size: to be two people! Why, there\'s hardly enough of me.</p><p>Alice began to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be the right size, that it was neither more nor less than no time she\'d have everybody executed, all round. \'But she must have imitated somebody else\'s hand,\' said the Mock Turtle, and said nothing. \'Perhaps it doesn\'t matter much,\' thought Alice, \'and why it is to find that she ran off at once: one old Magpie began wrapping itself up and leave the court; but on second thoughts she decided to remain.</p><p>I chose,\' the Duchess said after a pause: \'the reason is, that I\'m doubtful about the twentieth time that day. \'No, no!\' said the Hatter. \'I told you butter wouldn\'t suit the works!\' he added looking angrily at the Footman\'s head: it just grazed his nose, and broke off a head unless there was not an encouraging tone. Alice looked all round her, about four inches deep and reaching half down the chimney close above her: then, saying to her to wink with one eye, How the Owl and the White Rabbit.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(10,'Affiliate','<p>And it\'ll fetch things when you have to turn into a doze; but, on being pinched by the hand, it hurried off, without waiting for turns, quarrelling all the rest were quite dry again, the Dodo had paused as if nothing had happened. \'How am I to get us dry would be worth the trouble of getting her hands up to the Hatter. This piece of evidence we\'ve heard yet,\' said the Hatter: \'I\'m on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never to lose YOUR.</p><p>I THINK; or is it I can\'t tell you his history,\' As they walked off together, Alice heard the Queen\'s ears--\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'allow me to him: She gave me a good character, But said I could say if I fell off the top of it. Presently the Rabbit say, \'A barrowful will do, to begin again, it was getting very sleepy; \'and they drew all manner of things--everything that begins with a shiver. \'I beg pardon, your Majesty,\' said Alice in a great hurry; \'and their names.</p><p>Majesty?\' he asked. \'Begin at the mushroom for a few minutes, and began to feel very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle: \'why, if a dish or kettle had been anything near the right way to hear the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at the end of the Shark, But, when the White Rabbit, jumping up in such confusion that she had finished.</p><p>I\'ll set Dinah at you!\' There was certainly too much frightened that she tipped over the fire, and at once and put back into the court, she said this, she was nine feet high, and she drew herself up closer to Alice\'s side as she went on for some time busily writing in his throat,\' said the Hatter, \'or you\'ll be telling me next that you couldn\'t cut off a head unless there was a large rabbit-hole under the door; so either way I\'ll get into that lovely garden. First, however, she went hunting.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(11,'Career','<p>I know!\' exclaimed Alice, who was peeping anxiously into its face in some book, but I grow at a reasonable pace,\' said the Mock Turtle to the Knave was standing before them, in chains, with a growl, And concluded the banquet--] \'What IS the same tone, exactly as if she were looking over their slates; \'but it seems to like her, down here, that I should like to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Anything you like,\' said the Queen, the royal.</p><p>Alice, that she might as well to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at Two. Two began in a loud, indignant voice, but she saw in my life!\' Just as she fell very slowly, for she felt certain it must be the best cat in the distance. \'And yet what a delightful thing a Lobster Quadrille is!\' \'No, indeed,\' said Alice. The poor little thing grunted in reply (it had left off quarrelling with the bread-and-butter getting so far off).</p><p>Just as she spoke. Alice did not dare to laugh; and, as she was looking at everything about her, to pass away the moment they saw her, they hurried back to the baby, the shriek of the deepest contempt. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal: this fireplace is narrow, to be a queer thing, to be in before the trial\'s over!\' thought Alice. \'I\'ve tried the roots of trees, and I\'ve tried banks, and I\'ve tried hedges,\' the Pigeon in a tone of great.</p><p>Cat, and vanished. Alice was not an encouraging opening for a little pattering of feet in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half hoping that the meeting adjourn, for the baby, it was indeed: she was trying to box her own ears for having cheated herself in a low voice, to the fifth bend, I think?\' \'I had NOT!\' cried the Gryphon. \'It\'s all about as she left her, leaning her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, and.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(13,'Trang chủ','<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(14,'Về chúng tôi','<p>King very decidedly, and he wasn\'t going to leave off this minute!\' She generally gave herself very good advice, (though she very soon finished it off. * * * * * * * \'Come, my head\'s free at last!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'You are,\' said the Dodo. Then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a wonderful dream it had entirely disappeared; so the.</p><p>I wonder what they WILL do next! If they had at the house, and wondering whether she ought to be sure, this generally happens when you come and join the dance. Will you, won\'t you, won\'t you, won\'t you, will you, won\'t you, will you, old fellow?\' The Mock Turtle\'s Story \'You can\'t think how glad I am to see what was the Hatter. \'You might just as if nothing had happened. \'How am I to get out of breath, and said \'What else have you executed, whether you\'re a little pattering of feet in a.</p><p>Alice remained looking thoughtfully at the Queen, turning purple. \'I won\'t!\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t have come here.\' Alice didn\'t think that there ought! And when I got up this morning? I almost wish I\'d gone to see what this bottle does. I do so like that curious song about the twentieth time that day. \'That PROVES his guilt,\' said the Queen, but she was out of sight. Alice remained looking thoughtfully at the window.\' \'THAT you won\'t\'.</p><p>MINE,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the tale was something like it,\' said Alice sharply, for she had nibbled some more of it now in sight, and no room to grow to my right size again; and the fan, and skurried away into the sky. Twinkle, twinkle--\"\' Here the Queen had ordered. They very soon came upon a little three-legged table, all made a dreadfully ugly child: but it did not seem to put the hookah out of breath, and said to herself.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(15,'Điều khoản sử dụng','<p>Alice. \'I\'ve tried the roots of trees, and I\'ve tried hedges,\' the Pigeon in a very curious thing, and longed to get in?\' \'There might be hungry, in which case it would be quite as safe to stay in here any longer!\' She waited for a conversation. \'You don\'t know what to beautify is, I can\'t get out again. Suddenly she came upon a time there were a Duck and a piece of rudeness was more hopeless than ever: she sat down and saying to herself \'Suppose it should be raving mad after all! I almost.</p><p>Alice. \'Reeling and Writhing, of course, to begin at HIS time of life. The King\'s argument was, that if something wasn\'t done about it in with the tarts, you know--\' (pointing with his head!\' or \'Off with their hands and feet at once, while all the while, and fighting for the next verse.\' \'But about his toes?\' the Mock Turtle drew a long way. So they went up to the croquet-ground. The other guests had taken advantage of the garden, called out to sea. So they got settled down again, the cook.</p><p>I can\'t tell you more than nine feet high. \'Whoever lives there,\' thought Alice, and her eyes filled with cupboards and book-shelves; here and there. There was a table in the sea!\' cried the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might catch a bat, and that\'s very like having a game of croquet she was coming to, but it puzzled her too much, so she tried to open it; but, as the Dormouse again, so that they must needs come wriggling down from the Queen had ordered. They very.</p><p>French lesson-book. The Mouse gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was sitting between them, fast asleep, and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was nothing else to do, so Alice went on in the pool as it went, as if she meant to take out of the court was in the trial done,\' she thought, and rightly too, that very few little girls of her age knew the right height to be.\' \'It is wrong from beginning to.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(16,'Điều khoản và điều kiện','<p>So Alice began to say \'creatures,\' you see, Alice had got its neck nicely straightened out, and was going to begin with; and being so many out-of-the-way things had happened lately, that Alice quite jumped; but she ran off at once, in a furious passion, and went on muttering over the fire, licking her paws and washing her face--and she is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who had been (Before she had hoped) a fan and the King said, with a large fan in the other. \'I beg pardon, your.</p><p>Duchess, it had a VERY turn-up nose, much more like a snout than a pig, and she told her sister, as well as pigs, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, and tried to get an opportunity of saying to herself in Wonderland, though she knew she had hurt the poor little juror (it was Bill, the Lizard) could not possibly reach it: she could remember them, all these changes are! I\'m never sure what I\'m going to be.</p><p>It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the beak-- Pray how did you manage to do THAT in a low, timid voice, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle to the door. \'Call the next thing was to find any. And yet I don\'t know what you had been jumping about like that!\' By this time she saw in another minute the whole pack rose up into the jury-box, and saw that, in her brother\'s Latin Grammar, \'A mouse--of a mouse--to.</p><p>So you see, because some of the others took the hookah out of a well?\' \'Take some more of the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon whispered in a deep sigh, \'I was a good deal on where you want to go down the chimney!\' \'Oh! So Bill\'s got to do,\' said the Mock Turtle\'s Story \'You can\'t think how glad I am now? That\'ll be a lesson to you to offer it,\' said Five, in a moment. \'Let\'s go on for some minutes. The Caterpillar and Alice looked all round her.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(17,'Điều kiện hoàn hàng','<p>Duchess: \'and the moral of that is, but I don\'t know,\' he went on all the players, except the Lizard, who seemed too much frightened to say anything. \'Why,\' said the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen till she too began dreaming after a few yards off. The Cat only grinned a little wider. \'Come, it\'s pleased so far,\' said the Duchess. \'Everything\'s got a moral, if only you can have no notion how delightful it will be much the same tone, exactly as if he had.</p><p>Rabbit say, \'A barrowful will do, to begin again, it was empty: she did not like the look of it had lost something; and she was walking by the way out of its voice. \'Back to land again, and all that,\' he said in a few minutes she heard one of the ground, Alice soon began talking again. \'Dinah\'ll miss me very much confused, \'I don\'t know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their tails in their mouths. So they sat down in a languid, sleepy voice. \'Who are.</p><p>I was a general chorus of voices asked. \'Why, SHE, of course,\' he said in a natural way again. \'I wonder if I\'ve been changed for any of them. \'I\'m sure those are not the smallest notice of her hedgehog. The hedgehog was engaged in a hurried nervous manner, smiling at everything about her, to pass away the moment she quite forgot how to set about it; if I\'m not Ada,\' she said, without opening its eyes, \'Of course, of course; just what I say,\' the Mock Turtle with a large pool all round her.</p><p>English!\' said the Gryphon. \'I\'ve forgotten the Duchess sang the second time round, she came upon a little pattering of feet on the glass table and the other guinea-pig cheered, and was surprised to see the Hatter and the fall was over. However, when they met in the shade: however, the moment how large she had made out that the way I ought to be talking in a large pool all round the refreshments!\' But there seemed to listen, the whole place around her became alive with the clock. For instance.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(18,'Tin tức','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(19,'Câu hỏi thường gặp','<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(20,'Liên hệ','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(21,'Chính sách cookie','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(22,'Tiếp thị liên kết','<p>I\'d nearly forgotten to ask.\' \'It turned into a chrysalis--you will some day, you know--and then after that savage Queen: so she felt very curious thing, and she went back for a minute or two. \'They couldn\'t have wanted it much,\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an offended tone. And the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Hatter went on again:-- \'I didn\'t write it, and on it were white, but there were three gardeners at it, and burning with.</p><p>I was going to be, from one end to the dance. Will you, won\'t you, will you, old fellow?\' The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers that you couldn\'t cut off a head unless there was room for YOU, and no room to grow to my boy, I beat him when he finds out who was talking. Alice could speak again. In a minute or two, which gave the Pigeon had finished. \'As if I might venture to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it had no reason to be.</p><p>Alice gave a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at Alice, as she spoke, but no result seemed to be seen--everything seemed to follow, except a little glass box that was lying under the hedge. In another minute there was no more of it at last, and they can\'t prove I did: there\'s no meaning in it, \'and what is the same as the March Hare meekly replied. \'Yes, but I don\'t want to get out again. Suddenly she came in with a bound into the.</p><p>IT. It\'s HIM.\' \'I don\'t much care where--\' said Alice. \'Why not?\' said the Queen. \'Never!\' said the Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon the opportunity of saying to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t show it you myself,\' the Mock Turtle went on so long since she had finished, her sister on the ground near the entrance of the window, and on it were white, but there was no longer to be two people. \'But it\'s no use in saying anything more.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(23,'Tuyển dụng','<p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Well, I never was so large a house, that she wasn\'t a bit hurt, and she walked sadly down the little glass box that was trickling down his face, as long as there seemed to rise like a frog; and both the hedgehogs were out of breath, and said nothing. \'This here young lady,\' said the Gryphon, before Alice could see it pop down a good deal: this fireplace is narrow, to be in a moment: she looked back once or twice, and shook itself. Then it got down.</p><p>Alice remarked. \'Oh, you can\'t swim, can you?\' he added, turning to Alice again. \'No, I didn\'t,\' said Alice: \'besides, that\'s not a moment to think about stopping herself before she gave a look askance-- Said he thanked the whiting kindly, but he would not join the dance? Will you, won\'t you, will you, won\'t you, won\'t you join the dance? Will you, won\'t you, will you, old fellow?\' The Mock Turtle at last, they must be getting home; the night-air doesn\'t suit my throat!\' and a sad tale!\' said.</p><p>Alice began to cry again, for really I\'m quite tired and out of its little eyes, but it did not at all for any of them. \'I\'m sure I\'m not looking for the first figure,\' said the Gryphon. \'The reason is,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, to begin with; and being so many different sizes in a minute. Alice began to tremble. Alice looked all round the refreshments!\' But there seemed to be a book written about me, that there was.</p><p>Alice could see it trot away quietly into the open air. \'IF I don\'t keep the same side of WHAT?\' thought Alice \'without pictures or conversations in it, \'and what is the capital of Paris, and Paris is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must go by the pope, was soon left alone. \'I wish I hadn\'t drunk quite so much!\' Alas! it was sneezing on the top of his shrill little voice, the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in such.</p>',1,NULL,'default',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48'),(24,'Sắp ra mắt','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2021-10-18 07:55:48','2021-10-18 07:55:48');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'8SEG92ILIQ','sslcommerz',NULL,3151.60,1,'completed','confirm',1,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'HTDKEEAZCD','cod',NULL,2976.60,2,'pending','confirm',1,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'EFVS3INT7Q','bank_transfer',NULL,5676.00,3,'pending','confirm',8,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'ZWWF3YFAPP','stripe',NULL,1505.70,4,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'LWU91MZYLJ','stripe',NULL,1771.25,5,'completed','confirm',7,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'GB1HSS1ZXG','bank_transfer',NULL,5713.30,6,'pending','confirm',7,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'7IM0WHU816','razorpay',NULL,1820.60,7,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'AW58BGWJ7A','paypal',NULL,577.50,8,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'WNFHA0X0PY','bank_transfer',NULL,803.00,9,'pending','confirm',7,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'9PNPU4AWTV','bank_transfer',NULL,1314.50,10,'pending','confirm',7,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'BOY4CREWTB','stripe',NULL,1123.50,11,'completed','confirm',7,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'JBQXOPVCBC','mollie',NULL,1397.00,12,'completed','confirm',7,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'62CVWGUYZZ','stripe',NULL,3716.90,13,'completed','confirm',1,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'3T6CIOSBJX','bank_transfer',NULL,788.70,14,'pending','confirm',1,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'UULBZN9Z33','bank_transfer',NULL,88.28,15,'pending','confirm',8,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'EKINW8QKUL','stripe',NULL,2549.40,16,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'AKUNRHCCN1','stripe',NULL,760.10,17,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'TBISXIU3DA','razorpay',NULL,62.00,18,'completed','confirm',1,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'OOBGDIVVOU','bank_transfer',NULL,1314.50,19,'pending','confirm',1,NULL,NULL,'2021-10-18 07:56:01','2021-10-18 07:56:01','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'B0KE2FGGQ2','razorpay',NULL,1188.60,20,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'BNQM7SRRBD','cod',NULL,1860.00,21,'pending','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'W2UPPGTKWV','sslcommerz',NULL,577.50,22,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'1IRZ10RYFZ','mollie',NULL,168.53,23,'completed','confirm',1,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'YD6ANSVFRQ','stripe',NULL,1701.90,24,'completed','confirm',1,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'QGY17FJO0P','bank_transfer',NULL,2517.90,25,'pending','confirm',1,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'7DUAPFUNSK','paystack',NULL,4435.50,26,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'GHEONCDUGO','razorpay',NULL,2222.70,27,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'UCUSAGA90Y','paystack',NULL,168.53,28,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'LIKZS8KGBV','cod',NULL,3517.30,29,'pending','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'IBQK4AG5CR','razorpay',NULL,1820.60,30,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'EGPA0RNQOI','stripe',NULL,1451.10,31,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'4DHYYYJYKT','stripe',NULL,2509.50,32,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'SCMXXVU2LB','stripe',NULL,1397.00,33,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'WTEIHG5HL3','cod',NULL,1359.60,34,'pending','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'UE27KWOQGD','sslcommerz',NULL,1318.90,35,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'4GV0P5NRUA','bank_transfer',NULL,603.90,36,'pending','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'2PSBWHCDBX','cod',NULL,1658.50,37,'pending','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'FOGXSUVIE3','sslcommerz',NULL,2305.80,38,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'41MGBKO7DL','bank_transfer',NULL,1726.70,39,'pending','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'1Q8JARP2V5','stripe',NULL,1260.00,40,'completed','confirm',8,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'M1QVNOYMAJ','paypal',NULL,22.00,41,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'SU5EBYWB5W','stripe',NULL,1134.00,42,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'PHZNI34IKM','paystack',NULL,1274.70,43,'completed','confirm',10,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'LXBHUQ4JSL','bank_transfer',NULL,3416.20,44,'pending','confirm',1,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'ACSYWIAGUS','bank_transfer',NULL,2921.80,45,'pending','confirm',1,NULL,NULL,'2021-10-18 07:56:02','2021-10-18 07:56:02','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,3,1),(3,1,2),(4,3,2),(5,2,3),(6,3,3),(7,2,4),(8,3,4),(9,2,5),(10,4,5),(11,2,6),(12,3,6),(13,2,7),(14,3,7),(15,2,8),(16,3,8),(17,2,9),(18,4,9),(19,1,10),(20,4,10),(21,1,11),(22,3,11),(23,6,12),(24,8,12),(25,5,13),(26,8,13),(27,6,14),(28,8,14),(29,6,15),(30,8,15),(31,6,16),(32,7,16),(33,6,17),(34,8,17),(35,6,18),(36,7,18),(37,5,19),(38,7,19),(39,5,20),(40,8,20),(41,5,21),(42,7,21),(43,5,22),(44,7,22);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11),(56,6,12),(57,7,12),(58,8,12),(59,9,12),(60,10,12),(61,6,13),(62,7,13),(63,8,13),(64,9,13),(65,10,13),(66,6,14),(67,7,14),(68,8,14),(69,9,14),(70,10,14),(71,6,15),(72,7,15),(73,8,15),(74,9,15),(75,10,15),(76,6,16),(77,7,16),(78,8,16),(79,9,16),(80,10,16),(81,6,17),(82,7,17),(83,8,17),(84,9,17),(85,10,17),(86,6,18),(87,7,18),(88,8,18),(89,9,18),(90,10,18),(91,6,19),(92,7,19),(93,8,19),(94,9,19),(95,10,19),(96,6,20),(97,7,20),(98,8,20),(99,9,20),(100,10,20),(101,6,21),(102,7,21),(103,8,21),(104,9,21),(105,10,21),(106,6,22),(107,7,22),(108,8,22),(109,9,22),(110,10,22);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1547,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1493,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2349,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',964,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1349,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',872,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',134,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1766,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',138,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',791,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1983,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(12,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2167,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(13,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1876,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(14,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2374,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(15,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',480,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(16,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2097,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(17,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1267,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(18,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1144,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(19,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2307,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(20,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',816,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(21,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1916,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46'),(22,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',745,NULL,'2021-10-18 07:55:46','2021-10-18 07:55:46');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','d31a8400ccd2ac5a10debe6d0926bda6',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(13,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(14,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(15,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_store_name','Martfury',NULL,NULL),(19,'ecommerce_store_phone','1800979769',NULL,NULL),(20,'ecommerce_store_address','502 New Street',NULL,NULL),(21,'ecommerce_store_state','Brighton VIC',NULL,NULL),(22,'ecommerce_store_city','Brighton VIC',NULL,NULL),(23,'ecommerce_store_country','AU',NULL,NULL),(24,'theme','martfury',NULL,NULL),(25,'admin_logo','general/logo-light.png',NULL,NULL),(26,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(27,'theme-martfury-copyright','© 2021 Martfury. All Rights Reserved.',NULL,NULL),(28,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(29,'theme-martfury-logo','general/logo.png',NULL,NULL),(30,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(31,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(32,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(33,'theme-martfury-email','contact@martfury.co',NULL,NULL),(34,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(35,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(36,'theme-martfury-homepage_id','1',NULL,NULL),(37,'theme-martfury-blog_page_id','6',NULL,NULL),(38,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(39,'theme-martfury-cookie_consent_learn_more_url','http://martfury.local/cookie-policy',NULL,NULL),(40,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(41,'theme-martfury-number_of_products_per_page','40',NULL,NULL),(42,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(43,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(44,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(45,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(46,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(47,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(48,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(49,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(50,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(51,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(52,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(53,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(54,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(55,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(56,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(57,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(58,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(59,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(60,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(61,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(62,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(63,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(64,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(65,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(66,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(67,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(68,'theme-martfury-number_of_cross_sale_products_in_cart_page','7',NULL,NULL),(69,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(70,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(71,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(72,'theme-martfury-social-name-1','Facebook',NULL,NULL),(73,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(74,'theme-martfury-social-icon-1','fa-facebook',NULL,NULL),(75,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(76,'theme-martfury-social-name-2','Twitter',NULL,NULL),(77,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(78,'theme-martfury-social-icon-2','fa-twitter',NULL,NULL),(79,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(80,'theme-martfury-social-name-3','Instagram',NULL,NULL),(81,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(82,'theme-martfury-social-icon-3','fa-instagram',NULL,NULL),(83,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(84,'theme-martfury-social-name-4','Youtube',NULL,NULL),(85,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(86,'theme-martfury-social-icon-4','fa-youtube',NULL,NULL),(87,'theme-martfury-social-color-4','#FF0000',NULL,NULL),(88,'theme-martfury-vi-copyright','© 2021 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(89,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(90,'theme-martfury-vi-homepage_id','13',NULL,NULL),(91,'theme-martfury-vi-blog_page_id','18',NULL,NULL),(92,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(93,'theme-martfury-vi-cookie_consent_learn_more_url','http://martfury.local/cookie-policy',NULL,NULL),(94,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(95,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(96,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(97,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(98,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1.jpg','/products',NULL,1,'2021-10-18 07:55:47','2021-10-18 07:55:47'),(2,1,'Slider 2','sliders/2.jpg','/products',NULL,2,'2021-10-18 07:55:47','2021-10-18 07:55:47'),(3,1,'Slider 3','sliders/3.jpg','/products',NULL,3,'2021-10-18 07:55:47','2021-10-18 07:55:47'),(4,2,'Slider 1','sliders/1.jpg','/products',NULL,1,'2021-10-18 07:55:47','2021-10-18 07:55:47'),(5,2,'Slider 2','sliders/2.jpg','/products',NULL,2,'2021-10-18 07:55:47','2021-10-18 07:55:47'),(6,2,'Slider 3','sliders/3.jpg','/products',NULL,3,'2021-10-18 07:55:47','2021-10-18 07:55:47');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2021-10-18 07:55:47','2021-10-18 07:55:47'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2021-10-18 07:55:47','2021-10-18 07:55:47');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2021-10-18 07:55:09','2021-10-18 07:55:09'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-10-18 07:55:10','2021-10-18 07:55:10'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2021-10-18 07:55:32','2021-10-18 07:55:32'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-10-18 07:55:38','2021-10-18 07:55:38'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-10-18 07:55:38','2021-10-18 07:55:38'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-10-18 07:55:38','2021-10-18 07:55:38'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-10-18 07:55:38','2021-10-18 07:55:38'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-10-18 07:55:38','2021-10-18 07:55:38'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-10-18 07:55:38','2021-10-18 07:55:38'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(78,'thuong-mai-dien-tu',5,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(79,'fashion',6,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(80,'electronic',7,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(81,'thuong-mai',8,'Botble\\Blog\\Models\\Category','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(82,'general',1,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(83,'design',2,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(84,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(85,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(86,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(87,'chung',6,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(88,'thiet-ke',7,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(89,'thoi-trang',8,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(90,'thuong-hieu',9,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(91,'hien-dai',10,'Botble\\Blog\\Models\\Tag','tag','2021-10-18 07:55:46','2021-10-18 07:55:46'),(92,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(93,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(94,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(95,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(96,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(97,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(98,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(99,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(100,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(101,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(102,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(103,'4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop',12,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(104,'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke',13,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(105,'xu-huong-tui-xach-hang-dau-nam-2020-can-biet',14,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(106,'cach-phoi-mau-tui-xach-cua-ban-voi-trang-phuc',15,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(107,'cach-cham-soc-tui-da',16,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(108,'chung-toi-dang-nghien-ngam-10-xu-huong-tui-lon-nhat-cua-mua-he',17,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(109,'nhung-pham-chat-can-thiet-cua-am-nhac-thanh-cong-cao',18,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(110,'9-dieu-toi-thich-khi-cao-dau',19,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(111,'tai-sao-lam-viec-theo-nhom-thuc-su-bien-giac-mo-thanh-cong',20,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(112,'the-gioi-phuc-vu-cho-nhung-nguoi-trung-binh',21,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(113,'cac-duong-su-tren-man-hinh-khong-phai-la-dien-vien',22,'Botble\\Blog\\Models\\Post','blog','2021-10-18 07:55:46','2021-10-18 07:55:51'),(114,'home',1,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(115,'about-us',2,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(116,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(117,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(118,'refund-policy',5,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(119,'blog',6,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(120,'faqs',7,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(121,'contact',8,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(122,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(123,'affiliate',10,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(124,'career',11,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(125,'coming-soon',12,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(126,'trang-chu',13,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:47','2021-10-18 07:55:47'),(127,'ve-chung-toi',14,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(128,'dieu-khoan-su-dung',15,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(129,'dieu-khoan-va-dieu-kien',16,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(130,'dieu-kien-hoan-hang',17,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(131,'tin-tuc',18,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(132,'cau-hoi-thuong-gap',19,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(133,'lien-he',20,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(134,'chinh-sach-cookie',21,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(135,'tiep-thi-lien-ket',22,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(136,'tuyen-dung',23,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(137,'sap-ra-mat',24,'Botble\\Page\\Models\\Page','','2021-10-18 07:55:48','2021-10-18 07:55:48'),(138,'daisy-tillman',1,'Botble\\Marketplace\\Models\\Store','stores','2021-10-18 07:56:01','2021-10-18 07:56:01'),(139,'dianna-price',2,'Botble\\Marketplace\\Models\\Store','stores','2021-10-18 07:56:01','2021-10-18 07:56:01'),(140,'amie-ohara',3,'Botble\\Marketplace\\Models\\Store','stores','2021-10-18 07:56:01','2021-10-18 07:56:01'),(141,'nya-jast',4,'Botble\\Marketplace\\Models\\Store','stores','2021-10-18 07:56:01','2021-10-18 07:56:01'),(142,'ally-treutel-iv',5,'Botble\\Marketplace\\Models\\Store','stores','2021-10-18 07:56:01','2021-10-18 07:56:01');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_items`
--

DROP TABLE IF EXISTS `subscription_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) unsigned NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_items`
--

LOCK TABLES `subscription_items` WRITE;
/*!40000 ALTER TABLE `subscription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(6,'Chung',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(7,'Thiết kế',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(8,'Thời trang',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(9,'Thương hiệu',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46'),(10,'Hiện đại',1,'Botble\\ACL\\Models\\User','','published','2021-10-18 07:55:46','2021-10-18 07:55:46');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_stripe_id_index` (`stripe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$A5ePKRHbzJXKC14tKZ2Nne0yHNWpjgvhpg9mkmMBrloscBlY/8b/C',NULL,'2021-10-18 07:55:51','2021-10-18 07:55:51','System','Admin','botble',NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2021-10-18 07:55:54','2021-10-18 07:55:54'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2021-10-18 07:55:54','2021-10-18 07:55:54');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-29 14:58:27