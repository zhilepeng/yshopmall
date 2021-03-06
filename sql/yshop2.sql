/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : yshop2

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 30/07/2020 10:59:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `alipay_config`;
CREATE TABLE `alipay_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='支付宝配置类';

-- ----------------------------
-- Records of alipay_config
-- ----------------------------
BEGIN;
INSERT INTO `alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');
COMMIT;

-- ----------------------------
-- Table structure for column_config
-- ----------------------------
DROP TABLE IF EXISTS `column_config`;
CREATE TABLE `column_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成字段信息存储';

-- ----------------------------
-- Records of column_config
-- ----------------------------
BEGIN;
INSERT INTO `column_config` VALUES (1, 'gen_test', 'id', 'int', NULL, 'auto_increment', b'0', NULL, 'PRI', b'0', b'1', NULL, 'ID', NULL);
INSERT INTO `column_config` VALUES (2, 'gen_test', 'sex', 'int', NULL, '', b'1', NULL, '', b'1', b'0', 'NotNull', '性别', NULL);
INSERT INTO `column_config` VALUES (3, 'gen_test', 'create_time', 'datetime', NULL, '', b'0', NULL, '', b'1', b'0', 'BetWeen', '', NULL);
INSERT INTO `column_config` VALUES (139, 'users_roles', 'user_id', 'bigint', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '用户ID', NULL);
INSERT INTO `column_config` VALUES (140, 'users_roles', 'role_id', 'bigint', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, '角色ID', NULL);
INSERT INTO `column_config` VALUES (141, 'user_avatar', 'id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (142, 'user_avatar', 'real_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '真实文件名', NULL);
INSERT INTO `column_config` VALUES (143, 'user_avatar', 'path', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '路径', NULL);
INSERT INTO `column_config` VALUES (144, 'user_avatar', 'size', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '大小', NULL);
INSERT INTO `column_config` VALUES (145, 'user_avatar', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建时间', NULL);
INSERT INTO `column_config` VALUES (146, 'yx_material_group', 'id', 'varchar', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, 'PK', NULL);
INSERT INTO `column_config` VALUES (147, 'yx_material_group', 'user_id', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '所属租户', NULL);
INSERT INTO `column_config` VALUES (148, 'yx_material_group', 'del_flag', 'char', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '逻辑删除标记（0：显示；1：隐藏）', NULL);
INSERT INTO `column_config` VALUES (149, 'yx_material_group', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '创建时间', NULL);
INSERT INTO `column_config` VALUES (150, 'yx_material_group', 'update_time', 'timestamp', NULL, 'on update CURRENT_TIMESTAMP', b'1', NULL, '', b'1', b'1', NULL, '最后更新时间', NULL);
INSERT INTO `column_config` VALUES (151, 'yx_material_group', 'create_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建者ID', NULL);
INSERT INTO `column_config` VALUES (152, 'yx_material_group', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '分组名', NULL);
INSERT INTO `column_config` VALUES (153, 'yx_material', 'id', 'varchar', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, 'PK', NULL);
INSERT INTO `column_config` VALUES (154, 'yx_material', 'user_id', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '所属租户', NULL);
INSERT INTO `column_config` VALUES (155, 'yx_material', 'del_flag', 'char', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '逻辑删除标记（0：显示；1：隐藏）', NULL);
INSERT INTO `column_config` VALUES (156, 'yx_material', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '创建时间', NULL);
INSERT INTO `column_config` VALUES (157, 'yx_material', 'update_time', 'timestamp', NULL, 'on update CURRENT_TIMESTAMP', b'1', NULL, '', b'1', b'1', NULL, '最后更新时间', NULL);
INSERT INTO `column_config` VALUES (158, 'yx_material', 'create_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建者ID', NULL);
INSERT INTO `column_config` VALUES (159, 'yx_material', 'type', 'char', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '类型1、图片；2、视频', NULL);
INSERT INTO `column_config` VALUES (160, 'yx_material', 'group_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '分组ID', NULL);
INSERT INTO `column_config` VALUES (161, 'yx_material', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '素材名', NULL);
INSERT INTO `column_config` VALUES (162, 'yx_material', 'url', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '素材链接', NULL);
INSERT INTO `column_config` VALUES (163, 'yx_user', 'uid', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '用户id', NULL);
INSERT INTO `column_config` VALUES (164, 'yx_user', 'username', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '用户账户(跟accout一样)', NULL);
INSERT INTO `column_config` VALUES (165, 'yx_user', 'account', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '用户账号', NULL);
INSERT INTO `column_config` VALUES (166, 'yx_user', 'password', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户密码（跟pwd）', NULL);
INSERT INTO `column_config` VALUES (167, 'yx_user', 'pwd', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户密码', NULL);
INSERT INTO `column_config` VALUES (168, 'yx_user', 'real_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '真实姓名', NULL);
INSERT INTO `column_config` VALUES (169, 'yx_user', 'birthday', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '生日', NULL);
INSERT INTO `column_config` VALUES (170, 'yx_user', 'card_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '身份证号码', NULL);
INSERT INTO `column_config` VALUES (171, 'yx_user', 'mark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户备注', NULL);
INSERT INTO `column_config` VALUES (172, 'yx_user', 'partner_id', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '合伙人id', NULL);
INSERT INTO `column_config` VALUES (173, 'yx_user', 'group_id', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户分组id', NULL);
INSERT INTO `column_config` VALUES (174, 'yx_user', 'nickname', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户昵称', NULL);
INSERT INTO `column_config` VALUES (175, 'yx_user', 'avatar', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户头像', NULL);
INSERT INTO `column_config` VALUES (176, 'yx_user', 'phone', 'char', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '手机号码', NULL);
INSERT INTO `column_config` VALUES (177, 'yx_user', 'add_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '添加时间', NULL);
INSERT INTO `column_config` VALUES (178, 'yx_user', 'add_ip', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '添加ip', NULL);
INSERT INTO `column_config` VALUES (179, 'yx_user', 'last_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '最后一次登录时间', NULL);
INSERT INTO `column_config` VALUES (180, 'yx_user', 'last_ip', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '最后一次登录ip', NULL);
INSERT INTO `column_config` VALUES (181, 'yx_user', 'now_money', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户余额', NULL);
INSERT INTO `column_config` VALUES (182, 'yx_user', 'brokerage_price', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '佣金金额', NULL);
INSERT INTO `column_config` VALUES (183, 'yx_user', 'integral', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户剩余积分', NULL);
INSERT INTO `column_config` VALUES (184, 'yx_user', 'sign_num', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '连续签到天数', NULL);
INSERT INTO `column_config` VALUES (185, 'yx_user', 'status', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '1为正常，0为禁止', NULL);
INSERT INTO `column_config` VALUES (186, 'yx_user', 'level', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '等级', NULL);
INSERT INTO `column_config` VALUES (187, 'yx_user', 'spread_uid', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '推广元id', NULL);
INSERT INTO `column_config` VALUES (188, 'yx_user', 'spread_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '推广员关联时间', NULL);
INSERT INTO `column_config` VALUES (189, 'yx_user', 'user_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户类型', NULL);
INSERT INTO `column_config` VALUES (190, 'yx_user', 'is_promoter', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '是否为推广员', NULL);
INSERT INTO `column_config` VALUES (191, 'yx_user', 'pay_count', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户购买次数', NULL);
INSERT INTO `column_config` VALUES (192, 'yx_user', 'spread_count', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '下级人数', NULL);
INSERT INTO `column_config` VALUES (193, 'yx_user', 'clean_time', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '清理会员时间', NULL);
INSERT INTO `column_config` VALUES (194, 'yx_user', 'addres', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '详细地址', NULL);
INSERT INTO `column_config` VALUES (195, 'yx_user', 'adminid', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '管理员编号 ', NULL);
INSERT INTO `column_config` VALUES (196, 'yx_user', 'login_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户登陆类型，h5,wechat,routine', NULL);
INSERT INTO `column_config` VALUES (197, 'yx_wechat_media', 'id', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '微信视频音频id', NULL);
INSERT INTO `column_config` VALUES (198, 'yx_wechat_media', 'type', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '回复类型', NULL);
INSERT INTO `column_config` VALUES (199, 'yx_wechat_media', 'path', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '文件路径', NULL);
INSERT INTO `column_config` VALUES (200, 'yx_wechat_media', 'media_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '微信服务器返回的id', NULL);
INSERT INTO `column_config` VALUES (201, 'yx_wechat_media', 'url', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '地址', NULL);
INSERT INTO `column_config` VALUES (202, 'yx_wechat_media', 'temporary', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '是否永久或者临时 0永久1临时', NULL);
INSERT INTO `column_config` VALUES (203, 'yx_wechat_media', 'add_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '添加时间', NULL);
INSERT INTO `column_config` VALUES (204, 'yx_store_order', 'id', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '订单ID', NULL);
INSERT INTO `column_config` VALUES (205, 'yx_store_order', 'order_id', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '订单号', NULL);
INSERT INTO `column_config` VALUES (206, 'yx_store_order', 'extend_order_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '额外订单号', NULL);
INSERT INTO `column_config` VALUES (207, 'yx_store_order', 'uid', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '用户id', NULL);
INSERT INTO `column_config` VALUES (208, 'yx_store_order', 'real_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户姓名', NULL);
INSERT INTO `column_config` VALUES (209, 'yx_store_order', 'user_phone', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户电话', NULL);
INSERT INTO `column_config` VALUES (210, 'yx_store_order', 'user_address', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '详细地址', NULL);
INSERT INTO `column_config` VALUES (211, 'yx_store_order', 'cart_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '购物车id', NULL);
INSERT INTO `column_config` VALUES (212, 'yx_store_order', 'freight_price', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '运费金额', NULL);
INSERT INTO `column_config` VALUES (213, 'yx_store_order', 'total_num', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '订单商品总数', NULL);
INSERT INTO `column_config` VALUES (214, 'yx_store_order', 'total_price', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '订单总价', NULL);
INSERT INTO `column_config` VALUES (215, 'yx_store_order', 'total_postage', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '邮费', NULL);
INSERT INTO `column_config` VALUES (216, 'yx_store_order', 'pay_price', 'decimal', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '实际支付金额', NULL);
INSERT INTO `column_config` VALUES (217, 'yx_store_order', 'pay_postage', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '支付邮费', NULL);
INSERT INTO `column_config` VALUES (218, 'yx_store_order', 'deduction_price', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '抵扣金额', NULL);
INSERT INTO `column_config` VALUES (219, 'yx_store_order', 'coupon_id', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '优惠券id', NULL);
INSERT INTO `column_config` VALUES (220, 'yx_store_order', 'coupon_price', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '优惠券金额', NULL);
INSERT INTO `column_config` VALUES (221, 'yx_store_order', 'paid', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '支付状态', NULL);
INSERT INTO `column_config` VALUES (222, 'yx_store_order', 'pay_time', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '支付时间', NULL);
INSERT INTO `column_config` VALUES (223, 'yx_store_order', 'pay_type', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '支付方式', NULL);
INSERT INTO `column_config` VALUES (224, 'yx_store_order', 'add_time', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '创建时间', NULL);
INSERT INTO `column_config` VALUES (225, 'yx_store_order', 'status', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）', NULL);
INSERT INTO `column_config` VALUES (226, 'yx_store_order', 'refund_status', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '0 未退款 1 申请中 2 已退款', NULL);
INSERT INTO `column_config` VALUES (227, 'yx_store_order', 'refund_reason_wap_img', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '退款图片', NULL);
INSERT INTO `column_config` VALUES (228, 'yx_store_order', 'refund_reason_wap_explain', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '退款用户说明', NULL);
INSERT INTO `column_config` VALUES (229, 'yx_store_order', 'refund_reason_time', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '退款时间', NULL);
INSERT INTO `column_config` VALUES (230, 'yx_store_order', 'refund_reason_wap', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '前台退款原因', NULL);
INSERT INTO `column_config` VALUES (231, 'yx_store_order', 'refund_reason', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '不退款的理由', NULL);
INSERT INTO `column_config` VALUES (232, 'yx_store_order', 'refund_price', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '退款金额', NULL);
INSERT INTO `column_config` VALUES (233, 'yx_store_order', 'delivery_sn', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '快递公司编号', NULL);
INSERT INTO `column_config` VALUES (234, 'yx_store_order', 'delivery_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '快递名称/送货人姓名', NULL);
INSERT INTO `column_config` VALUES (235, 'yx_store_order', 'delivery_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '发货类型', NULL);
INSERT INTO `column_config` VALUES (236, 'yx_store_order', 'delivery_id', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '快递单号/手机号', NULL);
INSERT INTO `column_config` VALUES (237, 'yx_store_order', 'gain_integral', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '消费赚取积分', NULL);
INSERT INTO `column_config` VALUES (238, 'yx_store_order', 'use_integral', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '使用积分', NULL);
INSERT INTO `column_config` VALUES (239, 'yx_store_order', 'back_integral', 'decimal', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '给用户退了多少积分', NULL);
INSERT INTO `column_config` VALUES (240, 'yx_store_order', 'mark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '备注', NULL);
INSERT INTO `column_config` VALUES (241, 'yx_store_order', 'is_del', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '是否删除', NULL);
INSERT INTO `column_config` VALUES (242, 'yx_store_order', 'unique', 'char', NULL, '', b'1', NULL, 'UNI', b'1', b'1', NULL, '唯一id(md5加密)类似id', NULL);
INSERT INTO `column_config` VALUES (243, 'yx_store_order', 'remark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '管理员备注', NULL);
INSERT INTO `column_config` VALUES (244, 'yx_store_order', 'mer_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '商户ID', NULL);
INSERT INTO `column_config` VALUES (245, 'yx_store_order', 'is_mer_check', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '', NULL);
INSERT INTO `column_config` VALUES (246, 'yx_store_order', 'combination_id', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '拼团产品id0一般产品', NULL);
INSERT INTO `column_config` VALUES (247, 'yx_store_order', 'pink_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '拼团id 0没有拼团', NULL);
INSERT INTO `column_config` VALUES (248, 'yx_store_order', 'cost', 'decimal', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '成本价', NULL);
INSERT INTO `column_config` VALUES (249, 'yx_store_order', 'seckill_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '秒杀产品ID', NULL);
INSERT INTO `column_config` VALUES (250, 'yx_store_order', 'bargain_id', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '砍价id', NULL);
INSERT INTO `column_config` VALUES (251, 'yx_store_order', 'verify_code', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '核销码', NULL);
INSERT INTO `column_config` VALUES (252, 'yx_store_order', 'store_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '门店id', NULL);
INSERT INTO `column_config` VALUES (253, 'yx_store_order', 'shipping_type', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '配送方式 1=快递 ，2=门店自提', NULL);
INSERT INTO `column_config` VALUES (254, 'yx_store_order', 'is_channel', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '支付渠道(0微信公众号1微信小程序)', NULL);
INSERT INTO `column_config` VALUES (255, 'yx_store_order', 'is_remind', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (256, 'yx_store_order', 'is_system_del', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (257, 'yx_user_recharge', 'id', 'int', NULL, 'auto_increment', b'0', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (258, 'yx_user_recharge', 'uid', 'int', NULL, '', b'0', NULL, 'MUL', b'0', b'0', NULL, '充值用户UID', NULL);
INSERT INTO `column_config` VALUES (259, 'yx_user_recharge', 'order_id', 'varchar', NULL, '', b'0', NULL, 'UNI', b'1', b'0', NULL, '订单号', NULL);
INSERT INTO `column_config` VALUES (260, 'yx_user_recharge', 'price', 'decimal', NULL, '', b'0', NULL, '', b'1', b'0', NULL, '充值金额', NULL);
INSERT INTO `column_config` VALUES (261, 'yx_user_recharge', 'recharge_type', 'varchar', NULL, '', b'0', NULL, 'MUL', b'1', b'0', NULL, '充值类型', NULL);
INSERT INTO `column_config` VALUES (262, 'yx_user_recharge', 'paid', 'tinyint', NULL, '', b'0', NULL, 'MUL', b'1', b'0', NULL, '是否充值', NULL);
INSERT INTO `column_config` VALUES (263, 'yx_user_recharge', 'pay_time', 'int', NULL, '', b'0', NULL, '', b'1', b'0', NULL, '充值支付时间', NULL);
INSERT INTO `column_config` VALUES (264, 'yx_user_recharge', 'add_time', 'int', NULL, '', b'0', NULL, '', b'1', b'0', NULL, '充值时间', NULL);
INSERT INTO `column_config` VALUES (265, 'yx_user_recharge', 'refund_price', 'decimal', NULL, '', b'0', NULL, '', b'0', b'0', NULL, '退款金额', NULL);
INSERT INTO `column_config` VALUES (266, 'yx_user_recharge', 'nickname', 'varchar', NULL, '', b'0', NULL, '', b'1', b'0', 'Like', '昵称', NULL);
INSERT INTO `column_config` VALUES (267, 'yx_system_store', 'id', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (268, 'yx_system_store', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '门店名称', NULL);
INSERT INTO `column_config` VALUES (269, 'yx_system_store', 'introduction', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '简介', NULL);
INSERT INTO `column_config` VALUES (270, 'yx_system_store', 'phone', 'char', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '手机号码', NULL);
INSERT INTO `column_config` VALUES (271, 'yx_system_store', 'address', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '省市区', NULL);
INSERT INTO `column_config` VALUES (272, 'yx_system_store', 'detailed_address', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '详细地址', NULL);
INSERT INTO `column_config` VALUES (273, 'yx_system_store', 'image', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '门店logo', NULL);
INSERT INTO `column_config` VALUES (274, 'yx_system_store', 'latitude', 'char', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '纬度', NULL);
INSERT INTO `column_config` VALUES (275, 'yx_system_store', 'longitude', 'char', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '经度', NULL);
INSERT INTO `column_config` VALUES (276, 'yx_system_store', 'valid_time', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '核销有效日期', NULL);
INSERT INTO `column_config` VALUES (277, 'yx_system_store', 'day_time', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '每日营业开关时间', NULL);
INSERT INTO `column_config` VALUES (278, 'yx_system_store', 'add_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '添加时间', NULL);
INSERT INTO `column_config` VALUES (279, 'yx_system_store', 'is_show', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '是否显示', NULL);
INSERT INTO `column_config` VALUES (280, 'yx_system_store', 'is_del', 'tinyint', NULL, '', b'1', NULL, '', b'0', b'1', NULL, '是否删除', NULL);
INSERT INTO `column_config` VALUES (281, 'yx_system_store_staff', 'id', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (282, 'yx_system_store_staff', 'uid', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '微信用户id', NULL);
INSERT INTO `column_config` VALUES (283, 'yx_system_store_staff', 'avatar', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '店员头像', NULL);
INSERT INTO `column_config` VALUES (284, 'yx_system_store_staff', 'store_id', 'int', NULL, '', b'1', 'Select', '', b'1', b'1', NULL, '门店id', NULL);
INSERT INTO `column_config` VALUES (285, 'yx_system_store_staff', 'staff_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', 'Like', '店员名称', NULL);
INSERT INTO `column_config` VALUES (286, 'yx_system_store_staff', 'phone', 'char', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '手机号码', NULL);
INSERT INTO `column_config` VALUES (287, 'yx_system_store_staff', 'verify_status', 'tinyint', NULL, '', b'1', 'Radio', '', b'1', b'1', NULL, '核销开关', NULL);
INSERT INTO `column_config` VALUES (288, 'yx_system_store_staff', 'status', 'tinyint', NULL, '', b'1', 'Radio', '', b'1', b'0', NULL, '状态', NULL);
INSERT INTO `column_config` VALUES (289, 'yx_system_store_staff', 'add_time', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '添加时间', NULL);
INSERT INTO `column_config` VALUES (290, 'yx_system_store_staff', 'nickname', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', 'Like', '微信昵称', NULL);
INSERT INTO `column_config` VALUES (291, 'yx_system_store_staff', 'store_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '所属门店', NULL);
INSERT INTO `column_config` VALUES (292, 'yx_wechat_user', 'uid', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '微信用户id', NULL);
INSERT INTO `column_config` VALUES (293, 'yx_wechat_user', 'unionid', 'varchar', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段', NULL);
INSERT INTO `column_config` VALUES (294, 'yx_wechat_user', 'openid', 'varchar', NULL, '', b'1', NULL, 'UNI', b'1', b'0', NULL, '用户的标识，对当前公众号唯一', NULL);
INSERT INTO `column_config` VALUES (295, 'yx_wechat_user', 'routine_openid', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '小程序唯一身份ID', NULL);
INSERT INTO `column_config` VALUES (296, 'yx_wechat_user', 'nickname', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户的昵称', NULL);
INSERT INTO `column_config` VALUES (297, 'yx_wechat_user', 'headimgurl', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户头像', NULL);
INSERT INTO `column_config` VALUES (298, 'yx_wechat_user', 'sex', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知', NULL);
INSERT INTO `column_config` VALUES (299, 'yx_wechat_user', 'city', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户所在城市', NULL);
INSERT INTO `column_config` VALUES (300, 'yx_wechat_user', 'language', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户的语言，简体中文为zh_CN', NULL);
INSERT INTO `column_config` VALUES (301, 'yx_wechat_user', 'province', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户所在省份', NULL);
INSERT INTO `column_config` VALUES (302, 'yx_wechat_user', 'country', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户所在国家', NULL);
INSERT INTO `column_config` VALUES (303, 'yx_wechat_user', 'remark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注', NULL);
INSERT INTO `column_config` VALUES (304, 'yx_wechat_user', 'groupid', 'smallint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '用户所在的分组ID（兼容旧的用户分组接口）', NULL);
INSERT INTO `column_config` VALUES (305, 'yx_wechat_user', 'tagid_list', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户被打上的标签ID列表', NULL);
INSERT INTO `column_config` VALUES (306, 'yx_wechat_user', 'subscribe', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '用户是否订阅该公众号标识', NULL);
INSERT INTO `column_config` VALUES (307, 'yx_wechat_user', 'subscribe_time', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '关注公众号时间', NULL);
INSERT INTO `column_config` VALUES (308, 'yx_wechat_user', 'add_time', 'int', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '添加时间', NULL);
INSERT INTO `column_config` VALUES (309, 'yx_wechat_user', 'stair', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '一级推荐人', NULL);
INSERT INTO `column_config` VALUES (310, 'yx_wechat_user', 'second', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '二级推荐人', NULL);
INSERT INTO `column_config` VALUES (311, 'yx_wechat_user', 'order_stair', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '一级推荐人订单', NULL);
INSERT INTO `column_config` VALUES (312, 'yx_wechat_user', 'order_second', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '二级推荐人订单', NULL);
INSERT INTO `column_config` VALUES (313, 'yx_wechat_user', 'now_money', 'decimal', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '佣金', NULL);
INSERT INTO `column_config` VALUES (314, 'yx_wechat_user', 'session_key', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '小程序用户会话密匙', NULL);
INSERT INTO `column_config` VALUES (315, 'yx_wechat_user', 'user_type', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '用户类型', NULL);
INSERT INTO `column_config` VALUES (316, 'yx_express', 'id', 'mediumint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '快递公司id', NULL);
INSERT INTO `column_config` VALUES (317, 'yx_express', 'code', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '快递公司简称', NULL);
INSERT INTO `column_config` VALUES (318, 'yx_express', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '快递公司全称', NULL);
INSERT INTO `column_config` VALUES (319, 'yx_express', 'sort', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '排序', NULL);
INSERT INTO `column_config` VALUES (320, 'yx_express', 'is_show', 'tinyint', NULL, '', b'1', NULL, 'MUL', b'1', b'1', NULL, '是否显示', NULL);
INSERT INTO `column_config` VALUES (321, 'yx_user_level', 'id', 'int', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, '', NULL);
INSERT INTO `column_config` VALUES (322, 'yx_user_level', 'uid', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '用户uid', NULL);
INSERT INTO `column_config` VALUES (323, 'yx_user_level', 'level_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '等级vip', NULL);
INSERT INTO `column_config` VALUES (324, 'yx_user_level', 'grade', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '会员等级', NULL);
INSERT INTO `column_config` VALUES (325, 'yx_user_level', 'valid_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '过期时间', NULL);
INSERT INTO `column_config` VALUES (326, 'yx_user_level', 'is_forever', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '是否永久', NULL);
INSERT INTO `column_config` VALUES (327, 'yx_user_level', 'mer_id', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '商户id', NULL);
INSERT INTO `column_config` VALUES (328, 'yx_user_level', 'status', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '0:禁止,1:正常', NULL);
INSERT INTO `column_config` VALUES (329, 'yx_user_level', 'mark', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '备注', NULL);
INSERT INTO `column_config` VALUES (330, 'yx_user_level', 'remind', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '是否已通知', NULL);
INSERT INTO `column_config` VALUES (331, 'yx_user_level', 'is_del', 'tinyint', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '是否删除,0=未删除,1=删除', NULL);
INSERT INTO `column_config` VALUES (332, 'yx_user_level', 'add_time', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '添加时间', NULL);
INSERT INTO `column_config` VALUES (333, 'yx_user_level', 'discount', 'int', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '享受折扣', NULL);
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `pid` bigint NOT NULL COMMENT '上级部门',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门';

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES (1, 'YSHOP', 0, b'1', '2019-03-01 12:07:37');
INSERT INTO `dept` VALUES (2, '研发部', 7, b'1', '2019-03-25 09:15:32');
INSERT INTO `dept` VALUES (5, '运维部', 7, b'1', '2019-03-25 09:20:44');
INSERT INTO `dept` VALUES (6, '测试部', 8, b'1', '2019-03-25 09:52:18');
INSERT INTO `dept` VALUES (7, '华南分部', 1, b'1', '2019-03-25 11:04:50');
INSERT INTO `dept` VALUES (8, '华北分部', 1, b'1', '2019-03-25 11:04:53');
INSERT INTO `dept` VALUES (11, '人事部', 8, b'1', '2019-03-25 11:07:58');
INSERT INTO `dept` VALUES (12, '7773', 1, b'1', '2020-05-18 19:43:53');
COMMIT;

-- ----------------------------
-- Table structure for dict
-- ----------------------------
DROP TABLE IF EXISTS `dict`;
CREATE TABLE `dict` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

-- ----------------------------
-- Records of dict
-- ----------------------------
BEGIN;
INSERT INTO `dict` VALUES (1, 'user_status', '用户状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (4, 'dept_status', '部门状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (5, 'job_status', '岗位状态', '2019-10-27 20:31:36');
INSERT INTO `dict` VALUES (6, '33', '3', '2020-05-18 19:55:49');
COMMIT;

-- ----------------------------
-- Table structure for dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `dict_detail`;
CREATE TABLE `dict_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '排序',
  `dict_id` bigint DEFAULT NULL COMMENT '字典id',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE,
  CONSTRAINT `FK5tpkputc6d9nboxojdbgnpmyb` FOREIGN KEY (`dict_id`) REFERENCES `dict` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of dict_detail
