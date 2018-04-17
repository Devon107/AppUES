package sv.edu.ues.uesrrii.Controladores;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

import sv.edu.ues.uesrrii.BDD.DBConnection;
import sv.edu.ues.uesrrii.clases.Materia;
import sv.edu.ues.uesrrii.Utilidades.Utilities;

public class MateriaController {


    public static Materia putMaterias(int i) {
        Materia materias = new Materia(null, null);
        switch (i) {
            case 1:
                materias = new Materia("EIN", "Economia Internacional");
                break;
            case 2:
                materias = new Materia("TRI", "Teoria de las Relaciones Internacionales");
                break;
            case 3:
                materias = new Materia("CIN", "Cooperacion Internacional");
                break;
        }
        return materias;
    }

    public static long ingresoMaterias(Context context, int i) {
        Materia materia = putMaterias(i);
        DBConnection conexion = new DBConnection(context, "AppUES", null, 1);
        SQLiteDatabase db = conexion.getWritableDatabase();
        ContentValues values = new ContentValues();
        //Columnas
        values.put(Utilities.MATERIA_ID, materia.getIdMateria());
        values.put(Utilities.MATERIA_NOMBRE, materia.getNombreMateria());

        return db.insert(Utilities.TABLE_MATERIA, null, values);
    }
}
