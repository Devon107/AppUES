package sv.edu.ues.uesrrii;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TabHost;

public class MateriasActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_materias);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        TabHost TbH = (TabHost) findViewById(R.id.Tabs); //llamamos al Tabhost
        TbH.setup();        //lo activamos

        TabHost.TabSpec tab1 = TbH.newTabSpec("tab1");  //aspectos de cada Tab (pestaña)
        TabHost.TabSpec tab2 = TbH.newTabSpec("tab2");
        TabHost.TabSpec tab3 = TbH.newTabSpec("tab3");
        TabHost.TabSpec tab4 = TbH.newTabSpec("tab4");
        TabHost.TabSpec tab5 = TbH.newTabSpec("tab5");

        tab1.setIndicator("Año 1");    //qué queremos que aparezca en las pestañas
        tab1.setContent(R.id.Año1); //definimos el id de cada Tab (pestaña)

        tab2.setIndicator("Año 2");
        tab2.setContent(R.id.Año2);

        tab3.setIndicator("Año 3");
        tab3.setContent(R.id.Año3);

        tab4.setIndicator("Año 4");
        tab4.setContent(R.id.Año4);

        tab5.setIndicator("Año 5");
        tab5.setContent(R.id.Año5);

        TbH.addTab(tab1); //añadimos los tabs ya programados
        TbH.addTab(tab2);
        TbH.addTab(tab3);
        TbH.addTab(tab4);
        TbH.addTab(tab5);

        Button btn = (Button) findViewById(R.id.btn1);
        btn.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                Intent Cuestionario = new Intent(getApplicationContext(), CuestionarioActivity.class);
                startActivity(Cuestionario);
            }
        });
    }
}
