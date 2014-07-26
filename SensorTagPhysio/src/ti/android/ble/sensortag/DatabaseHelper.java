package ti.android.ble.sensortag;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper {

        public static final String TABLE_NAME = "exercise_records";
        public static final String EXERCISE_TYPE_COLUMN = "exercise_type";
        public static final String REPS_COLUMN = "number_reps";
        public static final String MIN_ANGLE_COLUMN = "min_angle";
        public static final String MAX_ANGLE_COLUMN = "max_angle";
        public static final String AVERAGE_ANGLE_COLUMN = "average_angle";
        public static final String DELTA_ANGLE_COLUMN = "delta_angle";
        public static final String QUALITY_COLUMN = "quality";
        public static final String DATE_COLUMN = "created_at";
        
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
                                                "min_angle REAL, " +
                                                "max_angle REAL, " +
                                                "average_angle REAL, " +
                                                "delta_angle REAL, " +
                                                "quality REAL, " +
                                                "created_at TEXT)";
                db.execSQL(sql);
                
                ContentValues values = new ContentValues();

                values.put("exercise_type", "ELBOW_ROTATION");
                values.put("number_reps", "6");
                values.put("min_angle", "160");
                values.put("max_angle", "160");
                values.put("average_angle", "120");
                values.put("delta_angle", "-50");
                values.put("quality", "good!");
                values.put("created_at", "First Date");
                db.insert("exercise_records", null, values);
                
        }

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
                db.execSQL("DROP TABLE IF EXISTS exercise_records");
                onCreate(db);
        }
}