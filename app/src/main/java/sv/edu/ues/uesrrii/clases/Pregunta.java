package sv.edu.ues.uesrrii.clases;

/**
 * Created by jasso on 14/04/2018.
 */

public class Pregunta {
    private String Enunciado = "";
    private String[] Preguntas = new String[4];
    private int IndexRespuesta = 0;
    private String Materia;

    public String getEnunciado() {
        return Enunciado;
    }

    public void setEnunciado(String enunciado) {
        Enunciado = enunciado;
    }

    public String getMateria() {
        return Materia;
    }

    public void setMateria(String materia) {
        Materia = materia;
    }

    public int getIndexRespuesta() {

        return IndexRespuesta;
    }

    public void setIndexRespuesta(int indexRespuesta) {
        IndexRespuesta = indexRespuesta;
    }

    public String[] getPreguntas() {

        return Preguntas;
    }

    public void setPreguntas(String[] preguntas) {
        Preguntas = preguntas;
    }

    public Pregunta(String enunciado, String[] preguntas, int indexres, String mat) {
        this.Enunciado = enunciado;
        this.Preguntas = preguntas;
        this.IndexRespuesta = indexres;
        this.Materia = mat;
    }
}
