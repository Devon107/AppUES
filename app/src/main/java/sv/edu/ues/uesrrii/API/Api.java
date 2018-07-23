package sv.edu.ues.uesrrii.API;

public class Api {
    private static final String ROOT_URL = "http://uesapprr.com/Service/v1/Api.php/v1/Api.php=?apicall=";

    public static final String URL_CREATE_USUARIO = ROOT_URL + "createusuario";
    public static final String URL_READ_PREGUNTAS = ROOT_URL + "getpreguntas&idMateria=";
    public static final String URL_READ_RESPUESTAS = ROOT_URL + "getrespuestas";
    public static final String URL_READ_USUARIOS = ROOT_URL + "getusuarios";
    public static final String URL_READ_MATERIAS = ROOT_URL + "getmaterias&idMateria=";
    public static final String URL_READ_PUNTUACION = ROOT_URL + "getpuntos";
}

