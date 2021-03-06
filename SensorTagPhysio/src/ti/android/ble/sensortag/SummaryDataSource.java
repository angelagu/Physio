package ti.android.ble.sensortag;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;

@SuppressWarnings("unused")
public class SummaryDataSource {
	
	  // Database fields
	  private SQLiteDatabase database;
	  private DatabaseHelper dbHelper;
	  public String tableName[] = {"exercise_records"};

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
		  values.put(DatabaseHelper.REPS_COLUMN, record.reps);
		  values.put(DatabaseHelper.MIN_ANGLE_COLUMN, record.minAngle);
		  values.put(DatabaseHelper.MAX_ANGLE_COLUMN, record.maxAngle);
		  values.put(DatabaseHelper.AVERAGE_ANGLE_COLUMN, record.averageAngle);
		  values.put(DatabaseHelper.DELTA_ANGLE_COLUMN, record.deltaAngle);
		  values.put(DatabaseHelper.QUALITY_COLUMN, record.quality);
		  values.put(DatabaseHelper.DATE_COLUMN, record.createdDate);
		  
		  database.insert(DatabaseHelper.TABLE_NAME, null, values);	  
	  }
	  
//	  public Cursor readEntry(){
//		  String [] allColumns = new String[]{DatabaseHelper.EXERCISE_TYPE_COLUMN, DatabaseHelper.REPS_COLUMN, DatabaseHelper.MIN_ANGLE_COLUMN, DatabaseHelper.MAX_ANGLE_COLUMN, DatabaseHelper.AVERAGE_ANGLE_COLUMN, DatabaseHelper.DELTA_ANGLE_COLUMN, DatabaseHelper.QUALITY_COLUMN, DatabaseHelper.DATE_COLUMN};
//		  Cursor cursor = database.query(DatabaseHelper.TABLE_NAME, allColumns, null, null, null, null, null);
//		  cursor.moveToFirst();
//		  return cursor;
//	  }
	  
	  public Cursor getAllExerciseRecords(){ 
		  Cursor cursor = database.rawQuery("SELECT * FROM exercise_records order by created_at desc", null);

		  if (cursor != null) {
			   cursor.moveToFirst();
		  }
		  return cursor;
	  }
	  
	  public int getRep(){
		  Cursor cursor = database.rawQuery("SELECT AVG(number_reps) FROM exercise_records", null);
		  int reps = 0;
		  while(cursor.moveToNext()) {
		      reps = cursor.getInt(0); 
		  }
		  return reps;
	  }
	  
	  public int getAverageAngle(){
		  Cursor cursor = database.rawQuery("SELECT AVG(average_angle) FROM exercise_records", null);
		  int avgAngle = 0;
		  while(cursor.moveToNext()) {
			  avgAngle = cursor.getInt(0); 
		  }
		  return avgAngle;
	  }
	  
	  public int getGoodCount(){
		  Cursor cursor = database.rawQuery("SELECT COUNT(*) FROM exercise_records WHERE quality='GOOD'", null);
		  int count = 0;
		  while(cursor.moveToNext()) {
			  count = cursor.getInt(0); 
		  }
		  return count;
	  }
	  
	  public int getOkCount(){
		  Cursor cursor = database.rawQuery("SELECT COUNT(*) FROM exercise_records WHERE quality='OK'", null);
		  int count = 0;
		  while(cursor.moveToNext()) {
			  count = cursor.getInt(0); 
		  }
		  return count;
	  }
	  
	  public int getNeedsImprovementCount(){
		  Cursor cursor = database.rawQuery("SELECT COUNT(*) FROM exercise_records WHERE quality='NEEDS IMPROVEMENT'", null);
		  int count = 0;
		  while(cursor.moveToNext()) {
			  count = cursor.getInt(0); 
		  }
		  return count;
	  }
	  

}