package ti.android.ble.sensortag;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper {

        public static final String TABLE_NAME = "exercise_records";
        public static final String EXERCISE_TYPE_COLUMN = "exercise_type";
        public static final String QUALITY_COLUMN = "quality";
        
        public DatabaseHelper(Context context) {
                super(context, TABLE_NAME, null, 1);
        }

        @Override
        public void onCreate(SQLiteDatabase db) {
                /*
                 * Create the exercise_records table and populate it with sample data.
                 * In step 6, we will move these hardcoded statements to an XML document.
                 */
                String sql = "CREATE TABLE IF NOT EXISTS exercise_records (" +
                                                "_id INTEGER PRIMARY KEY AUTOINCREMENT, " + 
                                                "exercise_type TEXT, " +
                                                "number_reps INTEGER, " +
                                                "min_range REAL, " +
                                                "max_range REAL, " +
                                                "average_range REAL, " +
                                                "quality REAL, " +
                                                "created_at TEXT DEFAULT CURRENT_TIMESTAMP)";
                db.execSQL(sql);
                
                ContentValues values = new ContentValues();

                values.put("exercise_type", "ELBOW_ROTATION");
                values.put("number_reps", "6");
                values.put("min_range", "160");
                values.put("max_range", "160");
                values.put("average_range", "120");
                values.put("quality", "good!");
                db.insert("exercise_records", null, values);
                
        }

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
                db.execSQL("DROP TABLE IF EXISTS exercise_records");
                onCreate(db);
        }
}