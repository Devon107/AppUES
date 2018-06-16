package sv.edu.ues.uesrrii;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
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
    static List<Pregunta> preguntas;
    static ArrayList<Integer> arrayResp = new ArrayList<>();
    static TextView txtQuestion;
    static Button Abtn1, Abtn2, Abtn3, Abtn4;
    static int indice = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cuestionario);
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        String msg = extras.getString("ID_MATERIA");

        txtQuestion = (TextView) findViewById(R.id.txtQuestion);
        Abtn1 = (Button) findViewById(R.id.btnAns1);
        Abtn2 = (Button) findViewById(R.id.btnAns2);
        Abtn3 = (Button) findViewById(R.id.btnAns3);
        Abtn4 = (Button) findViewById(R.id.btnAns4);

        if (extras==null){
            Log.e("Mensaje: ", "Viene vacio");
        }else{
            Log.e("Mensaje: ", "El dato es: " + msg);
            Peticion Pet = new Peticion();
            Pet.execute(msg);
        }



        Abtn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listQuestions(1);
            }
        });
        Abtn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listQuestions(2);
            }
        });
        Abtn3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listQuestions(3);
            }
        });
        Abtn4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listQuestions(4);
            }
        });

    }

    public static class Peticion extends AsyncTask<String, List<Pregunta>, List<Pregunta>> {
        @Override
        protected List<Pregunta> doInBackground(String... strings) {
            String id = strings[0];
            final String url = "http://10.0.2.2/webservices/";
            List<Pregunta> listaPreguntas = new ArrayList<Pregunta>() {
            };
            Retrofit retrofit = new Retrofit.Builder()
                    .baseUrl(url)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();

            Services service = retrofit.create(Services.class);

            Call<List<Pregunta>> response = service.getPreguntasGet(id);

            try {
                Log.e("Materia: ", id);
                for (Pregunta p : response.execute().body()) {
                    Log.e("Pregunta: ", p.getIdPregunta() + " " + p.getEnunciadoPregunta());
                    listaPreguntas.add(p);
                }
                Log.e("Finalizado: ", "Finalizado");
                Log.e("Finalizado: ", "Finalizado");
                Log.e("Finalizado: ", "Finalizado");
                Log.e("Finalizado: ", "Finalizado");
                return listaPreguntas;
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override
        protected void onPostExecute(List<Pregunta> preguntasAsync) {
            preguntas = preguntasAsync;
            inicializar();
            Log.e("Respuesta", "onPostExecute: Si se guardado");

        }
    }

    public void listQuestions(int resEnv){
        int res = 1;

        if (indice<=25){
            for (Respuesta respuesta : preguntas.get(indice-1).getRespuestas()){
                if(respuesta.getCorrecto() == "0"){
                    res++;
                }
            }
            if (resEnv == res){
                arrayResp.add(1);
            }else{
                arrayResp.add(0);
            }
                if (indice!=25){
                    txtQuestion.setText(preguntas.get(indice).getEnunciadoPregunta().toString());
                    Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta().toString());
                    Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta().toString());
                    Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta().toString());
                    Abtn4.setText(preguntas.get(indice).getRespuestas().get(3).getEnunciadoRespuesta().toString());
                }

            indice++;
        }else {
            for (int i = 0; i<25;i++){
                Log.e("Pregunta: ", i+"Respuesta: " + arrayResp.get(i));
            }

        }

    }

    static public void inicializar(){
        txtQuestion.setText(preguntas.get(indice).getEnunciadoPregunta().toString());
        Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta().toString());
        Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta().toString());
        Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta().toString());
        Abtn4.setText(preguntas.get(indice).getRespuestas().get(3).getEnunciadoRespuesta().toString());
        indice++;
    }

}
