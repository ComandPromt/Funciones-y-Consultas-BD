-- 
-- Base de datos: `ahorcado`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla palabras
-- 

CREATE TABLE palabras (
  IDP int(11) NOT NULL auto_increment,
  Palabra varchar(25) NOT NULL,
  Tilde int(1) default '0',
  Tam int(11) default NULL,
  PRIMARY KEY  (IDP),
  UNIQUE KEY Palabra (Palabra)
);

-- 
-- Volcar la base de datos para la tabla palabras
-- 

INSERT INTO palabras VALUES (1, 'eco', 0, 3);
INSERT INTO palabras VALUES (3, 'abutarda', 0, 8);
INSERT INTO palabras VALUES (4, 'ey', 0, 2);
INSERT INTO palabras VALUES (5, 'cancion', 6, 7);
INSERT INTO palabras VALUES (6, 'regola', 0, 6);
INSERT INTO palabras VALUES (7, 'napalm', 0, 6);
INSERT INTO palabras VALUES (8, 'Holas', 0, 5);
INSERT INTO palabras VALUES (9, 'indigo', 1, 6);
INSERT INTO palabras VALUES (10, 'atun', 3, 4);
INSERT INTO palabras VALUES (13, 'Porton', 5, 6);
INSERT INTO palabras VALUES (14, 'Angela', 1, 6);
INSERT INTO palabras VALUES (15, 'Conyuge', 2, 7);
INSERT INTO palabras VALUES (16, 'Se-aletica', 6, 10);
INSERT INTO palabras VALUES (17, 'Estandar', 4, 8);
INSERT INTO palabras VALUES (18, 'Informacion', 10, 11);
INSERT INTO palabras VALUES (19, 'Criterio', 0, 8);
INSERT INTO palabras VALUES (20, 'Fichero', 0, 7);
INSERT INTO palabras VALUES (21, 'Archivador', 0, 10);
INSERT INTO palabras VALUES (22, 'Carpeta', 0, 7);
INSERT INTO palabras VALUES (23, 'Pista', 0, 5);
INSERT INTO palabras VALUES (25, 'Limosna', 0, 7);
INSERT INTO palabras VALUES (26, 'Amor', 0, 4);
INSERT INTO palabras VALUES (27, 'Vivir', 0, 5);
INSERT INTO palabras VALUES (28, 'Grupo', 0, 5);
INSERT INTO palabras VALUES (29, 'Lapicero', 0, 8);
INSERT INTO palabras VALUES (30, 'Ojo', 0, 3);
INSERT INTO palabras VALUES (31, 'Barril', 0, 6);
INSERT INTO palabras VALUES (32, 'Barbarie', 0, 8);
INSERT INTO palabras VALUES (33, 'Bifurcacion', 10, 11);
INSERT INTO palabras VALUES (34, 'Receta', 0, 6);
INSERT INTO palabras VALUES (35, 'Calculo', 2, 7);
INSERT INTO palabras VALUES (36, 'Polimetro', 4, 9);
INSERT INTO palabras VALUES (37, 'Correo', 0, 6);
INSERT INTO palabras VALUES (38, 'Angel', 1, 5);
INSERT INTO palabras VALUES (39, 'Duro', 0, 4);
INSERT INTO palabras VALUES (40, 'Blando', 0, 6);
INSERT INTO palabras VALUES (41, 'Katana', 0, 6);
INSERT INTO palabras VALUES (42, 'Espada', 0, 6);
INSERT INTO palabras VALUES (43, 'Numero', 2, 6);
INSERT INTO palabras VALUES (44, 'Texto', 0, 5);
INSERT INTO palabras VALUES (45, 'Regla', 0, 5);
INSERT INTO palabras VALUES (46, 'Negocio', 0, 7);
INSERT INTO palabras VALUES (47, 'Norma', 0, 5);
INSERT INTO palabras VALUES (48, 'Empresa', 0, 7);
INSERT INTO palabras VALUES (49, 'Cliente', 0, 7);
INSERT INTO palabras VALUES (50, 'Dni', 0, 3);
INSERT INTO palabras VALUES (51, 'Entero', 0, 6);
INSERT INTO palabras VALUES (52, 'Negativo', 0, 8);
INSERT INTO palabras VALUES (53, 'Mayor', 0, 5);
INSERT INTO palabras VALUES (54, 'Menor', 0, 5);
INSERT INTO palabras VALUES (55, 'Disparador', 0, 10);
INSERT INTO palabras VALUES (57, 'Hola', 0, 4);
INSERT INTO palabras VALUES (59, 'Iberico', 3, 7);
INSERT INTO palabras VALUES (60, 'Paleta', 0, 6);
INSERT INTO palabras VALUES (61, 'Rubia', 0, 5);
INSERT INTO palabras VALUES (62, 'Prueba', 0, 6);
INSERT INTO palabras VALUES (63, 'Programa', 0, 8);
INSERT INTO palabras VALUES (66, 'Raton', 4, 5);