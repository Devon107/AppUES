package sv.edu.ues.uesrrii;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Text;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import sv.edu.ues.uesrrii.API.Api;
import sv.edu.ues.uesrrii.Request.RequestHandler;
import sv.edu.ues.uesrrii.clases.Materias;
import sv.edu.ues.uesrrii.clases.Preguntas;
import sv.edu.ues.uesrrii.clases.Respuestas;

import static android.view.View.GONE;

public class PuntajeActivity extends AppCompatActivity{
    private static final int CODE_GET_REQUEST = 1024;
    private static final int CODE_POST_REQUEST = 1025;
    ProgressBar progressBar;
    private List<Materias> materias = new ArrayList<>();
    private TextView txtView;
    private String materia;
    private String[] preguntas;
    private ArrayList<ArrayList<String>> respuestas = new ArrayList<>();
    private String[] aciertos;
    private Button btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_puntaje);
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        progressBar = (ProgressBar) findViewById(R.id.progressBar);
        materia = extras.getString("ID_MATERIA");
        preguntas = extras.getStringArray("PREGUNTAS");
        respuestas = (ArrayList<ArrayList<String>>) getIntent().getSerializableExtra("RESPUESTAS");
        aciertos = extras.getStringArray("RESULTADO");
        txtView = (TextView) findViewById(R.id.TextV);
        btn = (Button) findViewById(R.id.btnfin);

        if (extras==null){
            Log.e("Mensaje: ", "Viene vacio");
        }else{
            Log.e("Mensaje: ", "El dato es: " + materia);
            getMateria(materia);
        }

        btn.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                Intent Main = new Intent(getApplicationContext(), PrincipalActivity.class);
                startActivity(Main);
            }
        });
    }

    private void getMateria(String idMateria) {
        PuntajeActivity.PerformNetworkRequest request = new PuntajeActivity.PerformNetworkRequest(Api.URL_READ_MATERIAS + idMateria, null, CODE_GET_REQUEST);
        request.execute();
        Log.e("request", request.toString());
    }

    private void refreshVista(JSONObject topyc) throws JSONException {
        if(materias !=null)
            materias.clear();
        txtView.setText("");
            Log.e("Materia", topyc.toString());
            materias.add(new Materias(
                    topyc.getString("idMateria"),
                    topyc.getString("nombreMateria")
            ));
        txtView.append("Materia : "+materias.get(0).getNombreMateria()+"\n\n");
        int i=0;
        int puntos = 0;
        for(String p : preguntas){
                txtView.append(""+(i+1)+". "+p+"\n");
                    for(Object r : respuestas.get(i)){
                        txtView.append(""+r.toString()+"\n");
                    }

                    if(aciertos[i].equals("Correcto"))
                        puntos+=1;

                txtView.append(Html.fromHtml("<u>"+aciertos[i]+"</u>")+".\n\n");
                i++;
        }
        Log.e("","puntos :"+puntos+"  i: "+ i);
        double score = ((double)puntos/i)*100;
        DecimalFormat formatter = new DecimalFormat("#.##");
        txtView.append("\t\t\t\t\t\t\t\tTu Score es: "+ formatter.format(score) +"\n\n");

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
                    Log.e("Resultado",object.getJSONObject("materias").toString());
                    refreshVista(object.getJSONObject("materias"));
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
