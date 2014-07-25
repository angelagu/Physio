package ti.android.ble.sensortag;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class ExerciseRecord {
	public String exerciseType, quality, createdDate;
	public int reps;
	public double averageAngle, minAngle, maxAngle, deltaAngle;
	
	
	public ExerciseRecord(){
		
	}

	public ExerciseRecord(String exercise_type, String quality_word, int repetitions, Double average_angle, Double min_angle, Double max_angle, Double delta_angle, Date created_date){
		exerciseType = exercise_type;
		quality = quality_word;
		reps = repetitions;
		averageAngle = average_angle;
		minAngle = min_angle;
		maxAngle = max_angle;
		deltaAngle = delta_angle;		
		createdDate = dateToString(created_date);
	}
	
	private String dateToString(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        return dateFormat.format(date);
  }
	
	public void setExerciseType(String exercise_type) {
		exerciseType = exercise_type;
	}
	
	public void setQuality(String quality_word) {
		quality = quality_word;
	}
	
	public void setReps(int repetitions) {
		reps = repetitions;
	}
	
	public void setAverageAngle(Double average_angle) {
		averageAngle = average_angle;
	}
	
	public void setMinAngle(Double min_angle) {
		minAngle = min_angle;
	}
	
	public void setMaxAngle(Double max_angle) {
		maxAngle = max_angle;
	}
	
	public void setDeltaAngle(Double delta_angle) {
		deltaAngle = delta_angle;
	}
	
	public void setCreatedDate(Date created_date) {
		createdDate = dateToString(created_date);
	}
}
