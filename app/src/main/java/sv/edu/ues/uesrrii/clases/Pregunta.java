package sv.edu.ues.uesrrii.clases;

import java.util.List;

/**
 * Created by jasso on 14/04/2018.
 */

public class Pregunta {
    private String registro;
    private String idPregunta;
    private String enunciadoPregunta;
    private String idMateria;
    private String fechaModificacion;
    private List<Respuesta> respuestas = null;

    public String getRegistro() {
        return registro;
    }

    public void setRegistro(String registro) {
        this.registro = registro;
    }

    public String getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getEnunciadoPregunta() {
        return enunciadoPregunta;
    }

    public void setEnunciadoPregunta(String enunciadoPregunta) {
        this.enunciadoPregunta = enunciadoPregunta;
    }

    public String getIdMateria() {
        return idMateria;
    }

    public void setIdMateria(String idMateria) {
        this.idMateria = idMateria;
    }

    public String getFechaModificacion() {
        return fechaModificacion;
    }

    public void setFechaModificacion(String fechaModificacion) {
        this.fechaModificacion = fechaModificacion;
    }

    public List<Respuesta> getRespuestas() {
        return respuestas;
    }

    public void setRespuestas(List<Respuesta> respuestas) {
        this.respuestas = respuestas;
    }

    public Pregunta(String registro, String idPregunta, String enunciadoPregunta, String idMateria, String fechaModificacion, List<Respuesta> respuestas) {
        this.registro = registro;
        this.idPregunta = idPregunta;
        this.enunciadoPregunta = enunciadoPregunta;
        this.idMateria = idMateria;
        this.fechaModificacion = fechaModificacion;
        this.respuestas = respuestas;
    }
}
