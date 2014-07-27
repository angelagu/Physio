package ti.android.ble.sensortag;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

public class SummaryView extends Fragment {
	
	private static final String TAG = "StartScreenView";
	public static SummaryView mInstance = null;
	
	private TableLayout table_layout;
	
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    	Log.i(TAG, "onCreateView");
        mInstance = this;
        
        View view = inflater.inflate(R.layout.activity_summary, container, false);
        table_layout = (TableLayout) view.findViewById(R.id.tableLayout1);
        
        buildTable();

        return view;
  }
    
    public void buildTable() {
        SummaryDataSource sum = new SummaryDataSource(this.getActivity());
        sum.open();
        
        Cursor c = sum.getAllExerciseRecords();
        
        int rows = c.getCount();
        System.out.println("num rows: " + rows);
        int cols = c.getColumnCount();
        System.out.println("num cols: " + cols);
        
        c.moveToFirst();
        
        for (int i = 0; i < rows; i++) {

        	   TableRow row = new TableRow(this.getActivity());
        	   row.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT,
        	     LayoutParams.WRAP_CONTENT));

        	   // inner for loop
        	   for (int j = 0; j < cols; j++) {

        	    TextView tv = new TextView(this.getActivity());
        	    System.out.println("tv " + tv);
        	    tv.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,
        	      LayoutParams.WRAP_CONTENT));
        	    tv.setGravity(Gravity.CENTER);
        	    tv.setTextSize(18);
        	    tv.setPadding(0, 5, 0, 5);

        	    tv.setText(c.getString(j));

        	    row.addView(tv);

        	   }
        	   System.out.println("table layout: " + table_layout);
        	   table_layout.addView(row, new TableLayout.LayoutParams(
        	              LayoutParams.WRAP_CONTENT,
        	             LayoutParams.WRAP_CONTENT));
        	   c.moveToNext();
        	  }
        sum.close();
    	}
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