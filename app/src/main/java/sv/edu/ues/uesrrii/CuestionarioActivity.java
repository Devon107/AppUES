package sv.edu.ues.uesrrii;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

import sv.edu.ues.uesrrii.clases.Pregunta;
import sv.edu.ues.uesrrii.clases.Respuesta;

import java.util.ArrayList;
import java.util.List;

public class CuestionarioActivity  extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cuestionario);

    }

    public void prueba1(View v){
        TextView tw = (TextView) findViewById(R.id.pregunta);
        List<Pregunta> p = new ArrayList<>();

    }
}
