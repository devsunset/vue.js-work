------------------------------------------------------------
-- database: dev_class
------------------------------------------------------------

------------------------------------------------------------
-- table t_category
------------------------------------------------------------
DROP TABLE IF EXISTS t_category;

CREATE TABLE t_category (
  id integer PRIMARY KEY AUTOINCREMENT,
  category1  text NOT NULL,
  category2  text NOT NULL,
  category3 text
) ;

INSERT INTO `t_category` (`id`, `category1`, `category2`, `category3`)
VALUES
	(1,'전자제품','컴퓨터','악세사리'),
	(2,'전자제품','컴퓨터','노트북'),
	(3,'전자제품','컴퓨터','조립식'),
	(4,'전자제품','가전제품','텔레비전'),
	(5,'전자제품','가전제품','냉장고'),
	(6,'생필품','주방용품','조리도구');

----------------------------------------------------------
-- table t_image
------------------------------------------------------------
DROP TABLE IF EXISTS t_image;

CREATE TABLE t_image (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
  `product_id` integer NOT NULL,
  `type` integer NOT NULL DEFAULT 1 COMMENT '1-썸네일, 2-제품이미지, 3-제품설명이미지',
  `path` text NOT NULL DEFAULT ''
) ;

INSERT INTO `t_image` (`id`, `product_id`, `type`, `path`)
VALUES
	(10,1,1,'keyboard1.jpg'),
	(11,1,2,'keyboard1.jpg'),
	(12,1,2,'keyboard2.jpg'),
	(14,1,3,'detail.jpg'),
	(15,2,1,'mouse1.jpg'),
	(16,2,2,'mouse1.jpg'),
	(17,2,3,'detail.jpg'),
	(18,1,2,'keyboard3.jpg'),
	(20,8,1,'mousepad1.jpg'),
	(22,8,2,'mousepad1.jpg'),
	(23,8,2,'mousepad2.jpg'),
	(24,8,2,'mousepad3.jpg'),
	(25,8,3,'detail.jpg');

------------------------------------------------------------
-- table t_product
------------------------------------------------------------
DROP TABLE IF EXISTS `t_product`;

CREATE TABLE `t_product` (
  id integer PRIMARY KEY AUTOINCREMENT,
  `product_name` text NOT NULL DEFAULT '',
  `product_price` integer NOT NULL DEFAULT 0,
  `delivery_price` integer NOT NULL DEFAULT 0,
  `add_delivery_price` integer NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `outbound_days` integer NOT NULL DEFAULT 5,
  `seller_id` integer  NOT NULL,
  `category_id` integer  NOT NULL,
  `active_yn` text NOT NULL DEFAULT 'Y',
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ;

INSERT INTO `t_product` (`id`, `product_name`, `product_price`, `delivery_price`, `add_delivery_price`, `tags`, `outbound_days`, `seller_id`, `category_id`, `active_yn`, `created_date`)
VALUES
	(1,'K70 RGB MK.2 BROWN 기계식 게이밍 키보드 갈축',219000,2500,5000,'키보드,기계식,게이밍',5,1,1,'Y','2021-01-10 00:00:00'),
	(2,'로지텍 MX VERTICAL 인체공학 무선 마우스',11900,2500,5000,'마우스',5,1,1,'Y','2021-01-10 00:00:00'),
	(8,'테스트 제품 AAA',23000,5000,2500,'테스트,노트북,악세사리',5,1,1,'Y','2021-01-21 00:41:14'),
	(9,'제품 테스트2',30000,5000,5000,'',5,1,6,'Y','2021-01-21 01:19:28');

------------------------------------------------------------
-- table t_seller
------------------------------------------------------------
DROP TABLE IF EXISTS `t_seller`;

CREATE TABLE `t_seller` (
  id integer PRIMARY KEY AUTOINCREMENT,
  `name` text NOT NULL DEFAULT '',
  `email` text NOT NULL DEFAULT '',
  `phone` text NOT NULL DEFAULT ''
) ;

INSERT INTO `t_seller` (`id`, `name`, `email`, `phone`)
VALUES
	(1,'vue-study','devsunset@gmail.com','010-1111-1111');

------------------------------------------------------------
-- table t_user
------------------------------------------------------------
DROP TABLE IF EXISTS t_user;

CREATE TABLE t_user (
  email text NOT NULL DEFAULT ,
  type integer NOT NULL DEFAULT 1 COMMENT '1-buyer, 2-seller',
  nickname text DEFAULT NULL,
  PRIMARY KEY (`email`)
) ;

INSERT INTO `t_user` (`email`, `type`, `nickname`)
VALUES
	('devsunset@gmail.com',1,'devsunset');