-- ----------------------------
BEGIN;
INSERT INTO `dict_detail` VALUES (1, '激活', 'true', '1', 1, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (2, '禁用', 'false', '2', 1, NULL);
INSERT INTO `dict_detail` VALUES (3, '启用', 'true', '1', 4, NULL);
INSERT INTO `dict_detail` VALUES (4, '停用', 'false', '2', 4, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (5, '启用2', 'true', '1', 5, NULL);
INSERT INTO `dict_detail` VALUES (6, '停用', 'false', '2', 5, '2019-10-27 20:31:36');
INSERT INTO `dict_detail` VALUES (7, '8', '8', '999', NULL, '2020-05-18 19:44:05');
INSERT INTO `dict_detail` VALUES (8, '99', '999', '999', NULL, '2020-05-18 19:44:31');
COMMIT;

-- ----------------------------
-- Table structure for email_config
-- ----------------------------
DROP TABLE IF EXISTS `email_config`;
CREATE TABLE `email_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱配置';

-- ----------------------------
-- Records of email_config
-- ----------------------------
BEGIN;
INSERT INTO `email_config` VALUES (1, '111@qq.com', '111', '111', '111', '1');
COMMIT;

-- ----------------------------
-- Table structure for gen_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_config`;
CREATE TABLE `gen_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成器配置';

-- ----------------------------
-- Records of gen_config
-- ----------------------------
BEGIN;
INSERT INTO `gen_config` VALUES (3, 'gen_test', 'Zheng Jie', b'1', 'eladmin-system', 'me.zhengjie.gen', 'E:\\workspace\\me\\front\\eladmin-web\\src\\views\\gen', 'E:\\workspace\\me\\front\\eladmin-web\\src\\api', NULL, '测试生成');
INSERT INTO `gen_config` VALUES (4, 'yx_material_group', 'hupeng', b'0', 'yshop-shop', 'co.yixiang.modules.shop', 'E:\\output', 'E:\\output\\', NULL, '素材');
INSERT INTO `gen_config` VALUES (5, 'yx_material', 'hupeng', b'0', 'yshop-shop', 'co.yixiang.modules.shop', 'E:\\output', 'E:\\output\\', NULL, '素材管理');
INSERT INTO `gen_config` VALUES (6, 'yx_user', 'hupeng', b'0', 'yshop-admin', 'co.yixiang.modules', 'aa', 'aa\\', NULL, '用户');
INSERT INTO `gen_config` VALUES (7, 'yx_wechat_media', 'hupeng', b'0', 'yshop-admin', 'co.yixiang.modules', 'E:\\book\\img', 'E:\\book\\img\\', NULL, 'ceshi');
INSERT INTO `gen_config` VALUES (8, 'yx_user_recharge', 'hupeng', b'0', 'yshop-shop', 'co.yixiang.modules.shop', 'E:\\java\\yxshop-private\\yshop-web\\src\\views\\shop\\recharge', 'E:\\java\\yxshop-private\\yshop-web\\src\\api', '', '充值管理');
INSERT INTO `gen_config` VALUES (9, 'yx_system_store', 'hupeng', b'0', 'yshop-shop', 'co.yixiang.modules.shop', 'E:\\java\\yxshop-private\\yshop-web\\src\\views\\shop\\store', 'E:\\java\\yxshop-private\\yshop-web\\src\\api', NULL, '门店');
INSERT INTO `gen_config` VALUES (10, 'yx_system_store_staff', 'hupeng', b'1', 'yshop-shop', 'co.yixiang.modules.shop', 'E:\\java\\yxshop-private\\yshop-web\\src\\views\\shop\\storestaff', 'E:\\java\\yxshop-private\\yshop-web\\src\\api', NULL, '门店店员');
COMMIT;

-- ----------------------------
-- Table structure for gen_test
-- ----------------------------
DROP TABLE IF EXISTS `gen_test`;
CREATE TABLE `gen_test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int DEFAULT NULL COMMENT '性别',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成测试';

-- ----------------------------
-- Records of gen_test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `sort` bigint NOT NULL COMMENT '岗位排序',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKmvhj0rogastlctflsxf1d6k3i` (`dept_id`) USING BTREE,
  CONSTRAINT `FKmvhj0rogastlctflsxf1d6k3i` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='岗位';

-- ----------------------------
-- Records of job
-- ----------------------------
BEGIN;
INSERT INTO `job` VALUES (8, '人事专员', b'1', 3, 11, '2019-03-29 14:52:28');
INSERT INTO `job` VALUES (10, '产品经理', b'1', 4, 2, '2019-03-29 14:55:51');
INSERT INTO `job` VALUES (11, '全栈开发2', b'1', 2, 2, '2019-03-31 13:39:30');
INSERT INTO `job` VALUES (12, '软件测试', b'1', 5, 2, '2019-03-31 13:39:43');
COMMIT;

-- ----------------------------
-- Table structure for local_storage
-- ----------------------------
DROP TABLE IF EXISTS `local_storage`;
CREATE TABLE `local_storage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大小',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='本地存储';

-- ----------------------------
-- Records of local_storage
-- ----------------------------
BEGIN;
INSERT INTO `local_storage` VALUES (1, 'list_30-20200107120524671.png', 'list_30', 'png', 'E:\\yshop\\file\\图片\\list_30-20200107120524671.png', '图片', '28.57KB   ', 'admin', '2020-01-07 12:05:25');
INSERT INTO `local_storage` VALUES (2, 'list_34-20200109071140374.png', 'list_34', 'png', 'E:\\yshop\\file\\图片\\list_34-20200109071140374.png', '图片', '27.05KB   ', 'admin', '2020-01-09 19:11:40');
INSERT INTO `local_storage` VALUES (3, 'list_22-20200109072256534.png', 'list_22', 'png', 'E:\\yshop\\file\\pic\\list_22-20200109072256534.png', 'pic', '28.23KB   ', 'admin', '2020-01-09 19:22:57');
INSERT INTO `local_storage` VALUES (4, 'list_32-20200109093407741.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200109093407741.png', 'pic', '27.65KB   ', 'admin', '2020-01-09 21:34:08');
INSERT INTO `local_storage` VALUES (5, 'list_32-20200109094223500.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200109094223500.png', 'pic', '27.65KB   ', 'admin', '2020-01-09 21:42:24');
INSERT INTO `local_storage` VALUES (6, 'list_32-20200109094413459.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200109094413459.png', 'pic', '27.65KB   ', 'admin', '2020-01-09 21:44:13');
INSERT INTO `local_storage` VALUES (7, 'list_32-20200109094652138.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200109094652138.png', 'pic', '27.65KB   ', 'admin', '2020-01-09 21:46:52');
INSERT INTO `local_storage` VALUES (8, 'list_34-20200109095146476.png', 'list_34', 'png', 'E:\\yshop\\file\\pic\\list_34-20200109095146476.png', 'pic', '27.05KB   ', 'admin', '2020-01-09 21:51:47');
INSERT INTO `local_storage` VALUES (9, 'list_32-20200109095700685.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200109095700685.png', 'pic', '27.65KB   ', 'admin', '2020-01-09 21:57:01');
INSERT INTO `local_storage` VALUES (10, 'list_20-20200109095936988.png', 'list_20', 'png', 'E:\\yshop\\file\\pic\\list_20-20200109095936988.png', 'pic', '22.92KB   ', 'admin', '2020-01-09 21:59:37');
INSERT INTO `local_storage` VALUES (11, 'list_32-20200109100213309.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200109100213309.png', 'pic', '27.65KB   ', 'admin', '2020-01-09 22:02:13');
INSERT INTO `local_storage` VALUES (12, 'list_30-20200109104513493.png', 'list_30', 'png', 'E:\\yshop\\file\\pic\\list_30-20200109104513493.png', 'pic', '28.57KB   ', 'admin', '2020-01-09 22:45:13');
INSERT INTO `local_storage` VALUES (13, 'list_16-20200110120838173.png', 'list_16', 'png', 'E:\\yshop\\file\\pic\\list_16-20200110120838173.png', 'pic', '28.93KB   ', 'admin', '2020-01-10 12:08:38');
INSERT INTO `local_storage` VALUES (14, 'list_32-20200110035831202.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200110035831202.png', 'pic', '27.65KB   ', 'admin', '2020-01-10 15:58:31');
INSERT INTO `local_storage` VALUES (15, 'list_32-2020011004054091.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-2020011004054091.png', 'pic', '27.65KB   ', 'admin', '2020-01-10 16:05:40');
INSERT INTO `local_storage` VALUES (16, 'list_30-20200110053337209.png', 'list_30', 'png', 'E:\\yshop\\file\\pic\\list_30-20200110053337209.png', 'pic', '28.57KB   ', 'admin', '2020-01-10 17:33:37');
INSERT INTO `local_storage` VALUES (17, 'list_32-20200110064436937.png', 'list_32', 'png', 'E:\\yshop\\file\\pic\\list_32-20200110064436937.png', 'pic', '27.65KB   ', 'admin', '2020-01-10 18:44:37');
INSERT INTO `local_storage` VALUES (18, 'list_22-20200110104217508.png', 'list_22', 'png', 'E:\\yshop\\file\\pic\\list_22-20200110104217508.png', 'pic', '28.23KB   ', 'admin', '2020-01-10 22:42:18');
INSERT INTO `local_storage` VALUES (19, 'list_18-20200111051038569.png', 'list_18', 'png', 'E:\\yshop\\file\\pic\\list_18-20200111051038569.png', 'pic', '29.62KB   ', '15136175246', '2020-01-11 17:10:39');
INSERT INTO `local_storage` VALUES (20, 'list_30-2020011105115469.png', 'list_30', 'png', 'E:\\yshop\\file\\pic\\list_30-2020011105115469.png', 'pic', '28.57KB   ', '15136175246', '2020-01-11 17:11:54');
INSERT INTO `local_storage` VALUES (21, 'list_30-20200111051343335.png', 'list_30', 'png', 'E:\\yshop\\file\\pic\\list_30-20200111051343335.png', 'pic', '28.57KB   ', '15136175246', '2020-01-11 17:13:43');
INSERT INTO `local_storage` VALUES (22, 'list_16-20200111051622984.png', 'list_16', 'png', 'E:\\yshop\\file\\pic\\list_16-20200111051622984.png', 'pic', '28.93KB   ', '15136175246', '2020-01-11 17:16:23');
INSERT INTO `local_storage` VALUES (23, 'list_24-20200111051630227.png', 'list_24', 'png', 'E:\\yshop\\file\\pic\\list_24-20200111051630227.png', 'pic', '27.31KB   ', '15136175246', '2020-01-11 17:16:30');
INSERT INTO `local_storage` VALUES (24, 'logo-20200131103905417.png', 'logo', 'png', 'E:\\yshop\\file\\pic\\logo-20200131103905417.png', 'pic', '48.39KB   ', 'admin', '2020-01-31 10:39:05');
INSERT INTO `local_storage` VALUES (25, 'avatar-20200131103928688.png', 'avatar', 'png', 'E:\\yshop\\file\\pic\\avatar-20200131103928688.png', 'pic', '1.82KB   ', 'admin', '2020-01-31 10:39:29');
INSERT INTO `local_storage` VALUES (26, 'list_13-2020013110394473.png', 'list_13', 'png', 'E:\\yshop\\file\\pic\\list_13-2020013110394473.png', 'pic', '23.05KB   ', 'admin', '2020-01-31 10:39:44');
INSERT INTO `local_storage` VALUES (27, 'list_18-2020013110394988.png', 'list_18', 'png', 'E:\\yshop\\file\\pic\\list_18-2020013110394988.png', 'pic', '29.62KB   ', 'admin', '2020-01-31 10:39:49');
INSERT INTO `local_storage` VALUES (28, 'list_22-20200131103952926.png', 'list_22', 'png', 'E:\\yshop\\file\\pic\\list_22-20200131103952926.png', 'pic', '28.23KB   ', 'admin', '2020-01-31 10:39:53');
INSERT INTO `local_storage` VALUES (29, 'list_26-20200131103956836.png', 'list_26', 'png', 'E:\\yshop\\file\\pic\\list_26-20200131103956836.png', 'pic', '28.36KB   ', 'admin', '2020-01-31 10:39:57');
INSERT INTO `local_storage` VALUES (30, 'list_28-20200131104001169.png', 'list_28', 'png', 'E:\\yshop\\file\\pic\\list_28-20200131104001169.png', 'pic', '28.38KB   ', 'admin', '2020-01-31 10:40:01');
INSERT INTO `local_storage` VALUES (31, 'list_16-20200207061544740.png', 'list_16', 'png', 'E:\\yshop\\file\\pic\\list_16-20200207061544740.png', 'pic', '28.93KB   ', 'hupeng', '2020-02-07 18:15:45');
INSERT INTO `local_storage` VALUES (32, 'list_30-2020020706162996.png', 'list_30', 'png', 'E:\\yshop\\file\\pic\\list_30-2020020706162996.png', 'pic', '28.57KB   ', 'hupeng', '2020-02-07 18:16:29');
INSERT INTO `local_storage` VALUES (33, 'list_16-20200207061714702.png', 'list_16', 'png', 'E:\\yshop\\file\\pic\\list_16-20200207061714702.png', 'pic', '28.93KB   ', 'hupeng', '2020-02-07 18:17:15');
INSERT INTO `local_storage` VALUES (34, 'list_18-20200207061743361.png', 'list_18', 'png', 'E:\\yshop\\file\\pic\\list_18-20200207061743361.png', 'pic', '29.62KB   ', 'hupeng', '2020-02-07 18:17:43');
INSERT INTO `local_storage` VALUES (35, 'list_30-20200207062920744.png', 'list_30', 'png', 'E:\\yshop\\file\\pic\\list_30-20200207062920744.png', 'pic', '28.57KB   ', 'hupeng', '2020-02-07 18:29:21');
INSERT INTO `local_storage` VALUES (36, '05ea40b831858a8cf423aa709840507c-20200228083801500.png', '05ea40b831858a8cf423aa709840507c', 'png', 'E:\\yshop\\file\\pic\\05ea40b831858a8cf423aa709840507c-20200228083801500.png', 'pic', '5.19KB   ', 'admin', '2020-02-28 20:38:02');
INSERT INTO `local_storage` VALUES (37, '05ea40b831858a8cf423aa709840507c-20200311043711341.png', '05ea40b831858a8cf423aa709840507c', 'png', 'E:\\yshop\\file\\pic\\05ea40b831858a8cf423aa709840507c-20200311043711341.png', 'pic', '5.19KB   ', 'admin', '2020-03-11 16:37:11');
INSERT INTO `local_storage` VALUES (38, '秒杀-2020031104371672.png', '秒杀', 'png', 'E:\\yshop\\file\\pic\\秒杀-2020031104371672.png', 'pic', '6.07KB   ', 'admin', '2020-03-11 16:37:16');
INSERT INTO `local_storage` VALUES (39, '砍价-20200311043720679.png', '砍价', 'png', 'E:\\yshop\\file\\pic\\砍价-20200311043720679.png', 'pic', '6.13KB   ', 'admin', '2020-03-11 16:37:21');
INSERT INTO `local_storage` VALUES (40, '优惠券-20200311043724709.png', '优惠券', 'png', 'E:\\yshop\\file\\pic\\优惠券-20200311043724709.png', 'pic', '5.45KB   ', 'admin', '2020-03-11 16:37:25');
INSERT INTO `local_storage` VALUES (41, '资讯-20200311043727918.png', '资讯', 'png', 'E:\\yshop\\file\\pic\\资讯-20200311043727918.png', 'pic', '5.19KB   ', 'admin', '2020-03-11 16:37:28');
INSERT INTO `local_storage` VALUES (42, 'list_16-20200322071324803.png', 'list_16', 'png', 'E:\\yshop\\file\\pic\\list_16-20200322071324803.png', 'pic', '28.93KB   ', 'admin', '2020-03-22 19:13:25');
INSERT INTO `local_storage` VALUES (43, 'list_22-20200322071348844.png', 'list_22', 'png', 'E:\\yshop\\file\\pic\\list_22-20200322071348844.png', 'pic', '28.23KB   ', 'admin', '2020-03-22 19:13:49');
INSERT INTO `local_storage` VALUES (44, 'list_34-2020032207154023.png', 'list_34', 'png', 'E:\\yshop\\file\\pic\\list_34-2020032207154023.png', 'pic', '27.05KB   ', 'admin', '2020-03-22 19:15:40');
INSERT INTO `local_storage` VALUES (45, '钻石-20200328094531898.jpg', '钻石', 'jpg', 'E:\\yshop\\file\\pic\\钻石-20200328094531898.jpg', 'pic', '32.42KB   ', 'admin', '2020-03-28 21:45:32');
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT '0',
  `uid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1262575380937428996 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统日志';

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件',
  `pid` bigint NOT NULL COMMENT '上级菜单ID',
  `sort` bigint NOT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接地址',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '是否隐藏',
  `component_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '-' COMMENT '组件名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限',
  `type` int DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKqcf9gem97gqa5qjm4d3elcqt5` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES (1, b'0', '系统管理', NULL, 0, 99, 'system', 'system', b'0', b'0', NULL, '2018-12-18 15:11:29', NULL, 1);
INSERT INTO `menu` VALUES (2, b'0', '用户管理', 'system/user/index', 1, 2, 'peoples', 'user', b'0', b'0', 'User', '2018-12-18 15:14:44', 'user:list', 1);
INSERT INTO `menu` VALUES (3, b'0', '角色管理', 'system/role/index', 1, 3, 'role', 'role', b'0', b'0', 'Role', '2018-12-18 15:16:07', 'roles:list', 1);
INSERT INTO `menu` VALUES (5, b'0', '菜单管理', 'system/menu/index', 1, 5, 'menu', 'menu', b'0', b'0', 'Menu', '2018-12-18 15:17:28', 'menu:list', 1);
INSERT INTO `menu` VALUES (6, b'0', '系统监控', NULL, 0, 100, 'monitor', 'monitor', b'0', b'0', NULL, '2018-12-18 15:17:48', NULL, 1);
INSERT INTO `menu` VALUES (7, b'0', '操作日志', 'monitor/log/index', 6, 11, 'log', 'logs', b'1', b'0', 'Log', '2018-12-18 15:18:26', 'log:list', 1);
INSERT INTO `menu` VALUES (9, b'0', 'SQL监控', 'monitor/sql/index', 6, 14, 'sqlMonitor', 'druid', b'0', b'0', 'Sql', '2018-12-18 15:19:34', NULL, 1);
INSERT INTO `menu` VALUES (14, b'0', '邮件工具', 'tools/email/index', 36, 24, 'email', 'email', b'0', b'0', 'Email', '2018-12-27 10:13:09', NULL, 1);
INSERT INTO `menu` VALUES (18, b'0', '存储管理', 'tools/storage/index', 36, 23, 'qiniu', 'storage', b'0', b'0', 'Storage', '2018-12-31 11:12:15', 'storage:list', 1);
INSERT INTO `menu` VALUES (19, b'0', '支付宝工具', 'tools/aliPay/index', 36, 27, 'alipay', 'aliPay', b'0', b'0', 'AliPay', '2018-12-31 14:52:38', NULL, 1);
INSERT INTO `menu` VALUES (28, b'0', '定时任务', 'system/timing/index', 36, 21, 'timing', 'timing', b'0', b'0', 'Timing', '2019-01-07 20:34:40', 'timing:list', 1);
INSERT INTO `menu` VALUES (30, b'0', '代码生成', 'generator/index', 36, 22, 'dev', 'generator', b'0', b'0', 'GeneratorIndex', '2019-01-11 15:45:55', NULL, 1);
INSERT INTO `menu` VALUES (32, b'0', '异常日志', 'monitor/log/errorLog', 6, 12, 'error', 'errorLog', b'0', b'0', 'ErrorLog', '2019-01-13 13:49:03', 'logError:list,logError:detail', 1);
INSERT INTO `menu` VALUES (35, b'0', '部门管理', 'system/dept/index', 1, 6, 'dept', 'dept', b'0', b'0', 'Dept', '2019-03-25 09:46:00', 'dept:list', 1);
INSERT INTO `menu` VALUES (36, b'0', '系统工具', '', 0, 101, 'sys-tools', 'sys-tools', b'0', b'0', NULL, '2019-03-29 10:57:35', NULL, 1);
INSERT INTO `menu` VALUES (37, b'0', '岗位管理', 'system/job/index', 1, 7, 'Steve-Jobs', 'job', b'0', b'0', 'Job', '2019-03-29 13:51:18', 'user:list', 1);
INSERT INTO `menu` VALUES (39, b'0', '字典管理', 'system/dict/index', 1, 8, 'dictionary', 'dict', b'0', b'0', 'Dict', '2019-04-10 11:49:04', 'dict:list', 1);
INSERT INTO `menu` VALUES (40, b'0', '商品管理', '', 0, 1, 'shop', 'shop', b'1', b'0', '', '2019-10-03 17:40:19', NULL, 1);
INSERT INTO `menu` VALUES (41, b'0', '商品分类', 'shop/cate/index', 40, 11, 'icon', 'cate', b'0', b'0', 'Cate', '2019-10-03 17:42:35', 'cate:list,YXSTORECATEGORY_ALL,YXSTORECATEGORY_SELECT', 1);
INSERT INTO `menu` VALUES (45, b'0', '管理商品', 'shop/goods/tab', 40, 12, 'develop', 'goods', b'1', b'0', 'Goods', '2019-10-04 15:34:35', 'YXSTOREPRODUCT_SELECT,YXSTORECATEGORY_ALL,YXSTORECATEGORY_SELECT', 1);
INSERT INTO `menu` VALUES (46, b'0', '会员管理', '', 0, 2, 'peoples', 'member', b'0', b'0', '', '2019-10-06 16:18:05', NULL, 1);
INSERT INTO `menu` VALUES (47, b'0', '会员', 'shop/user/index', 46, 21, 'peoples', 'member', b'0', b'0', 'Member', '2019-10-06 16:20:17', 'YXUSER_SELECT', 1);
INSERT INTO `menu` VALUES (48, b'0', '微信管理', '', 0, 3, 'weixin', 'wechat', b'0', b'0', '', '2019-10-06 18:28:54', NULL, 1);
INSERT INTO `menu` VALUES (49, b'0', '微信菜单', 'wechat/menu/index', 48, 31, 'menu', 'wemenu', b'0', b'0', 'WeMenu', '2019-10-06 18:31:06', 'YxWechatMenu_ALL,YxWechatMenu_SELECT', 1);
INSERT INTO `menu` VALUES (50, b'0', '图文管理', 'wechat/article/index', 48, 32, 'article', 'wearticle', b'0', b'0', 'WeArticle', '2019-10-07 17:33:45', 'YXARTICLE_ALL,YXARTICLE_SELECT', 1);
INSERT INTO `menu` VALUES (51, b'0', '自动回复', 'wechat/reply/index', 48, 33, 'reply', 'wereply', b'0', b'0', 'Wereply', '2019-10-10 09:58:31', 'YXWECHATREPLY_ALL', 1);
INSERT INTO `menu` VALUES (52, b'0', '公众号配置', 'wechat/config/index', 48, 34, 'configure', 'weconfig', b'0', b'0', 'WeConfig', '2019-10-10 15:52:24', 'YXSYSTEMCONFIG_ALL', 1);
INSERT INTO `menu` VALUES (53, b'0', '订单管理', '', 0, 4, 'lock', 'order', b'0', b'0', '', '2019-10-14 14:35:18', NULL, 1);
INSERT INTO `menu` VALUES (54, b'0', '订单', 'shop/order/index', 53, 41, 'order', 'order', b'0', b'0', 'Order', '2019-10-14 14:36:28', 'YXSTOREORDER_SELECT', 1);
INSERT INTO `menu` VALUES (55, b'0', '商城配置', '', 0, 5, 'configure', 'set', b'0', b'0', '', '2019-10-18 15:21:26', NULL, 1);
INSERT INTO `menu` VALUES (56, b'0', '首页幻灯片', 'shop/set/index', 55, 51, 'banner', 'homeBanner', b'0', b'0', 'HomeBanner', '2019-10-18 15:24:30', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (57, b'0', '首页导航按钮', 'shop/set/menu', 55, 52, 'button', 'homeMenus', b'0', b'0', 'HomeMenus', '2019-10-18 17:23:35', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (59, b'0', '首页滚动新闻', 'shop/set/roll', 55, 54, 'news', 'roll', b'0', b'0', 'Roll', '2019-10-21 16:41:30', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (60, b'0', '热门搜索', 'shop/set/hot', 55, 55, 'search', 'hot', b'0', b'0', 'Hot', '2019-10-26 18:21:54', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (61, b'0', '个人中心菜单', 'shop/set/usermenu', 55, 56, 'menu', 'userMenu', b'0', b'0', 'UserMenu', '2019-10-26 18:42:18', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (62, b'0', '评论管理', 'shop/reply/index', 53, 42, 'comment', 'reply', b'0', b'0', 'Reply', '2019-11-03 14:39:09', 'YXSTOREPRODUCTREPLY_SELECT', 1);
INSERT INTO `menu` VALUES (63, b'0', '营销管理', '', 0, 6, 'yingxiao', 'activity', b'0', b'0', '', '2019-11-09 14:17:42', NULL, 1);
INSERT INTO `menu` VALUES (64, b'0', '优惠券制作', 'activity/coupon/index', 63, 61, 'coupon', 'coupon', b'0', b'0', 'Coupon', '2019-11-09 14:18:58', 'YXSTORECOUPON_SELECT', 1);
INSERT INTO `menu` VALUES (65, b'0', '已发布优惠券', 'activity/couponissue/index', 63, 62, 'coupon2', 'couponissue', b'0', b'0', 'Couponissue', '2019-11-09 14:20:35', 'YXSTORECOUPONISSUE_SELECT', 1);
INSERT INTO `menu` VALUES (66, b'0', '优惠券领取记录', 'activity/storecouponuser/index', 63, 63, 'log', 'couponuser', b'0', b'0', 'Couponuser', '2019-11-09 14:21:35', 'YXSTORECOUPONUSER_SELECT', 1);
INSERT INTO `menu` VALUES (68, b'0', '积分配置', 'wechat/config/point', 55, 59, 'configure', 'pointConfig', b'0', b'0', 'PointConfig', '2019-11-10 18:45:55', 'YXSYSTEMCONFIG_SELECT', 1);
INSERT INTO `menu` VALUES (69, b'0', '分销管理', '', 0, 7, 'fenxiao', 'promoter', b'0', b'0', '', '2019-11-11 10:42:16', NULL, 1);
INSERT INTO `menu` VALUES (70, b'0', '分销配置', 'wechat/config/promoter', 69, 71, 'configure', 'promoterconfig', b'0', b'0', 'Promoterconfig', '2019-11-11 10:48:37', 'YXSYSTEMCONFIG_SELECT', 1);
INSERT INTO `menu` VALUES (71, b'0', '分销员', 'shop/user/aindex', 69, 72, 'user', 'agent', b'0', b'0', 'Agent', '2019-11-13 18:32:00', 'YXUSER_SELECT', 1);
INSERT INTO `menu` VALUES (72, b'0', '提现管理', 'activity/extract/index', 176, 81, 'tixian', 'extract', b'0', b'0', 'Extract', '2019-11-14 10:49:39', 'YXUSEREXTRACT_SELECT', 1);
INSERT INTO `menu` VALUES (73, b'0', '拼团产品', 'activity/combination/index', 63, 64, 'peoples', 'combination', b'0', b'0', 'Combination', '2019-11-18 14:23:04', 'YXSTORECOMBINATION_SELECT', 1);
INSERT INTO `menu` VALUES (74, b'0', '拼团列表', 'activity/combinlist/index', 63, 65, 'list', 'pink', b'0', b'0', 'Pink', '2019-11-21 19:35:58', 'YXSTOREPINK_SELECT', 1);
INSERT INTO `menu` VALUES (75, b'0', '微信支付配置', 'wechat/config/pay', 48, 35, 'wxpay', 'wxpayconfig', b'0', b'0', 'Wxpayconfig', '2019-11-28 17:06:22', 'YXSYSTEMCONFIG_ALL', 1);
INSERT INTO `menu` VALUES (76, b'0', '小程序配置', 'wechat/config/wxapp', 48, 36, 'configure', 'wxapp', b'0', b'0', 'Wxapp', '2019-11-29 15:13:46', 'YXSYSTEMCONFIG_ALL', 1);
INSERT INTO `menu` VALUES (77, b'0', '会员等级', 'shop/userlevel/index', 46, 22, 'dengji', 'userlevel', b'0', b'0', 'Userlevel', '2019-12-04 16:35:41', 'YXSYSTEMUSERLEVEL_SELECT', 1);
INSERT INTO `menu` VALUES (78, b'0', '等级任务', 'shop/usertask/index', 46, 23, 'task manege', 'usertask', b'0', b'0', 'Usertask', '2019-12-04 17:26:19', 'YXSYSTEMUSERTASK_SELECT', 1);
INSERT INTO `menu` VALUES (79, b'0', '签到天数配置', 'shop/set/sign', 55, 57, 'sign2', 'signday', b'0', b'0', 'Signday', '2019-12-05 14:12:16', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (80, b'0', '用户账单', 'shop/user/bill', 46, 24, 'list', 'bill', b'0', b'0', 'Bill', '2019-12-11 17:28:38', 'YXUSERBILL_ALL,YXUSERBILL_SELECT', 1);
INSERT INTO `menu` VALUES (81, b'0', '物流快递', 'shop/express/index', 53, 43, 'express', 'express', b'0', b'0', 'Express', '2019-12-12 16:36:00', 'YXEXPRESS_SELECT', 1);
INSERT INTO `menu` VALUES (82, b'0', '微信模板消息', 'wechat/template/index', 48, 35, 'anq', 'template', b'0', b'0', 'Template', '2019-12-13 14:42:50', 'yxWechatTemplate:list', 1);
INSERT INTO `menu` VALUES (83, b'0', '秒杀产品', 'activity/seckill/index', 63, 66, 'seckill', 'seckill', b'0', b'0', 'Seckill', '2019-12-16 13:06:29', 'YXSTORESECKILL_SELECT', 1);
INSERT INTO `menu` VALUES (84, b'0', '秒杀配置', 'shop/set/seckill', 63, 67, 'configure', 'seckillconfig', b'0', b'0', 'Seckillconfig', '2019-12-16 16:07:42', 'YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (86, b'0', '砍价产品', 'activity/bargain/index', 63, 956, 'Sign', 'bargain', b'0', b'0', 'Bargain', '2019-12-22 12:25:55', 'YXSTOREBARGAIN_SELECT', 1);
INSERT INTO `menu` VALUES (87, b'0', '生成配置', 'generator/config', 36, 33, 'dev', 'generator/config/:tableName', b'1', b'1', 'GeneratorConfig', '2019-11-17 20:08:56', '', 1);
INSERT INTO `menu` VALUES (88, b'0', '生成预览', 'generator/preview', 36, 999, 'java', 'generator/preview/:tableName', b'1', b'1', 'Preview', '2019-11-26 14:54:36', NULL, 1);
INSERT INTO `menu` VALUES (116, b'0', '生成配置', 'generator/config', 36, 33, 'dev', 'generator/config/:tableName', b'1', b'1', 'GeneratorConfig', '2019-11-17 20:08:56', '', 1);
INSERT INTO `menu` VALUES (117, b'0', '图表库', 'components/Echarts', 10, 50, 'chart', 'echarts', b'1', b'0', 'Echarts', '2019-11-21 09:04:32', '', 1);
INSERT INTO `menu` VALUES (118, b'0', '新增', NULL, 45, 1, NULL, NULL, b'0', b'0', NULL, '2019-12-24 13:00:47', 'YXSTOREPRODUCT_EDIT', 2);
INSERT INTO `menu` VALUES (119, b'0', '修改', NULL, 45, 3, NULL, NULL, b'0', b'0', NULL, '2019-12-24 13:02:23', 'YXSTOREPRODUCT_CREATE', 2);
INSERT INTO `menu` VALUES (120, b'0', '删除', NULL, 45, 4, NULL, NULL, b'0', b'0', NULL, '2019-12-24 13:03:51', 'YXSTOREPRODUCT_DELETE', 2);
INSERT INTO `menu` VALUES (121, b'0', '在线用户', 'monitor/online/index', 6, 10, 'Steve-Jobs', 'online', b'0', b'0', 'OnlineUser', '2020-01-06 22:46:43', NULL, 1);
INSERT INTO `menu` VALUES (122, b'0', '浏览记录', 'monitor/log/mlog', 40, 13, 'log', 'viewlog', b'0', b'0', 'Viewlog', '2020-01-07 13:17:21', 'log:list', 1);
INSERT INTO `menu` VALUES (123, b'0', '后台接口文档', 'tools/swagger/index', 36, 31, 'swagger', 'swagger2', b'0', b'0', 'Swagger', '2020-01-07 18:05:52', NULL, 1);
INSERT INTO `menu` VALUES (124, b'0', '在线会员', 'monitor/online/indext', 46, 25, 'Steve-Jobs', 'onlinet', b'0', b'0', 'OnlineMember', '2020-01-13 10:53:07', NULL, 1);
INSERT INTO `menu` VALUES (125, b'0', '邮费配置', 'wechat/config/postage', 55, 58, 'configure', 'postageConfig', b'0', b'0', 'PostageConfig', '2020-02-13 15:38:24', 'YXSYSTEMCONFIG_SELECT', 1);
INSERT INTO `menu` VALUES (126, b'0', '编辑', NULL, 54, 1, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:05:28', 'YXSTOREORDER_EDIT', 2);
INSERT INTO `menu` VALUES (127, b'0', '用户新增', NULL, 2, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:12:21', 'user:add', 2);
INSERT INTO `menu` VALUES (128, b'0', '用户编辑', NULL, 2, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:12:47', 'user:edit', 2);
INSERT INTO `menu` VALUES (129, b'0', '用户删除', NULL, 2, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:13:08', 'user:del', 2);
INSERT INTO `menu` VALUES (130, b'0', '角色创建', NULL, 3, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:13:49', 'roles:add', 2);
INSERT INTO `menu` VALUES (131, b'0', '角色修改', NULL, 3, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:14:11', 'roles:edit', 2);
INSERT INTO `menu` VALUES (132, b'0', '角色删除', NULL, 3, 999, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:14:38', 'roles:del', 2);
INSERT INTO `menu` VALUES (133, b'0', '菜单新增', NULL, 5, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:15:05', 'menu:add', 2);
INSERT INTO `menu` VALUES (134, b'0', '菜单编辑', NULL, 5, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:18:44', 'menu:edit', 2);
INSERT INTO `menu` VALUES (135, b'0', '菜单删除', NULL, 5, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:19:05', 'menu:del', 2);
INSERT INTO `menu` VALUES (136, b'0', '部门新增', NULL, 35, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:21:07', 'dept:add', 2);
INSERT INTO `menu` VALUES (137, b'0', '部门编辑', NULL, 35, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:21:33', 'dept:edit', 2);
INSERT INTO `menu` VALUES (138, b'0', '部门删除', NULL, 35, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:21:53', 'dept:del', 2);
INSERT INTO `menu` VALUES (139, b'0', '岗位新增', NULL, 37, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:29:04', 'job:add', 2);
INSERT INTO `menu` VALUES (140, b'0', '岗位编辑', NULL, 37, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:48:38', 'job:edit', 2);
INSERT INTO `menu` VALUES (141, b'0', '岗位删除', NULL, 37, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:49:00', 'job:del', 2);
INSERT INTO `menu` VALUES (142, b'0', '字典新增', NULL, 39, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:49:26', 'dict:add', 2);
INSERT INTO `menu` VALUES (143, b'0', '字典编辑', NULL, 39, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:49:39', 'dict:edit', 2);
INSERT INTO `menu` VALUES (144, b'0', '字典删除', NULL, 39, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:49:56', 'dict:del', 2);
INSERT INTO `menu` VALUES (147, b'0', '上传文件', NULL, 18, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:53:49', 'storage:add', 2);
INSERT INTO `menu` VALUES (148, b'0', '文件编辑', NULL, 18, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:54:06', 'storage:edit', 2);
INSERT INTO `menu` VALUES (149, b'0', '文件删除', NULL, 18, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:54:27', 'storage:del', 2);
INSERT INTO `menu` VALUES (150, b'0', '任务新增', NULL, 28, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:55:58', 'timing:add', 2);
INSERT INTO `menu` VALUES (151, b'0', '任务编辑', NULL, 28, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:56:54', 'timing:edit', 2);
INSERT INTO `menu` VALUES (152, b'0', '任务删除', NULL, 28, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 21:57:10', 'timing:del', 2);
INSERT INTO `menu` VALUES (153, b'0', '新增分类', NULL, 41, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:00:41', 'YXSTORECATEGORY_CREATE', 2);
INSERT INTO `menu` VALUES (154, b'0', '分类编辑', NULL, 41, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:01:15', 'YXSTORECATEGORY_EDIT', 2);
INSERT INTO `menu` VALUES (155, b'0', '分类删除', NULL, 41, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:01:37', 'YXSTORECATEGORY_DELETE', 2);
INSERT INTO `menu` VALUES (156, b'0', '修改会员', NULL, 47, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:03:40', 'YXUSER_EDIT', 2);
INSERT INTO `menu` VALUES (157, b'0', '等级新增', NULL, 77, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:06:55', 'YXSYSTEMUSERLEVEL_CREATE', 2);
INSERT INTO `menu` VALUES (158, b'0', '等级编辑', NULL, 77, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:08:03', 'YXSYSTEMUSERLEVEL_EDIT', 2);
INSERT INTO `menu` VALUES (159, b'0', '等级删除', NULL, 77, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:08:41', 'YXSYSTEMUSERLEVEL_DELETE', 2);
INSERT INTO `menu` VALUES (160, b'0', '编辑任务', NULL, 78, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:10:08', 'YXSYSTEMUSERTASK_EDIT', 2);
INSERT INTO `menu` VALUES (161, b'0', '评论删除', NULL, 62, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:14:22', 'YXSTOREPRODUCTREPLY_DELETE', 2);
INSERT INTO `menu` VALUES (162, b'0', '新增物流', NULL, 81, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:15:33', 'YXEXPRESS_CREATE', 2);
INSERT INTO `menu` VALUES (163, b'0', '编辑物流', NULL, 81, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:15:53', 'YXEXPRESS_EDIT', 2);
INSERT INTO `menu` VALUES (164, b'0', '删除物流', NULL, 81, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:16:11', 'YXEXPRESS_DELETE', 2);
INSERT INTO `menu` VALUES (165, b'0', '新增优惠券', NULL, 64, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:18:32', 'YXSTORECOUPON_CREATE', 2);
INSERT INTO `menu` VALUES (166, b'0', '编辑优惠券', NULL, 64, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:18:50', 'YXSTORECOUPON_EDIT', 2);
INSERT INTO `menu` VALUES (167, b'0', '删除优惠券', NULL, 64, 4, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:19:10', 'YXSTORECOUPON_DELETE', 2);
INSERT INTO `menu` VALUES (168, b'0', '编辑已发布', NULL, 65, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:20:23', 'YXSTORECOUPONISSUE_EDIT', 2);
INSERT INTO `menu` VALUES (169, b'0', '删除已发布', NULL, 65, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:20:42', 'YXSTORECOUPONISSUE_DELETE', 2);
INSERT INTO `menu` VALUES (170, b'0', '编辑拼团', NULL, 73, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:24:15', 'YXSTORECOMBINATION_EDIT', 2);
INSERT INTO `menu` VALUES (171, b'0', '删除拼团', NULL, 73, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:24:37', 'YXSTORECOMBINATION_DELETE', 2);
INSERT INTO `menu` VALUES (172, b'0', '编辑秒杀', NULL, 83, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:25:23', 'YXSTORESECKILL_EDIT', 2);
INSERT INTO `menu` VALUES (173, b'0', '删除秒杀', NULL, 83, 3, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:25:41', 'YXSTORESECKILL_DELETE', 2);
INSERT INTO `menu` VALUES (174, b'0', '编辑砍价', NULL, 86, 2, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:26:20', 'YXSTOREBARGAIN_EDIT', 2);
INSERT INTO `menu` VALUES (175, b'0', '删除砍价', NULL, 86, 999, NULL, NULL, b'0', b'0', NULL, '2020-02-14 22:26:40', 'YXSTOREBARGAIN_DELETE', 2);
INSERT INTO `menu` VALUES (176, b'0', '财务管理', NULL, 0, 8, 'price', 'price', b'0', b'0', NULL, '2020-03-02 22:30:23', NULL, 1);
INSERT INTO `menu` VALUES (177, b'0', '充值管理', 'shop/recharge/index', 176, 82, 'rec', 'recharge', b'0', b'0', 'Recharge', '2020-03-02 23:05:26', 'yxUserRecharge:list', 1);
INSERT INTO `menu` VALUES (178, b'0', '门店管理', NULL, 0, 9, 'store', 'store', b'0', b'0', NULL, '2020-03-03 17:27:53', NULL, 1);
INSERT INTO `menu` VALUES (179, b'0', '门店列表', 'shop/store/index', 178, 92, 'edit', 'storeinfo', b'0', b'0', 'Storeinfo', '2020-03-03 17:29:09', 'yxSystemStore:list', 1);
INSERT INTO `menu` VALUES (180, b'0', '门店配置', 'shop/store/set', 178, 91, 'configure', 'storeset', b'0', b'0', 'Storeset', '2020-03-04 13:09:54', 'YXSYSTEMCONFIG_SELECT', 1);
INSERT INTO `menu` VALUES (181, b'0', '核销订单', 'shop/order/indext', 178, 95, 'order', 'ordert', b'0', b'0', 'Ordert', '2020-03-05 17:04:12', 'YXSTOREORDER_SELECT', 1);
INSERT INTO `menu` VALUES (182, b'0', '充值金额配置', 'shop/set/recharge', 55, 60, 'money', 'rechargeset', b'0', b'0', 'Rechargeset', '2020-03-21 14:24:05', 'YXSYSTEMGROUPDATA_ALL,YXSYSTEMGROUPDATA_SELECT', 1);
INSERT INTO `menu` VALUES (183, b'0', '店员列表', 'shop/storestaff/index', 178, 94, 'peoples', 'staff', b'0', b'0', 'Staff', '2020-03-22 14:11:36', 'yxSystemStoreStaff:list', 1);
INSERT INTO `menu` VALUES (184, b'0', '新增菜单', NULL, 49, 0, 'add', NULL, b'0', b'0', NULL, '2020-06-14 20:10:02', 'YxWechatMenu_CREATE', 2);
INSERT INTO `menu` VALUES (185, b'0', '模板新增', NULL, 82, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:14:17', 'yxWechatTemplate:add', 2);
INSERT INTO `menu` VALUES (186, b'0', '模板修改', NULL, 82, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:14:46', 'yxWechatTemplate:edit', 2);
INSERT INTO `menu` VALUES (187, b'0', '模板删除', NULL, 82, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:15:10', 'yxWechatTemplate:del', 2);
INSERT INTO `menu` VALUES (188, b'0', '新增幻灯片', NULL, 56, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:33:48', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (189, b'0', '修改幻灯片', NULL, 56, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:35:11', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (190, b'0', '删除幻灯片', NULL, 56, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:40:30', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (191, b'0', '新增导航按钮', NULL, 57, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:42:43', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (192, b'0', '修改导航按钮', NULL, 57, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:43:53', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (193, b'0', '删除导航按钮', NULL, 57, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:44:43', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (194, b'0', '新增滚动新闻', NULL, 59, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:48:32', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (195, b'0', '修改滚动新闻', NULL, 59, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:48:52', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (196, b'0', '删除滚动新闻', NULL, 59, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 20:49:32', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (197, b'0', '新增热门搜索', NULL, 60, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:14:25', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (198, b'0', '修改热门搜索', NULL, 60, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:14:55', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (199, b'0', '删除热门搜索', NULL, 60, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:15:25', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (200, b'0', '新增个人中心菜单', NULL, 61, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:17:47', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (201, b'0', '修改个人中心菜单', NULL, 61, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:18:37', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (202, b'0', '删除个人中心菜单', NULL, 61, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:19:47', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (203, b'0', '新增积分配置', NULL, 68, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:20:47', 'YXSYSTEMCONFIG_CREATE', 2);
INSERT INTO `menu` VALUES (204, b'0', '新增签到天数', NULL, 79, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:26:32', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (205, b'0', '修改签到天数', NULL, 79, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:26:32', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (206, b'0', '删除签到天数', NULL, 79, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:26:52', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (207, b'0', '新增邮费配置', NULL, 125, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:29:20', 'YXSYSTEMCONFIG_CREATE', 2);
INSERT INTO `menu` VALUES (208, b'0', '新增充值金额', NULL, 182, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:30:59', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (209, b'0', '修改充值金额', NULL, 182, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:30:30', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (210, b'0', '删除充值金额', NULL, 182, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:30:59', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (211, b'0', '新增秒杀配置', NULL, 84, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:43:36', 'YXSYSTEMGROUPDATA_CREATE', 2);
INSERT INTO `menu` VALUES (212, b'0', '修改秒杀配置', NULL, 84, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:43:56', 'YXSYSTEMGROUPDATA_EDIT', 2);
INSERT INTO `menu` VALUES (213, b'0', '删除秒杀配置', NULL, 84, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:23:36', 'YXSYSTEMGROUPDATA_DELETE', 2);
INSERT INTO `menu` VALUES (214, b'0', '新增分销配置', NULL, 70, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:46:46', 'YXSYSTEMCONFIG_CREATE', 2);
INSERT INTO `menu` VALUES (215, b'0', '提现审核', NULL, 72, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:56:11', 'YXUSEREXTRACT_EDIT', 2);
INSERT INTO `menu` VALUES (216, b'0', '删除充值', NULL, 177, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:59:11', 'yxUserRecharge:del', 2);
INSERT INTO `menu` VALUES (217, b'0', '导出充值', NULL, 177, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 21:59:54', 'yxUserRecharge:list', 2);
INSERT INTO `menu` VALUES (218, b'0', '新增门店', NULL, 179, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:01:57', 'yxSystemStore:add', 2);
INSERT INTO `menu` VALUES (219, b'0', '修改门店', NULL, 179, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:02:30', 'yxSystemStore:edit', 2);
INSERT INTO `menu` VALUES (220, b'0', '删除门店', NULL, 179, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:02:57', 'yxSystemStore:del', 2);
INSERT INTO `menu` VALUES (221, b'0', '新增门店配置', NULL, 180, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:04:25', 'YXSYSTEMCONFIG_CREATE', 2);
INSERT INTO `menu` VALUES (222, b'0', '编辑核销订单', NULL, 181, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:07:26', 'YXSTOREORDER_EDIT', 2);
INSERT INTO `menu` VALUES (223, b'0', '新增店员', NULL, 183, 1, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:11:13', 'yxSystemStoreStaff:add', 2);
INSERT INTO `menu` VALUES (224, b'0', '修改店员', NULL, 183, 2, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:11:37', 'yxSystemStoreStaff:edit', 2);
INSERT INTO `menu` VALUES (225, b'0', '删除店员', NULL, 183, 3, NULL, NULL, b'0', b'0', NULL, '2020-06-14 22:11:59', 'yxSystemStoreStaff:del', 2);
COMMIT;

-- ----------------------------
-- Table structure for monitor_server
-- ----------------------------
DROP TABLE IF EXISTS `monitor_server`;
CREATE TABLE `monitor_server` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpu_core` int DEFAULT NULL COMMENT 'CPU内核数',
  `cpu_rate` double DEFAULT NULL COMMENT 'CPU使用率',
  `disk_total` double DEFAULT NULL COMMENT '磁盘总量',
  `disk_used` double DEFAULT NULL COMMENT '磁盘使用量',
  `mem_total` double DEFAULT NULL COMMENT '内存总数',
  `mem_used` double DEFAULT NULL COMMENT '内存使用量',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `port` int DEFAULT NULL COMMENT '访问端口',
  `sort` int DEFAULT NULL COMMENT '排序',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `swap_total` double DEFAULT NULL COMMENT '交换区总量',
  `swap_used` double DEFAULT NULL COMMENT '交换区使用量',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务监控';

-- ----------------------------
-- Records of monitor_server
-- ----------------------------
BEGIN;
INSERT INTO `monitor_server` VALUES (1, 8, 0.05924018, 465.12402, 91.66521, 7.849415, 7.6052284, '本地', 8777, 999, '0', 14.599415, 11.263367, 'localhost');
COMMIT;

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '上传日期',
  `delete_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '删除的URL',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片名称',
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片高度',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片地址',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名称',
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片宽度',
  `md5code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件的MD5值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Sm.Ms图床';

-- ----------------------------
-- Records of picture
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_config`;
CREATE TABLE `qiniu_config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云配置';

-- ----------------------------
-- Records of qiniu_config
-- ----------------------------
BEGIN;
INSERT INTO `qiniu_config` VALUES (1, '1111114444', 'yixiang', 'uuuuu', '22222', '公开', '华东');
COMMIT;

-- ----------------------------
-- Table structure for qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_content`;
CREATE TABLE `qiniu_content` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件类型：私有或公开',
  `update_time` datetime DEFAULT NULL COMMENT '上传或同步的时间',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云文件存储';

-- ----------------------------
-- Records of qiniu_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `quartz_job`;
CREATE TABLE `quartz_job` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务';

-- ----------------------------
-- Records of quartz_job
-- ----------------------------
BEGIN;
INSERT INTO `quartz_job` VALUES (1, 'visitsTask', '0 0 0 * * ?', b'0', '更新访客记录', 'run', NULL, '每日0点创建新的访客记录', '2019-01-08 14:53:31');
INSERT INTO `quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '2019-08-22 14:08:29');
INSERT INTO `quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试43', 'run', '44', '不带参测试', '2019-09-26 16:44:39');
COMMIT;

-- ----------------------------
-- Table structure for quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `quartz_log`;
CREATE TABLE `quartz_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `baen_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务日志';

-- ----------------------------
-- Records of quartz_log
-- ----------------------------
BEGIN;
INSERT INTO `quartz_log` VALUES (1, 'visitsTask', '2020-01-10 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 160);
INSERT INTO `quartz_log` VALUES (2, 'visitsTask', '2020-03-10 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 42);
INSERT INTO `quartz_log` VALUES (3, 'visitsTask', '2020-04-02 00:00:00', '0 0 0 * * ?', NULL, b'1', '更新访客记录', 'run', NULL, 60);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据权限',
  `level` int DEFAULT NULL COMMENT '角色级别',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '功能权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (1, '超级管理员', '-', '全部', 1, '2018-11-23 11:04:37', 'admin');
INSERT INTO `role` VALUES (2, '普通用户', '-', '本级', 2, '2018-11-23 13:09:06', 'common');
INSERT INTO `role` VALUES (3, '管理员2', '222', '全部', 3, '2020-01-31 16:53:25', '22');
COMMIT;

-- ----------------------------
-- Table structure for roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `roles_depts`;
CREATE TABLE `roles_depts` (
  `role_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE,
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE,
  CONSTRAINT `FK7qg6itn5ajdoa9h9o78v9ksur` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrg1ci4cxxfbja0sb0pddju7k` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色部门关联';

-- ----------------------------
-- Records of roles_depts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus` (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE,
  CONSTRAINT `FKo7wsmlrrxb2osfaoavp46rv2r` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtag324maketmxffly3pdyh193` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单关联';

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
BEGIN;
INSERT INTO `roles_menus` VALUES (1, 1);
INSERT INTO `roles_menus` VALUES (2, 1);
INSERT INTO `roles_menus` VALUES (3, 1);
INSERT INTO `roles_menus` VALUES (5, 1);
INSERT INTO `roles_menus` VALUES (6, 1);
INSERT INTO `roles_menus` VALUES (7, 1);
INSERT INTO `roles_menus` VALUES (9, 1);
INSERT INTO `roles_menus` VALUES (10, 1);
INSERT INTO `roles_menus` VALUES (11, 1);
INSERT INTO `roles_menus` VALUES (14, 1);
INSERT INTO `roles_menus` VALUES (15, 1);
INSERT INTO `roles_menus` VALUES (18, 1);
INSERT INTO `roles_menus` VALUES (19, 1);
INSERT INTO `roles_menus` VALUES (21, 1);
INSERT INTO `roles_menus` VALUES (22, 1);
INSERT INTO `roles_menus` VALUES (23, 1);
INSERT INTO `roles_menus` VALUES (24, 1);
INSERT INTO `roles_menus` VALUES (27, 1);
INSERT INTO `roles_menus` VALUES (28, 1);
INSERT INTO `roles_menus` VALUES (30, 1);
INSERT INTO `roles_menus` VALUES (32, 1);
INSERT INTO `roles_menus` VALUES (33, 1);
INSERT INTO `roles_menus` VALUES (34, 1);
INSERT INTO `roles_menus` VALUES (35, 1);
INSERT INTO `roles_menus` VALUES (36, 1);
INSERT INTO `roles_menus` VALUES (37, 1);
INSERT INTO `roles_menus` VALUES (38, 1);
INSERT INTO `roles_menus` VALUES (39, 1);
INSERT INTO `roles_menus` VALUES (40, 1);
INSERT INTO `roles_menus` VALUES (41, 1);
INSERT INTO `roles_menus` VALUES (44, 1);
INSERT INTO `roles_menus` VALUES (45, 1);
INSERT INTO `roles_menus` VALUES (46, 1);
INSERT INTO `roles_menus` VALUES (47, 1);
INSERT INTO `roles_menus` VALUES (48, 1);
INSERT INTO `roles_menus` VALUES (49, 1);
INSERT INTO `roles_menus` VALUES (50, 1);
INSERT INTO `roles_menus` VALUES (51, 1);
INSERT INTO `roles_menus` VALUES (52, 1);
INSERT INTO `roles_menus` VALUES (53, 1);
INSERT INTO `roles_menus` VALUES (54, 1);
INSERT INTO `roles_menus` VALUES (55, 1);
INSERT INTO `roles_menus` VALUES (56, 1);
INSERT INTO `roles_menus` VALUES (57, 1);
INSERT INTO `roles_menus` VALUES (58, 1);
INSERT INTO `roles_menus` VALUES (59, 1);
INSERT INTO `roles_menus` VALUES (60, 1);
INSERT INTO `roles_menus` VALUES (61, 1);
INSERT INTO `roles_menus` VALUES (62, 1);
INSERT INTO `roles_menus` VALUES (63, 1);
INSERT INTO `roles_menus` VALUES (64, 1);
INSERT INTO `roles_menus` VALUES (65, 1);
INSERT INTO `roles_menus` VALUES (66, 1);
INSERT INTO `roles_menus` VALUES (67, 1);
INSERT INTO `roles_menus` VALUES (68, 1);
INSERT INTO `roles_menus` VALUES (69, 1);
INSERT INTO `roles_menus` VALUES (70, 1);
INSERT INTO `roles_menus` VALUES (71, 1);
INSERT INTO `roles_menus` VALUES (72, 1);
INSERT INTO `roles_menus` VALUES (73, 1);
INSERT INTO `roles_menus` VALUES (74, 1);
INSERT INTO `roles_menus` VALUES (75, 1);
INSERT INTO `roles_menus` VALUES (76, 1);
INSERT INTO `roles_menus` VALUES (77, 1);
INSERT INTO `roles_menus` VALUES (78, 1);
INSERT INTO `roles_menus` VALUES (79, 1);
INSERT INTO `roles_menus` VALUES (80, 1);
INSERT INTO `roles_menus` VALUES (81, 1);
INSERT INTO `roles_menus` VALUES (82, 1);
INSERT INTO `roles_menus` VALUES (83, 1);
INSERT INTO `roles_menus` VALUES (84, 1);
INSERT INTO `roles_menus` VALUES (86, 1);
INSERT INTO `roles_menus` VALUES (87, 1);
INSERT INTO `roles_menus` VALUES (88, 1);
INSERT INTO `roles_menus` VALUES (116, 1);
INSERT INTO `roles_menus` VALUES (118, 1);
INSERT INTO `roles_menus` VALUES (119, 1);
INSERT INTO `roles_menus` VALUES (120, 1);
INSERT INTO `roles_menus` VALUES (121, 1);
INSERT INTO `roles_menus` VALUES (122, 1);
INSERT INTO `roles_menus` VALUES (123, 1);
INSERT INTO `roles_menus` VALUES (124, 1);
INSERT INTO `roles_menus` VALUES (125, 1);
INSERT INTO `roles_menus` VALUES (176, 1);
INSERT INTO `roles_menus` VALUES (177, 1);
INSERT INTO `roles_menus` VALUES (178, 1);
INSERT INTO `roles_menus` VALUES (179, 1);
INSERT INTO `roles_menus` VALUES (180, 1);
INSERT INTO `roles_menus` VALUES (181, 1);
INSERT INTO `roles_menus` VALUES (182, 1);
INSERT INTO `roles_menus` VALUES (183, 1);
INSERT INTO `roles_menus` VALUES (1, 2);
INSERT INTO `roles_menus` VALUES (2, 2);
INSERT INTO `roles_menus` VALUES (3, 2);
INSERT INTO `roles_menus` VALUES (5, 2);
INSERT INTO `roles_menus` VALUES (6, 2);
INSERT INTO `roles_menus` VALUES (9, 2);
INSERT INTO `roles_menus` VALUES (10, 2);
INSERT INTO `roles_menus` VALUES (11, 2);
INSERT INTO `roles_menus` VALUES (14, 2);
INSERT INTO `roles_menus` VALUES (15, 2);
INSERT INTO `roles_menus` VALUES (18, 2);
INSERT INTO `roles_menus` VALUES (19, 2);
INSERT INTO `roles_menus` VALUES (21, 2);
INSERT INTO `roles_menus` VALUES (23, 2);
INSERT INTO `roles_menus` VALUES (24, 2);
INSERT INTO `roles_menus` VALUES (27, 2);
INSERT INTO `roles_menus` VALUES (28, 2);
INSERT INTO `roles_menus` VALUES (30, 2);
INSERT INTO `roles_menus` VALUES (33, 2);
INSERT INTO `roles_menus` VALUES (34, 2);
INSERT INTO `roles_menus` VALUES (35, 2);
INSERT INTO `roles_menus` VALUES (36, 2);
INSERT INTO `roles_menus` VALUES (37, 2);
INSERT INTO `roles_menus` VALUES (38, 2);
INSERT INTO `roles_menus` VALUES (39, 2);
INSERT INTO `roles_menus` VALUES (40, 2);
INSERT INTO `roles_menus` VALUES (41, 2);
INSERT INTO `roles_menus` VALUES (44, 2);
INSERT INTO `roles_menus` VALUES (45, 2);
INSERT INTO `roles_menus` VALUES (48, 2);
INSERT INTO `roles_menus` VALUES (49, 2);
INSERT INTO `roles_menus` VALUES (50, 2);
INSERT INTO `roles_menus` VALUES (53, 2);
INSERT INTO `roles_menus` VALUES (54, 2);
INSERT INTO `roles_menus` VALUES (77, 2);
INSERT INTO `roles_menus` VALUES (78, 2);
INSERT INTO `roles_menus` VALUES (79, 2);
INSERT INTO `roles_menus` VALUES (118, 2);
INSERT INTO `roles_menus` VALUES (119, 2);
INSERT INTO `roles_menus` VALUES (126, 2);
INSERT INTO `roles_menus` VALUES (154, 2);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `avatar_id` bigint DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `enabled` bigint DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `dept_id` bigint DEFAULT NULL COMMENT '部门名称',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `job_id` bigint DEFAULT NULL COMMENT '岗位名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `last_password_reset_time` datetime DEFAULT NULL COMMENT '最后修改密码的日期',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
  KEY `FKfftoc2abhot8f2wu6cl9a5iky` (`job_id`) USING BTREE,
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_id`) USING BTREE,
  CONSTRAINT `FK5rwmryny6jthaaxkogownknqp` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKfftoc2abhot8f2wu6cl9a5iky` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpq2dhypk2qgt68nauh2by22jb` FOREIGN KEY (`avatar_id`) REFERENCES `user_avatar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, NULL, 'yshop@qq.com', 1, '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'admin', 2, '18888888888', 11, '2018-08-23 09:11:56', '2019-05-18 17:34:21', '管理员', '男');
INSERT INTO `user` VALUES (3, NULL, 'test@yshopnet', 1, '$2a$10$HhxyGZy.ulf3RvAwaHUGb.k.2i9PBpv4YbLMJWp8pES7pPhTyRCF.', 'test', 2, '17777777777', 12, '2018-12-27 20:05:26', '2019-04-01 09:15:24', '测试', '男');
INSERT INTO `user` VALUES (4, NULL, 'test2@qq.com', 1, '$2a$10$IjehtV8MiXb8ni.Qz0wBteE7FjVn49cEcsSj2.ZBUqqHjnC3umSh.', 'test2', 2, '15136175247', 11, '2020-02-15 20:39:16', NULL, 'test2', '男');
INSERT INTO `user` VALUES (5, NULL, '444@qq.com', 0, '$2a$10$f/VH35NBOBszycV9KEA1HenQ0qVjazDm8LacQU9PO.A4UizFxLMuq', 'qqqqq', 11, '15136175249', 8, '2020-02-17 11:12:01', NULL, 'eeeeee', '男');
INSERT INTO `user` VALUES (6, NULL, '666@qq.com', 0, '$2a$10$3Vlo24eOmHHW7.3vAjqPSusfIINNo4JiujzxgqsaoWLx/d5de/jEm', '7777', 8, '15136175246', 8, '2020-05-18 19:43:30', NULL, '777', '男');
COMMIT;

-- ----------------------------
-- Table structure for user_avatar
-- ----------------------------
DROP TABLE IF EXISTS `user_avatar`;
CREATE TABLE `user_avatar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实文件名',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路径',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大小',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户头像';

-- ----------------------------
-- Records of user_avatar
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE,
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联';

-- ----------------------------
-- Records of users_roles
-- ----------------------------
BEGIN;
INSERT INTO `users_roles` VALUES (1, 1);
INSERT INTO `users_roles` VALUES (3, 2);
INSERT INTO `users_roles` VALUES (4, 2);
INSERT INTO `users_roles` VALUES (5, 2);
INSERT INTO `users_roles` VALUES (6, 2);
COMMIT;

-- ----------------------------
-- Table structure for verification_code
-- ----------------------------
DROP TABLE IF EXISTS `verification_code`;
CREATE TABLE `verification_code` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `status` bit(1) DEFAULT NULL COMMENT '状态：1有效、0过期',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '验证码类型：email或者短信',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收邮箱或者手机号码',
  `scenes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务名称：如重置邮箱、重置密码等',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='验证码';

-- ----------------------------
-- Records of verification_code
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_counts` bigint DEFAULT NULL,
  `pv_counts` bigint DEFAULT NULL,
  `week_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_11aksgq87euk9bcyeesfs4vtp` (`date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='访客记录';

-- ----------------------------
-- Records of visits
-- ----------------------------
BEGIN;
INSERT INTO `visits` VALUES (21, '2019-12-31 11:40:24', '2019-12-31', 2, 4, 'Tue');
INSERT INTO `visits` VALUES (22, '2020-01-06 16:55:15', '2020-01-06', 4, 25, 'Mon');
INSERT INTO `visits` VALUES (23, '2020-01-07 11:32:57', '2020-01-07', 4, 8, 'Tue');
INSERT INTO `visits` VALUES (24, '2020-01-08 00:04:57', '2020-01-08', 2, 17, 'Wed');
INSERT INTO `visits` VALUES (25, '2020-01-09 14:28:38', '2020-01-09', 3, 3, 'Thu');
INSERT INTO `visits` VALUES (26, '2020-01-10 00:00:00', '2020-01-10', 6, 16, 'Fri');
INSERT INTO `visits` VALUES (27, '2020-01-11 11:06:01', '2020-01-11', 1, 2, 'Sat');
INSERT INTO `visits` VALUES (28, '2020-01-12 17:19:42', '2020-01-12', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (29, '2020-01-13 10:18:00', '2020-01-13', 1, 2, 'Mon');
INSERT INTO `visits` VALUES (30, '2020-01-14 17:34:40', '2020-01-14', 1, 3, 'Tue');
INSERT INTO `visits` VALUES (31, '2020-01-15 11:23:03', '2020-01-15', 1, 1, 'Wed');
INSERT INTO `visits` VALUES (32, '2020-01-16 10:45:22', '2020-01-16', 1, 1, 'Thu');
INSERT INTO `visits` VALUES (33, '2020-01-17 18:07:10', '2020-01-17', 1, 1, 'Fri');
INSERT INTO `visits` VALUES (34, '2020-01-18 18:19:03', '2020-01-18', 1, 2, 'Sat');
INSERT INTO `visits` VALUES (35, '2020-01-19 09:53:20', '2020-01-19', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (36, '2020-01-20 14:01:00', '2020-01-20', 1, 1, 'Mon');
INSERT INTO `visits` VALUES (37, '2020-01-31 10:38:18', '2020-01-31', 1, 2, 'Fri');
INSERT INTO `visits` VALUES (38, '2020-02-02 14:27:41', '2020-02-02', 1, 2, 'Sun');
INSERT INTO `visits` VALUES (39, '2020-02-03 14:11:42', '2020-02-03', 1, 1, 'Mon');
INSERT INTO `visits` VALUES (40, '2020-02-04 10:27:33', '2020-02-04', 1, 1, 'Tue');
INSERT INTO `visits` VALUES (41, '2020-02-05 10:40:14', '2020-02-05', 1, 2, 'Wed');
INSERT INTO `visits` VALUES (42, '2020-02-07 10:17:32', '2020-02-07', 1, 1, 'Fri');
INSERT INTO `visits` VALUES (43, '2020-02-09 13:31:49', '2020-02-09', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (44, '2020-02-10 10:07:12', '2020-02-10', 1, 3, 'Mon');
INSERT INTO `visits` VALUES (45, '2020-02-11 21:31:13', '2020-02-11', 1, 1, 'Tue');
INSERT INTO `visits` VALUES (46, '2020-02-13 14:47:22', '2020-02-13', 1, 3, 'Thu');
INSERT INTO `visits` VALUES (47, '2020-02-14 13:32:26', '2020-02-14', 3, 5, 'Fri');
INSERT INTO `visits` VALUES (48, '2020-02-15 20:37:36', '2020-02-15', 1, 4, 'Sat');
INSERT INTO `visits` VALUES (49, '2020-02-16 20:11:40', '2020-02-16', 1, 4, 'Sun');
INSERT INTO `visits` VALUES (50, '2020-02-17 09:48:36', '2020-02-17', 1, 2, 'Mon');
INSERT INTO `visits` VALUES (51, '2020-02-19 10:34:18', '2020-02-19', 1, 3, 'Wed');
INSERT INTO `visits` VALUES (52, '2020-02-20 21:19:04', '2020-02-20', 1, 1, 'Thu');
INSERT INTO `visits` VALUES (53, '2020-02-21 10:25:10', '2020-02-21', 1, 1, 'Fri');
INSERT INTO `visits` VALUES (54, '2020-02-23 16:34:09', '2020-02-23', 1, 2, 'Sun');
INSERT INTO `visits` VALUES (55, '2020-02-24 14:30:06', '2020-02-24', 1, 2, 'Mon');
INSERT INTO `visits` VALUES (56, '2020-02-26 15:24:09', '2020-02-26', 1, 1, 'Wed');
INSERT INTO `visits` VALUES (57, '2020-02-27 12:55:34', '2020-02-27', 2, 3, 'Thu');
INSERT INTO `visits` VALUES (58, '2020-02-28 15:31:37', '2020-02-28', 2, 4, 'Fri');
INSERT INTO `visits` VALUES (59, '2020-02-29 14:37:48', '2020-02-29', 2, 3, 'Sat');
INSERT INTO `visits` VALUES (60, '2020-03-01 13:43:01', '2020-03-01', 2, 5, 'Sun');
INSERT INTO `visits` VALUES (61, '2020-03-02 18:36:56', '2020-03-02', 2, 7, 'Mon');
INSERT INTO `visits` VALUES (62, '2020-03-03 02:51:42', '2020-03-03', 2, 9, 'Tue');
INSERT INTO `visits` VALUES (63, '2020-03-04 12:55:53', '2020-03-04', 1, 11, 'Wed');
INSERT INTO `visits` VALUES (64, '2020-03-05 12:55:28', '2020-03-05', 1, 2, 'Thu');
INSERT INTO `visits` VALUES (65, '2020-03-06 02:48:11', '2020-03-06', 2, 2, 'Fri');
INSERT INTO `visits` VALUES (66, '2020-03-07 09:58:45', '2020-03-07', 1, 2, 'Sat');
INSERT INTO `visits` VALUES (67, '2020-03-08 10:24:41', '2020-03-08', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (68, '2020-03-09 22:57:23', '2020-03-09', 1, 2, 'Mon');
INSERT INTO `visits` VALUES (69, '2020-03-10 00:00:00', '2020-03-10', 1, 2, 'Tue');
INSERT INTO `visits` VALUES (70, '2020-03-11 16:10:12', '2020-03-11', 2, 10, 'Wed');
INSERT INTO `visits` VALUES (71, '2020-03-12 12:37:42', '2020-03-12', 1, 1, 'Thu');
INSERT INTO `visits` VALUES (72, '2020-03-13 13:13:48', '2020-03-13', 1, 5, 'Fri');
INSERT INTO `visits` VALUES (73, '2020-03-14 09:59:04', '2020-03-14', 1, 7, 'Sat');
INSERT INTO `visits` VALUES (74, '2020-03-15 12:38:59', '2020-03-15', 1, 5, 'Sun');
INSERT INTO `visits` VALUES (75, '2020-03-18 20:37:00', '2020-03-18', 1, 1, 'Wed');
INSERT INTO `visits` VALUES (76, '2020-03-19 14:19:16', '2020-03-19', 1, 2, 'Thu');
INSERT INTO `visits` VALUES (77, '2020-03-21 13:23:28', '2020-03-21', 1, 4, 'Sat');
INSERT INTO `visits` VALUES (78, '2020-03-22 14:01:05', '2020-03-22', 1, 6, 'Sun');
INSERT INTO `visits` VALUES (79, '2020-03-23 13:08:06', '2020-03-23', 1, 2, 'Mon');
INSERT INTO `visits` VALUES (80, '2020-03-24 13:52:07', '2020-03-24', 1, 6, 'Tue');
INSERT INTO `visits` VALUES (81, '2020-03-25 11:18:01', '2020-03-25', 1, 2, 'Wed');
INSERT INTO `visits` VALUES (82, '2020-03-26 13:40:28', '2020-03-26', 1, 2, 'Thu');
INSERT INTO `visits` VALUES (83, '2020-03-27 11:11:32', '2020-03-27', 1, 2, 'Fri');
INSERT INTO `visits` VALUES (84, '2020-03-28 15:24:09', '2020-03-28', 1, 3, 'Sat');
INSERT INTO `visits` VALUES (85, '2020-03-29 21:56:39', '2020-03-29', 1, 1, 'Sun');
INSERT INTO `visits` VALUES (86, '2020-03-31 16:50:56', '2020-03-31', 1, 2, 'Tue');
INSERT INTO `visits` VALUES (87, '2020-04-01 13:52:04', '2020-04-01', 1, 3, 'Wed');
INSERT INTO `visits` VALUES (88, '2020-04-02 00:00:00', '2020-04-02', 1, 8, 'Thu');
INSERT INTO `visits` VALUES (89, '2020-04-03 10:50:28', '2020-04-03', 1, 29, 'Fri');
INSERT INTO `visits` VALUES (90, '2020-04-04 17:56:12', '2020-04-04', 1, 1, 'Sat');
INSERT INTO `visits` VALUES (91, '2020-04-05 09:24:56', '2020-04-05', 1, 3, 'Sun');
INSERT INTO `visits` VALUES (92, '2020-04-06 21:38:54', '2020-04-06', 1, 2, 'Mon');
INSERT INTO `visits` VALUES (93, '2020-04-07 15:06:27', '2020-04-07', 1, 2, 'Tue');
INSERT INTO `visits` VALUES (94, '2020-05-18 15:34:23', '2020-05-18', 1, 1, 'Mon');
INSERT INTO `visits` VALUES (97, '2020-05-19 10:01:41', '2020-05-19', 1, 1, 'Tue');
INSERT INTO `visits` VALUES (99, '2020-07-30 10:19:05', '2020-07-30', 1, 1, 'Thu');
COMMIT;

-- ----------------------------
-- Table structure for yx_article
-- ----------------------------
DROP TABLE IF EXISTS `yx_article`;
CREATE TABLE `yx_article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '文章管理ID',
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '分类id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章作者',
  `image_input` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章图片',
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章简介',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `share_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章分享标题',
  `share_synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章分享简介',
  `visit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '浏览次数',
  `sort` int unsigned DEFAULT '0' COMMENT '排序',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原文链接',
  `status` tinyint unsigned DEFAULT NULL COMMENT '状态',
  `add_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '添加时间',
  `hide` tinyint unsigned DEFAULT '0' COMMENT '是否隐藏',
  `admin_id` int unsigned DEFAULT '0' COMMENT '管理员id',
  `mer_id` int unsigned DEFAULT '0' COMMENT '商户id',
  `product_id` int DEFAULT '0' COMMENT '产品关联id',
  `is_hot` tinyint unsigned DEFAULT '0' COMMENT '是否热门(小程序)',
  `is_banner` tinyint unsigned DEFAULT '0' COMMENT '是否轮播图(小程序)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章管理表';

-- ----------------------------
-- Records of yx_article
-- ----------------------------
BEGIN;
INSERT INTO `yx_article` VALUES (2, '', 'yshop1.3版本上线了', 'yshop', 'http://localhost:8000/file/pic/list_16-20200110120838173.png', 'yshop1.3版本上线了', '<h3 data-v-01881cfc=\"\" style=\"text-align: center;\"><p>yshop1.3版本上线了</p></h3>', '', '', '4', NULL, '', NULL, '2019-08-22 12:26', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for yx_express
-- ----------------------------
DROP TABLE IF EXISTS `yx_express`;
CREATE TABLE `yx_express` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '快递公司简称',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '快递公司全称',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='快递公司表';

-- ----------------------------
-- Records of yx_express
-- ----------------------------
BEGIN;
INSERT INTO `yx_express` VALUES (426, 'STO', '申通快递', 0, 0);
INSERT INTO `yx_express` VALUES (427, 'SF', '顺丰速运', 0, 0);
INSERT INTO `yx_express` VALUES (428, 'ZTO', '中通快递', 0, 0);
INSERT INTO `yx_express` VALUES (429, 'YTO', '圆通速递2', 0, 0);
INSERT INTO `yx_express` VALUES (430, '555', '555555', 0, 0);
INSERT INTO `yx_express` VALUES (431, '555', '5555', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for yx_material
-- ----------------------------
DROP TABLE IF EXISTS `yx_material`;
CREATE TABLE `yx_material` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'PK',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者ID',
  `type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '类型1、图片；2、视频',
  `group_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '分组ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '素材名',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '' COMMENT '素材链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='素材库';

-- ----------------------------
-- Records of yx_material
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_material_group
-- ----------------------------
DROP TABLE IF EXISTS `yx_material_group`;
CREATE TABLE `yx_material_group` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'PK',
  `del_flag` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '分组名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='素材分组';

-- ----------------------------
-- Records of yx_material_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_bargain
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_bargain`;
CREATE TABLE `yx_store_bargain` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价产品ID',
  `product_id` int unsigned NOT NULL COMMENT '关联产品ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '砍价活动名称',
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '砍价活动图片',
  `unit_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位名称',
  `stock` int unsigned DEFAULT NULL COMMENT '库存',
  `sales` int unsigned DEFAULT NULL COMMENT '销量',
  `images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '砍价产品轮播图',
  `start_time` int unsigned NOT NULL COMMENT '砍价开启时间',
  `stop_time` int unsigned NOT NULL COMMENT '砍价结束时间',
  `store_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '砍价产品名称',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价金额',
  `min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价商品最低价',
  `num` int unsigned DEFAULT NULL COMMENT '每次购买的砍价产品数量',
  `bargain_max_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最大金额',
  `bargain_min_price` decimal(8,2) unsigned DEFAULT NULL COMMENT '用户每次砍价的最小金额',
  `bargain_num` int unsigned NOT NULL DEFAULT '1' COMMENT '用户每次砍价的次数',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '砍价状态 0(到砍价时间不自动开启)  1(到砍价时间自动开启时间)',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '砍价详情',
  `give_integral` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '反多少积分',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '砍价活动简介',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `sort` int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐0不推荐1推荐',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除 0未删除 1删除',
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  `is_postage` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '是否包邮 0不包邮 1包邮',
  `postage` decimal(10,2) unsigned DEFAULT NULL COMMENT '邮费',
  `rule` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '砍价规则',
  `look` int unsigned DEFAULT '0' COMMENT '砍价产品浏览量',
  `share` int unsigned DEFAULT '0' COMMENT '砍价产品分享量',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='砍价表';

-- ----------------------------
-- Records of yx_store_bargain
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_bargain` VALUES (2, 24, '砍价测试01', 'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', '张', 100, 1, 'https://image.dayouqiantu.cn/5ca05103ad634.jpg,https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', 1577090495, 1608660000, '70gA4彩色打印复印', 10.00, 0.01, 1, 2.00, 0.01, 1, 1, '<p style=\"text-align: center;\">7<strong>文件请传QQ2412733099，</strong></p><p style=\"text-align: center;\"><strong>718504558或2412733099@qq.com邮箱，</strong></p><p style=\"text-align: center;\"><strong>手机/微信：13733990583</strong></p><p style=\"text-align: center;\"><strong>量大请联系店主，一定让您满意而归</strong></p><p style=\"text-align: center;\"><strong>&nbsp; &nbsp;实体店面经营 保质保量</strong></p><p style=\"text-align: center;\"><strong>A4黑白2毛/张，量大1毛/张，</strong></p><p style=\"text-align: center;\"><strong>A3黑白双面5毛/张，量大3毛/张，</strong></p><p style=\"text-align: center;\"><strong>更大量请联系店主报价，</strong></p><p style=\"text-align: center;\"><strong>每消费1元可积1分，1分抵现金1毛，</strong></p><p style=\"text-align: center;\"><strong>付款时直接抵扣</strong></p><p style=\"text-align: center;\"><strong>（如此优惠的基础上还可积分，积分抵现金）</strong></p><p style=\"text-align: center;\"><img src=\"https://image.dayouqiantu.cn/5ca03007150f1.jpg\" style=\"max-width:100%;\"><strong><br></strong></p><p style=\"text-align: center;\"><br></p>', 0.00, '70gA4彩色打印复印', 0.50, 0, 0, 0, 1577090553, 1, 0.00, '<p>这里是规则</p>', 90, 2, '2020-12-23 02:00:00', '2019-12-23 16:41:35');
INSERT INTO `yx_store_bargain` VALUES (3, 24, '砍价活动2', 'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', '张', 99, 2, 'https://image.dayouqiantu.cn/5ca05103ad634.jpg,https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg,http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200228083801500.png', 1578412800, 1603900800, '70gA4彩色打印复印', 0.01, 0.01, 1, 10.00, 0.01, 1, 1, '<p style=\"text-align: center;\">7<strong>文件请传QQ2412733099，</strong></p><p style=\"text-align: center;\"><strong>718504558或2412733099@qq.com邮箱，</strong></p><p style=\"text-align: center;\"><strong>手机/微信：13733990583</strong></p><p style=\"text-align: center;\"><strong>量大请联系店主，一定让您满意而归</strong></p><p style=\"text-align: center;\"><strong>&nbsp; &nbsp;实体店面经营 保质保量</strong></p><p style=\"text-align: center;\"><strong>A4黑白2毛/张，量大1毛/张，</strong></p><p style=\"text-align: center;\"><strong>A3黑白双面5毛/张，量大3毛/张，</strong></p><p style=\"text-align: center;\"><strong>更大量请联系店主报价，</strong></p><p style=\"text-align: center;\"><strong>每消费1元可积1分，1分抵现金1毛，</strong></p><p style=\"text-align: center;\"><strong>付款时直接抵扣</strong></p><p style=\"text-align: center;\"><strong>（如此优惠的基础上还可积分，积分抵现金）</strong></p><p style=\"text-align: center;\"><img src=\"https://image.dayouqiantu.cn/5ca03007150f1.jpg\" style=\"max-width:100%;\"><strong><br></strong></p><p style=\"text-align: center;\"><br></p>', 0.00, '70gA4彩色打印复印', 0.50, 0, 0, 0, 1577101179, 1, 0.00, '<p>444444</p>', 34, 1, '2020-10-29 00:00:00', '2020-01-08 00:00:00');
INSERT INTO `yx_store_bargain` VALUES (4, 28, '9999', 'http://localhost:8000/file/pic/资讯-20200311043727918.png', '张', 0, 0, 'http://localhost:8000/file/pic/钻石-20200328094531898.jpg', 1589731200, 1590768000, NULL, 0.01, NULL, 1, NULL, NULL, 1, 1, '<p>999999</p>', 0.00, '333', 0.00, 0, 0, 0, 1589799053, 0, 0.00, '<p>33333</p>', 0, 0, '2020-05-30 00:00:00', '2020-05-18 00:00:00');
INSERT INTO `yx_store_bargain` VALUES (5, 28, '9999', 'http://localhost:8000/file/pic/资讯-20200311043727918.png', '张', 1, 0, 'http://localhost:8000/file/pic/钻石-20200328094531898.jpg', 1589731200, 1590595200, NULL, 0.01, 1.00, 1, 1.00, 1.00, 1, 1, '<p>999999</p>', 0.00, '', 0.00, 0, 0, 0, 1589799708, 0, 0.00, '<p>7777</p>', 0, 0, '2020-05-28 00:00:00', '2020-05-18 00:00:00');
INSERT INTO `yx_store_bargain` VALUES (6, 27, '9999', 'http://localhost:8000/file/pic/资讯-20200311043727918.png', '9', 2, 0, 'http://localhost:8000/file/pic/钻石-20200328094531898.jpg', 1589855271, 1590422400, NULL, 0.01, 1.00, 1, 1.00, 1.00, 1, 1, '<p>999999</p>', 0.00, '999', 0.00, 0, 0, 0, 1589855299, 0, 0.00, '<p>666</p>', 0, 0, '2020-05-26 00:00:00', '2020-05-19 10:27:51');
COMMIT;

-- ----------------------------
-- Table structure for yx_store_bargain_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_bargain_user`;
CREATE TABLE `yx_store_bargain_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户参与砍价表ID',
  `uid` int unsigned DEFAULT NULL COMMENT '用户ID',
  `bargain_id` int unsigned DEFAULT NULL COMMENT '砍价产品id',
  `bargain_price_min` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍价的最低价',
  `bargain_price` decimal(8,2) DEFAULT NULL COMMENT '砍价金额',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '砍掉的价格',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态 1参与中 2 活动结束参与失败 3活动结束参与成功',
  `add_time` int unsigned DEFAULT NULL COMMENT '参与时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否取消',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户参与砍价表';

-- ----------------------------
-- Records of yx_store_bargain_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_bargain_user_help
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_bargain_user_help`;
CREATE TABLE `yx_store_bargain_user_help` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '砍价用户帮助表ID',
  `uid` int unsigned DEFAULT NULL COMMENT '帮助的用户id',
  `bargain_id` int unsigned DEFAULT NULL COMMENT '砍价产品ID',
  `bargain_user_id` int unsigned DEFAULT NULL COMMENT '用户参与砍价表id',
  `price` decimal(8,2) unsigned DEFAULT NULL COMMENT '帮助砍价多少金额',
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='砍价用户帮助表';

-- ----------------------------
-- Records of yx_store_bargain_user_help
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_cart
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_cart`;
CREATE TABLE `yx_store_cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表ID',
  `uid` int unsigned NOT NULL COMMENT '用户ID',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `product_attr_unique` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品属性',
  `cart_num` smallint unsigned NOT NULL DEFAULT '0' COMMENT '商品数量',
  `add_time` int unsigned NOT NULL COMMENT '添加时间',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = 未购买 1 = 已购买',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为立即购买',
  `combination_id` int unsigned DEFAULT '0' COMMENT '拼团id',
  `seckill_id` int unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int unsigned NOT NULL DEFAULT '0' COMMENT '砍价id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`uid`) USING BTREE,
  KEY `goods_id` (`product_id`) USING BTREE,
  KEY `uid` (`uid`,`is_pay`) USING BTREE,
  KEY `uid_2` (`uid`,`is_del`) USING BTREE,
  KEY `uid_3` (`uid`,`is_new`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车表';

-- ----------------------------
-- Records of yx_store_cart
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_cart` VALUES (123, 11, 'product', 19, '', 2, 1582885462, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (124, 12, 'product', 19, '', 1, 1582897654, 0, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (125, 11, 'product', 19, '', 2, 1582970873, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (126, 11, 'product', 19, '', 1, 1582971001, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (127, 11, 'product', 19, '', 1, 1582971278, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (128, 11, 'product', 19, '', 1, 1582990627, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (129, 11, 'product', 19, '', 1, 1583330733, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (130, 11, 'product', 19, '', 1, 1583393646, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (131, 11, 'product', 19, '', 1, 1583394583, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (132, 11, 'product', 19, '', 1, 1583399181, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (133, 11, 'product', 19, '', 1, 1583403251, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (134, 11, 'product', 19, '', 1, 1583410813, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (135, 11, 'product', 19, '', 1, 1583416029, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (136, 11, 'product', 20, '2e51e5d2d86a44748f81cdd5bf7a51c0', 1, 1583422305, 0, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (137, 11, 'product', 19, '', 1, 1583479387, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (138, 11, 'product', 19, '', 1, 1583486497, 1, 0, 0, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (139, 11, 'product', 20, '2e51e5d2d86a44748f81cdd5bf7a51c0', 1, 1583486504, 1, 0, 0, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (140, 11, 'product', 19, '', 1, 1584171669, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (141, 11, 'product', 20, '', 1, 1584175842, 1, 0, 1, 0, 2, 0);
INSERT INTO `yx_store_cart` VALUES (142, 11, 'product', 19, '', 1, 1584177295, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (143, 11, 'product', 24, '', 1, 1585051721, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (144, 11, 'product', 19, '', 1, 1585144729, 0, 0, 0, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (145, 12, 'product', 24, '', 1, 1585224558, 0, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (146, 11, 'product', 19, '', 1, 1585293362, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (147, 11, 'product', 19, '', 1, 1585385719, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (148, 11, 'product', 24, '', 1, 1585899825, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (149, 11, 'product', 24, '', 1, 1585900220, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (150, 11, 'product', 24, '', 1, 1585900404, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (151, 11, 'product', 24, '', 1, 1585900426, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (152, 11, 'product', 24, '', 1, 1585900444, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (153, 11, 'product', 24, '', 1, 1585900487, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (154, 11, 'product', 24, '', 1, 1585900506, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (155, 11, 'product', 24, '', 1, 1585901825, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (156, 11, 'product', 24, '', 1, 1585901980, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (157, 11, 'product', 24, '', 1, 1585907975, 1, 0, 1, 0, 0, 3);
INSERT INTO `yx_store_cart` VALUES (158, 11, 'product', 24, '', 1, 1586065022, 1, 0, 1, 0, 1, 0);
INSERT INTO `yx_store_cart` VALUES (159, 11, 'product', 19, '', 1, 1586065167, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (160, 11, 'product', 19, '', 1, 1586066223, 0, 0, 1, 2, 0, 0);
INSERT INTO `yx_store_cart` VALUES (161, 11, 'product', 19, '', 1, 1589803637, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (162, 11, 'product', 19, '', 1, 1589804627, 1, 0, 1, 0, 0, 0);
INSERT INTO `yx_store_cart` VALUES (163, 11, 'product', 19, '', 1, 1589804837, 1, 0, 1, 0, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for yx_store_category
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_category`;
CREATE TABLE `yx_store_category` (
  `id` mediumint NOT NULL AUTO_INCREMENT COMMENT '商品分类表ID',
  `pid` mediumint NOT NULL COMMENT '父id',
  `cate_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `sort` mediumint DEFAULT NULL COMMENT '排序',
  `pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '图标',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否推荐',
  `add_time` int DEFAULT NULL COMMENT '添加时间',
  `is_del` tinyint unsigned DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `is_base` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品分类表';

-- ----------------------------
-- Records of yx_store_category
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_category` VALUES (1, 0, '图文广告', 1, '', 1, 1584876792, 0);
INSERT INTO `yx_store_category` VALUES (2, 1, '写真', 1, 'http://localhost:8000/file/pic/资讯-20200311043727918.png', 1, 1586244998, 1);
INSERT INTO `yx_store_category` VALUES (3, 1, '平面设计', 1, 'http://localhost:8000/file/pic/资讯-20200311043727918.png', 1, 1584945190, 0);
INSERT INTO `yx_store_category` VALUES (5, 1, '名片', 1, 'http://localhost:8000/file/pic/砍价-20200311043720679.png', 1, 1586245178, 0);
INSERT INTO `yx_store_category` VALUES (6, 0, '666', 1, '', 1, 1589792698, 0);
INSERT INTO `yx_store_category` VALUES (7, 0, '9999', 1, '', 1, 1589795680, 0);
INSERT INTO `yx_store_category` VALUES (8, 7, '8888', 1, 'http://localhost:8000/file/pic/钻石-20200328094531898.jpg', 1, 1589795706, 0);
COMMIT;

-- ----------------------------
-- Table structure for yx_store_combination
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_combination`;
CREATE TABLE `yx_store_combination` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL COMMENT '商品id',
  `mer_id` int unsigned DEFAULT '0' COMMENT '商户id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '推荐图',
  `images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动标题',
  `attr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动属性',
  `people` int unsigned NOT NULL COMMENT '参团人数',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `sort` int unsigned NOT NULL COMMENT '排序',
  `sales` int unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `stock` int unsigned NOT NULL COMMENT '库存',
  `add_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加时间',
  `is_host` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_show` tinyint unsigned NOT NULL COMMENT '产品状态',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0',
  `combination` tinyint unsigned NOT NULL DEFAULT '1',
  `mer_use` tinyint unsigned DEFAULT NULL COMMENT '商户是否可用1可用0不可用',
  `is_postage` tinyint unsigned NOT NULL COMMENT '是否包邮1是0否',
  `postage` decimal(10,2) unsigned NOT NULL COMMENT '邮费',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拼团内容',
  `start_time` int unsigned NOT NULL COMMENT '拼团开始时间',
  `stop_time` int unsigned NOT NULL COMMENT '拼团结束时间',
  `effective_time` int NOT NULL DEFAULT '0' COMMENT '拼团订单有效时间',
  `cost` int unsigned NOT NULL DEFAULT '0' COMMENT '拼团产品成本',
  `browse` int DEFAULT '0' COMMENT '浏览量',
  `unit_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '单位名',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团产品表';

-- ----------------------------
-- Records of yx_store_combination
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_coupon
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_coupon`;
CREATE TABLE `yx_store_coupon` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '优惠券表ID',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券名称',
  `integral` int unsigned NOT NULL DEFAULT '0' COMMENT '兑换消耗积分值',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '兑换的优惠券面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `coupon_time` int unsigned NOT NULL DEFAULT '0' COMMENT '优惠券有效期限（单位：天）',
  `sort` int unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态（0：关闭，1：开启）',
  `add_time` int unsigned NOT NULL COMMENT '兑换项目添加时间',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `state` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `coupon_time` (`coupon_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券表';

-- ----------------------------
-- Records of yx_store_coupon
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_coupon_issue
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_coupon_issue`;
CREATE TABLE `yx_store_coupon_issue` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `cid` int DEFAULT NULL COMMENT '优惠券ID',
  `start_time` int DEFAULT NULL COMMENT '优惠券领取开启时间',
  `end_time` int DEFAULT NULL COMMENT '优惠券领取结束时间',
  `total_count` int DEFAULT NULL COMMENT '优惠券领取数量',
  `remain_count` int DEFAULT NULL COMMENT '优惠券剩余领取数量',
  `is_permanent` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否无限张数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 正常 0 未开启 -1 已无效',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0',
  `add_time` int DEFAULT NULL COMMENT '优惠券添加时间',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `start_time` (`start_time`,`end_time`) USING BTREE,
  KEY `remain_count` (`remain_count`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券前台领取表';

-- ----------------------------
-- Records of yx_store_coupon_issue
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_coupon_issue_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_coupon_issue_user`;
CREATE TABLE `yx_store_coupon_issue_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL COMMENT '领取优惠券用户ID',
  `issue_coupon_id` int DEFAULT NULL COMMENT '优惠券前台领取ID',
  `add_time` int DEFAULT NULL COMMENT '领取时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`issue_coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券前台用户领取记录表';

-- ----------------------------
-- Records of yx_store_coupon_issue_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_coupon_user`;
CREATE TABLE `yx_store_coupon_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '优惠券发放记录id',
  `cid` int unsigned NOT NULL DEFAULT '0' COMMENT '兑换的项目id',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '优惠券所属用户',
  `coupon_title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠券名称',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券的面值',
  `use_min_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '最低消费多少金额可用优惠券',
  `add_time` int unsigned NOT NULL COMMENT '优惠券创建时间',
  `end_time` int unsigned NOT NULL COMMENT '优惠券结束时间',
  `use_time` int unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'send' COMMENT '获取方式',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态（0：未使用，1：已使用, 2:已过期）',
  `is_fail` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `end_time` (`end_time`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_fail` (`is_fail`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='优惠券发放记录表';

-- ----------------------------
-- Records of yx_store_coupon_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_order
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_order`;
CREATE TABLE `yx_store_order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `extend_order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '额外订单号',
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `user_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户电话',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '详细地址',
  `cart_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '[]' COMMENT '购物车id',
  `freight_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '运费金额',
  `total_num` int unsigned NOT NULL DEFAULT '0' COMMENT '订单商品总数',
  `total_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `total_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `pay_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '实际支付金额',
  `pay_postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付邮费',
  `deduction_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coupon_id` int unsigned NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `coupon_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠券金额',
  `paid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '支付状态',
  `pay_time` int unsigned DEFAULT NULL COMMENT '支付时间',
  `pay_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付方式',
  `add_time` int unsigned NOT NULL COMMENT '创建时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款）',
  `refund_status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 未退款 1 申请中 2 已退款',
  `refund_reason_wap_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款图片',
  `refund_reason_wap_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款用户说明',
  `refund_reason_time` int unsigned DEFAULT NULL COMMENT '退款时间',
  `refund_reason_wap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前台退款原因',
  `refund_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '不退款的理由',
  `refund_price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `delivery_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '快递公司编号',
  `delivery_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递名称/送货人姓名',
  `delivery_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发货类型',
  `delivery_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递单号/手机号',
  `gain_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '消费赚取积分',
  `use_integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '使用积分',
  `back_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '给用户退了多少积分',
  `mark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `unique` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id(md5加密)类似id',
  `remark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员备注',
  `mer_id` int unsigned NOT NULL DEFAULT '0' COMMENT '商户ID',
  `is_mer_check` tinyint unsigned NOT NULL DEFAULT '0',
  `combination_id` int unsigned DEFAULT '0' COMMENT '拼团产品id0一般产品',
  `pink_id` int unsigned NOT NULL DEFAULT '0' COMMENT '拼团id 0没有拼团',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  `seckill_id` int unsigned NOT NULL DEFAULT '0' COMMENT '秒杀产品ID',
  `bargain_id` int unsigned DEFAULT '0' COMMENT '砍价id',
  `verify_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '核销码',
  `store_id` int NOT NULL DEFAULT '0' COMMENT '门店id',
  `shipping_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '配送方式 1=快递 ，2=门店自提',
  `is_channel` tinyint unsigned DEFAULT '0' COMMENT '支付渠道(0微信公众号1微信小程序)',
  `is_remind` tinyint unsigned DEFAULT '0',
  `is_system_del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`order_id`,`uid`) USING BTREE,
  UNIQUE KEY `unique` (`unique`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pay_price` (`pay_price`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE,
  KEY `pay_time` (`pay_time`) USING BTREE,
  KEY `pay_type` (`pay_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `coupon_id` (`coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of yx_store_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_order_cart_info
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_order_cart_info`;
CREATE TABLE `yx_store_order_cart_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `oid` int unsigned NOT NULL COMMENT '订单id',
  `cart_id` int unsigned NOT NULL DEFAULT '0' COMMENT '购物车id',
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `cart_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买东西的详细信息',
  `unique` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '唯一id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `oid` (`oid`,`unique`) USING BTREE,
  KEY `cart_id` (`cart_id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单购物详情表';

-- ----------------------------
-- Records of yx_store_order_cart_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_order_status
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_order_status`;
CREATE TABLE `yx_store_order_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `oid` int unsigned NOT NULL COMMENT '订单id',
  `change_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作类型',
  `change_message` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作备注',
  `change_time` int unsigned NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oid` (`oid`) USING BTREE,
  KEY `change_type` (`change_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单操作记录表';

-- ----------------------------
-- Records of yx_store_order_status
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_pink
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_pink`;
CREATE TABLE `yx_store_pink` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id 生成',
  `order_id_key` int unsigned NOT NULL COMMENT '订单id  数据库',
  `total_num` int unsigned NOT NULL COMMENT '购买商品个数',
  `total_price` decimal(10,2) unsigned NOT NULL COMMENT '购买总金额',
  `cid` int unsigned NOT NULL COMMENT '拼团产品id',
  `pid` int unsigned NOT NULL COMMENT '产品id',
  `people` int unsigned NOT NULL COMMENT '拼团总人数',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '拼团产品单价',
  `add_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开始时间',
  `stop_time` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `k_id` int unsigned NOT NULL DEFAULT '0' COMMENT '团长id 0为团长',
  `is_tpl` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否发送模板消息0未发送1已发送',
  `is_refund` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否退款 0未退款 1已退款',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '状态1进行中2已完成3未完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='拼团表';

-- ----------------------------
-- Records of yx_store_pink
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_product
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_product`;
CREATE TABLE `yx_store_product` (
  `id` mediumint NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `mer_id` int unsigned DEFAULT '0' COMMENT '商户Id(0为总后台管理员创建,不为0的时候是商户后台创建)',
  `image` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `slider_image` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图',
  `store_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `store_info` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品简介',
  `keyword` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字',
  `bar_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '产品条码（一维码）',
  `cate_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类id',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `vip_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '会员价格',
  `ot_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '市场价',
  `postage` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '邮费',
  `unit_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位名',
  `sort` smallint DEFAULT '0' COMMENT '排序',
  `sales` mediumint unsigned DEFAULT '0' COMMENT '销量',
  `stock` mediumint unsigned DEFAULT '0' COMMENT '库存',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '状态（0：未上架，1：上架）',
  `is_hot` tinyint(1) DEFAULT '0' COMMENT '是否热卖',
  `is_benefit` tinyint(1) DEFAULT '0' COMMENT '是否优惠',
  `is_best` tinyint(1) DEFAULT '0' COMMENT '是否精品',
  `is_new` tinyint(1) DEFAULT '0' COMMENT '是否新品',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '产品描述',
  `add_time` int unsigned DEFAULT '0' COMMENT '添加时间',
  `is_postage` tinyint unsigned DEFAULT '0' COMMENT '是否包邮',
  `is_del` tinyint unsigned DEFAULT '0' COMMENT '是否删除',
  `mer_use` tinyint unsigned DEFAULT '0' COMMENT '商户是否代理 0不可代理1可代理',
  `give_integral` decimal(8,2) unsigned DEFAULT NULL COMMENT '获得积分',
  `cost` decimal(8,2) unsigned DEFAULT NULL COMMENT '成本价',
  `is_seckill` tinyint unsigned DEFAULT '0' COMMENT '秒杀状态 0 未开启 1已开启',
  `is_bargain` tinyint unsigned DEFAULT NULL COMMENT '砍价状态 0未开启 1开启',
  `is_good` tinyint(1) DEFAULT '0' COMMENT '是否优品推荐',
  `ficti` mediumint DEFAULT '100' COMMENT '虚拟销量',
  `browse` int DEFAULT '0' COMMENT '浏览量',
  `code_path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '产品二维码地址(用户小程序海报)',
  `soure_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '淘宝京东1688类型',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_benefit` (`is_benefit`) USING BTREE,
  KEY `is_best` (`is_best`) USING BTREE,
  KEY `is_new` (`is_new`) USING BTREE,
  KEY `toggle_on_sale, is_del` (`is_del`) USING BTREE,
  KEY `price` (`price`) USING BTREE,
  KEY `is_show` (`is_show`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `sales` (`sales`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品表';

-- ----------------------------
-- Records of yx_store_product
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_product` VALUES (19, NULL, 'https://image.dayouqiantu.cn/5ca011a1cd487.jpg', 'https://image.dayouqiantu.cn/5ca01c7fc9238.jpg,https://image.dayouqiantu.cn/5ca01c7676042.jpg', '70gA4黑白打印复印', '打印复印资料A4黑白彩色印刷画册书本装订图文数码快印服务', '打印复印', '', '3', 120.00, 0.20, 0.50, 0.00, '张', 1, 52, 72, 1, 1, 1, 1, 1, '<p style=\"text-align: center;\"><strong>文件请传QQ2412733099，</strong></p><p style=\"text-align: center;\"><strong>718504558或2412733099@qq.com邮箱，</strong></p><p style=\"text-align: center;\"><strong>手机/微信：13733990583</strong></p><p style=\"text-align: center;\"><strong>量大请联系店主，一定让您满意而归</strong></p><p style=\"text-align: center;\"><strong>&nbsp; &nbsp;实体店面经营 保质保量</strong></p><p style=\"text-align: center;\"><strong>A4黑白2毛/张，量大1毛/张，</strong></p><p style=\"text-align: center;\"><strong>A3黑白双面5毛/张，量大3毛/张，</strong></p><p style=\"text-align: center;\"><strong>更大量请联系店主报价，</strong></p><p style=\"text-align: center;\"><strong>每消费1元可积1分，1分抵现金1毛，</strong></p><p style=\"text-align: center;\"><strong>付款时直接抵扣</strong></p><p style=\"text-align: center;\"><strong>（如此优惠的基础上还可积分，积分抵现金）</strong></p><p style=\"text-align: left;\"><strong><br></strong></p><p><br></p><p>&nbsp; &nbsp;&nbsp;<img src=\"https://image.dayouqiantu.cn/5ca03007150f1.jpg\" style=\"max-width: 100%;\"><br></p>', NULL, 1, 0, 0, 1.00, 0.20, 0, 0, 1, NULL, NULL, '', '');
INSERT INTO `yx_store_product` VALUES (24, 0, 'https://image.dayouqiantu.cn/5ca011a1cd487.jpg', 'https://image.dayouqiantu.cn/5ca011a1cd487.jpg', '彩色打印', '彩色打印', '彩色打印', '', '2', 1.00, 0.00, 1.00, 0.00, '张', 0, 10, 9989, 1, 1, 1, 1, 1, '<p>彩色打印</p>', 1582894605, 0, 1, 0, 0.00, 0.00, 0, 0, 1, 0, 0, '', '');
COMMIT;

-- ----------------------------
-- Table structure for yx_store_product_attr
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_product_attr`;
CREATE TABLE `yx_store_product_attr` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `attr_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性名',
  `attr_values` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `store_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品属性表';

-- ----------------------------
-- Records of yx_store_product_attr
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_product_attr` VALUES (14, 20, '纸张', 'A3,A4');
INSERT INTO `yx_store_product_attr` VALUES (15, 20, '颜色', '白色,红色');
COMMIT;

-- ----------------------------
-- Table structure for yx_store_product_attr_result
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_product_attr_result`;
CREATE TABLE `yx_store_product_attr_result` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `result` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品属性参数',
  `change_time` int unsigned NOT NULL COMMENT '上次修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品属性详情表';

-- ----------------------------
-- Records of yx_store_product_attr_result
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_product_attr_result` VALUES (8, 20, '{\"attr\":[{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"A3\",\"A4\"],\"value\":\"纸张\"},{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"白色\",\"红色\"],\"value\":\"颜色\"}],\"value\":[{\"cost\":0.5,\"price\":0.5,\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"白色\",\"纸张\":\"A3\"},\"check\":false,\"sales\":\"999\"},{\"cost\":0.5,\"price\":0.5,\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"红色\",\"纸张\":\"A3\"},\"check\":false,\"sales\":\"999\"},{\"cost\":0.5,\"price\":\"0.2\",\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"白色\",\"纸张\":\"A4\"},\"check\":false,\"sales\":\"999\"},{\"cost\":0.5,\"price\":\"0.2\",\"pic\":\"https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg\",\"detail\":{\"颜色\":\"红色\",\"纸张\":\"A4\"},\"check\":false,\"sales\":\"999\"}]}', 1578320995);
INSERT INTO `yx_store_product_attr_result` VALUES (9, 28, '{\"attr\":[{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"黑色\",\"白色\"],\"value\":\"颜色\"},{\"attrHidden\":true,\"detailValue\":\"\",\"detail\":[\"11\"],\"value\":\"尺寸\"}],\"value\":[{\"cost\":0,\"price\":0,\"pic\":\"http://localhost:8000/file/pic/资讯-20200311043727918.png\",\"detail\":{\"颜色\":\"黑色\",\"尺寸\":\"11\"},\"check\":false,\"sales\":0},{\"cost\":0,\"price\":0,\"pic\":\"http://localhost:8000/file/pic/资讯-20200311043727918.png\",\"detail\":{\"颜色\":\"白色\",\"尺寸\":\"11\"},\"check\":false,\"sales\":0}]}', 1589854701);
COMMIT;

-- ----------------------------
-- Table structure for yx_store_product_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_product_attr_value`;
CREATE TABLE `yx_store_product_attr_value` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `suk` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品属性索引值 (attr_value|attr_value[|....])',
  `stock` int unsigned NOT NULL COMMENT '属性对应的库存',
  `sales` int unsigned DEFAULT '0' COMMENT '销量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '属性金额',
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `unique` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '唯一值',
  `cost` decimal(8,2) unsigned NOT NULL COMMENT '成本价',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique` (`unique`,`suk`) USING BTREE,
  KEY `store_id` (`product_id`,`suk`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品属性值表';

-- ----------------------------
-- Records of yx_store_product_attr_value
-- ----------------------------
BEGIN;
INSERT INTO `yx_store_product_attr_value` VALUES (26, 20, 'A3,白色', 996, NULL, 0.50, 'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', '2e51e5d2d86a44748f81cdd5bf7a51c0', 0.50);
INSERT INTO `yx_store_product_attr_value` VALUES (27, 20, 'A3,红色', 999, NULL, 0.50, 'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', 'fd545718bbdb4634aa54228ecca6febe', 0.50);
INSERT INTO `yx_store_product_attr_value` VALUES (28, 20, 'A4,白色', 999, NULL, 0.20, 'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', '5e0ae3241d8c4ea793368666f862dd3b', 0.50);
INSERT INTO `yx_store_product_attr_value` VALUES (29, 20, 'A4,红色', 999, NULL, 0.20, 'https://image.dayouqiantu.cn/5ca04fa9c08ef.jpg', '4b4b306134434832885a52f3a85955ce', 0.50);
INSERT INTO `yx_store_product_attr_value` VALUES (30, 28, '11,黑色', 0, 0, 0.00, 'http://localhost:8000/file/pic/资讯-20200311043727918.png', 'b8f3e4936b294a8a9fb433f1324eabe4', 0.00);
INSERT INTO `yx_store_product_attr_value` VALUES (31, 28, '11,白色', 0, 0, 0.00, 'http://localhost:8000/file/pic/资讯-20200311043727918.png', '42b4b10585f14d6c96f07372e46fb63b', 0.00);
COMMIT;

-- ----------------------------
-- Table structure for yx_store_product_relation
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_product_relation`;
CREATE TABLE `yx_store_product_relation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '用户ID',
  `product_id` int unsigned NOT NULL COMMENT '商品ID',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型(收藏(collect）、点赞(like))',
  `category` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '某种类型的商品(普通商品、秒杀商品)',
  `add_time` int unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`product_id`,`type`,`category`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品点赞和收藏表';

-- ----------------------------
-- Records of yx_store_product_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_product_reply
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_product_reply`;
CREATE TABLE `yx_store_product_reply` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `uid` int NOT NULL COMMENT '用户ID',
  `oid` int NOT NULL COMMENT '订单ID',
  `unique` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `product_id` int NOT NULL COMMENT '产品id',
  `reply_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'product' COMMENT '某种商品类型(普通商品、秒杀商品）',
  `product_score` tinyint(1) NOT NULL COMMENT '商品分数',
  `service_score` tinyint(1) NOT NULL COMMENT '服务分数',
  `comment` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `pics` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论图片',
  `add_time` int NOT NULL COMMENT '评论时间',
  `merchant_reply_content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员回复内容',
  `merchant_reply_time` int DEFAULT NULL COMMENT '管理员回复时间',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0未删除1已删除',
  `is_reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未回复1已回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id_2` (`oid`,`unique`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `parent_id` (`reply_type`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `product_score` (`product_score`) USING BTREE,
  KEY `service_score` (`service_score`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表';

-- ----------------------------
-- Records of yx_store_product_reply
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_seckill
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_seckill`;
CREATE TABLE `yx_store_seckill` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '商品秒杀产品表id',
  `product_id` int unsigned NOT NULL COMMENT '商品id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '推荐图',
  `images` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动标题',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `cost` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '成本',
  `ot_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `give_integral` decimal(10,2) unsigned NOT NULL COMMENT '返多少积分',
  `sort` int unsigned NOT NULL COMMENT '排序',
  `stock` int unsigned NOT NULL COMMENT '库存',
  `sales` int unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `unit_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位名',
  `postage` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '邮费',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `start_time` int NOT NULL DEFAULT '0' COMMENT '开始时间',
  `stop_time` int NOT NULL DEFAULT '0' COMMENT '结束时间',
  `add_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加时间',
  `status` tinyint unsigned NOT NULL COMMENT '产品状态',
  `is_postage` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `is_hot` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '热门推荐',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '删除 0未删除1已删除',
  `num` int unsigned NOT NULL COMMENT '最多秒杀几个',
  `is_show` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '显示',
  `end_time_date` datetime NOT NULL,
  `start_time_date` datetime NOT NULL,
  `time_id` int unsigned DEFAULT '0' COMMENT '时间段id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `start_time` (`start_time`,`stop_time`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `is_hot` (`is_hot`) USING BTREE,
  KEY `is_show` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `is_postage` (`is_postage`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品秒杀产品表';

-- ----------------------------
-- Records of yx_store_seckill
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_store_visit
-- ----------------------------
DROP TABLE IF EXISTS `yx_store_visit`;
CREATE TABLE `yx_store_visit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL COMMENT '产品ID',
  `product_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品类型',
  `cate_id` int DEFAULT NULL COMMENT '产品分类ID',
  `type` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '产品类型',
  `uid` int DEFAULT NULL COMMENT '用户ID',
  `count` int DEFAULT NULL COMMENT '访问次数',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注描述',
  `add_time` int DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='产品浏览分析表';

-- ----------------------------
-- Records of yx_store_visit
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_system_attachment
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_attachment`;
CREATE TABLE `yx_system_attachment` (
  `att_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件名称',
  `att_dir` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件路径',
  `satt_dir` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '压缩图片路径',
  `att_size` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件大小',
  `att_type` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件类型',
  `pid` int NOT NULL DEFAULT '0' COMMENT '分类ID0编辑器,1产品图片,2拼团图片,3砍价图片,4秒杀图片,5文章图片,6组合数据图',
  `time` int NOT NULL DEFAULT '0' COMMENT '上传时间',
  `image_type` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '图片上传类型 1本地 2七牛云 3OSS 4COS ',
  `module_type` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '图片上传模块类型 1 后台上传 2 用户生成',
  `uid` int unsigned DEFAULT '0' COMMENT '用户id',
  `invite_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件管理表';

-- ----------------------------
-- Records of yx_system_attachment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_system_config
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_config`;
CREATE TABLE `yx_system_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名称',
  `value` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '默认值',
  `sort` int unsigned DEFAULT '0' COMMENT '排序',
  `status` tinyint unsigned DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置表';

-- ----------------------------
-- Records of yx_system_config
-- ----------------------------
BEGIN;
INSERT INTO `yx_system_config` VALUES (162, 'wechat_share_img', 'https://image.dayouqiantu.cn/list_34.png', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (165, 'wechat_avatar', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (172, 'wechat_share_synopsis', '4444444', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (174, 'api', 'http://你的H5端域名/api/wechat/serve', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (175, 'wechat_share_title', '4444', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (177, 'store_postage', '1', 0, 0);
INSERT INTO `yx_system_config` VALUES (178, 'store_free_postage', '200', 0, 0);
INSERT INTO `yx_system_config` VALUES (179, 'integral_ratio', '1', 0, 0);
INSERT INTO `yx_system_config` VALUES (180, 'store_brokerage_ratio', '70', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (181, 'store_brokerage_statu', '2', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (182, 'user_extract_min_price', '1', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (183, 'store_brokerage_two', '30', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (184, 'site_url', 'http://localhost:8080', 0, 0);
INSERT INTO `yx_system_config` VALUES (185, 'api_url', 'http://127.0.0.1:8009', 0, 0);
INSERT INTO `yx_system_config` VALUES (186, 'order_cancel_job_time', '20', 0, 0);
INSERT INTO `yx_system_config` VALUES (187, 'wechat_appid', '1111299', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (188, 'wechat_appsecret', '222266', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (189, 'wechat_encodingaeskey', '6666', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (190, 'wechat_token', '999', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (191, 'wxpay_mchId', '2222', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (192, 'wxpay_appId', '111111', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (193, 'wxpay_mchKey', '55555', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (194, 'wxapp_appId', '22222', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (195, 'wxapp_secret', '22222222', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (196, 'wxpay_keyPath', 'http://localhost:8000/file/pic/list_30-20200110053337209.png', 0, 0);
INSERT INTO `yx_system_config` VALUES (197, 'imageArr', '[\"https://image.dayouqiantu.cn/list_34.png\"]', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (198, 'store_brokerage_open', '1', 0, 0);
INSERT INTO `yx_system_config` VALUES (199, 'integral_full', '0', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (200, 'integral_max', '0', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (201, 'store_user_min_recharge', '1', 0, 0);
INSERT INTO `yx_system_config` VALUES (203, 'store_self_mention', '1', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (204, 'tengxun_map_key', 'OGABZ-Y5OCF-5UWJ5-N7DHH-VFIG7-DHFEB', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (205, 'wechat_id', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (206, 'wechat_type', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (207, 'wechat_encode', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (208, 'wechat_sourceid', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (209, 'wechat_name', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (210, 'wechat_qrcode', '', NULL, NULL);
INSERT INTO `yx_system_config` VALUES (211, 'wx_native_app_appId', '11111', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for yx_system_group_data
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_group_data`;
CREATE TABLE `yx_system_group_data` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '组合数据详情ID',
  `group_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对应的数据名称',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据组对应的数据值（json数据）',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加数据时间',
  `sort` int DEFAULT '0' COMMENT '数据排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态（1：开启；2：关闭；）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组合数据详情表';

-- ----------------------------
-- Records of yx_system_group_data
-- ----------------------------
BEGIN;
INSERT INTO `yx_system_group_data` VALUES (177, 'yshop_home_banner', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\"],\"name\":\"banner2\",\"id\":177,\"pic\":\"https://image.dayouqiantu.cn/5c9f05aee5059.jpg\",\"sort\":1,\"url\":\"wwww\",\"status\":1}', 1571387677, 1, 1);
INSERT INTO `yx_system_group_data` VALUES (180, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e85bfa61251d.png\"],\"uniapp_url\":\"/pages/shop/GoodsList/index\",\"name\":\"全部商品\",\"id\":180,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa61251d.png\",\"sort\":9,\"url\":\"/goods_list\",\"wxapp_url\":\"/pages/shop/GoodsList/main\",\"status\":1}', 1571390842, 9, 1);
INSERT INTO `yx_system_group_data` VALUES (182, 'yshop_home_roll_news', '{\"uniapp_url\":\"/pages/shop/news/NewsList/index\",\"id\":182,\"pic\":\"https://i.loli.net/2019/10/18/DqOUgNf7wjuFpPT.png\",\"sort\":2,\"title\":\"分销、拼团、商户功能上线啦！\",\"url\":\"/news_list\",\"info\":\"yshop2.0上线啦\",\"wxapp_url\":\"/pages/shop/news/NewsList/main\",\"status\":1}', 0, 2, 1);
INSERT INTO `yx_system_group_data` VALUES (183, 'yshop_hot_search', '{\"id\":183,\"title\":\"照片\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (184, 'yshop_hot_search', '{\"id\":184,\"title\":\"springboot\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (187, 'yshop_home_roll_news', '{\"uniapp_url\":\"/pages/shop/news/NewsList/index\",\"id\":187,\"sort\":1,\"url\":\"/news_list\",\"info\":\"springboot2+JPA+Mybatisplus商城系统\",\"wxapp_url\":\"/pages/shop/news/NewsList/main\",\"status\":1}', 1572086163, 1, 1);
INSERT INTO `yx_system_group_data` VALUES (188, 'yshop_hot_search', '{\"id\":188,\"title\":\"打印\"}', 1572086172, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (189, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5dec896eeb25a.png\"],\"uniapp_url\":\"/pages/user/UserVip/index\",\"name\":\"会员中心\",\"id\":189,\"pic\":\"https://image.dayouqiantu.cn/5dec896eeb25a.png\",\"sort\":9,\"url\":\"/user/vip\",\"wxapp_url\":\"/pages/user/UserVip/main\",\"status\":1}', 1572087722, 9, 1);
INSERT INTO `yx_system_group_data` VALUES (190, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428984d64d.png\"],\"uniapp_url\":\"/pages/user/coupon/UserCoupon/index\",\"name\":\"我的卡券\",\"id\":190,\"pic\":\"https://image.dayouqiantu.cn/5db428984d64d.png\",\"sort\":8,\"url\":\"/user/get_coupon\",\"wxapp_url\":\"/pages/user/coupon/UserCoupon/main\",\"status\":1}', 0, 8, 1);
INSERT INTO `yx_system_group_data` VALUES (191, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428a8d3ab0.png\"],\"uniapp_url\":\"/pages/shop/GoodsCollection/index\",\"name\":\"收藏商品\",\"id\":191,\"pic\":\"https://image.dayouqiantu.cn/5db428a8d3ab0.png\",\"sort\":7,\"url\":\"/collection\",\"wxapp_url\":\"/pages/shop/GoodsCollection/main\",\"status\":1}', 0, 7, 1);
INSERT INTO `yx_system_group_data` VALUES (192, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428bd61b73.png\"],\"uniapp_url\":\"/pages/user/address/AddressManagement/index\",\"name\":\"地址管理\",\"id\":192,\"pic\":\"https://image.dayouqiantu.cn/5db428bd61b73.png\",\"sort\":6,\"url\":\"/user/add_manage\",\"wxapp_url\":\"/pages/user/address/AddressManagement/main\",\"status\":1}', 0, 6, 1);
INSERT INTO `yx_system_group_data` VALUES (193, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428e28dd48.png\"],\"uniapp_url\":\"/pages/user/promotion/UserPromotion/index\",\"name\":\"我的推广\",\"id\":193,\"pic\":\"https://image.dayouqiantu.cn/5db428e28dd48.png\",\"sort\":5,\"url\":\"/user/user_promotion\",\"wxapp_url\":\"/pages/user/promotion/UserPromotion/main\",\"status\":1}', 0, 5, 1);
INSERT INTO `yx_system_group_data` VALUES (194, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5db42a4208c55.png\"],\"uniapp_url\":\"/pages/user/UserAccount/index\",\"name\":\"我的余额\",\"id\":194,\"pic\":\"https://image.dayouqiantu.cn/5db42a4208c55.png\",\"sort\":4,\"url\":\"/user/account\",\"wxapp_url\":\"/pages/user/UserAccount/main\",\"status\":1}', 0, 4, 1);
INSERT INTO `yx_system_group_data` VALUES (195, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5db428f410462.png\"],\"uniapp_url\":\"/pages/user/signIn/Integral/index\",\"name\":\"我的积分\",\"id\":195,\"pic\":\"https://image.dayouqiantu.cn/5db428f410462.png\",\"sort\":3,\"url\":\"/user/integral\",\"wxapp_url\":\"/pages/user/signIn/Integral/main\",\"status\":1}', 0, 3, 1);
INSERT INTO `yx_system_group_data` VALUES (196, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e93f004713.png\"],\"uniapp_url\":\"/pages/shop/news/NewsList/index\",\"name\":\"图文资讯\",\"id\":196,\"pic\":\"https://image.dayouqiantu.cn/5e85bfea151b7.png\",\"sort\":8,\"url\":\"/news_list\",\"wxapp_url\":\"/pages/shop/news/NewsList/main\",\"status\":1}', 1573109648, 8, 1);
INSERT INTO `yx_system_group_data` VALUES (197, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e939507b5e.png\"],\"uniapp_url\":\"/pages/shop/GoodsCollection/index\",\"name\":\"我的收藏\",\"id\":197,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa55f352.png\",\"sort\":7,\"url\":\"/collection\",\"wxapp_url\":\"/pages/shop/GoodsCollection/main\",\"status\":1}', 1573109723, 7, 1);
INSERT INTO `yx_system_group_data` VALUES (199, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e93c9a8304.png\"],\"uniapp_url\":\"/pages/user/coupon/GetCoupon/index\",\"name\":\"我的卡券\",\"id\":199,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa6621ca.png\",\"sort\":6,\"url\":\"/user/get_coupon\",\"wxapp_url\":\"/pages/user/coupon/GetCoupon/main\",\"status\":1}', 1573387422, 6, 1);
INSERT INTO `yx_system_group_data` VALUES (200, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e925140b57.png\"],\"uniapp_url\":\"/pages/activity/GoodsGroup/index\",\"name\":\"拼团专区\",\"id\":200,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa4b273f.png\",\"sort\":5,\"url\":\"/activity/group\",\"wxapp_url\":\"/pages/activity/GoodsGroup/main\",\"status\":1}', 0, 5, 1);
INSERT INTO `yx_system_group_data` VALUES (201, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5ddb7a37d58d9.png\"],\"uniapp_url\":\"/pages/orderAdmin/OrderIndex/index\",\"name\":\"商户管理\",\"id\":201,\"pic\":\"https://image.dayouqiantu.cn/5ddb7a37d58d9.png\",\"sort\":2,\"url\":\"/customer/index\",\"wxapp_url\":\"/pages/orderAdmin/OrderIndex/main\",\"status\":1}', 0, 2, 1);
INSERT INTO `yx_system_group_data` VALUES (202, 'yshop_sign_day_num', '{\"sign_num\":\"10\",\"id\":205,\"day\":\"第一天\"}', 0, 9, 1);
INSERT INTO `yx_system_group_data` VALUES (203, 'yshop_sign_day_num', '{\"sign_num\":\"20\",\"id\":\"\",\"day\":\"第二天\"}', 0, 8, 1);
INSERT INTO `yx_system_group_data` VALUES (204, 'yshop_sign_day_num', '{\"sign_num\":\"30\",\"id\":\"\",\"day\":\"第三天\"}', 0, 7, 1);
INSERT INTO `yx_system_group_data` VALUES (205, 'yshop_sign_day_num', '{\"addTime\":\"\",\"sign_num\":\"40\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"第四天\",\"status\":\"\"}', 0, 6, 1);
INSERT INTO `yx_system_group_data` VALUES (206, 'yshop_sign_day_num', '{\"addTime\":\"\",\"sign_num\":\"50\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"第五天\",\"status\":\"\"}', 0, 5, 1);
INSERT INTO `yx_system_group_data` VALUES (207, 'yshop_sign_day_num', '{\"addTime\":\"\",\"sign_num\":\"60\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"第六天\",\"status\":\"\"}', 0, 4, 1);
INSERT INTO `yx_system_group_data` VALUES (208, 'yshop_sign_day_num', '{\"addTime\":\"\",\"sign_num\":\"100\",\"id\":\"\",\"sort\":\"\",\"value\":\"\",\"day\":\"奖励\",\"status\":\"\"}', 0, 3, 1);
INSERT INTO `yx_system_group_data` VALUES (209, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e93010a248.png\"],\"uniapp_url\":\"/pages/user/signIn/Sign/index\",\"name\":\"积分签到\",\"id\":209,\"pic\":\"https://image.dayouqiantu.cn/5e85bf8e494f2.png\",\"sort\":4,\"url\":\"/user/sign\",\"wxapp_url\":\"/pages/user/signIn/Sign/main\",\"status\":1}', 0, 4, 1);
INSERT INTO `yx_system_group_data` VALUES (210, 'yshop_seckill_time', '{\"continued\":2,\"id\":\"\",\"time\":5}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (211, 'yshop_seckill_time', '{\"addTime\":\"\",\"continued\":\"3\",\"id\":\"\",\"sort\":\"\",\"time\":\"7\",\"value\":\"\",\"status\":\"\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (212, 'yshop_seckill_time', '{\"addTime\":\"\",\"continued\":\"2\",\"id\":\"\",\"sort\":\"\",\"time\":\"10\",\"value\":\"\",\"status\":\"\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (213, 'yshop_seckill_time', '{\"addTime\":\"\",\"continued\":\"3\",\"id\":\"\",\"sort\":\"\",\"time\":\"12\",\"value\":\"\",\"status\":\"\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (214, 'yshop_seckill_time', '{\"addTime\":\"\",\"continued\":\"4\",\"id\":\"\",\"sort\":\"\",\"time\":\"15\",\"value\":\"\",\"status\":\"\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (215, 'yshop_seckill_time', '{\"continued\":\"2\",\"id\":223,\"time\":\"19\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (216, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e929f9be59.png\"],\"uniapp_url\":\"/pages/activity/GoodsSeckill/index\",\"name\":\"秒杀专区\",\"id\":216,\"pic\":\"https://image.dayouqiantu.cn/5e85bfa5a9f85.png\",\"sort\":3,\"url\":\"/activity/goods_seckill\",\"wxapp_url\":\"/pages/activity/GoodsSeckill/main\",\"status\":1}', 0, 3, 1);
INSERT INTO `yx_system_group_data` VALUES (217, 'yshop_home_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e4e9276c608f.png\"],\"uniapp_url\":\"/pages/activity/GoodsBargain/index\",\"name\":\"砍价专区\",\"id\":217,\"pic\":\"https://image.dayouqiantu.cn/5e85bfe9b1da8.png\",\"sort\":2,\"url\":\"/activity/bargain\",\"wxapp_url\":\"/pages/activity/GoodsBargain/main\",\"status\":1}', 0, 2, 1);
INSERT INTO `yx_system_group_data` VALUES (218, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5dfd7b748e053.png\"],\"uniapp_url\":\"/pages/activity/BargainRecord/index\",\"name\":\"砍价记录\",\"id\":218,\"pic\":\"https://image.dayouqiantu.cn/5dfd7b748e053.png\",\"sort\":1,\"url\":\"/activity/bargain/record\",\"wxapp_url\":\"/pages/activity/BargainRecord/main\",\"status\":1}', 0, 1, 1);
INSERT INTO `yx_system_group_data` VALUES (219, 'yshop_home_banner', '{\"name\":\"222\",\"id\":\"\",\"pic\":\"https://image.dayouqiantu.cn/5c9f117f624ee.jpg\",\"sort\":\"\",\"url\":\"/\",\"status\":\"\"}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (221, 'yshop_my_menus', '{\"imageArr\":[\"https://image.dayouqiantu.cn/5e60da498cfdd.png\"],\"name\":\"订单核销\",\"id\":230,\"pic\":\"https://image.dayouqiantu.cn/5e60da498cfdd.png\",\"sort\":0,\"url\":\"/order/order_cancellation\",\"wxapp_url\":\"\",\"status\":1}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (222, 'yshop_recharge_price_ways', '{\"give_price\":\"10\",\"price\":\"100\",\"id\":\"\",\"sort\":0,\"status\":1}', 0, 1, 1);
INSERT INTO `yx_system_group_data` VALUES (223, 'yshop_recharge_price_ways', '{\"give_price\":\"1\",\"price\":1,\"id\":\"\",\"sort\":0,\"status\":1}', 0, 0, 1);
INSERT INTO `yx_system_group_data` VALUES (224, 'yshop_home_banner', '{\"imageArr\":[\"https://image.dayouqiantu.cn/微信截图_20200505091325 - 副本 (2).png\"],\"uniapp_url\":\"11\",\"name\":\"11\",\"id\":\"\",\"pic\":\"https://image.dayouqiantu.cn/微信截图_20200505091325 - 副本 (2).png\",\"sort\":0,\"url\":\"11\",\"wxapp_url\":\"\",\"status\":1}', 1590571271, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for yx_system_store
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_store`;
CREATE TABLE `yx_system_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '门店名称',
  `introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `phone` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市区',
  `detailed_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '门店logo',
  `latitude` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '纬度',
  `longitude` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '经度',
  `valid_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '核销有效日期',
  `day_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '每日营业开关时间',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `day_time_end` datetime DEFAULT NULL,
  `day_time_start` datetime DEFAULT NULL,
  `valid_time_end` datetime DEFAULT NULL,
  `valid_time_start` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店自提';

-- ----------------------------
-- Records of yx_system_store
-- ----------------------------
BEGIN;
INSERT INTO `yx_system_store` VALUES (3, 'yshop店铺', 'springboot商城', '15136175234', '河南省漯河市', '', 'https://image.dayouqiantu.cn/noMeal_tt.png', '33.54528', '113.9202', '2020-03-09 - 2020-04-30', '11:33:49 - 19:33:49', 1583300059, 0, 0, '2020-03-04 19:33:49', '2020-03-04 11:33:49', '2020-04-30 00:00:00', '2020-03-09 00:00:00');
INSERT INTO `yx_system_store` VALUES (4, '信阳门店', '信阳门店', '15136275234', '河南省信阳市', '', 'http://localhost:8000/file/pic/砍价-20200311043720679.png', '32.11683', '114.05857', '2020-03-21 - 2020-03-31', '17:11:13 - 20:11:13', 1584781880, 1, 0, '2020-03-21 20:11:13', '2020-03-21 17:11:13', '2020-03-31 00:00:00', '2020-03-21 00:00:00');
INSERT INTO `yx_system_store` VALUES (5, '郑州门店', '郑州门店', '15136175246', '河南省郑州', '', 'http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png', '34.72468', '113.6401', '2020-03-21 - 2020-03-31', '17:11:13 - 20:11:15', 1584782199, 1, 0, '2020-03-21 20:11:15', '2020-03-21 17:11:13', '2020-03-31 00:00:00', '2020-03-21 00:00:00');
INSERT INTO `yx_system_store` VALUES (7, '44', '44', '11111', '河南信阳', '', 'http://localhost:8000/file/pic/资讯-20200311043727918.png', '32.11683', '114.05857', '2020-05-18 - 2020-06-30', '08:00:00 - 22:58:28', 1589806916, 1, 0, '2020-05-18 22:58:28', '2020-05-18 08:00:00', '2020-06-30 00:00:00', '2020-05-18 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for yx_system_store_staff
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_store_staff`;
CREATE TABLE `yx_system_store_staff` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned NOT NULL COMMENT '微信用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '店员头像',
  `store_id` int NOT NULL COMMENT '门店id',
  `store_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staff_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '店员名称',
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `verify_status` tinyint NOT NULL DEFAULT '0' COMMENT '核销开关',
  `status` tinyint DEFAULT '1' COMMENT '状态',
  `add_time` int DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='门店店员表';

-- ----------------------------
-- Records of yx_system_store_staff
-- ----------------------------
BEGIN;
INSERT INTO `yx_system_store_staff` VALUES (2, 12, '会敲代码的喵2', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', 4, '信阳门店', 'tttt', '15136175423', 1, 1, 1584868920);
INSERT INTO `yx_system_store_staff` VALUES (3, 11, '会敲代码的喵88', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', 5, '郑州门店', 'tttt', '16136175234', 1, 1, 1585213920);
INSERT INTO `yx_system_store_staff` VALUES (4, 19, '15136175528', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', 5, '郑州门店', '111', '15136175246', 1, 1, 1586180635);
INSERT INTO `yx_system_store_staff` VALUES (5, 20, '15136171112', 'https://image.dayouqiantu.cn/5e79f6cfd33b6.png', 4, '信阳门店', '444', '44444', 1, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for yx_system_user_level
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_user_level`;
CREATE TABLE `yx_system_user_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mer_id` int NOT NULL DEFAULT '0' COMMENT '商户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '会员名称',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '购买金额',
  `valid_date` int NOT NULL DEFAULT '0' COMMENT '有效时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为永久会员',
  `is_pay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否购买,1=购买,0=不购买',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示 1=显示,0=隐藏',
  `grade` int NOT NULL DEFAULT '0' COMMENT '会员等级',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '享受折扣',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '会员卡背景',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '会员图标',
  `explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '说明',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除.1=删除,0=未删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='设置用户等级表';

-- ----------------------------
-- Records of yx_system_user_level
-- ----------------------------
BEGIN;
INSERT INTO `yx_system_user_level` VALUES (1, 0, '普通会员', 20.00, 0, 1, 0, 1, 1, 99.00, 'http://pic.dayouqiantu.cn/5c9ccca8cd632.jpg', 'http://pic.dayouqiantu.cn/5c9ccca8bc1e0.png', '普通会员', 1553824559, 0);
INSERT INTO `yx_system_user_level` VALUES (2, 0, '青铜会员', 0.00, 0, 1, 0, 1, 2, 98.00, 'http://pic.dayouqiantu.cn/5c9ccca904016.jpg', 'http://pic.dayouqiantu.cn/5c9ccca8f0a30.png', '青铜会员', 1553824639, 0);
INSERT INTO `yx_system_user_level` VALUES (3, 0, '黄铜会员', 0.00, 0, 1, 0, 1, 3, 95.00, 'http://pic.dayouqiantu.cn/5c9ccca8b27f1.jpg', 'http://pic.dayouqiantu.cn/5c9ccca8e9365.png', '黄铜会员', 1553824742, 0);
INSERT INTO `yx_system_user_level` VALUES (4, 0, '白银会员', 0.00, 0, 1, 0, 1, 4, 94.00, 'http://pic.dayouqiantu.cn/5c9ccca8d6ae1.jpg', 'http://pic.dayouqiantu.cn/5c9ccca8a27f0.png', '白银会员', 1553824797, 0);
INSERT INTO `yx_system_user_level` VALUES (5, 0, '黄金会员', 0.00, 0, 1, 0, 1, 5, 90.00, 'http://pic.dayouqiantu.cn/5c9ccca8b27f1.jpg', 'http://pic.dayouqiantu.cn/5c9ccca8aa5b9.png', '黄金会员', 1553824837, 0);
INSERT INTO `yx_system_user_level` VALUES (6, 0, '钻石会员', 0.00, 0, 1, 0, 1, 6, 88.00, 'http://localhost:8000/file/pic/钻石-20200328094531898.jpg', 'http://pic.dayouqiantu.cn/5c9ccca90d2d3.png', '钻石会员', 1553824871, 1);
INSERT INTO `yx_system_user_level` VALUES (8, 0, '444', 0.00, 4, 1, 0, 1, 4, 4.00, 'http://localhost:8000/file/pic/资讯-20200311043727918.png', 'http://localhost:8000/file/pic/05ea40b831858a8cf423aa709840507c-20200311043711341.png', '', 1589793284, 0);
INSERT INTO `yx_system_user_level` VALUES (9, 0, '777', 0.00, 0, 1, 0, 1, 33, 8.00, 'http://localhost:8000/file/pic/钻石-20200328094531898.jpg', 'http://localhost:8000/file/pic/资讯-20200311043727918.png', '', 1589796908, 0);
COMMIT;

-- ----------------------------
-- Table structure for yx_system_user_task
-- ----------------------------
DROP TABLE IF EXISTS `yx_system_user_task`;
CREATE TABLE `yx_system_user_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配置原名',
  `task_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务类型',
  `number` int NOT NULL DEFAULT '0' COMMENT '限定数',
  `level_id` int NOT NULL DEFAULT '0' COMMENT '等级id',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `is_must` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否务必达成任务,1务必达成,0=满足其一',
  `illustrate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务说明',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='等级任务设置';

-- ----------------------------
-- Records of yx_system_user_task
-- ----------------------------
BEGIN;
INSERT INTO `yx_system_user_task` VALUES (1, '满足积分20分', '积分数', 'SatisfactionIntegral', 20, 1, 0, 1, 1, '', 1553827616);
INSERT INTO `yx_system_user_task` VALUES (2, '消费满100元', '消费金额', 'ConsumptionAmount', 100, 1, 0, 1, 1, '', 1553827625);
INSERT INTO `yx_system_user_task` VALUES (3, '满足积分200分', '积分数', 'SatisfactionIntegral', 200, 2, 0, 1, 1, '', 1553827638);
INSERT INTO `yx_system_user_task` VALUES (4, '累计签到20天', '累计签到', 'CumulativeAttendance', 20, 2, 0, 1, 1, '', 1553827681);
INSERT INTO `yx_system_user_task` VALUES (5, '满足积分500分', '积分数', 'SatisfactionIntegral', 500, 3, 0, 1, 1, '', 1553827695);
INSERT INTO `yx_system_user_task` VALUES (6, '累计签到30天', '累计签到', 'CumulativeAttendance', 30, 3, 0, 1, 1, '', 1553827703);
INSERT INTO `yx_system_user_task` VALUES (7, '满足积分1000分', '积分数', 'SatisfactionIntegral', 1000, 4, 0, 1, 1, '', 1553827731);
INSERT INTO `yx_system_user_task` VALUES (8, '累计签到10天', '累计签到', 'CumulativeAttendance', 10, 4, 0, 1, 1, '', 1553827740);
INSERT INTO `yx_system_user_task` VALUES (9, '满足积分1200分', '积分数', 'SatisfactionIntegral', 1200, 5, 0, 1, 1, '', 1553827759);
INSERT INTO `yx_system_user_task` VALUES (10, '累计签到60天', '累计签到', 'CumulativeAttendance', 60, 5, 0, 1, 1, '', 1553827768);
INSERT INTO `yx_system_user_task` VALUES (11, '消费满10000元', '消费次数', 'ConsumptionAmount', 10000, 5, 0, 1, 1, '', 1553827776);
INSERT INTO `yx_system_user_task` VALUES (12, '满足积分2000分', '积分数', 'SatisfactionIntegral', 2000, 6, 0, 1, 1, '', 1553827791);
INSERT INTO `yx_system_user_task` VALUES (13, '消费满10000元', '消费次数', 'ConsumptionAmount', 10000, 6, 0, 1, 1, '', 1553827803);
INSERT INTO `yx_system_user_task` VALUES (14, '累计签到100天', '累计签到', 'CumulativeAttendance', 100, 6, 0, 1, 1, '', 1553827814);
INSERT INTO `yx_system_user_task` VALUES (15, '消费满1000元', '消费金额', 'ConsumptionAmount', 1000, 4, 0, 1, 1, '', 1575456513);
INSERT INTO `yx_system_user_task` VALUES (16, '累计签到2天', '累计签到', 'CumulativeAttendance', 2, 1, 0, 1, 1, '', 1575456576);
INSERT INTO `yx_system_user_task` VALUES (17, '消费满100元', '消费次数', 'ConsumptionAmount', 100, 2, 0, 1, 1, '', 1575456612);
INSERT INTO `yx_system_user_task` VALUES (18, '消费满1000元', '消费金额', 'ConsumptionAmount', 1000, 3, 0, 1, 1, '', 1575456692);
COMMIT;

-- ----------------------------
-- Table structure for yx_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_user`;
CREATE TABLE `yx_user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账户(跟accout一样)',
  `account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码（跟pwd）',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `real_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '真实姓名',
  `birthday` int DEFAULT '0' COMMENT '生日',
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '身份证号码',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户备注',
  `partner_id` int DEFAULT '0' COMMENT '合伙人id',
  `group_id` int DEFAULT '0' COMMENT '用户分组id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `phone` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `add_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '添加ip',
  `last_time` int unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后一次登录ip',
  `now_money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户余额',
  `brokerage_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `integral` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户剩余积分',
  `sign_num` int NOT NULL DEFAULT '0' COMMENT '连续签到天数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为正常，0为禁止',
  `level` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `spread_uid` int unsigned NOT NULL DEFAULT '0' COMMENT '推广元id',
  `spread_time` int unsigned NOT NULL DEFAULT '0' COMMENT '推广员关联时间',
  `user_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户类型',
  `is_promoter` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否为推广员',
  `pay_count` int unsigned DEFAULT '0' COMMENT '用户购买次数',
  `spread_count` int DEFAULT '0' COMMENT '下级人数',
  `clean_time` int DEFAULT '0' COMMENT '清理会员时间',
  `addres` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `adminid` int unsigned DEFAULT '0' COMMENT '管理员编号 ',
  `login_type` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登陆类型，h5,wechat,routine',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `account` (`account`) USING BTREE,
  KEY `spreaduid` (`spread_uid`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_promoter` (`is_promoter`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of yx_user
-- ----------------------------
BEGIN;
INSERT INTO `yx_user` VALUES (11, 'hupeng', 'hupeng', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '', '', 0, 0, '会敲代码的喵88', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', '15136175246', 1573120584, '', 1573120584, '', 7381.31, 27.86, 990.06, 1, 1, 1, 0, 1, 'h5', 0, 42, 4, 0, '', 1, '');
INSERT INTO `yx_user` VALUES (12, '15136175246', 'hupeng2', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '', '', 0, 0, '会敲代码的喵2', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', '15136175246', 1573120881, '', 1573120881, '', 8766.20, 28.00, 70.51, 2, 1, 1, 11, 1582896799, 'h5', 0, 20, 0, 0, '', 1, '');
INSERT INTO `yx_user` VALUES (14, '15136175247', '15136175247', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', 'e10adc3949ba59abbe56e057f20f883e', '', 0, '', '', 0, 0, '15136175247', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', '15136175247', 1573612696, '', 1573612696, '', 9200.00, 0.00, 2.00, 0, 1, 0, 11, 1584189298, 'h5', 0, 5, 0, 0, '', 0, '');
INSERT INTO `yx_user` VALUES (15, '15136175249', '15136175249', '$2a$10$fP.426qKaTmix50Oln8L.uav55gELhAd0Eg66Av4oG86u8km7D/Ky', '$2a$10$IG/fc8idkW35ezw7VtiM.OjUU1fvS2d/Bw7TmU76UUTbd5/4eCd9a', '', 0, '', '', 0, 0, '15136175249', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', '15136175249', 1578839477, '', 1578839477, '', 0.00, 0.00, 0.00, 0, 1, 0, 0, 0, 'h5', 0, 0, 0, 0, '', 0, '');
INSERT INTO `yx_user` VALUES (18, '15136175523', '15136175523', '$2a$10$kMjK.K8lezzqiHfPjJCAUuSYajA7dAZhtUdtEyKd5RilPi8sWf4gC', '$2a$10$DhiQooA85GOl2Z4tZrAwAejwgf8O6SrMsv8jaVwQsXkR1VcyTp0eC', '', 0, '', '', 0, 0, '15136175523', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', '15136175523', 1584171347, '', 1584171347, '', 0.00, 0.00, 0.00, 0, 1, 0, 0, 0, 'h5', 0, 0, 0, 0, '', 0, '');
INSERT INTO `yx_user` VALUES (19, '15136175528', '15136175528', '$2a$10$8d4xZEX3x7jaojPTv0WDheEG8syzV1br2z1RpZ0ceV/p0OTaKOq1u', '$2a$10$zLLJrrxGKbikzbAiP34N/Od5nlNgREMtoaih7rlqSzk7oOnurFneO', '', 0, '', '', 0, 0, '15136175528', 'https://image.dayouqiantu.cn/5dc2c7f3a104c.png', '15136175528', 1584535079, '', 1584535079, '', 0.00, 0.00, 0.00, 0, 1, 0, 11, 1584535081, 'h5', 0, 0, 0, 0, '', 0, '');
INSERT INTO `yx_user` VALUES (20, '15136171112', '15136171112', '$2a$10$MsTr57nPX9bSOLvlA4C/Z.MaUGTJM/anEzDasPucezf4GVfPpmmji', '$2a$10$62PLFod7JnPPmW8Hx0MZ9uhkGXmXZZ2N3ZixnvUzfBTZ157oiFCSm', '', 0, '', '', 0, 0, '15136171112', 'https://image.dayouqiantu.cn/5e79f6cfd33b6.png', '15136171112', 1585385387, '', 1585385387, '', 99.00, 0.00, 0.00, 0, 1, 0, 11, 1585385387, 'h5', 1, 0, 0, 0, '', 0, '');
COMMIT;

-- ----------------------------
-- Table structure for yx_user_address
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_address`;
CREATE TABLE `yx_user_address` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址id',
  `uid` int unsigned NOT NULL COMMENT '用户id',
  `real_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人电话',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人所在省',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人所在市',
  `district` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人所在区',
  `detail` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `post_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮编',
  `longitude` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '纬度',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否默认',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `is_default` (`is_default`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户地址表';

-- ----------------------------
-- Records of yx_user_address
-- ----------------------------
BEGIN;
INSERT INTO `yx_user_address` VALUES (9, 8, '胡鹏', '15136175246', '山西', '大同市', '灵丘县', '999', '', '0', '0', 1, 0, 1573119435);
INSERT INTO `yx_user_address` VALUES (10, 11, '胡鹏', '15139175246', '重庆', '荣昌县', '广顺镇', '999', '', '0', '0', 1, 0, 1573120628);
INSERT INTO `yx_user_address` VALUES (11, 12, 'hu', '15136175246', '上海', '闸北区', '城区', '99999', '', '0', '0', 1, 0, 1573123595);
INSERT INTO `yx_user_address` VALUES (12, 14, 'zhang', '15136175247', '上海', '静安区', '城区', '999', '', '0', '0', 1, 0, 1573612804);
COMMIT;

-- ----------------------------
-- Table structure for yx_user_bill
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_bill`;
CREATE TABLE `yx_user_bill` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户账单id',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `link_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '关联id',
  `pm` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 = 支出 1 = 获得',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '账单标题',
  `category` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '明细种类',
  `type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '明细类型',
  `number` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '明细数字',
  `balance` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '剩余',
  `mark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = 带确定 1 = 有效 -1 = 无效',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `pm` (`pm`) USING BTREE,
  KEY `type` (`category`,`type`,`link_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账单表';

-- ----------------------------
-- Records of yx_user_bill
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_user_enter
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_enter`;
CREATE TABLE `yx_user_enter` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '商户申请ID',
  `uid` int unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户所在省',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户所在市',
  `district` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户所在区',
  `address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户详细地址',
  `merchant_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户名称',
  `link_user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户电话',
  `charter` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户证书',
  `add_time` int unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `apply_time` int unsigned NOT NULL DEFAULT '0' COMMENT '审核时间',
  `success_time` int NOT NULL COMMENT '通过时间',
  `fail_message` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '未通过原因',
  `fail_time` int unsigned NOT NULL DEFAULT '0' COMMENT '未通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 审核未通过 0未审核 1审核通过',
  `is_lock` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 = 开启 1= 关闭',
  `is_del` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid` (`uid`) USING BTREE,
  KEY `province` (`province`,`city`,`district`) USING BTREE,
  KEY `is_lock` (`is_lock`) USING BTREE,
  KEY `is_del` (`is_del`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商户申请表';

-- ----------------------------
-- Records of yx_user_enter
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_user_extract
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_extract`;
CREATE TABLE `yx_user_extract` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int unsigned DEFAULT NULL,
  `real_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `extract_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'bank' COMMENT 'bank = 银行卡 alipay = 支付宝wx=微信',
  `bank_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '银行卡',
  `bank_address` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '开户地址',
  `alipay_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '支付宝账号',
  `extract_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `mark` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `balance` decimal(8,2) unsigned DEFAULT '0.00',
  `fail_msg` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '无效原因',
  `fail_time` int unsigned DEFAULT NULL,
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  `status` tinyint DEFAULT '0' COMMENT '-1 未通过 0 审核中 1 已提现',
  `wechat` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `extract_type` (`extract_type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `openid` (`uid`) USING BTREE,
  KEY `fail_time` (`fail_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户提现表';

-- ----------------------------
-- Records of yx_user_extract
-- ----------------------------
BEGIN;
INSERT INTO `yx_user_extract` VALUES (1, 11, '会敲代码的喵', 'weixin', '0', '', '', 1.00, NULL, 5.00, '失败了', 1589800488, 1573648445, -1, 'hu');
COMMIT;

-- ----------------------------
-- Table structure for yx_user_group
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_group`;
CREATE TABLE `yx_user_group` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户分组名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户分组表';

-- ----------------------------
-- Records of yx_user_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_user_level
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_level`;
CREATE TABLE `yx_user_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT '0' COMMENT '用户uid',
  `level_id` int NOT NULL DEFAULT '0' COMMENT '等级vip',
  `grade` int NOT NULL DEFAULT '0' COMMENT '会员等级',
  `valid_time` int NOT NULL DEFAULT '0' COMMENT '过期时间',
  `is_forever` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否永久',
  `mer_id` int NOT NULL DEFAULT '0' COMMENT '商户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:禁止,1:正常',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `remind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已通知',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除,0=未删除,1=删除',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `discount` int NOT NULL DEFAULT '0' COMMENT '享受折扣',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户等级记录表';

-- ----------------------------
-- Records of yx_user_level
-- ----------------------------
BEGIN;
INSERT INTO `yx_user_level` VALUES (4, 11, 1, 1, 0, 1, 0, 1, '恭喜你成为了普通会员', 0, 0, 1585297281, 99);
COMMIT;

-- ----------------------------
-- Table structure for yx_user_recharge
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_recharge`;
CREATE TABLE `yx_user_recharge` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL COMMENT '充值用户UID',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `price` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `give_price` decimal(8,2) DEFAULT '0.00' COMMENT '购买赠送金额',
  `recharge_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '充值类型',
  `paid` tinyint(1) DEFAULT NULL COMMENT '是否充值',
  `pay_time` int DEFAULT NULL COMMENT '充值支付时间',
  `add_time` int DEFAULT NULL COMMENT '充值时间',
  `refund_price` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_id` (`order_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `recharge_type` (`recharge_type`) USING BTREE,
  KEY `paid` (`paid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户充值表';

-- ----------------------------
-- Records of yx_user_recharge
-- ----------------------------
BEGIN;
INSERT INTO `yx_user_recharge` VALUES (1, 11, 'hupeng', '1234428298159718400', 200.00, 0.00, 'weixin', 0, NULL, 1583145615, 0.00);
INSERT INTO `yx_user_recharge` VALUES (2, 11, '会敲代码的喵88', '1235853569362493440', 110.00, 0.00, 'weixin', 0, NULL, 1583485426, 0.00);
INSERT INTO `yx_user_recharge` VALUES (3, 11, '会敲代码的喵88', '1235874304738983936', 111.00, 0.00, 'weixin', 0, NULL, 1583490370, 0.00);
INSERT INTO `yx_user_recharge` VALUES (4, 11, '会敲代码的喵88', '1235874561447165952', 111.00, 0.00, 'weixin', 0, NULL, 1583490431, 0.00);
INSERT INTO `yx_user_recharge` VALUES (5, 11, '会敲代码的喵88', '1235874725738053632', 111.00, 0.00, 'weixin', 0, NULL, 1583490470, 0.00);
INSERT INTO `yx_user_recharge` VALUES (6, 11, '会敲代码的喵88', '1235875114126409728', 1111.00, 0.00, 'weixin', 0, NULL, 1583490563, 0.00);
INSERT INTO `yx_user_recharge` VALUES (7, 11, '会敲代码的喵88', '1235876251080589312', 1111.00, 0.00, 'weixin', 0, NULL, 1583490834, 0.00);
INSERT INTO `yx_user_recharge` VALUES (8, 11, '会敲代码的喵88', '1242024244678754304', 100.00, 10.00, 'weixin', 0, NULL, 1584956630, 0.00);
INSERT INTO `yx_user_recharge` VALUES (9, 11, '会敲代码的喵88', '1242024501730869248', 111.00, 111.00, 'weixin', 0, NULL, 1584956691, 0.00);
INSERT INTO `yx_user_recharge` VALUES (10, 11, '会敲代码的喵88', '1242025322262560768', 222.00, 0.00, 'weixin', 0, NULL, 1584956887, 0.00);
INSERT INTO `yx_user_recharge` VALUES (11, 11, '会敲代码的喵88', '1246020207407792128', 1.00, 1.00, 'weixin', 0, NULL, 1585909342, 0.00);
INSERT INTO `yx_user_recharge` VALUES (12, 11, '会敲代码的喵88', '1246379540565983232', 10.00, 100.00, 'weixin', 0, NULL, 1585995013, 0.00);
INSERT INTO `yx_user_recharge` VALUES (13, 11, '会敲代码的喵88', '1246379584941719552', 1.00, 1.00, 'weixin', 0, NULL, 1585995024, 0.00);
INSERT INTO `yx_user_recharge` VALUES (14, 11, '会敲代码的喵88', '1246383201052524544', 10.00, 100.00, 'weixin', 0, NULL, 1585995886, 0.00);
INSERT INTO `yx_user_recharge` VALUES (15, 11, '会敲代码的喵88', '1246383225413042176', 10.00, 100.00, 'weixin', 0, NULL, 1585995892, 0.00);
COMMIT;

-- ----------------------------
-- Table structure for yx_user_sign
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_sign`;
CREATE TABLE `yx_user_sign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL DEFAULT '0' COMMENT '用户uid',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '签到说明',
  `number` int NOT NULL DEFAULT '0' COMMENT '获得积分',
  `balance` int NOT NULL DEFAULT '0' COMMENT '剩余积分',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='签到记录表';

-- ----------------------------
-- Records of yx_user_sign
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_user_task_finish
-- ----------------------------
DROP TABLE IF EXISTS `yx_user_task_finish`;
CREATE TABLE `yx_user_task_finish` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL DEFAULT '0' COMMENT '任务id',
  `uid` int NOT NULL DEFAULT '0' COMMENT '用户id',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有效',
  `add_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户任务完成记录表';

-- ----------------------------
-- Records of yx_user_task_finish
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_wechat_media
-- ----------------------------
DROP TABLE IF EXISTS `yx_wechat_media`;
CREATE TABLE `yx_wechat_media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '微信视频音频id',
  `type` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复类型',
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径',
  `media_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信服务器返回的id',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `temporary` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否永久或者临时 0永久1临时',
  `add_time` int unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `type` (`type`,`media_id`) USING BTREE,
  KEY `type_2` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信回复表';

-- ----------------------------
-- Records of yx_wechat_media
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for yx_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `yx_wechat_menu`;
CREATE TABLE `yx_wechat_menu` (
  `key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '缓存数据',
  `add_time` int DEFAULT NULL COMMENT '缓存时间',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信缓存表';

-- ----------------------------
-- Records of yx_wechat_menu
-- ----------------------------
BEGIN;
INSERT INTO `yx_wechat_menu` VALUES ('wechat_menus', '[{\"subButtons\":[{\"name\":\"公众号演示\",\"type\":\"view\",\"url\":\"https://h5.dayouqiantu.cn\"}],\"name\":\"Yshop商城3\",\"type\":\"click\",\"key\":\"yshop\"},{\"subButtons\":[{\"appId\":\"wxa82b5b7fcb0ec161\",\"name\":\"小程序演示\",\"pagePath\":\"pages/index\",\"type\":\"miniprogram\",\"url\":\"pages/index\"}],\"name\":\"供货商城\",\"type\":\"click\",\"key\":\"supply\"},{\"subButtons\":[],\"name\":\"3333\",\"type\":\"click\",\"key\":\"2222\"}]', 1570435277);
COMMIT;

-- ----------------------------
-- Table structure for yx_wechat_reply
-- ----------------------------
DROP TABLE IF EXISTS `yx_wechat_reply`;
CREATE TABLE `yx_wechat_reply` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '微信关键字回复id',
  `key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复类型',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复数据',
  `status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '0=不可用  1 =可用',
  `hide` tinyint unsigned DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `hide` (`hide`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信关键字回复表';

-- ----------------------------
-- Records of yx_wechat_reply
-- ----------------------------
BEGIN;
INSERT INTO `yx_wechat_reply` VALUES (1, 'subscribe', 'text', '{\"content\":\"22222222222444499990000\"}', 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for yx_wechat_template
-- ----------------------------
DROP TABLE IF EXISTS `yx_wechat_template`;
CREATE TABLE `yx_wechat_template` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `tempkey` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板编号',
  `name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '回复内容',
  `tempid` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '模板ID',
  `add_time` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '添加时间',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `tempkey` (`tempkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信模板';

-- ----------------------------
-- Records of yx_wechat_template
-- ----------------------------
BEGIN;
INSERT INTO `yx_wechat_template` VALUES (3, 'OPENTM200565259', '订单发货提醒', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n物流公司：{{keyword2.DATA}}\n物流单号：{{keyword3.DATA}}\n{{remark.DATA}}', 'KusKZOFc_4CrRU_gzuXMdMMTfFeR-OLVVuDiMyR5PiM', '1515052638', 1);
INSERT INTO `yx_wechat_template` VALUES (13, 'OPENTM207791277', '订单支付成功通知', '{{first.DATA}}\n订单编号：{{keyword1.DATA}}\n支付金额：{{keyword2.DATA}}\n{{remark.DATA}}', 'hJV1d1OwWB_lbPrSaRHi9RGr5CFAF4PJcZdYeg73Mtg', '1528966759', 1);
INSERT INTO `yx_wechat_template` VALUES (14, 'OPENTM405847076', '帐户资金变动提醒', '{{first.DATA}}\n变动类型：{{keyword1.DATA}}\n变动时间：{{keyword2.DATA}}\n变动金额：{{keyword3.DATA}}\n{{remark.DATA}}', 'ePF4RS3ONCEuS9AuPyqZ2Th_B-HZ6E1CIpnJRt7ACwI', '1528966759', 1);
COMMIT;

-- ----------------------------
-- Table structure for yx_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `yx_wechat_user`;
CREATE TABLE `yx_wechat_user` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT COMMENT '微信用户id',
  `unionid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
  `openid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `routine_openid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序唯一身份ID',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的昵称',
  `headimgurl` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户头像',
  `sex` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户所在城市',
  `language` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `province` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户所在省份',
  `country` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户所在国家',
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` smallint unsigned DEFAULT '0' COMMENT '用户所在的分组ID（兼容旧的用户分组接口）',
  `tagid_list` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户被打上的标签ID列表',
  `subscribe` tinyint unsigned DEFAULT '1' COMMENT '用户是否订阅该公众号标识',
  `subscribe_time` int unsigned DEFAULT NULL COMMENT '关注公众号时间',
  `add_time` int unsigned DEFAULT NULL COMMENT '添加时间',
  `stair` int unsigned DEFAULT NULL COMMENT '一级推荐人',
  `second` int unsigned DEFAULT NULL COMMENT '二级推荐人',
  `order_stair` int DEFAULT NULL COMMENT '一级推荐人订单',
  `order_second` int unsigned DEFAULT NULL COMMENT '二级推荐人订单',
  `now_money` decimal(8,2) unsigned DEFAULT NULL COMMENT '佣金',
  `session_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小程序用户会话密匙',
  `user_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'wechat' COMMENT '用户类型',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `openid` (`openid`) USING BTREE,
  KEY `groupid` (`groupid`) USING BTREE,
  KEY `subscribe_time` (`subscribe_time`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE,
  KEY `subscribe` (`subscribe`) USING BTREE,
  KEY `unionid` (`unionid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信用户表';

-- ----------------------------
-- Records of yx_wechat_user
-- ----------------------------
BEGIN;
INSERT INTO `yx_wechat_user` VALUES (1, NULL, NULL, NULL, 'hupeng', '', 0, '', '', '', '', NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wechat');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
