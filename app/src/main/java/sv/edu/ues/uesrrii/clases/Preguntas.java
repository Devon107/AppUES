package sv.edu.ues.uesrrii.clases;

import java.util.List;

public class Preguntas {
    private int registro;
    private String idPregunta;
    private String enunciadoPregunta;
    private String idMateria;
    private String fechaModificacion;
    private List<Respuestas> respuestas;

    public Preguntas (int registro, String idPregunta, String enunciadoPregunta, String idMateria, String fechaModificacion, List<Respuestas> respuestas){
        this.registro = registro;
        this.idPregunta = idPregunta;
        this.enunciadoPregunta = enunciadoPregunta;
        this.idMateria = idMateria;
        this.fechaModificacion = fechaModificacion;
        this.respuestas = respuestas;
    }

    public int getRegistro() {
        return registro;
    }

    public String getEnunciadoPregunta() {
        return enunciadoPregunta;
    }

    public String getFechaModificacion() {
        return fechaModificacion;
    }

    public String getIdMateria() {
        return idMateria;
    }

    public String getIdPregunta() {
        return idPregunta;
    }

    public void setEnunciadoPregunta(String enunciadoPregunta) {
        this.enunciadoPregunta = enunciadoPregunta;
    }

    public List<Respuestas> getRespuestas() {
        return respuestas;
    }

    public void setFechaModificacion(String fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }

    public void setIdMateria(String idMateria) {
        this.idMateria = idMateria;
    }

    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }
}
