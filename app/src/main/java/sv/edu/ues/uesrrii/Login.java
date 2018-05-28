package sv.edu.ues.uesrrii;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.Toast;

import sv.edu.ues.uesrrii.Utilidades.Util;

public class Login extends AppCompatActivity{
    private SharedPreferences prefs;
    private EditText editTextEmail;
    private EditText editTextPassword;
    private Switch switchRemember;
    private Button btnLogin;
    @Override
    protected void onCreate(Bundle savedInstacesState){
        super.onCreate(savedInstacesState);
        setContentView(R.layout.loginactivity);
        enlazarUI();
        prefs = getSharedPreferences("Preferences", Context.MODE_PRIVATE);
        establecerCredencialesSiExist();
        btnLogin.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                String email = editTextEmail.getText().toString();
                String password = editTextPassword.getText().toString();
                if (login(email, password)){
                    ejecutarPrincipal();
                    savedOnPreferences(email,password);
                }
            }
        });
    }
    private void enlazarUI(){
        editTextEmail = (EditText) findViewById(R.id.editTextEmail);
        editTextPassword = (EditText) findViewById(R.id.editTextPassword);
        switchRemember = (Switch) findViewById(R.id.switchRemember);
        btnLogin = (Button) findViewById(R.id.buttonLogin);
    }
    private void establecerCredencialesSiExist(){
        String email = Util.getUserMailPrefs(prefs);
        String password = Util.getUserPassPrefs(prefs);
        if (!TextUtils.isEmpty(email) && !TextUtils.isEmpty(password)){
            editTextPassword.setText(password);
            editTextEmail.setText(email);
            switchRemember.setChecked(true);
        }
    }
    private boolean login(String email, String password){
        if(!isValidEmail(email)){
            Toast.makeText(this, "Email no es valido, intentar una vez mas", Toast.LENGTH_LONG).show();
            return false;
        } else if (!isValidPassword(password)){
            Toast.makeText(this, "Password no es valido, ingresar  caracteres o mas, intentar unavez mas", Toast.LENGTH_LONG).show();
            return false;
        }
        else{
            return true;
        }
    }
    private void savedOnPreferences(String email, String password){
        if(switchRemember.isChecked()){
            SharedPreferences.Editor editor = prefs.edit();
            editor.putString("email", email);
            editor.putString("pass", password);
            editor.apply();
        }
    }
    private boolean isValidEmail(String email){
        return !TextUtils.isEmpty(email) && Patterns.EMAIL_ADDRESS.matcher(email).matches();
    }
    private boolean isValidPassword(String password){
        return password.length()>=4;
    }
    private void ejecutarPrincipal(){
        Intent intent = new Intent(this, PrincipalActivity.class);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        startActivity(intent);
    }
}
