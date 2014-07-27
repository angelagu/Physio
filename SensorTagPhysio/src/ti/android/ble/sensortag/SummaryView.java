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
	
	public static View view;
	
	private TableLayout table_layout;
	
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
    	Log.i(TAG, "onCreateView");
        mInstance = this;
        
        view = inflater.inflate(R.layout.activity_summary, container, false);
        table_layout = (TableLayout) view.findViewById(R.id.tableLayout1);
        
        buildTable();
        updateImportantInfo();

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
        	   row.setLayoutParams(new TableRow.LayoutParams(LayoutParams.MATCH_PARENT,
        	     LayoutParams.WRAP_CONTENT));

        	   // inner for loop
        	   for (int j = 0; j < cols; j++) {
        		   
	        	   if (j != 0 || j != 1) {
	
		        	    TextView tv = new TextView(this.getActivity());
		        	    System.out.println("tv " + tv);
		//        	    tv.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,
		//        	      LayoutParams.WRAP_CONTENT));
		        	    
		        	    tv.setGravity(Gravity.CENTER);
		        	    tv.setTextSize(12);
		        	    tv.setPadding(0, 5, 0, 5);
		        	    tv.setText(c.getString(j));
		
		        	    row.addView(tv);
	        	   }

        	   }
        	   System.out.println("table layout: " + table_layout);
        	   System.out.println(row);
//        	   table_layout.addView(row, new TableLayout.LayoutParams(
//        	              LayoutParams.WRAP_CONTENT,
//        	             LayoutParams.WRAP_CONTENT));
        	   table_layout.addView(row);
        	   c.moveToNext();
        	  }
        c.close();
        sum.close();
    }
    

	public void updateImportantInfo(){
			SummaryDataSource sum = new SummaryDataSource(this.getActivity());
			sum.open();
		  	Cursor c = sum.getAllExerciseRecords();
		  	int rows = c.getCount();
		  	
	    //update average reps per exercise
	    TextView repNumber = (TextView) view.findViewById(R.id.repNumber);
		repNumber.setText(String.valueOf(sum.getRepTotal()/rows));
		
		//update average average angle
	    TextView averageAngle = (TextView) view.findViewById(R.id.averageAngleNumber);
	    averageAngle.setText(String.valueOf(sum.getAverageAngleTotal()/rows));
		
		//update average delta angle
	    TextView deltaAngle = (TextView) view.findViewById(R.id.deltaAngleNumber);
		if ((sum.getAverageAngleTotal()/rows)>170){
			deltaAngle.setText("+" + String.valueOf(((sum.getAverageAngleTotal()/rows)-170)));
		}else if ((sum.getAverageAngleTotal()/rows)<170){
			deltaAngle.setText("-" + String.valueOf((170-(sum.getAverageAngleTotal()/rows))));
		}else{
			deltaAngle.setText(String.valueOf(0));
		}
		
		//update quality counts
		TextView good = (TextView) view.findViewById(R.id.goodNumber);
		TextView ok = (TextView) view.findViewById(R.id.okNumber);
		TextView ni = (TextView) view.findViewById(R.id.needsImprovementNumber);
		good.setText(String.valueOf(sum.getGoodCount()));
		ok.setText(String.valueOf(sum.getOkCount()));
		ni.setText(String.valueOf(sum.getNeedsImprovementCount()));
		c.close();
		sum.close();
	}

}