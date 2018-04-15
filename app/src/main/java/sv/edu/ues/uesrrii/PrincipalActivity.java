package sv.edu.ues.uesrrii;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import sv.edu.ues.uesrrii.clases.Pregunta;
import sv.edu.ues.uesrrii.clases.LlenadoPreguntas;

public class PrincipalActivity extends AppCompatActivity {



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_principal);


    }

    public void prueba1(View v){
        TextView tw = (TextView) findViewById(R.id.pregunta);
        List<Pregunta> p = new ArrayList<>();

        p = LlenadoPreguntas.preguntasEconomiaInternacional();

        for(Pregunta pp : p){
            tw.setText(pp.getEnunciado());

        }

    }
}
