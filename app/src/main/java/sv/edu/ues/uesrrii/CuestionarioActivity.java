package sv.edu.ues.uesrrii;

import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.google.gson.Gson;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import sv.edu.ues.uesrrii.Interfaces.Services;
import sv.edu.ues.uesrrii.clases.Pregunta;
import sv.edu.ues.uesrrii.clases.Respuesta;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CuestionarioActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cuestionario);

        new Peticion().execute();


    }


    public static class Peticion extends AsyncTask<Void, Void, Void> {


        @Override
        protected Void doInBackground(Void... voids) {
            final String url = "http://10.0.2.2/webservices/";

            Retrofit retrofit = new Retrofit.Builder().baseUrl(url).addConverterFactory(GsonConverterFactory.create()).build();

            Services service = retrofit.create(Services.class);

            Call<List<Pregunta>> response = service.getPreguntasGet();

            try {
                for (Pregunta p : response.execute().body()) {
                    Log.e("Pregunta: ", p.getIdPregunta() + " " + p.getEnunciadoPregunta());
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        }
    }
}
