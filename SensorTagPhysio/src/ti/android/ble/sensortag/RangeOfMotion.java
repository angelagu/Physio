package ti.android.ble.sensortag;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	
	public HashMap<String, Integer> calculateDegreeOfRotation () {
		if (gyroscopeReadings.size() == 0) {
			return new HashMap<String, Integer>();
		}
		Double x = 0.0;
		Double y = 0.0;
		Double z = 0.0;
		
		List<Double> degreeArray = new ArrayList<Double>();
		Integer numHalfReps = 0; //later divide by 2 to get # of full reps
		
		HashMap<String, Integer> result = new HashMap<String, Integer>();
				
		//establish polarity of starting position
		Point3D initialDir = calculateInitialDirection(gyroscopeReadings);
		System.out.println("initial direction");
		System.out.println(initialDir.x + " " + initialDir.y + " " + initialDir.z);
				
		for (int i = 0; i < gyroscopeReadings.size() - 1; i++) {

			Point3D v1 = gyroscopeReadings.get(i);
			Point3D v2 = gyroscopeReadings.get(i+1);
				
			System.out.println("v1 x " + v1.x);
			System.out.println("v1 y " + v1.y);
			System.out.println("v1 z " + v1.z);
			
			if (changeInDirection(initialDir, v2) || i == gyroscopeReadings.size() - 2) {
				x += v1.x;
				y += v1.y;
				z += v1.z;
				System.out.println("change in direction");
				numHalfReps += 1;
				Double degree = Math.sqrt(Math.pow(x,2) + Math.pow(y, 2) + Math.pow(z, 2));
				System.out.println("intermittent degree " + degree);
				degreeArray.add(degree);
				x = y = z = 0.0;
				initialDir = v2;
			} else {
				x += v1.x + 0.5 * (v2.x - v1.x);
				y += v1.y + 0.5 * (v2.y - v1.y);
				z += v1.z + 0.5 * (v2.z - v1.z);
			}
		}
		
		int averageDegree = (int) Math.round(findAverage(degreeArray));
		int maxDegree = (int) Math.round(findMax(degreeArray));
		int numReps = (int) Math.ceil(numHalfReps / 2.0);
		result.put("averageDegree", averageDegree);
		result.put("maxDegree", maxDegree);
		result.put("numReps", numReps);
		
		System.out.println("avg degree " + result.get("averageDegree"));
		System.out.println("max degree " + result.get("maxDegree"));
		System.out.println("reps " + result.get("numReps"));
		return result;
	}
	
	private Boolean changeInDirection(Point3D v1, Point3D v2) {
		if ( (v1.x * v2.x > 0) || (v1.y * v2.y > 0) || (v1.z * v2.z > 0) ){
			return false;
		}	
		return true;
	}
	
	private Double findAverage(List<Double> array) {
		if (array.size() == 0) {
			return 0.0;
		}
		Double sum = 0.0;
		for (Double d : array) sum += d;
		return sum / array.size();		
	}
	
	private Double findMax(List<Double> array) {
		if (array.size() == 0) {
			return 0.0;
		}
		return Collections.max(array);	
	}
	
	private Point3D calculateInitialDirection(List<Point3D> array) {
		if (array.size() == 0) {
			return new Point3D(0, 0, 0);
		}
		Point3D p1 = array.get(0);
		Point3D p2 = array.get(1);
		Point3D p3 = array.get(2);
		
		return new Point3D((p1.x + p2.x + p3.x) / 3, (p1.y + p2.y + p3.y) / 3, (p1.z + p2.z + p3.z) / 3);
	}
}