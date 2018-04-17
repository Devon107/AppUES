package sv.edu.ues.uesrrii.Utilidades;

public class Utilities {
    //Palabras reservadas
    public static final String T_INTEGER = " INTEGER";
    public static final String T_TEXT = " TEXT";
    public static final String COMA = ",";
    public static final String PRIMARY_KEY = " PRIMARY KEY";
    public static final String FOREIGN_KEY = " FOREIGN KEY";
    public static final String REFERENCES = " REFERENCES";
    //Tabla materias
    public static final String TABLE_MATERIA = " materias";
    public static final String MATERIA_ID = " id_materia";
    public static final String MATERIA_NOMBRE = " nombre_materia";
    public static final String CREAR_TABLA_MATERIA = "CREATE TABLE " + TABLE_MATERIA + "(" +
            MATERIA_ID + T_TEXT + PRIMARY_KEY + COMA +
            MATERIA_NOMBRE + T_TEXT + ")";

    //Tabla Preguntas
    public static final String TABLE_PREGUNTA = " preguntas";
    public static final String PREGUNTA_ID = " id_pregunta";
    public static final String PREGUNTA_ENUNCIADO = " enunciado";
    public static final String PREGUNTA_FK_MATERIA = " id_materia";
    public static final String CREAR_TABLA_PREGUNTA = " CREATE TABLE " + TABLE_PREGUNTA + "(" +
            PREGUNTA_ID + T_INTEGER + PRIMARY_KEY + COMA +
            PREGUNTA_ENUNCIADO + T_TEXT + COMA +
            PREGUNTA_FK_MATERIA + T_TEXT + COMA +
            FOREIGN_KEY + "(" + PREGUNTA_FK_MATERIA + ")" + REFERENCES + TABLE_MATERIA + "(" + MATERIA_ID + ")" + ")";


    //Tabla Respuestas
    public static final String TABLE_RESPUESTA = " respuestas";
    public static final String RESPUESTA_ID = " id_respuesta";
    public static final String RESPUESTA_ENUNCIADO = " enunciado";
    public static final String RESPUESTA_FK_PREGUNTA = " id_pregunta";
    public static final String RESPUESTA_CORRECTA = " correcta";
    public static final String CREAR_TABLA_RESPUESTA = " CREATE TABLE " + TABLE_RESPUESTA + "(" +
            RESPUESTA_ID + T_INTEGER + PRIMARY_KEY + COMA +
            RESPUESTA_ENUNCIADO + T_TEXT + COMA +
            RESPUESTA_FK_PREGUNTA + T_INTEGER + COMA +
            RESPUESTA_CORRECTA + T_INTEGER + COMA +
            FOREIGN_KEY + "(" + RESPUESTA_FK_PREGUNTA + ")" + REFERENCES + TABLE_PREGUNTA + "(" + PREGUNTA_ID + ")" + ")";
}
