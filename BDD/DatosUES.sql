#Primero se ejecutan las consultas de materias y tipos usuarios ya que son las unicas que no contiene foraneas y para que las demas consultas de las otras tablas esten asociadas a su campo foraneo
use ues_rr_ii;
#Materias
insert into materias(registro, idMateria, nombreMateria, fechaModificacion) values
(null, "EIN","Economia Internacional", CURDATE()),
(null, "TRI","Teoria de las Relaciones Internacionales", CURDATE()),
(null, "CIN","Cooperacion Internacional", CURDATE());
#Tipos de usuario
insert into tipousuarios(registro, idTipo, tipoUsuario, fechaModificacion) values
(null, "ADM","Administrador", CURDATE()),
(null, "USR","Usuario", CURDATE());

#Preguntas
#Ejemplo de ingreso de preguntas para ECONOMIA INTERNACIONAL se manda como parametro EIN en la funcion
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, getIdPregunta("EIN"), "Pregunta1", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Pregunta2", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Pregunta3", "EIN", CURDATE());

#Ejemplo de ingreso de preguntas para TEORIA DE LAS RELACIONES INTERNACIONALES  se manda como parametro TRI en la funcion
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, getIdPregunta("TRI"), "Pregunta1", "TRI", CURDATE()),
(null, getIdPregunta("TRI"), "Pregunta2", "TRI", CURDATE()),
(null, getIdPregunta("TRI"), "Pregunta3", "TRI", CURDATE());

#Ejemplo de ingreso de preguntas para COOPERACION INTERNACIONAL  se manda como parametro CIN en la funcion
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, getIdPregunta("CIN"), "Pregunta1", "CIN", CURDATE()),
(null, getIdPregunta("CIN"), "Pregunta2", "CIN", CURDATE()),
(null, getIdPregunta("CIN"), "Pregunta3", "CIN", CURDATE());

select auto_increment from INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'ues_rr_ii'
AND   TABLE_NAME   = 'preguntas';


