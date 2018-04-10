/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : jkdb

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2018-04-11 01:23:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom` (
  `id` varchar(128) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contacts` varchar(255) DEFAULT NULL,
  `custom_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom
-- ----------------------------

-- ----------------------------
-- Table structure for function
-- ----------------------------
DROP TABLE IF EXISTS `function`;
CREATE TABLE `function` (
  `id` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_no` varchar(255) DEFAULT NULL,
  `functionurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of function
-- ----------------------------

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` varchar(128) NOT NULL,
  `material_no` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for materialull
-- ----------------------------
DROP TABLE IF EXISTS `materialull`;
CREATE TABLE `materialull` (
  `id` varchar(128) NOT NULL,
  `best_amount` double DEFAULT NULL,
  `lower_amount` double DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_no` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `upper_amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of materialull
-- ----------------------------

-- ----------------------------
-- Table structure for material_out
-- ----------------------------
DROP TABLE IF EXISTS `material_out`;
CREATE TABLE `material_out` (
  `id` varchar(128) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `material_amount` double DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_no` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `picking_people` varchar(255) DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_out
-- ----------------------------

-- ----------------------------
-- Table structure for material_put
-- ----------------------------
DROP TABLE IF EXISTS `material_put`;
CREATE TABLE `material_put` (
  `id` varchar(128) NOT NULL,
  `material_amount` double DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_no` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `put_time` datetime DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_put
-- ----------------------------

-- ----------------------------
-- Table structure for price_policy
-- ----------------------------
DROP TABLE IF EXISTS `price_policy`;
CREATE TABLE `price_policy` (
  `id` varchar(128) NOT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_no` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pricepolicy_no` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price_policy
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(128) NOT NULL,
  `bar_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for productull
-- ----------------------------
DROP TABLE IF EXISTS `productull`;
CREATE TABLE `productull` (
  `id` varchar(128) NOT NULL,
  `best_amount` double DEFAULT NULL,
  `lower_amount` double DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `upper_amount` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productull
-- ----------------------------

-- ----------------------------
-- Table structure for product_out
-- ----------------------------
DROP TABLE IF EXISTS `product_out`;
CREATE TABLE `product_out` (
  `id` varchar(128) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `product_amount` double DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_out
-- ----------------------------

-- ----------------------------
-- Table structure for product_put
-- ----------------------------
DROP TABLE IF EXISTS `product_put`;
CREATE TABLE `product_put` (
  `id` varchar(128) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `product_amount` double DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `put_time` datetime DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_put
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE `purchase_order` (
  `id` varchar(128) NOT NULL,
  `material_amount` double DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_no` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `purchase_order_no` varchar(255) DEFAULT NULL,
  `purchase_time` datetime DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_order
-- ----------------------------

-- ----------------------------
-- Table structure for repository
-- ----------------------------
DROP TABLE IF EXISTS `repository`;
CREATE TABLE `repository` (
  `id` varchar(128) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repository
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('09c0e9f9-dbf2-42b7-9946-96a545eb17f6', '啊', '啊', 'a', null);
INSERT INTO `role` VALUES ('9b8467d1-3b80-4dce-9919-9b84fedfa404', '财务', '财务', 'caiwu', null);

-- ----------------------------
-- Table structure for role_funcs
-- ----------------------------
DROP TABLE IF EXISTS `role_funcs`;
CREATE TABLE `role_funcs` (
  `id` varchar(128) NOT NULL,
  `function_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_funcs
-- ----------------------------

-- ----------------------------
-- Table structure for sale_order
-- ----------------------------
DROP TABLE IF EXISTS `sale_order`;
CREATE TABLE `sale_order` (
  `id` varchar(128) NOT NULL,
  `custom_name` varchar(255) DEFAULT NULL,
  `custom_no` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `product_amount` double DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_no` varchar(255) DEFAULT NULL,
  `sale_time` datetime DEFAULT NULL,
  `sales_order_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `valid_end_time` datetime DEFAULT NULL,
  `valid_start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_order
-- ----------------------------

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` varchar(128) NOT NULL,
  `amount` double DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_no` varchar(255) DEFAULT NULL,
  `goods_type` varchar(255) DEFAULT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `repository_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------

-- ----------------------------
-- Table structure for subsciber
-- ----------------------------
DROP TABLE IF EXISTS `subsciber`;
CREATE TABLE `subsciber` (
  `id` varchar(128) NOT NULL,
  `begin_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `function_id` varchar(255) DEFAULT NULL,
  `remainder` int(11) DEFAULT NULL,
  `supsciber_date` datetime DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subsciber
-- ----------------------------

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` varchar(128) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contarcts` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `supplier_no` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant` (
  `id` varchar(128) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `contactor` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `tenant_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tenant
-- ----------------------------
INSERT INTO `tenant` VALUES ('7ac794e0-3675-49c6-83ef-b1df00c9f1d4', '尚圈', '尚圈', 'George', '龙邦', '123456', '1', '13370752411', '10002');
INSERT INTO `tenant` VALUES ('9bc51f55-e6bb-42ba-ae5c-4d572b8a2440', '尚圈', '尚圈', 'George', '龙邦', '123456', '3', '13370752411', '10001');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(128) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `user_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('504da39e-c91c-4fd0-865c-d4c36a416406', '搜索', '2385647@qq.com', '123456', null, '13370752412', null, '10003');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `id` varchar(128) NOT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
