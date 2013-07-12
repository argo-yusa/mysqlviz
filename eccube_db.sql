-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: eccube_db
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dtb_api_account`
--

DROP TABLE IF EXISTS `dtb_api_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_api_account` (
  `api_account_id` int(11) NOT NULL,
  `api_access_key` text NOT NULL,
  `api_secret_key` text NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`api_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_api_account_api_account_id_seq`
--

DROP TABLE IF EXISTS `dtb_api_account_api_account_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_api_account_api_account_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_api_config`
--

DROP TABLE IF EXISTS `dtb_api_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_api_config` (
  `api_config_id` int(11) NOT NULL,
  `operation_name` text NOT NULL,
  `operation_description` text,
  `auth_types` text NOT NULL,
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `is_log` smallint(6) NOT NULL DEFAULT '0',
  `sub_data` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`api_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_api_config_api_config_id_seq`
--

DROP TABLE IF EXISTS `dtb_api_config_api_config_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_api_config_api_config_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_baseinfo`
--

DROP TABLE IF EXISTS `dtb_baseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_baseinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `company_name` text,
  `company_kana` text,
  `zip01` text,
  `zip02` text,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text,
  `addr02` text,
  `tel01` text,
  `tel02` text,
  `tel03` text,
  `fax01` text,
  `fax02` text,
  `fax03` text,
  `business_hour` text,
  `law_company` text,
  `law_manager` text,
  `law_zip01` text,
  `law_zip02` text,
  `law_pref` smallint(6) DEFAULT NULL,
  `law_addr01` text,
  `law_addr02` text,
  `law_tel01` text,
  `law_tel02` text,
  `law_tel03` text,
  `law_fax01` text,
  `law_fax02` text,
  `law_fax03` text,
  `law_email` text,
  `law_url` text,
  `law_term01` text,
  `law_term02` text,
  `law_term03` text,
  `law_term04` text,
  `law_term05` text,
  `law_term06` text,
  `law_term07` text,
  `law_term08` text,
  `law_term09` text,
  `law_term10` text,
  `tax` decimal(10,0) NOT NULL DEFAULT '5',
  `tax_rule` smallint(6) NOT NULL DEFAULT '1',
  `email01` text,
  `email02` text,
  `email03` text,
  `email04` text,
  `email05` text,
  `free_rule` decimal(10,0) DEFAULT NULL,
  `shop_name` text,
  `shop_kana` text,
  `shop_name_eng` text,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `welcome_point` decimal(10,0) NOT NULL DEFAULT '0',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `top_tpl` text,
  `product_tpl` text,
  `detail_tpl` text,
  `mypage_tpl` text,
  `good_traded` text,
  `message` text,
  `regular_holiday_ids` text,
  `latitude` text,
  `longitude` text,
  `downloadable_days` decimal(10,0) DEFAULT '30',
  `downloadable_days_unlimited` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_best_products`
--

DROP TABLE IF EXISTS `dtb_best_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_best_products` (
  `best_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `title` text,
  `comment` text,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`best_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_best_products_best_id_seq`
--

DROP TABLE IF EXISTS `dtb_best_products_best_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_best_products_best_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_bkup`
--

