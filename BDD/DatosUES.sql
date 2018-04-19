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
(null, "EIN00001", "La palabra economía tiene una raíz etimológica que significa:", "EIN", CURDATE());

#Preguntas subsiguientes
#EIN
insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
(null, getIdPregunta("EIN"), "La relación entre las Ciencias Económicas y la economía internacional es:", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "La economía internacional se divide en: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Un sistema económico se ocupa de: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Un sistema económico internacional puede estar compuesto por: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Un sistema económico mundial puede estar compuesto por: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Al actor dominante de un sistema económico internacional se le conoce como: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Al actor subordinado de un sistema económico internacional se le conoce como: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Todos los sistemas económicos internacionales presentan la estructura: ", "EIN", CURDATE()),
(null, getIdPregunta("EIN"), "Tras la caída del Bloque Soviético, las relaciones en el sistema económico mundial pueden darse: ", "EIN", CURDATE());
-- Fin 10 preguntas
-- (null, getIdPregunta("EIN"), "Pregunta2", "EIN", CURDATE()),



insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, "Administración del negocio", "EIN00001", 0, CURDATE()),
(null, "Administración de la casa", "EIN00001", 1, CURDATE()),
(null, "Administración de las necesidades", "EIN00001", 0, CURDATE()),
(null, "Administración de la riqueza", "EIN00001", 0, CURDATE());
-- (null, "Respuesta1", "Codigo", boolean, CURDATE()),

insert into respuestas(registro, enunciadoRespuesta, idPregunta, correcto, fechaModificacion) values
(null, "La primera es una rama de la segunda", "EIN00002", 0, CURDATE()), 
(null, "La segunda es una rama de la primera", "EIN00002", 1, CURDATE()),
(null, "Ambas están al mismo nivel", "EIN00002", 0, CURDATE()), 
(null, "No hay relación entre ellas", "EIN00002", 0, CURDATE()),

(null, "Comercio internacional, finanzas internacionales y sistema monetario internacional", "EIN00003", 1, CURDATE()),
(null, "Comercio internacional, finanzas internacionales y mercado de divisas", "EIN00003", 0, CURDATE()),
(null, "Comercio internacional, sistema bancario internacional y sistema monetario internacional", "EIN00003", 0, CURDATE()),
(null, "Comercio internacional, sistema monetario internacional y endeudamiento externo", "EIN00003", 0, CURDATE()),

(null, "Organizar la producción, distribución y consumo en beneficio de una población", "EIN00004", 1, CURDATE()),
(null, "Organizar la producción, distribución y consumo en beneficio de la población", "EIN00004", 0, CURDATE()),
(null, "Ejecutar la producción, distribución y consumo en beneficio de una población", "EIN00004", 0, CURDATE()),
(null, "Satisfacer las necesidades de la población que puede pagar", "EIN00004", 0, CURDATE()),

(null, "Dos sistemas económicos", "EIN00005", 0, CURDATE()),
(null, "Un sistema económico poliforme", "EIN00005", 0, CURDATE()),
(null, "Varios sistemas económicos", "EIN00005", 1, CURDATE()),
(null, "Varios sistemas económicos internacionales", "EIN00005", 0, CURDATE()),

(null, "Dos sistemas económicos", "EIN00006", 0, CURDATE()),
(null, "Un sistema económico poliforme", "EIN00006", 0, CURDATE()),
(null, "Varios sistemas económicos", "EIN00006", 0, CURDATE()),
(null, "Varios sistemas económicos internacionales", "EIN00006", 1, CURDATE()),

(null, "Centro", "EIN00007", 1, CURDATE()),
(null, "Imperio", "EIN00007", 0, CURDATE()),
(null, "Referente", "EIN00007", 0, CURDATE()),
(null, "Ninguna de las anteriores", "EIN00007", 0, CURDATE()),

(null, "Periferia", "EIN00008", 1, CURDATE()),
(null, "Secundario", "EIN00008", 0, CURDATE()),
(null, "Esclavo", "EIN00008", 0, CURDATE()),
(null, "Proletario", "EIN00008", 0, CURDATE()),

(null, "Centro-periferia", "EIN00009", 1, CURDATE()),
(null, "Periferia-satélites", "EIN00009", 0, CURDATE()),
(null, "Centro-circundantes", "EIN00009", 0, CURDATE()),
(null, "Centro-suburbios", "EIN00009", 0, CURDATE()),

(null, "Centro-centro", "EIN00010", 0, CURDATE()),
(null, "Centro-periferia", "EIN00010", 0, CURDATE()),
(null, "Periferia-satélites", "EIN00010", 0, CURDATE()),
(null, "Todas las anteriores", "EIN00010", 1, CURDATE());

-- #TRI
-- #Ejemplo de ingreso de preguntas para TEORIA DE LAS RELACIONES INTERNACIONALES  se manda como parametro TRI en la funcion
-- insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
-- (null, getIdPregunta("TRI"), "Pregunta1", "TRI", CURDATE()),
-- (null, getIdPregunta("TRI"), "Pregunta2", "TRI", CURDATE()),
-- (null, getIdPregunta("TRI"), "Pregunta3", "TRI", CURDATE());
-- #CIN
-- #Ejemplo de ingreso de preguntas para COOPERACION INTERNACIONAL  se manda como parametro CIN en la funcion
-- insert into preguntas(registro, idPregunta, enunciadoPregunta, idMateria, fechaModificacion) values
-- (null, getIdPregunta("CIN"), "Pregunta1", "CIN", CURDATE()),
-- (null, getIdPregunta("CIN"), "Pregunta2", "CIN", CURDATE()),
-- (null, getIdPregunta("CIN"), "Pregunta3", "CIN", CURDATE());


