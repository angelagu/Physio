package ti.android.ble.sensortag;

import java.util.ArrayList;
import java.util.List;

import android.app.Application;
import ti.android.util.Point3D;


public class RangeOfMotion extends Application {
	

	volatile private Boolean isRecording = false;
	volatile private List<Point3D> gyroscopeReadings = new ArrayList<Point3D>();
	
    public Boolean isRecording() {
    	return this.isRecording;
    }
	
    public void startRecording() {
    	this.gyroscopeReadings = new ArrayList<Point3D>();
    	this.isRecording = true;
    }
    
    public void stopRecording() {
    	this.isRecording = false;
    }
    
    public void appendGyroscopeReading(Point3D v) {
    	this.gyroscopeReadings.add(v);
    }
    
    public List<Point3D> getGyroscopeReadings() {
    	Double x;
		for (int i = 0; i < gyroscopeReadings.size() - 1; i++) {
			Point3D v1 = gyroscopeReadings.get(i);
			x = v1.x;
			System.out.println(x);
		}
    	return this.gyroscopeReadings;
    }
	
	
	public Double calculateDegreeOfRotation () {
		if (gyroscopeReadings.size() == 0) {
			return 0.0;
		}
		Double x = 0.0;
		Double y = 0.0;
		Double z = 0.0;
		Double degreeOfRotation;
		
		for (int i = 0; i < gyroscopeReadings.size() - 1; i++) {
			Point3D v1 = gyroscopeReadings.get(i);
			Point3D v2 = gyroscopeReadings.get(i+1);
			x += v1.x + 0.5 * (v2.x - v1.x);
			y += v1.y + 0.5 * (v2.y - v1.y);
			z += v1.z + 0.5 * (v2.z - v1.z);
		}
		
		degreeOfRotation = Math.sqrt(Math.pow(x,2) + Math.pow(y, 2) + Math.pow(z, 2));
		return degreeOfRotation;
	}
}