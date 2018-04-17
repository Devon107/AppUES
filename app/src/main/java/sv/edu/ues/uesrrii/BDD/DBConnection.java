package sv.edu.ues.uesrrii.BDD;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import sv.edu.ues.uesrrii.Utilidades.Utilities;

public class DBConnection extends SQLiteOpenHelper {
    public DBConnection(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(Utilities.CREAR_TABLA_MATERIA);
        db.execSQL(Utilities.CREAR_TABLA_PREGUNTA);
        db.execSQL(Utilities.CREAR_TABLA_RESPUESTA);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int VA, int VN) {
        db.execSQL("DROP TABLE IF EXISTS"+Utilities.TABLE_MATERIA);
        db.execSQL("DROP TABLE IF EXISTS"+Utilities.TABLE_PREGUNTA);
        db.execSQL("DROP TABLE IF EXISTS"+Utilities.TABLE_RESPUESTA);
        onCreate(db);
    }
}