DROP TABLE IF EXISTS `dtb_bkup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_bkup` (
  `bkup_name` text NOT NULL,
  `bkup_memo` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bkup_name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_bloc`
--

DROP TABLE IF EXISTS `dtb_bloc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_bloc` (
  `device_type_id` int(11) NOT NULL,
  `bloc_id` int(11) NOT NULL,
  `bloc_name` text,
  `tpl_path` text,
  `filename` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `php_path` text,
  `deletable_flg` smallint(6) NOT NULL DEFAULT '1',
  `plugin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`device_type_id`,`bloc_id`),
  UNIQUE KEY `device_type_id` (`device_type_id`,`filename`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_bloc_bloc_id_seq`
--

DROP TABLE IF EXISTS `dtb_bloc_bloc_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_bloc_bloc_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_blocposition`
--

DROP TABLE IF EXISTS `dtb_blocposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_blocposition` (
  `device_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `bloc_id` int(11) NOT NULL,
  `bloc_row` int(11) DEFAULT NULL,
  `anywhere` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`device_type_id`,`page_id`,`target_id`,`bloc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_category`
--

DROP TABLE IF EXISTS `dtb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` text,
  `parent_category_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_category_category_id_seq`
--

DROP TABLE IF EXISTS `dtb_category_category_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_category_category_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_category_count`
--

DROP TABLE IF EXISTS `dtb_category_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_category_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_category_total_count`
--

DROP TABLE IF EXISTS `dtb_category_total_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_category_total_count` (
  `category_id` int(11) NOT NULL,
  `product_count` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_class`
--

DROP TABLE IF EXISTS `dtb_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_class` (
  `class_id` int(11) NOT NULL,
  `name` text,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_class_class_id_seq`
--

DROP TABLE IF EXISTS `dtb_class_class_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_class_class_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_classcategory`
--

DROP TABLE IF EXISTS `dtb_classcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_classcategory` (
  `classcategory_id` int(11) NOT NULL,
  `name` text,
  `class_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_classcategory_classcategory_id_seq`
--

DROP TABLE IF EXISTS `dtb_classcategory_classcategory_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_classcategory_classcategory_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_csv`
--

DROP TABLE IF EXISTS `dtb_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_csv` (
  `no` int(11) NOT NULL DEFAULT '0',
  `csv_id` int(11) NOT NULL,
  `col` text,
  `disp_name` text,
  `rank` int(11) DEFAULT NULL,
  `rw_flg` smallint(6) DEFAULT '1',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_convert_kana_option` text,
  `size_const_type` text,
  `error_check_types` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_csv_no_seq`
--

DROP TABLE IF EXISTS `dtb_csv_no_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_csv_no_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_csv_sql`
--

DROP TABLE IF EXISTS `dtb_csv_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_csv_sql` (
  `sql_id` int(11) NOT NULL DEFAULT '0',
  `sql_name` text NOT NULL,
  `csv_sql` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sql_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_csv_sql_sql_id_seq`
--

DROP TABLE IF EXISTS `dtb_csv_sql_sql_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_csv_sql_sql_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_customer`
--

DROP TABLE IF EXISTS `dtb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_customer` (
  `customer_id` int(11) NOT NULL,
  `name01` text NOT NULL,
  `name02` text NOT NULL,
  `kana01` text NOT NULL,
  `kana02` text NOT NULL,
  `zip01` text,
  `zip02` text,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text,
  `addr02` text,
  `email` text NOT NULL,
  `email_mobile` text,
  `tel01` text,
  `tel02` text,
  `tel03` text,
  `fax01` text,
  `fax02` text,
  `fax03` text,
  `sex` smallint(6) DEFAULT NULL,
  `job` smallint(6) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `password` text,
  `reminder` smallint(6) DEFAULT NULL,
  `reminder_answer` text,
  `salt` text,
  `secret_key` text NOT NULL,
  `first_buy_date` datetime DEFAULT NULL,
  `last_buy_date` datetime DEFAULT NULL,
  `buy_times` decimal(10,0) DEFAULT '0',
  `buy_total` decimal(10,0) DEFAULT '0',
  `point` decimal(10,0) NOT NULL DEFAULT '0',
  `note` text,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `mobile_phone_id` text,
  `mailmaga_flg` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `secret_key` (`secret_key`(255)),
  KEY `dtb_customer_mobile_phone_id_key` (`mobile_phone_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_customer_customer_id_seq`
--

DROP TABLE IF EXISTS `dtb_customer_customer_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_customer_customer_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_customer_favorite_products`
--

DROP TABLE IF EXISTS `dtb_customer_favorite_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_customer_favorite_products` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_deliv`
--

DROP TABLE IF EXISTS `dtb_deliv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_deliv` (
  `deliv_id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `name` text,
  `service_name` text,
  `remark` text,
  `confirm_url` text,
  `rank` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`deliv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_deliv_deliv_id_seq`
--

DROP TABLE IF EXISTS `dtb_deliv_deliv_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_deliv_deliv_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_delivfee`
--

DROP TABLE IF EXISTS `dtb_delivfee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_delivfee` (
  `deliv_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `pref` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`deliv_id`,`fee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_delivtime`
--

DROP TABLE IF EXISTS `dtb_delivtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_delivtime` (
  `deliv_id` int(11) NOT NULL,
  `time_id` int(11) NOT NULL,
  `deliv_time` text NOT NULL,
  PRIMARY KEY (`deliv_id`,`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_holiday`
--

DROP TABLE IF EXISTS `dtb_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_holiday` (
  `holiday_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `month` smallint(6) NOT NULL,
  `day` smallint(6) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_holiday_holiday_id_seq`
--

DROP TABLE IF EXISTS `dtb_holiday_holiday_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_holiday_holiday_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_index_list`
--

DROP TABLE IF EXISTS `dtb_index_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_index_list` (
  `table_name` text NOT NULL,
  `column_name` text NOT NULL,
  `recommend_flg` smallint(6) NOT NULL DEFAULT '0',
  `recommend_comment` text,
  PRIMARY KEY (`table_name`(255),`column_name`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_kiyaku`
--

DROP TABLE IF EXISTS `dtb_kiyaku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_kiyaku` (
  `kiyaku_id` int(11) NOT NULL,
  `kiyaku_title` text NOT NULL,
  `kiyaku_text` text NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kiyaku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_kiyaku_kiyaku_id_seq`
--

DROP TABLE IF EXISTS `dtb_kiyaku_kiyaku_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_kiyaku_kiyaku_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_mail_history`
--

DROP TABLE IF EXISTS `dtb_mail_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_mail_history` (
  `send_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `send_date` datetime DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL,
  `subject` text,
  `mail_body` text,
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_mail_history_send_id_seq`
--

DROP TABLE IF EXISTS `dtb_mail_history_send_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_mail_history_send_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_mailmaga_template`
--

DROP TABLE IF EXISTS `dtb_mailmaga_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_mailmaga_template` (
  `template_id` int(11) NOT NULL,
  `subject` text,
  `mail_method` int(11) DEFAULT NULL,
  `body` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_mailmaga_template_template_id_seq`
--

DROP TABLE IF EXISTS `dtb_mailmaga_template_template_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_mailmaga_template_template_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_mailtemplate`
--

DROP TABLE IF EXISTS `dtb_mailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_mailtemplate` (
  `template_id` int(11) NOT NULL,
  `subject` text,
  `header` text,
  `footer` text,
  `creator_id` int(11) NOT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_maker`
--

DROP TABLE IF EXISTS `dtb_maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_maker` (
  `maker_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`maker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_maker_count`
--

DROP TABLE IF EXISTS `dtb_maker_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_maker_count` (
  `maker_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`maker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_maker_maker_id_seq`
--

DROP TABLE IF EXISTS `dtb_maker_maker_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_maker_maker_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_member`
--

DROP TABLE IF EXISTS `dtb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_member` (
  `member_id` int(11) NOT NULL,
  `name` text,
  `department` text,
  `login_id` text NOT NULL,
  `password` text NOT NULL,
  `salt` text NOT NULL,
  `authority` smallint(6) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `work` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_member_member_id_seq`
--

DROP TABLE IF EXISTS `dtb_member_member_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_member_member_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_mobile_ext_session_id`
--

DROP TABLE IF EXISTS `dtb_mobile_ext_session_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_mobile_ext_session_id` (
  `session_id` text NOT NULL,
  `param_key` text,
  `param_value` text,
  `url` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`(255)),
  KEY `dtb_mobile_ext_session_id_param_key_key` (`param_key`(255)),
  KEY `dtb_mobile_ext_session_id_param_value_key` (`param_value`(255)),
  KEY `dtb_mobile_ext_session_id_url_key` (`url`(255)),
  KEY `dtb_mobile_ext_session_id_create_date_key` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_module`
--

DROP TABLE IF EXISTS `dtb_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_module` (
  `module_id` int(11) NOT NULL,
  `module_code` text NOT NULL,
  `module_name` text NOT NULL,
  `sub_data` text,
  `auto_update_flg` smallint(6) NOT NULL DEFAULT '0',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_module_update_logs`
--

DROP TABLE IF EXISTS `dtb_module_update_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_module_update_logs` (
  `log_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `buckup_path` text,
  `error_flg` smallint(6) DEFAULT '0',
  `error` text,
  `ok` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_module_update_logs_log_id_seq`
--

DROP TABLE IF EXISTS `dtb_module_update_logs_log_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_module_update_logs_log_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_news`
--

DROP TABLE IF EXISTS `dtb_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_news` (
  `news_id` int(11) NOT NULL,
  `news_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `news_title` text NOT NULL,
  `news_comment` text,
  `news_url` text,
  `news_select` smallint(6) NOT NULL DEFAULT '0',
  `link_method` text,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_news_news_id_seq`
--

DROP TABLE IF EXISTS `dtb_news_news_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_news_news_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_order`
--

DROP TABLE IF EXISTS `dtb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_order` (
  `order_id` int(11) NOT NULL,
  `order_temp_id` text,
  `customer_id` int(11) NOT NULL,
  `message` text,
  `order_name01` text,
  `order_name02` text,
  `order_kana01` text,
  `order_kana02` text,
  `order_email` text,
  `order_tel01` text,
  `order_tel02` text,
  `order_tel03` text,
  `order_fax01` text,
  `order_fax02` text,
  `order_fax03` text,
  `order_zip01` text,
  `order_zip02` text,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_addr01` text,
  `order_addr02` text,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_birth` datetime DEFAULT NULL,
  `order_job` int(11) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `deliv_id` int(11) DEFAULT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `use_point` decimal(10,0) NOT NULL DEFAULT '0',
  `add_point` decimal(10,0) NOT NULL DEFAULT '0',
  `birth_point` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` text,
  `note` text,
  `status` smallint(6) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `commit_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `device_type_id` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `memo01` text,
  `memo02` text,
  `memo03` text,
  `memo04` text,
  `memo05` text,
  `memo06` text,
  `memo07` text,
  `memo08` text,
  `memo09` text,
  `memo10` text,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_order_detail`
--

DROP TABLE IF EXISTS `dtb_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_code` text,
  `classcategory_name1` text,
  `classcategory_name2` text,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_detail_id`),
  KEY `dtb_order_detail_product_id_key` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_order_detail_order_detail_id_seq`
--

DROP TABLE IF EXISTS `dtb_order_detail_order_detail_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_order_detail_order_detail_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_order_order_id_seq`
--

DROP TABLE IF EXISTS `dtb_order_order_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_order_order_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_order_temp`
--

DROP TABLE IF EXISTS `dtb_order_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_order_temp` (
  `order_temp_id` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `message` text,
  `order_name01` text,
  `order_name02` text,
  `order_kana01` text,
  `order_kana02` text,
  `order_email` text,
  `order_tel01` text,
  `order_tel02` text,
  `order_tel03` text,
  `order_fax01` text,
  `order_fax02` text,
  `order_fax03` text,
  `order_zip01` text,
  `order_zip02` text,
  `order_pref` smallint(6) DEFAULT NULL,
  `order_addr01` text,
  `order_addr02` text,
  `order_sex` smallint(6) DEFAULT NULL,
  `order_birth` datetime DEFAULT NULL,
  `order_job` int(11) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) NOT NULL DEFAULT '0',
  `deliv_id` int(11) DEFAULT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `charge` decimal(10,0) DEFAULT NULL,
  `use_point` decimal(10,0) NOT NULL DEFAULT '0',
  `add_point` decimal(10,0) NOT NULL DEFAULT '0',
  `birth_point` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` text,
  `note` text,
  `mail_flag` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `deliv_check` smallint(6) DEFAULT NULL,
  `point_check` smallint(6) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `device_type_id` int(11) DEFAULT NULL,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `order_id` int(11) DEFAULT NULL,
  `memo01` text,
  `memo02` text,
  `memo03` text,
  `memo04` text,
  `memo05` text,
  `memo06` text,
  `memo07` text,
  `memo08` text,
  `memo09` text,
  `memo10` text,
  `session` text,
  PRIMARY KEY (`order_temp_id`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_other_deliv`
--

DROP TABLE IF EXISTS `dtb_other_deliv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_other_deliv` (
  `other_deliv_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name01` text,
  `name02` text,
  `kana01` text,
  `kana02` text,
  `zip01` text,
  `zip02` text,
  `pref` smallint(6) DEFAULT NULL,
  `addr01` text,
  `addr02` text,
  `tel01` text,
  `tel02` text,
  `tel03` text,
  `fax01` text,
  `fax02` text,
  `fax03` text,
  PRIMARY KEY (`other_deliv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_other_deliv_other_deliv_id_seq`
--

DROP TABLE IF EXISTS `dtb_other_deliv_other_deliv_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_other_deliv_other_deliv_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_ownersstore_settings`
--

DROP TABLE IF EXISTS `dtb_ownersstore_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_ownersstore_settings` (
  `public_key` text NOT NULL,
  PRIMARY KEY (`public_key`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_pagelayout`
--

DROP TABLE IF EXISTS `dtb_pagelayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_pagelayout` (
  `device_type_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `page_name` text,
  `url` text NOT NULL,
  `filename` text,
  `header_chk` smallint(6) DEFAULT '1',
  `footer_chk` smallint(6) DEFAULT '1',
  `edit_flg` smallint(6) DEFAULT '1',
  `author` text,
  `description` text,
  `keyword` text,
  `update_url` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`device_type_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_pagelayout_page_id_seq`
--

DROP TABLE IF EXISTS `dtb_pagelayout_page_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_pagelayout_page_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_payment`
--

DROP TABLE IF EXISTS `dtb_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` text,
  `charge` decimal(10,0) DEFAULT NULL,
  `rule_max` decimal(10,0) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `note` text,
  `fix` smallint(6) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_image` text,
  `upper_rule` decimal(10,0) DEFAULT NULL,
  `charge_flg` smallint(6) DEFAULT '1',
  `rule_min` decimal(10,0) DEFAULT NULL,
  `upper_rule_max` decimal(10,0) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `module_path` text,
  `memo01` text,
  `memo02` text,
  `memo03` text,
  `memo04` text,
  `memo05` text,
  `memo06` text,
  `memo07` text,
  `memo08` text,
  `memo09` text,
  `memo10` text,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_payment_options`
--

DROP TABLE IF EXISTS `dtb_payment_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_payment_options` (
  `deliv_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`deliv_id`,`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_payment_payment_id_seq`
--

DROP TABLE IF EXISTS `dtb_payment_payment_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_payment_payment_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_plugin`
--

DROP TABLE IF EXISTS `dtb_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_plugin` (
  `plugin_id` int(11) NOT NULL,
  `plugin_name` text NOT NULL,
  `plugin_code` text NOT NULL,
  `class_name` text NOT NULL,
  `author` text,
  `author_site_url` text,
  `plugin_site_url` text,
  `plugin_version` text,
  `compliant_version` text,
  `plugin_description` text,
  `priority` int(11) NOT NULL DEFAULT '0',
  `enable` smallint(6) NOT NULL DEFAULT '0',
  `free_field1` text,
  `free_field2` text,
  `free_field3` text,
  `free_field4` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`plugin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_plugin_hookpoint`
--

DROP TABLE IF EXISTS `dtb_plugin_hookpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_plugin_hookpoint` (
  `plugin_hookpoint_id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `hook_point` text NOT NULL,
  `callback` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`plugin_hookpoint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`
--

DROP TABLE IF EXISTS `dtb_plugin_hookpoint_plugin_hookpoint_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_plugin_hookpoint_plugin_hookpoint_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_plugin_plugin_id_seq`
--

DROP TABLE IF EXISTS `dtb_plugin_plugin_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_plugin_plugin_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_product_categories`
--

DROP TABLE IF EXISTS `dtb_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_product_categories` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_product_status`
--

DROP TABLE IF EXISTS `dtb_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_product_status` (
  `product_status_id` smallint(6) NOT NULL,
  `product_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_status_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_products`
--

DROP TABLE IF EXISTS `dtb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_products` (
  `product_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `maker_id` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '2',
  `comment1` text,
  `comment2` text,
  `comment3` mediumtext,
  `comment4` text,
  `comment5` text,
  `comment6` text,
  `note` text,
  `main_list_comment` text,
  `main_list_image` text,
  `main_comment` mediumtext,
  `main_image` text,
  `main_large_image` text,
  `sub_title1` text,
  `sub_comment1` mediumtext,
  `sub_image1` text,
  `sub_large_image1` text,
  `sub_title2` text,
  `sub_comment2` mediumtext,
  `sub_image2` text,
  `sub_large_image2` text,
  `sub_title3` text,
  `sub_comment3` mediumtext,
  `sub_image3` text,
  `sub_large_image3` text,
  `sub_title4` text,
  `sub_comment4` mediumtext,
  `sub_image4` text,
  `sub_large_image4` text,
  `sub_title5` text,
  `sub_comment5` mediumtext,
  `sub_image5` text,
  `sub_large_image5` text,
  `sub_title6` text,
  `sub_comment6` mediumtext,
  `sub_image6` text,
  `sub_large_image6` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deliv_date_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_products_class`
--

DROP TABLE IF EXISTS `dtb_products_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_products_class` (
  `product_class_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `classcategory_id1` int(11) NOT NULL DEFAULT '0',
  `classcategory_id2` int(11) NOT NULL DEFAULT '0',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `product_code` text,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` smallint(6) NOT NULL DEFAULT '0',
  `sale_limit` decimal(10,0) DEFAULT NULL,
  `price01` decimal(10,0) DEFAULT NULL,
  `price02` decimal(10,0) NOT NULL,
  `deliv_fee` decimal(10,0) DEFAULT NULL,
  `point_rate` decimal(10,0) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `down_filename` text,
  `down_realfilename` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_class_id`),
  UNIQUE KEY `product_id` (`product_id`,`classcategory_id1`,`classcategory_id2`),
  KEY `dtb_products_class_product_id_key` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_products_class_product_class_id_seq`
--

DROP TABLE IF EXISTS `dtb_products_class_product_class_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_products_class_product_class_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_products_product_id_seq`
--

DROP TABLE IF EXISTS `dtb_products_product_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_products_product_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_recommend_products`
--

DROP TABLE IF EXISTS `dtb_recommend_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_recommend_products` (
  `product_id` int(11) NOT NULL,
  `recommend_product_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `comment` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`product_id`,`recommend_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_review`
--

DROP TABLE IF EXISTS `dtb_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `reviewer_name` text NOT NULL,
  `reviewer_url` text,
  `sex` smallint(6) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `recommend_level` smallint(6) NOT NULL,
  `title` text NOT NULL,
  `comment` text NOT NULL,
  `status` smallint(6) DEFAULT '2',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_review_review_id_seq`
--

DROP TABLE IF EXISTS `dtb_review_review_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_review_review_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_send_customer`
--

DROP TABLE IF EXISTS `dtb_send_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_send_customer` (
  `customer_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `email` text,
  `name` text,
  `send_flag` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`send_id`,`customer_id`),
  KEY `dtb_send_customer_customer_id_key` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_send_history`
--

DROP TABLE IF EXISTS `dtb_send_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_send_history` (
  `send_id` int(11) NOT NULL,
  `mail_method` smallint(6) DEFAULT NULL,
  `subject` text,
  `body` text,
  `send_count` int(11) DEFAULT NULL,
  `complete_count` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `search_data` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_send_history_send_id_seq`
--

DROP TABLE IF EXISTS `dtb_send_history_send_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_send_history_send_id_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_session`
--

DROP TABLE IF EXISTS `dtb_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_session` (
  `sess_id` text NOT NULL,
  `sess_data` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sess_id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_shipment_item`
--

DROP TABLE IF EXISTS `dtb_shipment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_shipment_item` (
  `shipping_id` int(11) NOT NULL,
  `product_class_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_code` text,
  `classcategory_name1` text,
  `classcategory_name2` text,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`shipping_id`,`product_class_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_shipping`
--

DROP TABLE IF EXISTS `dtb_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_shipping` (
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipping_name01` text,
  `shipping_name02` text,
  `shipping_kana01` text,
  `shipping_kana02` text,
  `shipping_tel01` text,
  `shipping_tel02` text,
  `shipping_tel03` text,
  `shipping_fax01` text,
  `shipping_fax02` text,
  `shipping_fax03` text,
  `shipping_pref` smallint(6) DEFAULT NULL,
  `shipping_zip01` text,
  `shipping_zip02` text,
  `shipping_addr01` text,
  `shipping_addr02` text,
  `time_id` int(11) DEFAULT NULL,
  `shipping_time` text,
  `shipping_num` text,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_commit_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_templates`
--

DROP TABLE IF EXISTS `dtb_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_templates` (
  `template_code` text NOT NULL,
  `device_type_id` int(11) NOT NULL,
  `template_name` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_code`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dtb_update`
--

DROP TABLE IF EXISTS `dtb_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dtb_update` (
  `module_id` int(11) NOT NULL,
  `module_name` text NOT NULL,
  `now_version` text,
  `latest_version` text NOT NULL,
  `module_explain` text,
  `main_php` text NOT NULL,
  `extern_php` text NOT NULL,
  `install_sql` text,
  `uninstall_sql` text,
  `other_files` text,
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `release_date` datetime NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_allowed_tag`
--

DROP TABLE IF EXISTS `mtb_allowed_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_allowed_tag` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_auth_excludes`
--

DROP TABLE IF EXISTS `mtb_auth_excludes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_auth_excludes` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_authority`
--

DROP TABLE IF EXISTS `mtb_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_authority` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_constants`
--

DROP TABLE IF EXISTS `mtb_constants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_constants` (
  `id` text NOT NULL,
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `remarks` text,
  PRIMARY KEY (`id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_customer_order_status`
--

DROP TABLE IF EXISTS `mtb_customer_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_customer_order_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_customer_status`
--

DROP TABLE IF EXISTS `mtb_customer_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_customer_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_db`
--

DROP TABLE IF EXISTS `mtb_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_db` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_delivery_date`
--

DROP TABLE IF EXISTS `mtb_delivery_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_delivery_date` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_device_type`
--

DROP TABLE IF EXISTS `mtb_device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_device_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_disable_logout`
--

DROP TABLE IF EXISTS `mtb_disable_logout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_disable_logout` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_disp`
--

DROP TABLE IF EXISTS `mtb_disp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_disp` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_job`
--

DROP TABLE IF EXISTS `mtb_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_job` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_magazine_type`
--

DROP TABLE IF EXISTS `mtb_magazine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_magazine_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_mail_magazine_type`
--

DROP TABLE IF EXISTS `mtb_mail_magazine_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_mail_magazine_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_mail_template`
--

DROP TABLE IF EXISTS `mtb_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_mail_template` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_mail_tpl_path`
--

DROP TABLE IF EXISTS `mtb_mail_tpl_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_mail_tpl_path` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_mail_type`
--

DROP TABLE IF EXISTS `mtb_mail_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_mail_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_mobile_domain`
--

DROP TABLE IF EXISTS `mtb_mobile_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_mobile_domain` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_order_status`
--

DROP TABLE IF EXISTS `mtb_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_order_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_order_status_color`
--

DROP TABLE IF EXISTS `mtb_order_status_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_order_status_color` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_ownersstore_err`
--

DROP TABLE IF EXISTS `mtb_ownersstore_err`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_ownersstore_err` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_ownersstore_ips`
--

DROP TABLE IF EXISTS `mtb_ownersstore_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_ownersstore_ips` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_page_max`
--

DROP TABLE IF EXISTS `mtb_page_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_page_max` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_permission`
--

DROP TABLE IF EXISTS `mtb_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_permission` (
  `id` text NOT NULL,
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_pref`
--

DROP TABLE IF EXISTS `mtb_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_pref` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_product_list_max`
--

DROP TABLE IF EXISTS `mtb_product_list_max`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_product_list_max` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_product_status_color`
--

DROP TABLE IF EXISTS `mtb_product_status_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_product_status_color` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_product_type`
--

DROP TABLE IF EXISTS `mtb_product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_product_type` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_recommend`
--

DROP TABLE IF EXISTS `mtb_recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_recommend` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_reminder`
--

DROP TABLE IF EXISTS `mtb_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_reminder` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_review_deny_url`
--

DROP TABLE IF EXISTS `mtb_review_deny_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_review_deny_url` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_sex`
--

DROP TABLE IF EXISTS `mtb_sex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_sex` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_status`
--

DROP TABLE IF EXISTS `mtb_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_status` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_status_image`
--

DROP TABLE IF EXISTS `mtb_status_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_status_image` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_target`
--

DROP TABLE IF EXISTS `mtb_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_target` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_taxrule`
--

DROP TABLE IF EXISTS `mtb_taxrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_taxrule` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_wday`
--

DROP TABLE IF EXISTS `mtb_wday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_wday` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_work`
--

DROP TABLE IF EXISTS `mtb_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_work` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `name` text,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mtb_zip`
--

DROP TABLE IF EXISTS `mtb_zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mtb_zip` (
  `zip_id` int(11) NOT NULL DEFAULT '0',
  `zipcode` text,
  `state` text,
  `city` text,
  `town` text,
  PRIMARY KEY (`zip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-12 16:59:30
