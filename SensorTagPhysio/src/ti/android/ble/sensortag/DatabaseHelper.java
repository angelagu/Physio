package ti.android.ble.sensortag;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper {

        public static final String DATABASE_NAME = "exercise_records";
        
        public DatabaseHelper(Context context) {
                super(context, DATABASE_NAME, null, 1);
        }

        @Override
        public void onCreate(SQLiteDatabase db) {
                /*
                 * Create the employee table and populate it with sample data.
                 * In step 6, we will move these hardcoded statements to an XML document.
                 */
                String sql = "CREATE TABLE IF NOT EXISTS exercise_records (" +
                                                "_id INTEGER PRIMARY KEY AUTOINCREMENT, " + 
                                                "exercise_id INTEGER, " +
                                                "repetitions INTEGER, " +
                                                "quality REAL, " +
                                                "created_at DATETIME DEFAULT CURRENT_TIMESTAMP)";
                db.execSQL(sql);
                
                ContentValues values = new ContentValues();

                values.put("exercise_id", "1");
                values.put("repetitions", "2");
                values.put("quality", "85");
                db.insert("exercise_records", "exercise_id", values);
                
        }

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
                db.execSQL("DROP TABLE IF EXISTS exercise_records");
                onCreate(db);
        }
        
}