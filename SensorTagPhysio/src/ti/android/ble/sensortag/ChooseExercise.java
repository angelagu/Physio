package ti.android.ble.sensortag;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class ChooseExercise extends Activity {
	
	private Intent mDeviceIntent;
	private BluetoothDevice mBluetoothDevice = null;
	private static final int REQ_DEVICE_ACT = 1;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mDeviceIntent = getIntent();
		mBluetoothDevice = mDeviceIntent.getParcelableExtra(DeviceActivity.EXTRA_DEVICE);
		setContentView(R.layout.activity_choose_exercise);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.choose_exercise, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	
	public void runTest(View view){
		Intent intent = new Intent(this, DeviceActivity.class);
	    intent.putExtra(DeviceActivity.EXTRA_DEVICE, mBluetoothDevice);
	    startActivityForResult(intent, REQ_DEVICE_ACT);
	}
}