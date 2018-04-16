package sv.edu.ues.uesrrii;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import sv.edu.ues.uesrrii.clases.Pregunta;

public class PrincipalActivity extends AppCompatActivity {



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_principal);


    }

    public void prueba1(View v){
        TextView tw = findViewById(R.id.btnEconomia);
        List<Pregunta> p = new ArrayList<>();

        

    }
}
