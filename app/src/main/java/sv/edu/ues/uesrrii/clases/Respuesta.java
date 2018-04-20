package sv.edu.ues.uesrrii.clases;

public class Respuesta {
    private String registro;
    private String enunciadoRespuesta;
    private String idPregunta;
    private String correcto;
    private String fechaModificacion;

    public Respuesta(String registro, String enunciadoRespuesta, String idPregunta, String correcto, String fechaModificacion) {
        this.registro = registro;
        this.enunciadoRespuesta = enunciadoRespuesta;
        this.idPregunta = idPregunta;
        this.correcto = correcto;
        this.fechaModificacion = fechaModificacion;
    }

    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
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

    public String getCorrecto() {
        return correcto;
    }

    public void setCorrecto(String correcto) {
        this.correcto = correcto;
    }

    public String getFechaModificacion() {
        return fechaModificacion;
    }

    public void setFechaModificacion(String fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }
}
