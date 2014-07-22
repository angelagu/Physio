package ti.android.ble.sensortag;

import java.util.Date;

public class ExerciseRecord {
	public String exerciseType;
	public Double quality;
	public Date date;
	
	public ExerciseRecord(){
		
	}

	public ExerciseRecord(String type, Double percentage, Date created_date){
		exerciseType = type;
		quality = percentage;
		date = created_date;
	}
	
	public void setType(String type) {
		exerciseType = type;
	}
	
	public void setQuality(Double percentage) {
		quality = percentage;
	}
}
