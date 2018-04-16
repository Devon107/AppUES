package sv.edu.ues.uesrrii.clases;

/**
 * Created by jasso on 14/04/2018.
 */

public class Pregunta {
    private String idPregunta;
    private String enunciadoPregunta = "";
    private String idMateria;

    public Pregunta(String idPregunta, String enunciadoPregunta, String idMateria) {
        this.idPregunta = idPregunta;
        this.enunciadoPregunta = enunciadoPregunta;
        this.idMateria = idMateria;
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
}
