/*
 Navicat Premium Data Transfer

 Source Server         : postgres_local
 Source Server Type    : PostgreSQL
 Source Server Version : 140005
 Source Host           : localhost:5432
 Source Catalog        : spring_boot
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140005
 File Encoding         : 65001

 Date: 28/12/2022 14:57:59
*/


-- ----------------------------
-- Table structure for sec_privilege
-- ----------------------------
DROP TABLE IF EXISTS "public"."sec_privilege";
CREATE TABLE "public"."sec_privilege" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "roles" varchar[] COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6),
  "created_by" uuid,
  "updated_at" timestamptz(6),
  "updated_by" uuid,
  "version" float4,
  "status" bool,
  "level" int2
)
;

-- ----------------------------
-- Records of sec_privilege
-- ----------------------------
INSERT INTO "public"."sec_privilege" VALUES ('02fb5f54-c83b-4219-88d7-ec927b49a5b2', 'BANK', '{ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-09-01 12:38:18.820601+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-09-01 12:38:18.809099+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 4, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('13c6bfbb-46d2-4e08-8bef-7054485c24e4', 'MERCHANT_ADMIN', '{ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-09-01 12:50:50.217972+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-09-01 12:50:50.209347+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 2, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('b8940542-5a34-4111-90f0-27b2b2911931', 'MERCHANT', '{ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-09-01 13:03:45.450767+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-09-01 13:03:45.422616+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 1, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('11081706-fe61-455c-b8c5-0bfe9f0dfb9f', 'OUTLET_ADMIN', '{ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-09-01 14:22:56.897+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-09-01 14:22:56.875437+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 1, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('431c2832-09ea-4c86-9ce4-8414c3d736c3', 'OUTLET', '{ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-09-01 14:24:13.597406+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-09-01 14:24:13.580745+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 1, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('887e1cd7-e1ca-4b51-afe9-67869f09de4c', 'TERMINAL_ADMIN', '{ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-09-01 14:27:23.84333+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-09-01 14:27:23.837317+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 1, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('4149bc91-fb0e-4bf4-8ab2-ee98adb578c5', 'SUPER_ADMIN', '{ROLE_SUPER_ADMIN,ROLE_ITCL_ADMIN,ROLE_ITCL,ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-06-16 11:59:13.460762+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-16 11:59:13.44533+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 1, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('21379c6e-1fbc-42a3-8339-ec1d36602d2c', 'ITCL_ADMIN', '{ROLE_ITCL_ADMIN,ROLE_ITCL,ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-06-25 10:06:28.9516+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-25 10:06:28.933699+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 1, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('2fac9f49-a50a-4190-8001-6bbd5a341e65', 'ITCL', '{ROLE_ITCL,ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-06-25 10:05:54.949799+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-25 10:05:54.940445+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('804a66aa-4875-429a-a28c-65de84b85336', 'BANK_ADMIN', '{ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', '2022-06-16 11:59:13.460762+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-16 11:25:35.986099+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 4, 't', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('eee0889c-4ede-4b37-afe5-ed958c6a57b8', 'test05', '{ROLE_SUPER_ADMIN,ROLE_ITCL,ROLE_MERCHANT_ADMIN}', '2022-11-22 15:05:20.100293+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-11-22 15:22:09.323243+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 2, 'f', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('90e86c9a-3edf-4336-b61a-fa98205f7fee', 'test07', '{ROLE_SUPER_ADMIN,ROLE_ITCL}', '2022-12-01 12:03:15.622046+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-12-06 12:06:15.335598+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 2, 'f', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('a1220f2d-dcfd-48a6-b08f-7aba09928701', 'aaaa222', '{ROLE_ITCL_ADMIN,ROLE_MERCHANT_ADMIN,ROLE_ITCL}', '2022-12-14 11:33:22.331497+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-12-14 11:36:49.345752+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 2, 'f', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('ae4ad95f-b0c8-4d77-b63c-941bb978f2d7', 'shafiq previlege edit', '{ROLE_ITCL_ADMIN,ROLE_MERCHANT,ROLE_MERCHANT_ADMIN,ROLE_OUTLET}', '2022-11-30 12:04:48.899292+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-12-14 11:41:58.968826+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 2, 'f', NULL);
INSERT INTO "public"."sec_privilege" VALUES ('8dc0b7df-2412-4ce9-b9fb-39ee7e1ffb76', 'new test edit', '{ROLE_BANK_ADMIN,ROLE_MERCHANT_ADMIN}', '2022-12-14 11:44:24.478238+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-12-14 11:44:43.177504+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 2, 'f', NULL);

-- ----------------------------
-- Table structure for sec_roles
-- ----------------------------
DROP TABLE IF EXISTS "public"."sec_roles";
CREATE TABLE "public"."sec_roles" (
  "id" int2 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 11111
START 1
),
  "role" varchar(40) COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6),
  "created_by" uuid,
  "updated_at" timestamptz(6),
  "updated_by" uuid,
  "version" float4,
  "level" int2
)
;

-- ----------------------------
-- Records of sec_roles
-- ----------------------------
INSERT INTO "public"."sec_roles" VALUES (1, 'ROLE_SUPER_ADMIN', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (2, 'ROLE_ITCL_ADMIN', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (3, 'ROLE_ITCL', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (4, 'ROLE_BANK_ADMIN', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (5, 'ROLE_BANK', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (6, 'ROLE_MERCHANT_ADMIN', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (7, 'ROLE_MERCHANT', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (8, 'ROLE_OUTLET_ADMIN', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (9, 'ROLE_OUTLET', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (10, 'ROLE_TERMINAL_ADMIN', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);
INSERT INTO "public"."sec_roles" VALUES (11, 'ROLE_TERMINAL', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', '2022-06-02 09:41:01.679822+05:30', 'ac52f329-8086-44b3-8d48-66766cabf1a6', 0, NULL);

-- ----------------------------
-- Table structure for sec_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."sec_users";
CREATE TABLE "public"."sec_users" (
  "userid" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "first_name" varchar(100) COLLATE "pg_catalog"."default",
  "last_name" varchar(100) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "address" varchar(250) COLLATE "pg_catalog"."default",
  "contact_number1" varchar(15) COLLATE "pg_catalog"."default",
  "contact_number2" varchar(15) COLLATE "pg_catalog"."default",
  "password" varchar(64) COLLATE "pg_catalog"."default",
  "password_salt" varchar(16) COLLATE "pg_catalog"."default",
  "user_type" int4,
  "privilege" uuid,
  "roles" varchar[] COLLATE "pg_catalog"."default",
  "enabled" bool,
  "status" int4
)
;

-- ----------------------------
-- Records of sec_users
-- ----------------------------
INSERT INTO "public"."sec_users" VALUES ('496e5560-653f-4d21-bf15-d52b4a1b7703', 'Bank Asia', 'User1', 'user1@bankasia.com', 'Dhaka', '', NULL, 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, '804a66aa-4875-429a-a28c-65de84b85336', '{ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('30e23025-5dbe-4829-a41a-3c1486e4d13b', 'Shafiqul', 'Islam', 'shafiq123@gmail.com', 'rnd', '0196549563', '0164684451', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 1, NULL, '{}', 't', 3);
INSERT INTO "public"."sec_users" VALUES ('68c708ab-373c-47f8-a599-3b4a0952696a', 'aaaaaaaa', 'aaa', 'aaaaaaa@gmail.com', 'ddddd', '11', '1', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 1, '11081706-fe61-455c-b8c5-0bfe9f0dfb9f', '{ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 'f', 2);
INSERT INTO "public"."sec_users" VALUES ('2d42c404-2bbc-4ab0-958a-262bd0b7d932', 'bank', 'test', 'b@gmail.com', 'dddd', 'asdf', 'asd', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, '02fb5f54-c83b-4219-88d7-ec927b49a5b2', '{ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('3ad2b030-49d6-4e19-ba7b-2c6fc8129f0b', 'simple', 'user', 'simple@gmail.com', 'dd', '123456', '12344', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, '02fb5f54-c83b-4219-88d7-ec927b49a5b2', '{ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('349d2117-0b1b-4eab-9cf9-b00dd2e04f19', 'new ed', 'test', 's@gmail.com', '', '123456', '124', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, '13c6bfbb-46d2-4e08-8bef-7054485c24e4', '{ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 'f', 1);
INSERT INTO "public"."sec_users" VALUES ('b23c6e29-70d5-4de3-98c2-bcc1fd011583', 'test', '10', 'TEST10@GMAIL.COM', 'TEST10', 'admin@admin.com', '01800089770', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, NULL, '{}', 'f', 2);
INSERT INTO "public"."sec_users" VALUES ('4b6b4613-4df9-4460-8a00-02c2b3464647', 'test01', 'ist Test', 'user123@merchant.com', 'assss', '12344', '1233', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, '13c6bfbb-46d2-4e08-8bef-7054485c24e4', '{ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('5dc0660f-7c2d-40c7-95f5-c1865bc087c7', 'new', 'simple test edit 5', 'sssss@gmail.com', 'dhaka, Rampura', '222222222', '2222222', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, '11081706-fe61-455c-b8c5-0bfe9f0dfb9f', '{ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 2);
INSERT INTO "public"."sec_users" VALUES ('0230c344-555c-4d99-8912-f4556232de6e', 'tetttt', 'ssss', 'sssSd@gmail.com', 'dd', '3', '2', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('d93200dd-1fff-40d6-9040-5e0c60109c9a', 'kalam edit', 'test2', 'kalamtest2@gmail.com', 'kalamtest2kalamtest2kalamtest2kalamtest2kalamtest2kalamtest2kalamtest2', '01989475877', '01989475866', 'PUb3IlgnCS65F0Tvx6x3TfpASXrtMVGIg4AyRVBG9Xs=', 'a2FsYW10ZXN0Mg', 3, '11081706-fe61-455c-b8c5-0bfe9f0dfb9f', '{}', 'f', 1);
INSERT INTO "public"."sec_users" VALUES ('0fd0c571-9bf4-4b82-bb5a-02ebf7f662e9', 'dbc', 'terminal', 'terminal@terminal.com', 'gef', '01917', '01918', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 4, '887e1cd7-e1ca-4b51-afe9-67869f09de4c', '{ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('fed59c45-4e2c-4f84-a662-bb31a98558eb', 'run time ', 'change', 'rens@gmail.com', 'rddd', '2', '2', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 4, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('fc3f6949-33d9-4475-930a-14ab93334c7d', 'new', 'redux', 'newredux@gmail.com', 'gg', '3', '3', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 4, NULL, '{}', 't', 2);
INSERT INTO "public"."sec_users" VALUES ('fa0e065e-875f-4450-85cd-52d25a67c7ce', 'sssssssssssssss', '555', 'sdfsdf@gmail.com', 'Dhaka 1219.', '01636020790', '233', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 5, '13c6bfbb-46d2-4e08-8bef-7054485c24e4', '{ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 'f', 1);
INSERT INTO "public"."sec_users" VALUES ('6edc3c0e-e051-4986-83a0-7a2b195be4b6', 'abc', 'outlet', 'outlet@outlet.com', 'abc', '01915', '01916', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 5, '02fb5f54-c83b-4219-88d7-ec927b49a5b2', '{ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('244a244a-23b3-48f8-bd28-444ac7b5d8b8', 'last redux', 'redux', 'lastredux@gmail.com', 'uuuu', '1', '3', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 5, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('f09eb016-3b52-4e72-8f0d-33c568000ded', 'test 6', '6', 'ttt22@gmail.com', 'dd', '233', '23323', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 5, '11081706-fe61-455c-b8c5-0bfe9f0dfb9f', '{ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 'f', 1);
INSERT INTO "public"."sec_users" VALUES ('cbe6bee0-1020-4b3f-9a8f-3bf23893c072', 'last redux', 'redux', 'lastredux@gmail.com', 'uuuu', '1', '3', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 5, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('17eae834-aafd-4ee6-a362-ac6d7f34a973', 'redux', 'saga', 'redux@gmail.com', 'rnd', '1', '2', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('9efcaad2-b2ee-4d8a-a856-2fa87d746db1', 'New User', 'test', 'newuser@gmail.com', 'dhaka', '121211', '12121', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('9a157d96-dc02-4a38-a894-0f8e4af1a373', 'Md.', 'Islam', 'me.mdshafiq@gmail.com', '176/3, Jomidar goli, Opposite Bornomala School, East Ulon, Rampura, Dhaka 1219.', '01636020790', '', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 1, '4149bc91-fb0e-4bf4-8ab2-ee98adb578c5', '{ROLE_SUPER_ADMIN,ROLE_ITCL_ADMIN,ROLE_ITCL,ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 'f', 1);
INSERT INTO "public"."sec_users" VALUES ('ac52f329-8086-44b3-8d48-66766cabf1a6', 'admin', '', 'admin@admin.com', 'Bangladesh', '01945646596', '', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 1, '4149bc91-fb0e-4bf4-8ab2-ee98adb578c5', '{ROLE_SUPER_ADMIN,ROLE_ITCL_ADMIN,ROLE_ITCL,ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('9ac00cc8-3230-48ae-a30f-d7de32337b47', 'new', 'new', 'ttt@gmail.com', '176/3, Jomidar gol', '01636020790', NULL, 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, '02fb5f54-c83b-4219-88d7-ec927b49a5b2', '{ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('11c5d252-2bc6-4468-8a44-ed6b6f928862', 'kalam', 'test1', 'kalamtest1@gmail.com', 'house: kalamtest1 || road: kalamtest1 || Bangladesh', '01989475877', '01989475866', '0+9ofyPiofeJdZrx1qpJSb6lS/6BpQB/H3123aoR6NU=', 'a2FsYW10ZXN0MQ', 2, 'b8940542-5a34-4111-90f0-27b2b2911931', '{ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('3b7c6c9c-1525-4789-ae38-89ea7a4950ce', 'Shahidul test', 'Hasan', 'shahidul.hasan123@itcbd.com', 'RND Operation', '01915646596', NULL, 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 1, '02fb5f54-c83b-4219-88d7-ec927b49a5b2', '{ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 'f', 1);
INSERT INTO "public"."sec_users" VALUES ('19a7651c-8fac-4b74-adff-a2ce5bd3189f', 'user22333', 'Merchant22333', 'merchant1212@gmail.com', '3rampura22333', '013568565622333', '044646454822333', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, 'b8940542-5a34-4111-90f0-27b2b2911931', '{ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('44cff3c7-79a7-42bf-87bd-b7c65300370a', 'test navigate', 'navigate', 'sssaass@gmail.com', '176/3, Jomidar goli, Opposite Bornomala School, East Ulon, Rampura, Dhaka 1219.', '01636020790', '23232332', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, NULL, '{}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('cfde2172-2df2-440f-bd1f-d03a2f2b3e59', 'new com 2', 'test edit', 'newtest@gmail.com', 'Dhaka, rampura', '01354', '0125', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, '431c2832-09ea-4c86-9ce4-8414c3d736c3', '{ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 3);
INSERT INTO "public"."sec_users" VALUES ('eb1e900f-4772-46a2-95fd-ac0d16e1e03d', 'Shahidul11111122222', 'Hasan1111111222', 'shahidul.hasan111111@itcbd.com', 'sdsdsd44', '12344', '123444', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, '11081706-fe61-455c-b8c5-0bfe9f0dfb9f', '{ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('d0328eb3-5c17-44c8-a902-fc64baedc7c0', 'Shahidul', 'Hasan', 'shahidul.hasan@itcbd.com', 'Dhaka', '01915646596', NULL, 'Gb7jMK5ENGn2LRVIplWqa2wVIWd0BBR2pVLGPSLLEwM=', 'c2hhaGlkdWw', 1, '21379c6e-1fbc-42a3-8339-ec1d36602d2c', '{ROLE_ITCL_ADMIN,ROLE_ITCL,ROLE_BANK_ADMIN,ROLE_BANK,ROLE_MERCHANT_ADMIN,ROLE_MERCHANT,ROLE_OUTLET_ADMIN,ROLE_OUTLET,ROLE_TERMINAL_ADMIN,ROLE_TERMINAL}', 't', 1);
INSERT INTO "public"."sec_users" VALUES ('29d5b194-a978-4c4c-bbc3-6be248eb8fd5', 'shafiq', 'user', 'ssssssss@gmail.com', 'Dhaka', '019564622', '05656454564', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 3, NULL, NULL, 't', 1);
INSERT INTO "public"."sec_users" VALUES ('3a2bb878-43e0-410b-b6d4-eceeb77eab6c', 'user ', 'itcl', 'shafiqsss@gmail.com', 'dhaka', '0164875456441', '021578846455', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 1, NULL, NULL, 't', 1);
INSERT INTO "public"."sec_users" VALUES ('0624e9fe-4257-4837-a4ca-5e3281be89d1', 'last 1111', 'user11111', 'last133@gmailc.om', 'dhaka1111111', '0165985211111', '032565211111', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 4, 'b8940542-5a34-4111-90f0-27b2b2911931', NULL, 't', 1);
INSERT INTO "public"."sec_users" VALUES ('d022348e-0fe6-46d7-9c30-0fa2844fe56a', 'user ', 'bank', 'shafiq22222@gmail.com', 'Dhaka', '024787544', '0121254546', 'r/KXVxCaD08NzS0JsfpGidzpM1/RnoLa+XZTm6WicpA=', 'MTIzNDU2', 2, NULL, NULL, 't', 1);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS "public"."status";
CREATE TABLE "public"."status" (
  "id" int2 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 11111
START 1
),
  "status" varchar(40) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6),
  "created_by" uuid,
  "updated_at" timestamp(6),
  "updated_by" uuid,
  "version" float4
)
;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "public"."status" VALUES (2, 'Process', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', 0);
INSERT INTO "public"."status" VALUES (1, 'Non Process', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', 0);
INSERT INTO "public"."status" VALUES (3, 'Invalid', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', 0);
INSERT INTO "public"."status" VALUES (4, 'Reversel', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', '2022-06-02 10:11:01.679822', '0fdec111-8fbe-4ec6-858a-61205c1b23ed', 0);

-- ----------------------------
-- Primary Key structure for table sec_privilege
-- ----------------------------
ALTER TABLE "public"."sec_privilege" ADD CONSTRAINT "sec_privilege_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sec_roles
-- ----------------------------
ALTER TABLE "public"."sec_roles" ADD CONSTRAINT "sec_roles_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sec_users
-- ----------------------------
ALTER TABLE "public"."sec_users" ADD CONSTRAINT "sec_users_pkey" PRIMARY KEY ("userid");

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "public"."status" ADD CONSTRAINT "trxn_status_pkey" PRIMARY KEY ("id");
