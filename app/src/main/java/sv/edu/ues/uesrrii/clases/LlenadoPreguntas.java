package sv.edu.ues.uesrrii.clases;
import java.util.ArrayList;
import java.util.List;

import sv.edu.ues.uesrrii.clases.Pregunta;

public class LlenadoPreguntas {
    public static List<Pregunta> preguntasEconomiaInternacional(){
        String materia = "EI";
        String[] respuestas = new String[4];
        List<Pregunta> Preguntas = new ArrayList<>();

        //Aqui comienza el llenado
        //Primera pregunta
        respuestas[0] = "Administración del negocio.";
        respuestas[1] = "Administración de la casa.";
        respuestas[2] = "Administración de las necesidades.";
        respuestas[3] = "Administración de la riqueza.";
        Preguntas.add(new Pregunta(
                "La palabra economía tiene una raíz etimológica que significa: ",
                respuestas,
                2,
                materia));
        //Fin Primera pregunta

        return Preguntas;

    }


}
