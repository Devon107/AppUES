package sv.edu.ues.uesrrii;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class CuartoActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cuartoanio);
    }

    public void OpenActivities(View v){
        Intent Cuestionario = new Intent(getApplicationContext(), CuestionarioActivity.class);
        String id = v.getResources().getResourceEntryName(v.getId());
        Cuestionario.putExtra("ID_MATERIA", id);
        startActivity(Cuestionario);
    }
}
