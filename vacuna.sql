/*
 Navicat Premium Data Transfer

 Source Server         : ThisMySQL
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : vacuna

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 26/03/2022 00:53:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos`  (
  `id_departamento` int(0) NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_departamento`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES (1, 'Managua');
INSERT INTO `departamentos` VALUES (2, 'Estelí');
INSERT INTO `departamentos` VALUES (3, 'Masaya');
INSERT INTO `departamentos` VALUES (4, 'Chinandega');
INSERT INTO `departamentos` VALUES (5, 'Granada');
INSERT INTO `departamentos` VALUES (6, 'Léon');
INSERT INTO `departamentos` VALUES (7, 'Carazo');
INSERT INTO `departamentos` VALUES (8, 'Rivas');
INSERT INTO `departamentos` VALUES (9, 'Chontales');
INSERT INTO `departamentos` VALUES (10, 'Madriz');
INSERT INTO `departamentos` VALUES (11, 'Matagalpa');
INSERT INTO `departamentos` VALUES (12, 'Nueva Segovia');
INSERT INTO `departamentos` VALUES (13, 'Boaco');
INSERT INTO `departamentos` VALUES (14, 'Río San Juan');
INSERT INTO `departamentos` VALUES (15, 'RAAS');
INSERT INTO `departamentos` VALUES (16, 'RAAN');
INSERT INTO `departamentos` VALUES (17, 'Jinotega');
INSERT INTO `departamentos` VALUES (18, '');

-- ----------------------------
-- Table structure for direcciones
-- ----------------------------
DROP TABLE IF EXISTS `direcciones`;
CREATE TABLE `direcciones`  (
  `id_direccion` int(0) NOT NULL AUTO_INCREMENT,
  `id_municipios` int(0) NULL DEFAULT NULL,
  `descripcion_direccion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_direccion`) USING BTREE,
  INDEX `id_municipios`(`id_municipios`) USING BTREE,
  CONSTRAINT `direcciones_ibfk_1` FOREIGN KEY (`id_municipios`) REFERENCES `municipios` (`id_municipios`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of direcciones
-- ----------------------------
INSERT INTO `direcciones` VALUES (1, 2, 'de la alcaldia de Estelí 2 cuadras abajo');
INSERT INTO `direcciones` VALUES (2, 2, 'Del edificio Gonzalez 3 cuadras al oeste');
INSERT INTO `direcciones` VALUES (3, 2, 'Del colegio de las monjas cuadra y media al norte');
INSERT INTO `direcciones` VALUES (4, 1, 'Altamira Sinsa Cerámica 1c al Sur');
INSERT INTO `direcciones` VALUES (5, 1, 'Óptica Matamoros 1 1/2 arriba Plaza');
INSERT INTO `direcciones` VALUES (6, 3, 'Costado Sur Parque San Jeronimo');
INSERT INTO `direcciones` VALUES (7, 6, 'Iglesia Recolección 1 cuadra al norte 1/2 cuadra Oeste');
INSERT INTO `direcciones` VALUES (8, 2, 'Av 2 Noreste');
INSERT INTO `direcciones` VALUES (9, NULL, 'setgear');
INSERT INTO `direcciones` VALUES (10, 4, 'tu ksa');
INSERT INTO `direcciones` VALUES (11, 4, 'chi');
INSERT INTO `direcciones` VALUES (12, 18, 'alla lejos');
INSERT INTO `direcciones` VALUES (13, 1, 'fsdgf');
INSERT INTO `direcciones` VALUES (14, 1, 'nou');
INSERT INTO `direcciones` VALUES (15, 1, 'uahh');
INSERT INTO `direcciones` VALUES (16, 2, '1');
INSERT INTO `direcciones` VALUES (17, 2, '1');
INSERT INTO `direcciones` VALUES (18, 2, '1');
INSERT INTO `direcciones` VALUES (19, 2, '1');
INSERT INTO `direcciones` VALUES (20, 1, '2');
INSERT INTO `direcciones` VALUES (21, 5, 'gffg');
INSERT INTO `direcciones` VALUES (22, 5, 'gffg');
INSERT INTO `direcciones` VALUES (23, 18, 'jgjbjnm');
INSERT INTO `direcciones` VALUES (24, 13, 'donde esta un perro hechado');
INSERT INTO `direcciones` VALUES (25, 2, 'de aqui para alla');
INSERT INTO `direcciones` VALUES (26, 1, 'enrique segoviano');
INSERT INTO `direcciones` VALUES (29, 18, 'Direccion de Prueba');
INSERT INTO `direcciones` VALUES (30, 2, 'Otra Direccion de Prueba');
INSERT INTO `direcciones` VALUES (31, 2, 'uni');
INSERT INTO `direcciones` VALUES (32, 2, 'de aqui para alla');
INSERT INTO `direcciones` VALUES (33, 2, '3');
INSERT INTO `direcciones` VALUES (34, 2, '3');
INSERT INTO `direcciones` VALUES (35, 2, '3');
INSERT INTO `direcciones` VALUES (36, 2, '3');
INSERT INTO `direcciones` VALUES (37, 3, 'Condega');
INSERT INTO `direcciones` VALUES (38, 3, 'Condega');
INSERT INTO `direcciones` VALUES (39, 2, 'Condega de uwu ');
INSERT INTO `direcciones` VALUES (40, 1, 'condega?');
INSERT INTO `direcciones` VALUES (41, 1, 'Condega?');
INSERT INTO `direcciones` VALUES (42, 1, 'Condega?');
INSERT INTO `direcciones` VALUES (43, 1, 'Condega?');
INSERT INTO `direcciones` VALUES (44, 2, 'Esteli');
INSERT INTO `direcciones` VALUES (45, 2, 'intae');
INSERT INTO `direcciones` VALUES (46, 1, '2');
INSERT INTO `direcciones` VALUES (47, 1, '2');
INSERT INTO `direcciones` VALUES (48, 1, '2');
INSERT INTO `direcciones` VALUES (49, 1, '2');
INSERT INTO `direcciones` VALUES (50, 1, '2');
INSERT INTO `direcciones` VALUES (51, 2, '1');
INSERT INTO `direcciones` VALUES (52, 2, '1');
INSERT INTO `direcciones` VALUES (53, 2, '1');
INSERT INTO `direcciones` VALUES (54, 4, '6');
INSERT INTO `direcciones` VALUES (55, 4, '7');
INSERT INTO `direcciones` VALUES (56, 1, '7');
INSERT INTO `direcciones` VALUES (57, 19, 'UNI');

-- ----------------------------
-- Table structure for disminucionvacu
-- ----------------------------
DROP TABLE IF EXISTS `disminucionvacu`;
CREATE TABLE `disminucionvacu`  (
  `id_unidad` int(0) NOT NULL,
  `id_vacunacion` int(0) NOT NULL,
  `cantidad4` int(0) NULL DEFAULT NULL,
  `id_vacuna` int(0) NULL DEFAULT NULL,
  `id_lote` int(0) NOT NULL,
  PRIMARY KEY (`id_unidad`, `id_vacunacion`, `id_lote`) USING BTREE,
  INDEX `fkvacunacion`(`id_vacunacion`) USING BTREE,
  INDEX `fklote`(`id_lote`) USING BTREE,
  CONSTRAINT `fklote` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id_lote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkunidadvacunacion` FOREIGN KEY (`id_unidad`) REFERENCES `unidad_vacunacion` (`id_unidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fkvacunacion` FOREIGN KEY (`id_vacunacion`) REFERENCES `vacunacion` (`id_vacunacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disminucionvacu
-- ----------------------------

-- ----------------------------
-- Table structure for jornada_vacunacion
-- ----------------------------
DROP TABLE IF EXISTS `jornada_vacunacion`;
CREATE TABLE `jornada_vacunacion`  (
  `id_jornada` int(0) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nombre_jornada` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_vacunacion` int(0) NULL DEFAULT NULL,
  `fecha_inicio` date NULL DEFAULT NULL,
  `fecha_cierre` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_jornada`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jornada_vacunacion
-- ----------------------------
INSERT INTO `jornada_vacunacion` VALUES (1, 'Jornada creada con el objetivo de ella es ellaaa auroraa', 'Jornada de Caza de Patos', NULL, '2018-11-27', '2021-11-01');
INSERT INTO `jornada_vacunacion` VALUES (2, 'Jornada con objetivo de bañar otakus', 'Jornada de coronacion', NULL, '2021-12-10', '2021-12-24');

-- ----------------------------
-- Table structure for lote
-- ----------------------------
DROP TABLE IF EXISTS `lote`;
CREATE TABLE `lote`  (
  `id_lote` int(0) NOT NULL AUTO_INCREMENT,
  `id_vacuna` int(0) NULL DEFAULT NULL,
  `id_silais` int(0) NULL DEFAULT NULL,
  `fecha_entrada` date NULL DEFAULT NULL,
  `cantidad` int(0) NULL DEFAULT NULL,
  `fecha_autorizacion` date NULL DEFAULT NULL,
  `fecha_vencimiento` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_lote`) USING BTREE,
  INDEX `id_vacuna`(`id_vacuna`) USING BTREE,
  INDEX `id_silais`(`id_silais`) USING BTREE,
  CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna` (`id_vacuna`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lote_ibfk_2` FOREIGN KEY (`id_silais`) REFERENCES `silais` (`id_silais`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lote
-- ----------------------------
INSERT INTO `lote` VALUES (1, 2, 1, '2021-02-28', -200, '2021-03-01', '2021-07-10');
INSERT INTO `lote` VALUES (2, 1, 1, '2004-04-21', -42, '2020-04-21', '2021-07-10');
INSERT INTO `lote` VALUES (3, 1, 1, '2018-02-21', -49, '2012-02-21', '2012-10-12');
INSERT INTO `lote` VALUES (4, 2, 1, '2018-02-21', -198, '2013-02-21', '2013-10-12');
INSERT INTO `lote` VALUES (5, 2, 1, '2010-06-01', 100, '2020-01-03', '2016-01-02');
INSERT INTO `lote` VALUES (6, 3, 4, '2021-10-06', 34, '2020-11-26', '2022-01-07');
INSERT INTO `lote` VALUES (7, 1, 2, '2015-02-01', 0, '2015-01-03', '2030-09-03');
INSERT INTO `lote` VALUES (8, 1, 1, '2021-05-17', -49, '2021-05-17', '2021-05-17');
INSERT INTO `lote` VALUES (9, 1, 1, '2021-05-12', -49, '2021-05-21', '2021-05-28');
INSERT INTO `lote` VALUES (10, 5, 4, '2021-05-21', 1, '2021-04-30', '2021-05-15');
INSERT INTO `lote` VALUES (11, 4, 2, '2021-05-05', 1, '2021-05-10', '2021-06-17');
INSERT INTO `lote` VALUES (14, 5, 1, '2021-02-15', 6, '2021-02-20', '2025-04-25');
INSERT INTO `lote` VALUES (15, 3, 2, '2021-05-04', 1, '2021-05-05', '2021-05-20');
INSERT INTO `lote` VALUES (17, 1, 5, '2021-05-12', 1, '2021-05-14', '2021-05-29');
INSERT INTO `lote` VALUES (18, 17, 1, '2021-05-04', 1, '2021-05-08', '2023-05-11');
INSERT INTO `lote` VALUES (19, 7, 1, '2021-05-13', 1, '2021-05-08', '2023-06-10');
INSERT INTO `lote` VALUES (20, 1, 1, '2021-05-17', -49, '2021-05-17', '2021-05-18');
INSERT INTO `lote` VALUES (21, 1, 1, '2021-05-17', 250, '2021-05-17', '2021-05-30');
INSERT INTO `lote` VALUES (22, 1, 1, '2021-05-17', 350, '2021-05-19', '2021-05-26');
INSERT INTO `lote` VALUES (23, 1, 1, '2021-05-17', 750, '2021-05-19', '2021-05-06');
INSERT INTO `lote` VALUES (24, 22, 2, '2021-05-17', 1100, '2021-05-19', '2021-05-19');
INSERT INTO `lote` VALUES (25, 14, 3, '2021-05-31', 950, '2021-05-31', '2021-05-31');
INSERT INTO `lote` VALUES (26, 1, 1, '2022-01-01', -27, '2022-01-02', '2022-01-02');
INSERT INTO `lote` VALUES (27, 2, 3, '2020-02-11', 0, '2021-05-04', '2021-05-14');
INSERT INTO `lote` VALUES (28, 26, 1, '2021-12-11', 10, '2021-12-11', '2022-04-01');
INSERT INTO `lote` VALUES (29, 4, 3, '2021-03-01', 500, '2021-03-01', '2021-03-01');

-- ----------------------------
-- Table structure for lote_silaiscopia
-- ----------------------------
DROP TABLE IF EXISTS `lote_silaiscopia`;
CREATE TABLE `lote_silaiscopia`  (
  `id_lote` int(0) NOT NULL,
  `id_Silais` int(0) NOT NULL,
  `cantidad2` int(0) NULL DEFAULT NULL,
  `id_vacuna` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_lote`, `id_Silais`) USING BTREE,
  INDEX `id_silais_lote`(`id_Silais`) USING BTREE,
  INDEX `fk_lote_lotesilais`(`id_vacuna`) USING BTREE,
  INDEX `id_lote`(`id_lote`) USING BTREE,
  CONSTRAINT `lote_silaiscopia_ibfk_1` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna` (`id_vacuna`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lote_silaiscopia_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id_lote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `lote_silaiscopia_ibfk_3` FOREIGN KEY (`id_Silais`) REFERENCES `silais` (`id_silais`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lote_silaiscopia
-- ----------------------------
INSERT INTO `lote_silaiscopia` VALUES (1, 1, 180, 2);
INSERT INTO `lote_silaiscopia` VALUES (1, 2, 180, 2);
INSERT INTO `lote_silaiscopia` VALUES (2, 2, -78, 1);
INSERT INTO `lote_silaiscopia` VALUES (5, 1, 200, 2);
INSERT INTO `lote_silaiscopia` VALUES (21, 1, 50, 1);
INSERT INTO `lote_silaiscopia` VALUES (21, 2, 20, 1);
INSERT INTO `lote_silaiscopia` VALUES (25, 1, 200, 14);
INSERT INTO `lote_silaiscopia` VALUES (25, 2, 50, 14);
INSERT INTO `lote_silaiscopia` VALUES (25, 4, 500, 14);
INSERT INTO `lote_silaiscopia` VALUES (27, 1, 80, 2);
INSERT INTO `lote_silaiscopia` VALUES (27, 2, 6, 2);
INSERT INTO `lote_silaiscopia` VALUES (27, 4, 5, 2);
INSERT INTO `lote_silaiscopia` VALUES (28, 1, 20, 26);
INSERT INTO `lote_silaiscopia` VALUES (29, 1, 250, 4);
INSERT INTO `lote_silaiscopia` VALUES (29, 2, 250, 4);

-- ----------------------------
-- Table structure for municipios
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios`  (
  `id_municipios` int(0) NOT NULL AUTO_INCREMENT,
  `id_departamento` int(0) NULL DEFAULT NULL,
  `nombre_municipio` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_municipios`) USING BTREE,
  INDEX `fk_departamento_municipio`(`id_departamento`) USING BTREE,
  CONSTRAINT `fk_departamento_municipio` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of municipios
-- ----------------------------
INSERT INTO `municipios` VALUES (1, 1, 'Managua');
INSERT INTO `municipios` VALUES (2, 2, 'Estelí');
INSERT INTO `municipios` VALUES (3, 2, 'Condega');
INSERT INTO `municipios` VALUES (4, 2, 'Pueblo Nuevo');
INSERT INTO `municipios` VALUES (5, 2, 'La Trinidad');
INSERT INTO `municipios` VALUES (6, 2, 'San Nicolás');
INSERT INTO `municipios` VALUES (7, 2, 'San Juan de Limay');
INSERT INTO `municipios` VALUES (8, 1, 'Tipitapa');
INSERT INTO `municipios` VALUES (9, 1, 'Cuidad Sandino');
INSERT INTO `municipios` VALUES (10, 1, 'El Crucero');
INSERT INTO `municipios` VALUES (11, 1, 'Ticuantepe');
INSERT INTO `municipios` VALUES (12, 1, 'Mateare');
INSERT INTO `municipios` VALUES (13, 1, 'San Rafael del Sur');
INSERT INTO `municipios` VALUES (14, 1, 'San Rafael del Sur');
INSERT INTO `municipios` VALUES (15, 1, 'San Francisco Libre');
INSERT INTO `municipios` VALUES (16, 3, 'Masaya');
INSERT INTO `municipios` VALUES (17, 4, 'Chichigalpa');
INSERT INTO `municipios` VALUES (18, 7, 'San Marcos');
INSERT INTO `municipios` VALUES (19, 11, 'Matagalpa');
INSERT INTO `municipios` VALUES (20, 5, 'Granada');

-- ----------------------------
-- Table structure for paciente
-- ----------------------------
DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente`  (
  `id_paciente` int(0) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sexo` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fecha_nacimiento` date NULL DEFAULT NULL,
  `edad` int(0) NULL DEFAULT NULL,
  `Identificador` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_paciente`) USING BTREE,
  INDEX `fk_persona_paciente`(`cedula`) USING BTREE,
  CONSTRAINT `fk_persona_paciente` FOREIGN KEY (`cedula`) REFERENCES `personas` (`cedula`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paciente
-- ----------------------------
INSERT INTO `paciente` VALUES (1, '161-011002', 'MASCULINO', '2021-05-03', NULL, NULL);
INSERT INTO `paciente` VALUES (2, '161-220503', 'MASCULINO', '2021-04-25', NULL, NULL);
INSERT INTO `paciente` VALUES (3, '323-170498', 'FEMENINO', '2021-02-28', NULL, NULL);
INSERT INTO `paciente` VALUES (23, '161-220503', 'FEMENINO', '2021-11-17', NULL, NULL);
INSERT INTO `paciente` VALUES (24, '161-220503', 'FEMENINO', '2021-11-16', NULL, NULL);
INSERT INTO `paciente` VALUES (25, '323-021192', 'FEMENINO', '2021-11-17', NULL, NULL);
INSERT INTO `paciente` VALUES (27, '323-021192', 'MASCULINO', '2021-11-23', NULL, NULL);
INSERT INTO `paciente` VALUES (28, '161-011002', 'MASCULINO', '2021-11-17', NULL, NULL);
INSERT INTO `paciente` VALUES (29, '161-011002', 'MASCULINO', '2021-11-18', NULL, NULL);
INSERT INTO `paciente` VALUES (30, '161-011002', 'MASCULINO', NULL, NULL, NULL);
INSERT INTO `paciente` VALUES (31, '161-131199', 'MASCULINO', '1999-11-09', NULL, NULL);
INSERT INTO `paciente` VALUES (36, '56230-5635', 'FEMENINO', '2000-02-03', NULL, NULL);
INSERT INTO `paciente` VALUES (37, 'rtyt', 'FEMENINO', '2021-05-16', NULL, NULL);
INSERT INTO `paciente` VALUES (38, '3467', 'MASCULINO', '2000-02-03', NULL, NULL);
INSERT INTO `paciente` VALUES (39, 'ewafrtf', 'MASCULINO', '2021-05-13', NULL, NULL);
INSERT INTO `paciente` VALUES (40, '007', 'MASCULINO', '2021-05-16', NULL, NULL);
INSERT INTO `paciente` VALUES (41, '123-121212-123', 'MASCULINO', '2021-05-02', NULL, NULL);
INSERT INTO `paciente` VALUES (42, '123-4567-567', 'MASCULINO', '2015-02-03', NULL, NULL);
INSERT INTO `paciente` VALUES (43, '123-456789-123', 'FEMENINO', '1995-07-13', NULL, NULL);
INSERT INTO `paciente` VALUES (44, '123-454554-454', 'FEMENINO', '2000-02-01', NULL, NULL);
INSERT INTO `paciente` VALUES (45, '121-343434-343', 'MASCULINO', '2022-05-16', NULL, NULL);
INSERT INTO `paciente` VALUES (46, '121-343434-545', 'MASCULINO', '2021-01-04', NULL, NULL);
INSERT INTO `paciente` VALUES (47, '-', 'H', '2001-01-01', NULL, '164');
INSERT INTO `paciente` VALUES (48, '22', 'MASCULINO', '2022-01-04', NULL, '7338079');
INSERT INTO `paciente` VALUES (49, '23', 'MASCULINO', '2022-01-04', NULL, '7338079');
INSERT INTO `paciente` VALUES (50, '24', 'MASCULINO', '2022-01-04', NULL, '5690549');
INSERT INTO `paciente` VALUES (51, '161-131199-1005e', 'FEMENINO', '2000-02-02', NULL, NULL);

-- ----------------------------
-- Table structure for personas
-- ----------------------------
DROP TABLE IF EXISTS `personas`;
CREATE TABLE `personas`  (
  `cedula` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombre_personas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apellido_personas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_telefono` int(0) NULL DEFAULT NULL,
  `id_direccion` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cedula`) USING BTREE,
  INDEX `fk_direccion_persona`(`id_direccion`) USING BTREE,
  INDEX `id_telefono`(`id_telefono`) USING BTREE,
  CONSTRAINT `fk_direccion_persona` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id_direccion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`id_telefono`) REFERENCES `telefonos` (`id_telefono`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personas
-- ----------------------------
INSERT INTO `personas` VALUES ('-', 'Frederick', 'Perez', 19, 33);
INSERT INTO `personas` VALUES ('007', 'jucaralampio', 'esrefwaf', 15, 24);
INSERT INTO `personas` VALUES ('121-343434-343', 'Samuel', 'Poveda', 20, 31);
INSERT INTO `personas` VALUES ('121-343434-545', 'Jose Manuel', 'Poveda', 21, 25);
INSERT INTO `personas` VALUES ('123-121212-123', 'mayaya', 'lasinti', 16, 25);
INSERT INTO `personas` VALUES ('123-454554-454', 'Otra Persona', 'Prueba', 18, 30);
INSERT INTO `personas` VALUES ('123-4567-567', 'pepe', 'suniga', 17, 26);
INSERT INTO `personas` VALUES ('123-456789-123', 'Persona ', 'Prueba', 18, 29);
INSERT INTO `personas` VALUES ('161-011002', 'Roberto José', 'Gonzalez', 1, 1);
INSERT INTO `personas` VALUES ('161-041069', 'francisca', 'quezada', NULL, 1);
INSERT INTO `personas` VALUES ('161-131199', 'jose', 'mendoza', NULL, 2);
INSERT INTO `personas` VALUES ('161-131199-1005e', 'maria', 'mendes', 6, 45);
INSERT INTO `personas` VALUES ('161-220503', 'Diego Joel', 'Fernandez', 2, 3);
INSERT INTO `personas` VALUES ('161-270589', 'Mauricio', 'Espinoza Sarantes', 3, 5);
INSERT INTO `personas` VALUES ('22', 'Gagdiel', 'Herrera', 20, 40);
INSERT INTO `personas` VALUES ('23', 'Gagdiel', 'Herrera', 21, 40);
INSERT INTO `personas` VALUES ('24', 'Joel', 'Benavides', 22, 44);
INSERT INTO `personas` VALUES ('323-021192', 'Domingo Joel', 'Vilchez Perez', 4, 2);
INSERT INTO `personas` VALUES ('323-170498', 'Cesia Catalina', 'Alaniz Salinas', 3, 4);
INSERT INTO `personas` VALUES ('3467', 'dSFfds', 'dzhf', 12, 21);
INSERT INTO `personas` VALUES ('56230-5635', 'dSFfds', 'dzhf', 7, 16);
INSERT INTO `personas` VALUES ('ewafrtf', 'wqrea4e', 'rqew4qr', 14, 23);
INSERT INTO `personas` VALUES ('rtyt', 'tres', 'w54rwea', 11, 20);

-- ----------------------------
-- Table structure for silais
-- ----------------------------
DROP TABLE IF EXISTS `silais`;
CREATE TABLE `silais`  (
  `id_silais` int(0) NOT NULL AUTO_INCREMENT,
  `nombre_silais` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descripcion` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_departamento` int(0) NULL DEFAULT NULL,
  `id_direccion` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_silais`) USING BTREE,
  INDEX `RefDepartamento`(`id_departamento`) USING BTREE,
  INDEX `id_direccion`(`id_direccion`) USING BTREE,
  CONSTRAINT `RefDepartamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `silais_ibfk_1` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id_direccion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of silais
-- ----------------------------
INSERT INTO `silais` VALUES (1, 'SILAIS-ESTELI', 'brrrr', 1, 8);
INSERT INTO `silais` VALUES (2, 'SILAIS-MATAGALPA', 'uAAAA', 11, 6);
INSERT INTO `silais` VALUES (3, 'SILAIS-MANAGUA', 'RAAAAA', 2, 7);
INSERT INTO `silais` VALUES (4, 'SILAIS-MASAYA', 'GRRRR', 3, 5);
INSERT INTO `silais` VALUES (5, 'SILAIS-GRANADA', 'GIGI', 5, 4);

-- ----------------------------
-- Table structure for silais_unidad
-- ----------------------------
DROP TABLE IF EXISTS `silais_unidad`;
CREATE TABLE `silais_unidad`  (
  `id_lote` int(0) NOT NULL,
  `id_silais` int(0) NOT NULL,
  `id_unidad` int(0) NOT NULL,
  `cantidad3` int(0) NOT NULL,
  `id_vacuna` int(0) NOT NULL,
  PRIMARY KEY (`id_unidad`, `id_silais`, `id_lote`) USING BTREE,
  INDEX `id_silais`(`id_silais`) USING BTREE,
  INDEX `id_vacuna`(`id_vacuna`) USING BTREE,
  INDEX `silais_unidad_ibfk_1`(`id_lote`) USING BTREE,
  CONSTRAINT `silais_unidad_ibfk_1` FOREIGN KEY (`id_lote`) REFERENCES `lote_silaiscopia` (`id_lote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `silais_unidad_ibfk_2` FOREIGN KEY (`id_silais`) REFERENCES `silais` (`id_silais`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `silais_unidad_ibfk_3` FOREIGN KEY (`id_unidad`) REFERENCES `unidad_vacunacion` (`id_unidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `silais_unidad_ibfk_4` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna` (`id_vacuna`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of silais_unidad
-- ----------------------------
INSERT INTO `silais_unidad` VALUES (1, 1, 1, 50, 2);
INSERT INTO `silais_unidad` VALUES (2, 2, 1, 1, 1);
INSERT INTO `silais_unidad` VALUES (1, 1, 2, 40, 2);
INSERT INTO `silais_unidad` VALUES (28, 1, 3, 20, 26);
INSERT INTO `silais_unidad` VALUES (1, 1, 4, 40, 2);
INSERT INTO `silais_unidad` VALUES (1, 1, 5, 20, 2);
INSERT INTO `silais_unidad` VALUES (29, 1, 6, 120, 4);
INSERT INTO `silais_unidad` VALUES (29, 1, 7, 150, 4);
INSERT INTO `silais_unidad` VALUES (1, 2, 7, 40, 2);
INSERT INTO `silais_unidad` VALUES (27, 2, 7, 40, 2);
INSERT INTO `silais_unidad` VALUES (21, 2, 8, 80, 1);

-- ----------------------------
-- Table structure for supervisor
-- ----------------------------
DROP TABLE IF EXISTS `supervisor`;
CREATE TABLE `supervisor`  (
  `id_supervisor` int(0) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_unidad` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_supervisor`) USING BTREE,
  INDEX `cedula`(`cedula`) USING BTREE,
  INDEX `id_unidad`(`id_unidad`) USING BTREE,
  CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `personas` (`cedula`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `supervisor_ibfk_2` FOREIGN KEY (`id_unidad`) REFERENCES `unidad_vacunacion` (`id_unidad`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supervisor
-- ----------------------------
INSERT INTO `supervisor` VALUES (1, '323-170498', 1);
INSERT INTO `supervisor` VALUES (3, '323-021192', 2);
INSERT INTO `supervisor` VALUES (4, NULL, NULL);
INSERT INTO `supervisor` VALUES (5, NULL, NULL);

-- ----------------------------
-- Table structure for telefonos
-- ----------------------------
DROP TABLE IF EXISTS `telefonos`;
CREATE TABLE `telefonos`  (
  `id_telefono` int(0) NOT NULL AUTO_INCREMENT,
  `id_tipo_telefono` int(0) NULL DEFAULT NULL,
  `numero_telefono` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_telefono`) USING BTREE,
  INDEX `fk_tipotelefono_telefono`(`id_tipo_telefono`) USING BTREE,
  CONSTRAINT `fk_tipotelefono_telefono` FOREIGN KEY (`id_tipo_telefono`) REFERENCES `tipo_telefonos` (`id_tipo_telefono`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of telefonos
-- ----------------------------
INSERT INTO `telefonos` VALUES (1, 1, 84551475);
INSERT INTO `telefonos` VALUES (2, 2, 86361247);
INSERT INTO `telefonos` VALUES (3, 2, 89214736);
INSERT INTO `telefonos` VALUES (4, 1, 84592146);
INSERT INTO `telefonos` VALUES (5, 2, 87496514);
INSERT INTO `telefonos` VALUES (6, 2, 58774987);
INSERT INTO `telefonos` VALUES (7, 1, 7);
INSERT INTO `telefonos` VALUES (8, 1, 7);
INSERT INTO `telefonos` VALUES (9, 1, 7);
INSERT INTO `telefonos` VALUES (10, 1, 7);
INSERT INTO `telefonos` VALUES (11, 1, 551);
INSERT INTO `telefonos` VALUES (12, 1, 24568);
INSERT INTO `telefonos` VALUES (13, 1, 24568);
INSERT INTO `telefonos` VALUES (14, 1, 2845);
INSERT INTO `telefonos` VALUES (15, 1, 25775496);
INSERT INTO `telefonos` VALUES (16, 1, 34543232);
INSERT INTO `telefonos` VALUES (17, 1, 23232323);
INSERT INTO `telefonos` VALUES (18, 1, 12345678);
INSERT INTO `telefonos` VALUES (19, 1, 12345678);
INSERT INTO `telefonos` VALUES (20, 1, 89898989);
INSERT INTO `telefonos` VALUES (21, 1, 12323323);
INSERT INTO `telefonos` VALUES (22, 1, 55556666);
INSERT INTO `telefonos` VALUES (23, 1, 58774987);

-- ----------------------------
-- Table structure for tipo_telefonos
-- ----------------------------
DROP TABLE IF EXISTS `tipo_telefonos`;
CREATE TABLE `tipo_telefonos`  (
  `id_tipo_telefono` int(0) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipo_telefono`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tipo_telefonos
-- ----------------------------
INSERT INTO `tipo_telefonos` VALUES (1, 'Claro');
INSERT INTO `tipo_telefonos` VALUES (2, 'Tigo');
INSERT INTO `tipo_telefonos` VALUES (3, '');

-- ----------------------------
-- Table structure for tipo_usuario
-- ----------------------------
DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE `tipo_usuario`  (
  `id_tipoUsuario` int(0) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipoUsuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tipo_usuario
-- ----------------------------
INSERT INTO `tipo_usuario` VALUES (1, 'Administrador');
INSERT INTO `tipo_usuario` VALUES (2, 'Silais Departamental');
INSERT INTO `tipo_usuario` VALUES (3, 'Unidad Vacunacion');
INSERT INTO `tipo_usuario` VALUES (4, 'Vacunador');

-- ----------------------------
-- Table structure for unidad_vacunacion
-- ----------------------------
DROP TABLE IF EXISTS `unidad_vacunacion`;
CREATE TABLE `unidad_vacunacion`  (
  `id_unidad` int(0) NOT NULL AUTO_INCREMENT,
  `id_silais` int(0) NULL DEFAULT NULL,
  `id_municipio` int(0) NULL DEFAULT NULL,
  `nombre_unidad` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_direccion` int(0) NULL DEFAULT NULL,
  `barrio` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad`) USING BTREE,
  INDEX `id_silais`(`id_silais`) USING BTREE,
  INDEX `id_direccion`(`id_direccion`) USING BTREE,
  INDEX `id_municipio`(`id_municipio`) USING BTREE,
  CONSTRAINT `unidad_vacunacion_ibfk_1` FOREIGN KEY (`id_silais`) REFERENCES `silais` (`id_silais`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `unidad_vacunacion_ibfk_2` FOREIGN KEY (`id_direccion`) REFERENCES `direcciones` (`id_direccion`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `unidad_vacunacion_ibfk_3` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipios`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of unidad_vacunacion
-- ----------------------------
INSERT INTO `unidad_vacunacion` VALUES (1, 1, NULL, 'pedro bolo', 'num 3', 2, 'noel tursio');
INSERT INTO `unidad_vacunacion` VALUES (2, 1, NULL, 'gissell', 'numero 3', 1, 'oscar gamez');
INSERT INTO `unidad_vacunacion` VALUES (3, 2, NULL, 'unidad 3', 'fegrqew', 3, 'qefqew');
INSERT INTO `unidad_vacunacion` VALUES (4, 1, NULL, 'la central', '3', 2, '14demayo');
INSERT INTO `unidad_vacunacion` VALUES (5, 1, 2, 'unidad 5', 'dd', 1, 'fgv');
INSERT INTO `unidad_vacunacion` VALUES (6, 1, 3, 'casa verde', 'ersssrg', NULL, 'eawea');
INSERT INTO `unidad_vacunacion` VALUES (7, 2, 3, 'casa amarilla', 'ersssrg', NULL, 'eawea');
INSERT INTO `unidad_vacunacion` VALUES (8, 2, 4, 'escuela', 'ersssrg', NULL, 'eawea');
INSERT INTO `unidad_vacunacion` VALUES (9, 2, 4, 'la mera mera', 'ersssrg', NULL, 'eawea');
INSERT INTO `unidad_vacunacion` VALUES (10, 2, 4, 'de aqui a alla', 'ersssrg', NULL, 'eawea');
INSERT INTO `unidad_vacunacion` VALUES (11, 2, 4, 'la otra', 'wea', 11, 'planta');
INSERT INTO `unidad_vacunacion` VALUES (12, 4, 18, 'esta y otra', 'arsggr', 12, 'sgrse');
INSERT INTO `unidad_vacunacion` VALUES (13, 1, 1, 'sera', 'dvs', 13, 'fsdfs');
INSERT INTO `unidad_vacunacion` VALUES (14, 1, 1, 'unidad 14', '6ygf6', 14, 'ygy');
INSERT INTO `unidad_vacunacion` VALUES (15, 1, 1, 'unidad 15', 'rtyuji', 15, 'yuiop');
INSERT INTO `unidad_vacunacion` VALUES (18, 3, 1, 'Carlos Rugama', '4', 20, 'San judas');
INSERT INTO `unidad_vacunacion` VALUES (19, 3, 1, ' Roger Osorio', '3', 20, 'Bello horizonte');
INSERT INTO `unidad_vacunacion` VALUES (24, 3, 4, 'Edgar Munguia ', '4 ', 54, 'Monseñor Lescano');
INSERT INTO `unidad_vacunacion` VALUES (26, 3, 1, 'Santa Elena ', '2', 55, 'Distrito uno ');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id_usuario` int(0) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nombre` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_tipoUsuario` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  INDEX `id_tipo`(`id_tipoUsuario`) USING BTREE,
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipoUsuario`) REFERENCES `tipo_usuario` (`id_tipoUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'admin', 'admin', 'Admin', 1);
INSERT INTO `usuarios` VALUES (4, 'Sarita', '5a6e5be3af6816a31502cd7eb6229fbb0aafb754', 'Sarahi', 1);
INSERT INTO `usuarios` VALUES (6, 'Fran', 'f35d74c6329fb62741a37206a7cb776a72c8e32d', 'Francis ', 2);
INSERT INTO `usuarios` VALUES (9, 'pollo', '0db6b74aff6927acbd0bfba05c6602cc525dc540', 'Pollo', 3);
INSERT INTO `usuarios` VALUES (10, 'amatista', '6a49ac67cb29529df9d2e248f0cf33df84a7bdbc', 'mexicana chingona', 4);
INSERT INTO `usuarios` VALUES (11, 'Gissell', 'e629c7f6d8f4c9701d03330e796cdbc03c72e18a', 'Gissell', 2);

-- ----------------------------
-- Table structure for vacuna
-- ----------------------------
DROP TABLE IF EXISTS `vacuna`;
CREATE TABLE `vacuna`  (
  `id_vacuna` int(0) NOT NULL AUTO_INCREMENT,
  `nombre_vacuna` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `desarrollador` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `num_dosis` int(0) NULL DEFAULT NULL,
  `tiempo_almacenamiento` int(0) NULL DEFAULT NULL,
  `nivel_efectividad` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `condiciones_almacenamiento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `procedencia` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_vacuna`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vacuna
-- ----------------------------
INSERT INTO `vacuna` VALUES (1, 'Pentavalente', 'ALRobMTZ', 1, 3, '94%', '-7 a -3°', 'Luxemburgo');
INSERT INTO `vacuna` VALUES (2, 'Covidshield', 'Oxford-AstraZeneca', 2, 2, '70%', '-12 a -6°', 'India');
INSERT INTO `vacuna` VALUES (3, 'Antipolio', 'FifTreat', 1, 2, '92%', '-3 a -6°', 'Shekchenia');
INSERT INTO `vacuna` VALUES (4, 'Sputnik.V', 'BIOCAD', 1, 3, '91.6%', '-1 a -2°', 'Rusia');
INSERT INTO `vacuna` VALUES (5, 'Rotavirus', 'ACFBio', 1, 2, '85%', '-4 a -7°', 'Bielorrusia');
INSERT INTO `vacuna` VALUES (6, 'Neumococo', 'RioDGEN', 1, 3, '76%', '-3 a -5°', 'India');
INSERT INTO `vacuna` VALUES (7, 'Influenza', 'Techbio', 1, 2, '81%', '-4 a -8°', 'Iran');
INSERT INTO `vacuna` VALUES (8, 'DPT', 'Frechten', 2, 4, '87%', '-6 a -9°', 'Estados Unidos');
INSERT INTO `vacuna` VALUES (9, 'Tetanica', 'quien sabe', 2, 4, '84%', '-6 a -10°', 'Luxemburgo');
INSERT INTO `vacuna` VALUES (10, 'DT', 'Menarini', 1, 2, '79%', '-4 a -7°', 'Alemania');
INSERT INTO `vacuna` VALUES (11, 'BCG', 'sabeeer', 1, 2, '88%', '-5 a -8°', 'Mexico');
INSERT INTO `vacuna` VALUES (12, 'ARH', 'efe', 1, 2, '85%', '-4 a -8°', 'Chile');
INSERT INTO `vacuna` VALUES (13, 'IPV', 'Brrrr', 1, 2, '82%', '-3 a -7°', 'Brasil');
INSERT INTO `vacuna` VALUES (14, 'MR', 'chi', 2, 4, '89%', '-6 a -8°', 'Panama');
INSERT INTO `vacuna` VALUES (16, 'pp', 'nj', 3, 2, '91', '-6 a -9°', 'Mexico');
INSERT INTO `vacuna` VALUES (17, 'FRF', 'GReAR Biologics', 1, 3, '98*', '-13 a -16°', 'Bielorrusia');
INSERT INTO `vacuna` VALUES (21, 'MM', 'MONSON', 1, 4, '96%', '-4 a -0°', 'MANHATAN');
INSERT INTO `vacuna` VALUES (22, 'al año', 'cualquiera', 1, 4, '95', '7  -  4', 'new ');
INSERT INTO `vacuna` VALUES (23, 'gfvs', 'sds', 2, 3, '93', 'gyubbn', 'sssssssghj');
INSERT INTO `vacuna` VALUES (24, 'gjgjg', 'gjfcjg', 2, 6, '14', 'hhgh', 'khkhb');
INSERT INTO `vacuna` VALUES (25, '', '', 0, 0, '', '', '');
INSERT INTO `vacuna` VALUES (26, 'Soberana', 'Cuba', 3, 3, '95%', '5', 'cuba');

-- ----------------------------
-- Table structure for vacunacion
-- ----------------------------
DROP TABLE IF EXISTS `vacunacion`;
CREATE TABLE `vacunacion`  (
  `id_vacunacion` int(0) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(0) NULL DEFAULT NULL,
  `id_unidad` int(0) NOT NULL,
  `fecha_vacunacion` date NULL DEFAULT NULL,
  `edad_vacunacion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_vacuna` int(0) NULL DEFAULT NULL,
  `estrategia` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_lote` int(0) NULL DEFAULT NULL,
  `dosis_aplicada` int(0) NULL DEFAULT NULL,
  `fecha_segunda_dosis` date NULL DEFAULT NULL,
  `vacunador` int(0) NULL DEFAULT NULL,
  `supervisor` int(0) NULL DEFAULT NULL,
  `id_jornada` int(0) NULL DEFAULT NULL,
  `cantidad` int(0) UNSIGNED NULL DEFAULT 1,
  PRIMARY KEY (`id_vacunacion`) USING BTREE,
  INDEX `fk_Unidad_Vacunacion_Vacunacion`(`id_unidad`) USING BTREE,
  INDEX `vacunador`(`vacunador`) USING BTREE,
  INDEX `lote_vacuna`(`id_lote`) USING BTREE,
  INDEX `supervisor`(`supervisor`) USING BTREE,
  INDEX `id_paciente_vacunado`(`id_paciente`) USING BTREE,
  INDEX `edad_vacunacion`(`edad_vacunacion`) USING BTREE,
  INDEX `id_vacuna`(`id_vacuna`) USING BTREE,
  INDEX `id_jornada`(`id_jornada`) USING BTREE,
  CONSTRAINT `fk_Unidad_Vacunacion_Vacunacion` FOREIGN KEY (`id_unidad`) REFERENCES `unidad_vacunacion` (`id_unidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunacion_ibfk_1` FOREIGN KEY (`vacunador`) REFERENCES `vacunador` (`id_vacunador`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunacion_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`id_lote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunacion_ibfk_3` FOREIGN KEY (`supervisor`) REFERENCES `supervisor` (`id_supervisor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunacion_ibfk_4` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunacion_ibfk_5` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna` (`id_vacuna`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunacion_ibfk_6` FOREIGN KEY (`id_jornada`) REFERENCES `jornada_vacunacion` (`id_jornada`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vacunacion
-- ----------------------------
INSERT INTO `vacunacion` VALUES (13, 1, 1, NULL, '12', 7, 'perro al guaro', 1, NULL, NULL, 1, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (14, 1, 1, NULL, '12', 10, 'perro al guaro', 1, 2, NULL, 1, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (15, 1, 1, NULL, '12', 3, 'tratra', 1, 1, NULL, 1, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (16, 1, 1, NULL, '12', 6, 'HOL', 1, 0, NULL, 7, 4, NULL, NULL);
INSERT INTO `vacunacion` VALUES (17, 1, 1, NULL, '98', 6, 'dar', 2, 2, NULL, 1, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (18, 1, 1, NULL, '50', 3, 'nmm', 1, 0, NULL, 7, 4, NULL, NULL);
INSERT INTO `vacunacion` VALUES (19, 2, 2, NULL, '40', 4, 'escuela', 2, 0, NULL, 6, 5, NULL, NULL);
INSERT INTO `vacunacion` VALUES (20, 2, 3, '2020-10-05', '32', 4, 'escuela', 1, 3, '2020-10-29', 6, 4, NULL, NULL);
INSERT INTO `vacunacion` VALUES (22, 3, 2, '2020-12-02', '45', 4, 'cas a casa ', 2, 1, '2020-01-29', 1, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (23, 1, 1, '2021-05-16', '46', 1, 'sdfgh', 1, 0, '2021-05-16', 4, 3, NULL, NULL);
INSERT INTO `vacunacion` VALUES (24, 31, 1, '2021-05-16', '47', 1, 'brr', 1, 0, '2021-05-16', 6, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (27, 1, 4, '2021-05-04', '45', 4, 'POR BARRIO', 5, 0, '2021-05-21', 6, 1, NULL, NULL);
INSERT INTO `vacunacion` VALUES (28, 30, 6, '2021-05-11', '85', 24, 'rufh', 1, 0, '2021-05-05', 4, 3, NULL, NULL);
INSERT INTO `vacunacion` VALUES (29, 23, 4, '2021-05-31', '235', 1, 'hfu', 25, 0, '2021-05-16', 6, 3, NULL, NULL);
INSERT INTO `vacunacion` VALUES (30, 2, 4, '2021-05-14', '85', 7, 'FNHGFJH', 18, 0, '2021-05-12', 4, 3, NULL, NULL);
INSERT INTO `vacunacion` VALUES (32, 44, 4, '2021-12-08', '34', 1, 'la mejor obvi', 6, 0, '2022-02-02', 7, 4, NULL, NULL);
INSERT INTO `vacunacion` VALUES (33, 1, 1, '2021-12-27', '67', 2, 'Seguimiento', 1, 0, '2021-05-16', 7, 4, 1, NULL);
INSERT INTO `vacunacion` VALUES (34, 44, 1, '2021-05-05', '54', 2, 'Escolar', 1, 0, '2021-05-22', 6, 1, 2, NULL);
INSERT INTO `vacunacion` VALUES (35, 46, 6, '2021-05-16', '23', 4, 'tretwd', 1, 0, '2021-05-16', 7, 4, 2, NULL);
INSERT INTO `vacunacion` VALUES (36, 45, 6, '2022-01-03', '34', 4, 'fkldjslka', 1, 0, '2021-05-16', 7, 4, 1, NULL);
INSERT INTO `vacunacion` VALUES (37, 51, 1, '2022-01-07', '22', 2, 'casa a casa ', 1, 0, '2023-01-23', 1, 5, 1, NULL);
INSERT INTO `vacunacion` VALUES (38, 46, 8, '2022-01-08', '2', 1, 'barrio', 2, 0, '2022-01-08', 7, 4, 1, NULL);
INSERT INTO `vacunacion` VALUES (39, 46, 1, '2022-03-25', '10', 2, 'cuadra a cuadra', 1, 0, '2022-03-25', 7, 4, 1, 1);
INSERT INTO `vacunacion` VALUES (40, 1, 2, '2022-03-25', '22', 2, 'la mas chivirusquis ', 1, 0, '2022-03-25', 6, 5, 2, 1);

-- ----------------------------
-- Table structure for vacunador
-- ----------------------------
DROP TABLE IF EXISTS `vacunador`;
CREATE TABLE `vacunador`  (
  `id_vacunador` int(0) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_unidad` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_vacunador`) USING BTREE,
  INDEX `fk_Unidad_Vacunacion_Personal`(`id_unidad`) USING BTREE,
  INDEX `cedula`(`cedula`) USING BTREE,
  CONSTRAINT `fk_Unidad_Vacunacion_Personal` FOREIGN KEY (`id_unidad`) REFERENCES `unidad_vacunacion` (`id_unidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vacunador_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `personas` (`cedula`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vacunador
-- ----------------------------
INSERT INTO `vacunador` VALUES (1, '323-170498', 1);
INSERT INTO `vacunador` VALUES (4, '161-270589', 2);
INSERT INTO `vacunador` VALUES (6, '323-021192', 1);
INSERT INTO `vacunador` VALUES (7, NULL, NULL);

-- ----------------------------
-- View structure for informedatos
-- ----------------------------
DROP VIEW IF EXISTS `informedatos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `informedatos` AS select `silais`.`nombre_silais` AS `nombre_silais`,`lote`.`cantidad` AS `cantidad`,`paciente`.`id_paciente` AS `id_paciente`,`paciente`.`sexo` AS `sexo`,`municipios`.`nombre_municipio` AS `nombre_municipio`,`municipios`.`id_municipios` AS `id_municipios`,`silais`.`id_silais` AS `id_silais`,`unidad_vacunacion`.`id_unidad` AS `id_unidad`,`vacunacion`.`id_vacunacion` AS `id_vacunacion`,`vacunacion`.`fecha_vacunacion` AS `fecha_vacunacion`,`vacunacion`.`edad_vacunacion` AS `edad_vacunacion`,`vacuna`.`id_vacuna` AS `id_vacuna`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna`,`vacunacion`.`estrategia` AS `estrategia`,`unidad_vacunacion`.`nombre_unidad` AS `nombre_unidad`,`lote`.`id_lote` AS `id_lote` from ((((((`lote` join `vacuna` on((`lote`.`id_vacuna` = `vacuna`.`id_vacuna`))) join `vacunacion` on((`lote`.`id_lote` = `vacunacion`.`id_lote`))) join `paciente` on((`vacunacion`.`id_paciente` = `paciente`.`id_paciente`))) join `municipios`) join `unidad_vacunacion` on(((`municipios`.`id_municipios` = `unidad_vacunacion`.`id_municipio`) and (`vacunacion`.`id_unidad` = `unidad_vacunacion`.`id_unidad`)))) join `silais` on(((`lote`.`id_silais` = `silais`.`id_silais`) and (`unidad_vacunacion`.`id_silais` = `silais`.`id_silais`))));

-- ----------------------------
-- View structure for infovacu
-- ----------------------------
DROP VIEW IF EXISTS `infovacu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `infovacu` AS select `lote`.`id_lote` AS `id_lote`,`vacuna`.`id_vacuna` AS `id_vacuna`,`lote`.`fecha_entrada` AS `fecha_entrada`,`lote`.`fecha_vencimiento` AS `fecha_vencimiento`,`lote`.`cantidad` AS `cantidad`,`lote`.`id_silais` AS `id_silais`,`lote`.`fecha_autorizacion` AS `fecha_autorizacion`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna`,`vacuna`.`procedencia` AS `procedencia`,`silais`.`nombre_silais` AS `nombre_silais` from ((`vacuna` join `lote` on((`vacuna`.`id_vacuna` = `lote`.`id_vacuna`))) join `silais` on((`lote`.`id_silais` = `silais`.`id_silais`)));

-- ----------------------------
-- View structure for vistadistribucion
-- ----------------------------
DROP VIEW IF EXISTS `vistadistribucion`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistadistribucion` AS select `lote_silaiscopia`.`id_lote` AS `id_lote`,`lote_silaiscopia`.`id_Silais` AS `id_Silais`,`silais`.`nombre_silais` AS `nombre_silais`,`lote_silaiscopia`.`cantidad2` AS `cantidad2`,`lote_silaiscopia`.`id_vacuna` AS `id_vacuna`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna` from ((`lote_silaiscopia` join `vacuna` on((`lote_silaiscopia`.`id_vacuna` = `vacuna`.`id_vacuna`))) join `silais` on((`lote_silaiscopia`.`id_Silais` = `silais`.`id_silais`)));

-- ----------------------------
-- View structure for vistalote
-- ----------------------------
DROP VIEW IF EXISTS `vistalote`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistalote` AS select `lote`.`fecha_vencimiento` AS `fecha_vencimiento`,`lote`.`cantidad` AS `cantidad`,`lote`.`fecha_entrada` AS `fecha_entrada`,`lote`.`id_lote` AS `id_lote`,`lote`.`id_vacuna` AS `id_vacuna`,`lote`.`id_silais` AS `id_silais`,`lote`.`fecha_autorizacion` AS `fecha_autorizacion`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna`,`silais`.`nombre_silais` AS `nombre_silais` from ((`lote` join `vacuna` on((`lote`.`id_vacuna` = `vacuna`.`id_vacuna`))) join `silais` on((`lote`.`id_silais` = `silais`.`id_silais`)));

-- ----------------------------
-- View structure for vistapacientes
-- ----------------------------
DROP VIEW IF EXISTS `vistapacientes`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistapacientes` AS select `paciente`.`id_paciente` AS `id_paciente`,`paciente`.`cedula` AS `cedula`,`paciente`.`fecha_nacimiento` AS `fecha_nacimiento`,`paciente`.`sexo` AS `sexo` from `paciente`;

-- ----------------------------
-- View structure for vistapersonas
-- ----------------------------
DROP VIEW IF EXISTS `vistapersonas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistapersonas` AS select `personas`.`nombre_personas` AS `nombre_personas`,`personas`.`apellido_personas` AS `apellido_personas`,`vacunador`.`id_vacunador` AS `id_vacunador`,`vacunador`.`id_unidad` AS `id_unidad`,`personas`.`cedula` AS `cedula` from (`personas` join `vacunador` on((`personas`.`cedula` = `vacunador`.`cedula`)));

-- ----------------------------
-- View structure for vistapersonasregistradas
-- ----------------------------
DROP VIEW IF EXISTS `vistapersonasregistradas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistapersonasregistradas` AS select `paciente`.`id_paciente` AS `id_paciente`,`paciente`.`cedula` AS `cedula`,`paciente`.`sexo` AS `sexo`,`personas`.`nombre_personas` AS `nombre_personas`,`personas`.`apellido_personas` AS `apellido_personas`,`personas`.`id_telefono` AS `id_telefono` from (`personas` join `paciente` on((`personas`.`cedula` = `paciente`.`cedula`)));

-- ----------------------------
-- View structure for vistavacuna
-- ----------------------------
DROP VIEW IF EXISTS `vistavacuna`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistavacuna` AS select `vacuna`.`id_vacuna` AS `VistaidVac`,`vacuna`.`nombre_vacuna` AS `VistaNomVac`,`vacuna`.`desarrollador` AS `VistaDesaVac`,`vacuna`.`num_dosis` AS `VistaNumDVac`,`vacuna`.`tiempo_almacenamiento` AS `VistaTiemVac`,`vacuna`.`nivel_efectividad` AS `VistaNivelEfecVac`,`vacuna`.`procedencia` AS `VistaProcVac`,`vacuna`.`condiciones_almacenamiento` AS `VistaCondVac` from `vacuna`;

-- ----------------------------
-- View structure for vistavacunaciones
-- ----------------------------
DROP VIEW IF EXISTS `vistavacunaciones`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistavacunaciones` AS select `vacunacion`.`id_vacunacion` AS `id_vacunacion`,`vacunacion`.`id_paciente` AS `id_paciente`,`vacunacion`.`id_unidad` AS `id_unidad`,`vacunacion`.`fecha_vacunacion` AS `fecha_vacunacion`,`vacunacion`.`edad_vacunacion` AS `edad_vacunacion`,`vacunacion`.`id_vacuna` AS `id_vacuna`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna`,`vacunacion`.`estrategia` AS `estrategia`,`vacunacion`.`dosis_aplicada` AS `dosis_aplicada`,`vacunacion`.`fecha_segunda_dosis` AS `fecha_segunda_dosis`,`vacunacion`.`vacunador` AS `vacunador`,`vacunacion`.`supervisor` AS `supervisor`,`vacunacion`.`id_lote` AS `id_lote` from (`vacuna` join `vacunacion` on((`vacuna`.`id_vacuna` = `vacunacion`.`id_vacuna`)));

-- ----------------------------
-- View structure for vistavacunasunidades
-- ----------------------------
DROP VIEW IF EXISTS `vistavacunasunidades`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vistavacunasunidades` AS select `silais_unidad`.`id_lote` AS `id_lote`,`silais_unidad`.`id_silais` AS `id_silais`,`silais`.`nombre_silais` AS `nombre_silais`,`silais_unidad`.`id_unidad` AS `id_unidad`,`unidad_vacunacion`.`nombre_unidad` AS `nombre_unidad`,`silais_unidad`.`cantidad3` AS `cantidad3`,`silais_unidad`.`id_vacuna` AS `id_vacuna`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna` from (((`silais_unidad` join `vacuna` on((`silais_unidad`.`id_vacuna` = `vacuna`.`id_vacuna`))) join `silais` on((`silais_unidad`.`id_silais` = `silais`.`id_silais`))) join `unidad_vacunacion` on(((`silais`.`id_silais` = `unidad_vacunacion`.`id_silais`) and (`silais_unidad`.`id_unidad` = `unidad_vacunacion`.`id_unidad`))));

-- ----------------------------
-- View structure for vshistorialperson
-- ----------------------------
DROP VIEW IF EXISTS `vshistorialperson`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vshistorialperson` AS select `vacunacion`.`id_vacunacion` AS `id_vacunacion`,`vacunacion`.`id_paciente` AS `id_Paciente`,`personas`.`nombre_personas` AS `nombre_personas`,`paciente`.`id_paciente` AS `id_paciente2`,`vacuna`.`nombre_vacuna` AS `nombre_vacuna`,`vacunacion`.`fecha_vacunacion` AS `fecha_vacunacion`,`unidad_vacunacion`.`nombre_unidad` AS `nombre_unidad`,`lote`.`id_lote` AS `id_lote`,`vacunacion`.`dosis_aplicada` AS `dosis_aplicada` from (((((`personas` join `paciente` on((`personas`.`cedula` = `paciente`.`cedula`))) join `vacunacion` on((`vacunacion`.`id_paciente` = `paciente`.`id_paciente`))) join `unidad_vacunacion` on((`vacunacion`.`id_unidad` = `unidad_vacunacion`.`id_unidad`))) join `lote` on((`vacunacion`.`id_lote` = `lote`.`id_lote`))) join `vacuna` on((`lote`.`id_vacuna` = `vacuna`.`id_vacuna`)));

-- ----------------------------
-- Procedure structure for AgregarDisminucion
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarDisminucion`;
delimiter ;;
CREATE PROCEDURE `AgregarDisminucion`(IN `pId_vacuna` int,IN `pId_lote` int,IN `pCantidad4` int,IN `pId_vacunacion` int,IN `pId_unidad` int,OUT `ppmsj` int)
BEGIN
	#Routine body goes here...

 Insert into disminucionvacu(id_vacuna, id_lote, cantidad4, id_vacunacion, id_unidad)
 Values (pId_vacuna, pId_lote, pCantidad4, pId_vacunacion, pId_unidad);
 Set ppmsj = 10;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarDistribucion
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarDistribucion`;
delimiter ;;
CREATE PROCEDURE `AgregarDistribucion`(IN `pId_vacuna` int,IN `pId_lote` int,IN `pId_silais` int,IN `pCantidad2` int, OUT `ppmsj` int)
BEGIN
	#Routine body goes here...

 Insert into lote_silaiscopia(id_lote, id_silais, cantidad2, id_vacuna)
 Values (pId_lote, pId_silais, pCantidad2, pId_vacuna);
 Set ppmsj = 10;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarDistribucionUnidades
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarDistribucionUnidades`;
delimiter ;;
CREATE PROCEDURE `AgregarDistribucionUnidades`(IN `pId_vacuna` int,IN `pId_lote` int,IN `pId_silais` int,IN `pId_Unidad` int,IN `pCantidad3` int, OUT `ppmsj` int)
BEGIN
	#Routine body goes here...

 Insert into silais_unidad(id_lote, id_silais, id_unidad, cantidad3, id_vacuna)
 Values (pId_lote, pId_silais, pId_Unidad, pCantidad3, pId_vacuna);
 Set ppmsj = 10;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for AgregarPacientesM
-- ----------------------------
DROP PROCEDURE IF EXISTS `AgregarPacientesM`;
delimiter ;;
CREATE PROCEDURE `AgregarPacientesM`(IN `pnombre_personas` varchar(20),IN `papellido_personas` varchar(20),IN `pid_municipio` int,IN `pid_direccion` varchar(100),IN `psexo` varchar(12),IN `pfecha_nacimiento` date,OUT `pmsj` int,IN `pIdentificador` VARCHAR(60))
BEGIN
	
		#Routine body goes here...
declare  x int ;
declare m int ;
declare u int;
declare y int;
DECLARE ContaCed int;	
DECLARE Cont VARCHAR(60);

#
Select COUNT(*) into m from paciente where paciente.Identificador=pIdentificador;
if m = 0 THEN
#if  m > 0 then

#set pmsj = 12;

#else 

insert into direcciones(id_municipios,descripcion_direccion)
  values (pid_municipio,pid_direccion);
	

	SELECT direcciones.id_direccion INTO y FROM direcciones WHERE direcciones.descripcion_direccion= pid_direccion LIMIT 1;


#SELECT telefonos.id_telefono INTO u FROM telefonos WHERE telefonos.numero_telefono= pid_telefono LIMIT 1;


set pmsj = 9;
#end if ;

#else 
Select COUNT(*) into u from personas;
SET u = u+1;

SET ContaCed = u+2;
SET Cont = ContaCed ;

 insert into personas(cedula,nombre_personas,apellido_personas,id_telefono,id_direccion)
values (Cont,pnombre_personas,papellido_personas,u,y);

insert into paciente(cedula,sexo,fecha_nacimiento,Identificador)
values (Cont,psexo,pfecha_nacimiento,pIdentificador);

set pmsj = 9;
 
END IF;
if m > 0 THEN
set pmsj = 12;
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_departamento
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_departamento`;
delimiter ;;
CREATE PROCEDURE `Agregar_departamento`(IN `pnombre_departamento` varchar (30),OUT `pmsj` int)
BEGIN
	#Routine body goes here...
	
	declare m int;
	select COUNT(*) into m from  departamentos 
	where departamentos.nombre_departamento= pnombre_departamento;
	
	if m > 0 then 
	set Pmsj =10 ;
	else
	INSERT INTO departamentos (nombre_departamento)
	values (pnombre_departamento);
	
	set Pmsj = 8;
	end if;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_direcciones
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_direcciones`;
delimiter ;;
CREATE PROCEDURE `agregar_direcciones`(IN `pid_municipios` int,IN `pdescripcion_direccion` varchar(100),OUT `ppmsj` int)
BEGIN
	#Routine body goes here...
	
	declare f int ;
	SELECT COUNT(*) into f from direcciones
	where direcciones.descripcion_direccion = pdescripcion_direccion;
	
	 if f >0  THEN
   set ppmsj = 5;

   else 
  insert into direcciones ( id_municipios , descripcion_direccion)
  values ( pid_municipios ,pdescripcion_direccion );
   set ppmsj =9;
    end if;
	
	
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_Jornada
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_Jornada`;
delimiter ;;
CREATE PROCEDURE `Agregar_Jornada`(IN `pDescripcion` varchar(255), IN `pNombre_Jornada` varchar(255), IN `pFecha_Inicio` date,IN `pFecha_Cierre` date,OUT `PMSJ` int)
BEGIN 
	#Routine body goes here...
	
declare y int ;
	SELECT COUNT(*) into y from jornada_vacunacion
	where jornada_vacunacion.fecha_inicio= pFecha_Inicio;  #revisar
	
	if y >0  THEN
set PMSJ = 10;


   else 
  insert into jornada_vacunacion(descripcion, nombre_jornada, fecha_inicio, fecha_cierre)
  values (pDescripcion, pNombre_Jornada, pFecha_Inicio, pFecha_Cierre);
 
   set PMSJ = 9;
	 
    end if;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_lote
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_lote`;
delimiter ;;
CREATE PROCEDURE `agregar_lote`(IN `pId_vacuna` varchar(16),IN `pId_silais` VARCHAR(20), IN `pFecha_entrada` date,IN `pCantidad` int,IN `pFecha_vencimiento` date,OUT `ppmsj` int)
BEGIN
	#Routine body goes here...
	
	declare h int ;

  SELECT COUNT(*) into h from lote
	where lote.fecha_vencimiento= pFecha_vencimiento;

	
	 if h >0  THEN
   set ppmsj = 8;

   else 
  insert into lote(id_vacuna , id_silais , fecha_entrada , cantidad , fecha_autorizacion , fecha_vencimiento)
  values (pId_vacuna, pId_silais, pFecha_entrada , pCantidad ,  pFecha_vencimiento);
   set ppmsj =10;
    end if;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_paciente
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_paciente`;
delimiter ;;
CREATE PROCEDURE `agregar_paciente`(IN `pcedula` varchar(16),IN `pfecha_nacimiento` date,IN `psexo` varchar(20),OUT `ppmsj` int , IN `pnombre` varchar(55),IN `papellido` varchar(55), IN `y` int)
BEGIN
	#Routine body goes here...
	
	declare x int ;
	DECLARE y int;
	
	
	
	SELECT COUNT(*) into x from paciente where paciente.nombre= pnombre;
	
	if x >0  THEN
  set ppmsj = 3;
#generaciion de previo registro ced
	 
	 
	 
	 #----------------------------------------------------------------------   persona 
	SELECT timestampdiff(YEAR, pfecha_nacimiento, current_date) INTO y;
  insert into paciente (cedula,fecha_nacimiento,sexo, nombre,apellido, edad)
  values (pcedula,pfecha_nacimiento,psexo,pnombre, papellido, y);
   set ppmsj =4;
    end if;
	
	
	
	
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_personas
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_personas`;
delimiter ;;
CREATE PROCEDURE `agregar_personas`(IN `pcedula` varchar(16),IN `pnombre_personas` varchar(20),IN `papellido_personas` varchar(20),IN `pid_telefono` varchar(100),IN `pid_municipio` int,IN `pid_direccion` varchar(100),IN `psexo` varchar(12),IN `pfecha_nacimiento` date,OUT `pmsj` int)
BEGIN
	#Routine body goes here...
declare  x int ;
declare m int ;
declare u int;
declare y int;
	

 Select COUNT(*) into x from personas where personas.cedula=pcedula;
#if x >0 THEN
Select COUNT(*) into m from paciente where paciente.cedula=pcedula;

#if  m > 0 then

set pmsj = 12;

#else 
INSERT INTO telefonos(id_tipo_telefono,numero_telefono)
values (1,pid_telefono);


insert into direcciones(id_municipios,descripcion_direccion)
  values (pid_municipio,pid_direccion);
	

	SELECT direcciones.id_direccion INTO y FROM direcciones WHERE direcciones.descripcion_direccion= pid_direccion LIMIT 1;


SELECT telefonos.id_telefono INTO u FROM telefonos WHERE telefonos.numero_telefono= pid_telefono LIMIT 1;


set pmsj = 9;
#end if ;

#else 


 insert into personas (cedula,nombre_personas,apellido_personas,id_telefono,id_direccion)
values (pcedula,pnombre_personas,papellido_personas,u,y);

insert into paciente(cedula,sexo,fecha_nacimiento)
values (pcedula,psexo,pfecha_nacimiento);

set pmsj = 9;
 
# end if;

	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_silais
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_silais`;
delimiter ;;
CREATE PROCEDURE `agregar_silais`(IN `pnombre_silais` varchar(40),IN `pdescripcion` varchar(22),IN `pdepartamento` int,IN `pid_direccion` int,OUT `ppmsj` int)
BEGIN
	#Routine body goes here...
	
	
	declare t int ;
	SELECT COUNT(*) into t from silais
	where silais.nombre_silais = pnombre_silais;
	
	if t >0  THEN
set ppmsj = 8;

   else 
  insert into silais(nombre_silais, descripcion, id_departamento, id_direccion)
  values (pnombre_silais, pdescripcion, pdepartamento, pid_direccion);
   set ppmsj =9;
    end if;
	
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_supervisor
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_supervisor`;
delimiter ;;
CREATE PROCEDURE `agregar_supervisor`(IN `pcedula` varchar(16),IN `pid_unidad` int,OUT `ppmsj` int)
BEGIN
	#Routine body goes here...
	
	
	declare b int ;
	SELECT COUNT(*) into b from supervisor
	where supervisor.cedula= pcedula;
	
	if b >0  THEN
set ppmsj = 5;

   else 
  insert into supervisor(cedula,id_unidad)
  values (pcedula,pid_unidad );
   set ppmsj =6;
    end if;
	
	
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_tipo_telefonos
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_tipo_telefonos`;
delimiter ;;
CREATE PROCEDURE `Agregar_tipo_telefonos`(IN `pdescripcion` varchar(30),OUT `Pmsj` int)
BEGIN
	#Routine body goes here...
	
	declare y int;
	select COUNT(*) into y from  tipo_telefonos 
	where tipo_telefonos.descripcion= pdescripcion;
	
	if y > 0 then 
	set Pmsj =3 ;
	else
	INSERT INTO tipo_telefonos (descripcion)
	values (pdescripcion);
	
	set Pmsj = 5;
	end if;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_unidad_vacunacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_unidad_vacunacion`;
delimiter ;;
CREATE PROCEDURE `agregar_unidad_vacunacion`(IN `pid_silais` int,IN `pid_municipio` int,IN `pnombreUni` varchar(20),IN `psector` varchar(20),IN `pbarrio` varchar(18),IN `pdireccion` varchar (100),OUT `ppsmj` int)
BEGIN
	#Routine body goes here...
	
	declare y int;
	declare j int;
	declare u int;
	
	SELECT COUNT(*) into y from unidad_vacunacion where unidad_vacunacion.sector= psector;
	Select COUNT(*) into j from direcciones where direcciones.descripcion_direccion= pdireccion;

set ppsmj = 1;

insert into direcciones(id_municipios,descripcion_direccion)
  values (pid_municipio,pdireccion);
	
	   set ppsmj =6;
		 
 # insert into unidad_vacunacion(id_silais,id_municipio,nombre_unidad,sector,barrio)
  #values (pid_silais,pid_municipio,pnombreUni,psector, pbarrio);
	
	#hacer retorno violento
	
	SELECT direcciones.id_direccion INTO u FROM direcciones WHERE direcciones.descripcion_direccion= pdireccion LIMIT 1;

	insert into unidad_vacunacion(id_silais,id_municipio,nombre_unidad,sector,id_direccion,barrio)
  values (pid_silais,pid_municipio,pnombreUni,psector,u ,pbarrio);
	
	set ppsmj =4;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_vacuna
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_vacuna`;
delimiter ;;
CREATE PROCEDURE `agregar_vacuna`(IN `pNombre_vacuna` varchar(16),IN `pDesarrollador` varchar(25),IN `pNum_dosis` int,IN `pTiempo_almacenamiento` int,IN `pNivel_efectividad` varchar(5),IN `pCondiciones_almacenamiento` varchar(20),IN `pProcedencia` varchar(15),OUT `ppmsj` int)
BEGIN
	#Routine body goes here...

declare j int ;
	SELECT COUNT(*) into j from vacuna
	where vacuna.nombre_vacuna= pNombre_vacuna;
	
	if j >0  THEN
  set ppmsj = 7;
#7 si me indican que ya existe el elemento 
   else 
  INSERT into vacuna(nombre_vacuna,desarrollador, num_dosis,tiempo_almacenamiento,
	nivel_efectividad, condiciones_almacenamiento,procedencia)
  values(pNombre_vacuna,pDesarrollador, pNum_dosis,pTiempo_almacenamiento,
	pNivel_efectividad, pCondiciones_almacenamiento,pProcedencia);
#8 significa que se guardo con exito
   set ppmsj =8;
END IF;


END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Agregar_vacunacion
-- ----------------------------
DROP PROCEDURE IF EXISTS `Agregar_vacunacion`;
delimiter ;;
CREATE PROCEDURE `Agregar_vacunacion`(IN `pPaciente` int,IN `pUnidad` int,IN `pfecha_vacunacion` date , IN `plote` int,IN `pEstrategia` varchar(20),IN `pDosisAplicada` int,IN `pVacuna`int,IN `pfecha_segundadosis` date ,IN `pEdadVacunacion` varchar (15),IN `pJornada` int,IN `pVacunador` int,IN `pSupervisor` int, OUT `PMSJ` int)
BEGIN
	#Routine body goes here...
	
declare y int ;
	SELECT COUNT(*) into y from vacunacion 
	where vacunacion.estrategia= pEstrategia ;  #revisar
	
	if y >0  THEN
set PMSJ = 10;


   else 
  insert into vacunacion(id_paciente, id_unidad,fecha_vacunacion ,edad_vacunacion,id_vacuna,estrategia,id_lote, dosis_aplicada,fecha_segunda_dosis,id_jornada, vacunador, supervisor)
  values (pPaciente,pUnidad,pfecha_vacunacion ,pEdadVacunacion, pVacuna,pEstrategia,plote,pDosisAplicada,pfecha_segundadosis,pJornada, pVacunador,pSupervisor);
 
   set PMSJ = 9;
    end if;





END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for agregar_vacunador
-- ----------------------------
DROP PROCEDURE IF EXISTS `agregar_vacunador`;
delimiter ;;
CREATE PROCEDURE `agregar_vacunador`(IN `pcedula` varchar(16),IN `pid_unidad` int,OUT `ppmsj` int)
BEGIN
	#Routine body goes here...
	
	declare g int ;
	SELECT COUNT(*) into g from vacunador
	where vacunador.cedula= pcedula;
	
	if g >0  THEN
set ppmsj = 5;

   else 
  insert into vacunador(cedula,id_unidad)
  values (pcedula,pid_unidad);
   set ppmsj =6;
    end if;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for LoguearUsuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `LoguearUsuario`;
delimiter ;;
CREATE PROCEDURE `LoguearUsuario`(IN `Pusuario` varchar(20),IN `Pclave` varchar(10),OUT `msg` varchar(5))
BEGIN
	#Routine body goes here...
	#Activos = 1
	
	#OK = esta bien
	#DSBL = cuenta inactiva
	#No = e Usuario no existe
	
	DECLARE x INT;
	SELECT COUNT(*) into x FROM usuarios
	WHERE Alias = Pusuario
	AND Clave = Pclave;
	#AND id_estado = 1;
	
	IF x=1 THEN
	SELECT COUNT(*) INTO x FROM usuarios
	WHERE  Alias = Pusuario
	AND Clave = Pclave
	AND Id_Estado = 1;
	
	IF x=1 THEN
		#eL ESTADO ESTA ACTIVO
	SET msg = "OK";
	ELSEIF x=0 THEN
	#CUENTA INACTIVA
	SET msg = "DSBL";
	
END IF;
ELSE 
#uSUARIO NO EXISTE
SET msg = "NO";

END IF;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `Usuario`;
delimiter ;;
CREATE PROCEDURE `Usuario`(IN `puser_name` varchar(20),IN `pclave` varchar (40),IN `pemail` varchar (20),IN `pnombre` varchar(55),IN `plast_session` date,OUT `ppmsj` int)
BEGIN
	#Routine body goes here...
	
	declare h int;
  select COUNT(*) into h from usuarios
	where usuarios.user_name=puser_name;
	
	if h > 0 then 
	set ppmsj = 2;
	#generaciion de previo registro ced
	else 
	INSERT INTO usuarios(user_name,clave,email,nombre,last_session)
	values (puser_name,pclave,pemail,pnombre,plast_session);
	set ppmsj = 5;

 	end if;
 
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table disminucionvacu
-- ----------------------------
DROP TRIGGER IF EXISTS `Resta`;
delimiter ;;
CREATE TRIGGER `Resta` BEFORE INSERT ON `disminucionvacu` FOR EACH ROW BEGIN
UPDATE silais_unidad
set silais_unidad.cantidad3 = silais_unidad.cantidad3 - new.cantidad4
WHERE id_vacunacion = new.id_vacunacion and id_vacuna = new.id_vacuna;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table lote_silaiscopia
-- ----------------------------
DROP TRIGGER IF EXISTS `RestarCantidades`;
delimiter ;;
CREATE TRIGGER `RestarCantidades` BEFORE INSERT ON `lote_silaiscopia` FOR EACH ROW BEGIN
UPDATE lote
set lote.cantidad = lote.cantidad - new.cantidad2
WHERE id_silais = new.id_silais and id_vacuna = new.id_vacuna;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table silais_unidad
-- ----------------------------
DROP TRIGGER IF EXISTS `RestarCantidad`;
delimiter ;;
CREATE TRIGGER `RestarCantidad` BEFORE INSERT ON `silais_unidad` FOR EACH ROW BEGIN
UPDATE lote_silaiscopia
set lote_silaiscopia.cantidad2 = lote_silaiscopia.cantidad2 - new.cantidad3
WHERE id_silais = new.id_silais and id_vacuna = new.id_vacuna;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
