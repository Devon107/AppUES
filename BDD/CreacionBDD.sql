drop database if exists ues_rr_ii;
create database UES_RR_II;
use UES_RR_II;


CREATE TABLE materias (
    registro INT AUTO_INCREMENT UNIQUE,
    idMateria CHAR(3) NOT NULL UNIQUE,
    nombreMateria VARCHAR(50) NOT NULL UNIQUE,
    fechaModificacion DATE NOT NULL,
    CONSTRAINT PK_materias PRIMARY KEY (registro)
)  ENGINE=INNODB;

CREATE TABLE tipousuarios (
    registro INT AUTO_INCREMENT UNIQUE,
    idTipo CHAR(3) NOT NULL UNIQUE,
    tipoUsuario VARCHAR(30) NOT NULL,
    fechaModificacion DATE NOT NULL,
    #Llaves primarias y foraneas
    CONSTRAINT PK_tipousuarios PRIMARY KEY (registro)
)  ENGINE=INNODB;

CREATE TABLE preguntas (
    registro INT AUTO_INCREMENT UNIQUE,
    idPregunta VARCHAR(8) NOT NULL UNIQUE,
    enunciadoPregunta TEXT NOT NULL,
    idMateria CHAR(3) NOT NULL,
    fechaModificacion DATE,
    CONSTRAINT PK_preguntas PRIMARY KEY (registro),
    CONSTRAINT FK_pregunta_materia FOREIGN KEY (idMateria)
        REFERENCES materias (idMateria)
)  ENGINE=INNODB;

CREATE TABLE respuestas (
    registro INT AUTO_INCREMENT NOT NULL,
    enunciadoRespuesta TEXT NOT NULL,
    idPregunta VARCHAR(8) NOT NULL,
    correcto BOOLEAN NOT NULL,
    fechaModificacion DATE,
    CONSTRAINT PK_respuestas PRIMARY KEY (registro),
    CONSTRAINT FK_respuestas_preguntas FOREIGN KEY (idPregunta)
        REFERENCES preguntas (idPregunta)
)  ENGINE=INNODB;

CREATE TABLE usuarios (
    registro INT AUTO_INCREMENT UNIQUE,
    username VARCHAR(50) NOT NULL UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    sexo CHAR NOT NULL,
    fecha_nac DATE NOT NULL,
    edad INT NOT NULL,
    fechaRegistro DATE NOT NULL,
    tipoUsuario CHAR(3) NOT NULL,
    CONSTRAINT PK_usuarios PRIMARY KEY (registro),
    CONSTRAINT FK_usuarios_tipo FOREIGN KEY (tipoUsuario)
        REFERENCES tipousuarios (idTipo)
)  ENGINE=INNODB;

CREATE TABLE puntuaciones (
    registro INT AUTO_INCREMENT UNIQUE,
    username VARCHAR(50) NOT NULL,
    idMateria CHAR(3) NOT NULL,
    puntuacion DECIMAL(10 , 2 ) NOT NULL,
    fechaPuntuacion DATE NOT NULL,
    CONSTRAINT PK_puntuaciones PRIMARY KEY (registro),
    CONSTRAINT FK_puntuacion_usuario FOREIGN KEY (username)
        REFERENCES usuarios (username),
    CONSTRAINT FK_puntuaciones_materia FOREIGN KEY (idMateria)
        REFERENCES materias (idMateria)
)  ENGINE=INNODB;

#Funciones 
DELIMITER $$
CREATE FUNCTION getIdPregunta(mat char(3)) RETURNS varchar(8)
BEGIN
	DECLARE i int;
    DECLARE iden VARCHAR(8);
    set i = (select max(registro)+1 from preguntas);
    set iden = CONCAT(mat, LPAD(i, 5, 0));
RETURN iden;
END$$
DELIMITER ;