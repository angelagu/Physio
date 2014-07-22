package ti.android.ble.sensortag;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

public class SummaryDataSource {
	
	  // Database fields
	  private SQLiteDatabase database;
	  private DatabaseHelper dbHelper;

	  public SummaryDataSource(Context context) {
	    dbHelper = new DatabaseHelper(context);
	  }

	  public void open() throws SQLException {
	    database = dbHelper.getWritableDatabase();
	  }

	  public void close() {
	    dbHelper.close();
	  }
	  
	  public void insertExercise(ExerciseRecord record){
		  ContentValues values = new ContentValues();
		  values.put(DatabaseHelper.EXERCISE_TYPE_COLUMN, record.exerciseType);
		  values.put(DatabaseHelper.QUALITY_COLUMN, record.quality);
		  
		  database.insert(DatabaseHelper.TABLE_NAME, null, values);
		  Cursor cursor = database.query(DatabaseHelper.TABLE_NAME, null, null, null, null, null, null);
		  cursor.moveToFirst();
		  cursor.close();		  
	  }
	  
	  public List<ExerciseRecord> getAllExerciseRecords(){
		  List<ExerciseRecord> records = new ArrayList<ExerciseRecord>();
		  
		  Cursor cursor = database.query(DatabaseHelper.TABLE_NAME, null, null, null, null, null, null);

		  cursor.moveToFirst();
		  while (!cursor.isAfterLast()) {
			      System.out.println(cursor);
			      System.out.println(cursor.getString(cursor.getColumnIndex("exercise_type"))); 
			      System.out.println(cursor.getString(cursor.getColumnIndex("quality"))); 
			      System.out.println(cursor.getString(cursor.getColumnIndex("created_at"))); 
			      cursor.moveToNext();
			    }
			    // make sure to close the cursor
		  cursor.close();
		  
		  return records;
		  
	  }
	  
//	  public ExerciseRecord cursorToRecord(Cursor cursor) {
//		  
//	  }
}