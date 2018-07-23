package sv.edu.ues.uesrrii.clases;

public class Respuestas {
    private int registro , correcto;
    private String enunciadoRespuesta, idPregunta, fechaModificacion;

    public Respuestas(int registro, String enunciadoRespuesta, String idPregunta, int correcto, String fechaModificacion){
        this.registro = registro;
        this.enunciadoRespuesta = enunciadoRespuesta;
        this.idPregunta = idPregunta;
        this.correcto = correcto;
        this.fechaModificacion = fechaModificacion;
    }

    public String getIdPregunta() {
        return idPregunta;
    }

    public String getEnunciadoRespuesta() {
        return enunciadoRespuesta;
    }

    public String getFechaModificacion() {
        return fechaModificacion;
    }

    public int getRegistro() {
        return registro;
    }

    public int getCorrecto() {
        return correcto;
    }

    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }

    public void setFechaModificacion(String fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }

    public void setCorrecto(int correcto) {
        this.correcto = correcto;
    }

    public void setEnunciadoRespuesta(String enunciadoRespuesta) {
        this.enunciadoRespuesta = enunciadoRespuesta;
    }
}
