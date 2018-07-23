package sv.edu.ues.uesrrii;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import sv.edu.ues.uesrrii.API.Api;
import sv.edu.ues.uesrrii.Request.RequestHandler;
import sv.edu.ues.uesrrii.clases.Preguntas;
import sv.edu.ues.uesrrii.clases.Respuestas;

import static android.view.View.GONE;

public class CuestionarioActivity extends AppCompatActivity {
    static TextView txtQuestion;
    static Button Abtn1, Abtn2, Abtn3, Abtn4, Abtn5;
    static ArrayList<Integer> arrayResp = new ArrayList<>();
    ProgressBar progressBar;
    static int indice = 0;
    private static final int CODE_GET_REQUEST = 1024;
    private static final int CODE_POST_REQUEST = 1025;
    private List<Preguntas> preguntas = new ArrayList<>();
    private List<List<Respuestas>> respuestas = new ArrayList<>();

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
        Abtn5 = (Button) findViewById(R.id.btnAns5);
        progressBar = (ProgressBar) findViewById(R.id.progressBar);

        if (extras==null){
            Log.e("Mensaje: ", "Viene vacio");
        }else{
            Log.e("Mensaje: ", "El dato es: " + msg);
            getPreguntas(msg);
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
        Abtn5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                listQuestions(5);
            }
        });

    }

    private void getPreguntas(String idMateria) {
        PerformNetworkRequest request = new PerformNetworkRequest(Api.URL_READ_PREGUNTAS + idMateria, null, CODE_GET_REQUEST);
        request.execute();
        Log.e("request", request.toString());
    }

    private void refreshPreguntas(JSONArray questions) throws JSONException {
        if(indice!=0)
        indice=0;
        if(preguntas !=null)
            preguntas.clear();
        if(respuestas != null)
            respuestas.clear();

        for (int i = 0; i < questions.length(); i++) {
            JSONObject obj = questions.getJSONObject(i);
            Log.e("Pregunta", obj.toString());
            for(int j= 0; j< obj.getJSONArray("respuesta").length(); j++) {
                JSONObject ob = obj.getJSONArray("respuesta").getJSONObject(j);
                respuestas.add( new ArrayList<Respuestas>());
                respuestas.get(i).add(new Respuestas(
                        ob.getInt("registro"),
                        ob.getString("enunciadoRespuesta"),
                        ob.getString("idPregunta"),
                        ob.getInt("correcto"),
                        ob.getString("fechaModificacion")
                ));
            }
            preguntas.add(new Preguntas(
                    obj.getInt("registro"),
                    obj.getString("idPregunta"),
                    obj.getString("enunciadoPregunta"),
                    obj.getString("idMateria"),
                    obj.getString("fechaModificacion"),
                    respuestas.get(i)
            ));
        }

        txtQuestion.setText(preguntas.get(indice).getEnunciadoPregunta());
        if(preguntas.get(indice).getRespuestas().size() == 4) {
            Abtn5.setVisibility(View.GONE);
            Abtn4.setVisibility(View.VISIBLE);
            Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta());
            Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta());
            Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta());
            Abtn4.setText(preguntas.get(indice).getRespuestas().get(3).getEnunciadoRespuesta());
        }
        if(preguntas.get(indice).getRespuestas().size() == 5)
        {
            Abtn4.setVisibility(View.VISIBLE);
            Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta());
            Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta());
            Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta());
            Abtn4.setText(preguntas.get(indice).getRespuestas().get(3).getEnunciadoRespuesta());
            Abtn5.setVisibility(View.VISIBLE);
            Abtn5.setText(preguntas.get(indice).getRespuestas().get(4).getEnunciadoRespuesta());
        }
        if(preguntas.get(indice).getRespuestas().size() == 3) {
            Abtn5.setVisibility(View.GONE);
            Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta());
            Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta());
            Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta());
            Abtn4.setVisibility(View.GONE);
        }
        indice++;

    }

    public void listQuestions(int resEnv){
        int res = 0;

        if (indice<=25){
            for (Respuestas respuesta : preguntas.get(indice-1).getRespuestas()){
                if(respuesta.getCorrecto() == 0){
                    res++;
                }
            }
            if (resEnv == res){
                arrayResp.add(1);
            }else{
                arrayResp.add(0);
            }
            if (indice!=25){
                txtQuestion.setText(preguntas.get(indice).getEnunciadoPregunta());
                if(preguntas.get(indice).getRespuestas().size() == 4) {
                    Abtn5.setVisibility(View.GONE);
                    Abtn4.setVisibility(View.VISIBLE);
                    Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta());
                    Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta());
                    Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta());
                    Abtn4.setText(preguntas.get(indice).getRespuestas().get(3).getEnunciadoRespuesta());
                }
                if(preguntas.get(indice).getRespuestas().size() == 5)
                {
                    Abtn4.setVisibility(View.VISIBLE);
                    Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta());
                    Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta());
                    Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta());
                    Abtn4.setText(preguntas.get(indice).getRespuestas().get(3).getEnunciadoRespuesta());
                    Abtn5.setVisibility(View.VISIBLE);
                    Abtn5.setText(preguntas.get(indice).getRespuestas().get(4).getEnunciadoRespuesta());
                }
                if(preguntas.get(indice).getRespuestas().size() == 3) {
                    Abtn5.setVisibility(View.GONE);
                    Abtn1.setText(preguntas.get(indice).getRespuestas().get(0).getEnunciadoRespuesta());
                    Abtn2.setText(preguntas.get(indice).getRespuestas().get(1).getEnunciadoRespuesta());
                    Abtn3.setText(preguntas.get(indice).getRespuestas().get(2).getEnunciadoRespuesta());
                    Abtn4.setVisibility(View.GONE);
                }
            }

            indice++;
        }
        if(indice==26){
            String[] pregunta = new String[25];
            String[] resp = new String[25];
            ArrayList<ArrayList<String>> answer = new ArrayList<>();
            for (int i = 0; i<25;i++){
                Log.e("Pregunta: ", preguntas.get(i).getIdPregunta() +" Respuesta: " + arrayResp.get(i));
                    pregunta[i]=preguntas.get(i).getEnunciadoPregunta();
                for (int j = 0; j<preguntas.get(i).getRespuestas().size();j++) {
                    answer.add(new ArrayList<String>());
                    answer.get(i).add(preguntas.get(i).getRespuestas().get(j).getEnunciadoRespuesta());
                }
                    if(arrayResp.get(i) == 1)
                    {resp[i]="Correcto";
                    }
                    if(arrayResp.get(i) == 0)
                        resp[i] = "Incorrecto";
            }
            String materia = preguntas.get(0).getIdMateria();
            Intent puntaje = new Intent(getApplicationContext(), PuntajeActivity.class);
            puntaje.putExtra("ID_MATERIA", materia);
            puntaje.putExtra("PREGUNTAS",pregunta);
            puntaje.putExtra("RESULTADO",resp);
            puntaje.putExtra("RESPUESTAS",answer);
            startActivity(puntaje);
        }

    }

    private class PerformNetworkRequest extends AsyncTask<Void, Void, String> {
        String url;
        HashMap<String, String> params;
        int requestCode;

        PerformNetworkRequest(String url, HashMap<String, String> params, int requestCode) {
            this.url = url;
            this.params = params;
            this.requestCode = requestCode;
        }

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progressBar.setVisibility(View.VISIBLE);
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            progressBar.setVisibility(GONE);
            try {
                JSONObject object = new JSONObject(s);
                if (!object.getBoolean("error")) {
                    Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();
                    Log.e("Resultado",object.getJSONArray("preguntas").toString());
                    refreshPreguntas(object.getJSONArray("preguntas"));
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override
        protected String doInBackground(Void... voids) {
            RequestHandler requestHandler = new RequestHandler();

            if (requestCode == CODE_POST_REQUEST)
                return requestHandler.sendPostRequest(url, params);


            if (requestCode == CODE_GET_REQUEST)
                return requestHandler.sendGetRequest(url);

            return null;
        }
    }

}
