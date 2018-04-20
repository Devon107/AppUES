package sv.edu.ues.uesrrii.Interfaces;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.POST;
import sv.edu.ues.uesrrii.clases.Pregunta;

public interface Services {
    @GET("MostrarPreguntas.php")
    Call<List<Pregunta>> getPreguntasGet();

    @POST("MostrarPreguntas.php")
    Call<List<Pregunta>> getPreguntasPOST();
}
