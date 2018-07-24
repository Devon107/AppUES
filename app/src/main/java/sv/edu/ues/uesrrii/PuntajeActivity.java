package sv.edu.ues.uesrrii;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;

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
import sv.edu.ues.uesrrii.clases.Usuarios;

import static android.view.View.GONE;

public class PuntajeActivity extends AppCompatActivity{
    private static final int CODE_GET_REQUEST = 1024;
    private static final int CODE_POST_REQUEST = 1025;
    ProgressBar progressBar;
    private List<Materias> materias = new ArrayList<>();
    private List<Usuarios> usuarios = new ArrayList<>();
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

    private void createPuntos(String username, String materia, double puntos) {


        HashMap<String, String> params = new HashMap<>();
        params.put("username", username);
        params.put("idMateria", materia);
        params.put("puntuacion", String.valueOf(puntos));

        PerformNetworkRequest request = new PerformNetworkRequest(Api.URL_CREATE_PUNTAJE, params, CODE_POST_REQUEST);
        request.execute();
    }


    private void getMateria(String idMateria) {
        PuntajeActivity.PerformNetworkRequest request = new PuntajeActivity.PerformNetworkRequest(Api.URL_READ_MATERIAS + idMateria, null, CODE_GET_REQUEST);
        request.execute();
        Log.e("request", request.toString());
    }

    private void refreshVista(JSONArray topyc) throws JSONException {
        if(materias !=null)
            materias.clear();
        txtView.setText("");
            Log.e("Materia", topyc.toString());
        for (int i = 0; i < topyc.length(); i++) {
            JSONObject obj = topyc.getJSONObject(i);
            materias.add(new Materias(
                    obj.getString("idMateria"),
                    obj.getString("nombreMateria")
            ));
        }
        txtView.append("Materia : "+materias.get(0).getNombreMateria()+"\n\n");
        int i=0;
        int puntos = 0;
        for(String p : preguntas){
                txtView.append(""+(i+1)+". "+p+"\n\n");
                    for(Object r : respuestas.get(i)){
                        txtView.append(" - "+r.toString()+"\n");
                    }

                    if(aciertos[i].equals("Correcto"))
                        puntos+=1;

                txtView.append(Html.fromHtml("<u>"+aciertos[i]+"</u>")+".\n\n");
                i++;
        }
        Log.e("","puntos :"+puntos+"  i: "+ i);
        double score = ((double)puntos/i)*100;
        DecimalFormat formatter = new DecimalFormat("#.##");
        txtView.append("\t\t\t\t\t\tTu Score es: "+ formatter.format(score) +".\t Total: "+ puntos+" aciertos de "+ i +" preguntas.\n\n");
        createPuntos(FirebaseAuth.getInstance().getCurrentUser().getEmail(),materias.get(0).getIdMateria(),score);

    }

    private void refreshUsaurios(JSONArray user) throws JSONException {
        if(usuarios !=null)
            usuarios.clear();
        for (int i = 0; i < user.length(); i++) {
            JSONObject obj = user.getJSONObject(i);
            usuarios.add(new Usuarios(
                    obj.getInt("registro"),
                    obj.getString("username"),
                    obj.getString("nombres"),
                    obj.getString("apellidos"),
                    obj.getString("email"),
                    obj.getString("fecharegistro")
            ));
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
                Log.e("result",s);
                JSONObject object = new JSONObject(s);
                if (!object.getBoolean("error")) {
                    Toast.makeText(getApplicationContext(), object.getString("message"), Toast.LENGTH_SHORT).show();
                    switch (object.getString("token")){
                        case "getmaterias":
                            refreshVista(object.getJSONArray("materias"));
                            break;
                        case "createusuario":
                            refreshUsaurios(object.getJSONArray("usuarios"));
                            break;
                        case "getusuario":
                            refreshUsaurios(object.getJSONArray("usuarios"));
                            break;
                        case "getpuntos":
                            //refreshPuntos(object.getJSONArray("puntos"));
                            break;
                        case "createpuntos":
                            //refreshPuntos(object.getJSONArray("puntos"));
                            break;
                        default:
                            Toast.makeText(getApplicationContext(), "Something went wrong!", Toast.LENGTH_SHORT).show();
                            break;
                    }
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
