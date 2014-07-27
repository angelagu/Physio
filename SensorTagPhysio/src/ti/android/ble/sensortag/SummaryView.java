package ti.android.ble.sensortag;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class SummaryView extends Fragment {
	
	private static final String TAG = "StartScreenView";
	public static SummaryView mInstance = null;
	
	private DatabaseHelper dbHelper = new DatabaseHelper(this.getActivity());

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    	Log.i(TAG, "onCreateView");
        mInstance = this;
    
        View view = inflater.inflate(R.layout.activity_summary, container, false);
        
        SummaryDataSource sum = new SummaryDataSource(this.getActivity());
        sum.open();
        
        sum.getAllExerciseRecords();
        
        sum.close();

        return view;
  }
    
    public void updateImportantInfo(){
    	sqlcon.open();
  	  	Cursor c = sqlcon.readEntry();
  	  	int rows = c.getCount();
  	  	c.moveToFirst();
  	  	
  	  	//initialize variables that hold important data
  	  	int goodCount = 0, okCount = 0, needsImprovementCount = 0, repsPerExerciseTotal = 0, averageAngleTotal = 0;
  	  	
  	  	//loop through db, updating counters
        
        //update average reps per exercise
        TextView repNumber = (TextView) findViewById(R.id.repNumber);
    	repNumber.setText(repsPerExerciseTotal/rows);
    	
    	//update average average angle
        TextView averageAngle = (TextView) findViewById(R.id.averageAngleNumber);
    	repNumber.setText(averageAngleTotal/rows);
    	
    	//update average delta angle
        TextView deltaAngle = (TextView) findViewById(R.id.deltaAngleNumber);
    	if ((averageAngleTotal/rows)>170){
    		repNumber.setText("+" + ((averageAngleTotal/rows)-170));
    	}else if ((averageAngleTotal/rows)<170){
    		repNumber.setText("-" + (170-(averageAngleTotal/rows)));
    	}else{
    		repNumber.setText("0");
    	}
    	
    	//update quality counts
    	TextView good = (TextView) findViewById(R.id.goodNumber);
    	TextView ok = (TextView) findViewById(R.id.okNumber);
    	TextView ni = (TextView) findViewById(R.id.needsImprovementNumber);
    	good.setText(goodCount);
    	ok.setText(okCount);
    	ni.setText(needsImprovementCount);
    }

    

}