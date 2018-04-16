package sv.edu.ues.uesrrii.clases;

public class Respuesta {
    private String idRespuesta;
    private String enunciadoRespuesta;
    private String idPregunta;
    private boolean rCorrecta;

    public Respuesta(String idRespuesta, String enunciadoRespuesta, String idPregunta, boolean rCorrecta) {
        this.idRespuesta = idRespuesta;
        this.enunciadoRespuesta = enunciadoRespuesta;
        this.idPregunta = idPregunta;
        this.rCorrecta = rCorrecta;
    }

    public String getIdRespuesta() {

        return idRespuesta;
    }

    public void setIdRespuesta(String idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public String getEnunciadoRespuesta() {
        return enunciadoRespuesta;
    }

    public void setEnunciadoRespuesta(String enunciadoRespuesta) {
        this.enunciadoRespuesta = enunciadoRespuesta;
    }

    public String getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }

    public boolean isrCorrecta() {
        return rCorrecta;
    }

    public void setrCorrecta(boolean rCorrecta) {
        this.rCorrecta = rCorrecta;
    }
}
