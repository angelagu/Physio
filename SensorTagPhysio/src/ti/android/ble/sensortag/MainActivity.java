// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.Dialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import ti.android.ble.common.BleDeviceInfo;
import ti.android.ble.common.BluetoothLeService;
import ti.android.ble.common.HelpView;
import ti.android.util.CustomToast;

// Referenced classes of package ti.android.ble.sensortag:
//            ViewPagerActivity, ScanView, AboutDialog, DeviceActivity

public class MainActivity extends ViewPagerActivity
{

    private static final int NO_DEVICE = -1;
    private static final int REQ_DEVICE_ACT = 1;
    private static final int REQ_ENABLE_BT = 0;
    private static final int STATUS_DURATION = 5;
    private static final String TAG = "MainActivity";
    private static final Uri URL_FORUM = Uri.parse("http://e2e.ti.com/support/low_power_rf/default.aspx?DCMP=hpa_hpa_community&HQS=NotApplicable+OT+lprf-forum");
    private static final Uri URL_STHOME = Uri.parse("http://www.ti.com/ww/en/wireless_connectivity/sensortag/index.shtml?INTC=SensorTag&HQS=sensortag");
    private static BluetoothManager mBluetoothManager;
    private static MainActivity mThis = null;
    private boolean mBleSupported;
    private BluetoothDevice mBluetoothDevice;
    private BluetoothLeService mBluetoothLeService;
    private BluetoothAdapter mBtAdapter;
    private int mConnIndex;
    private String mDeviceFilter[];
    private List mDeviceInfoList;
    private Intent mDeviceIntent;
    private IntentFilter mFilter;
    private boolean mInitialised;
    private android.bluetooth.BluetoothAdapter.LeScanCallback mLeScanCallback;
    private int mNumDevs;
    private BroadcastReceiver mReceiver;
    private ScanView mScanView;
    private boolean mScanning;
    private final ServiceConnection mServiceConnection = new ServiceConnection() {

        final MainActivity this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            mBluetoothLeService = ((ti.android.ble.common.BluetoothLeService.LocalBinder)ibinder).getService();
            if (!mBluetoothLeService.initialize())
            {
                Log.e("MainActivity", "Unable to initialize BluetoothLeService");
                finish();
                return;
            }
            if (mBluetoothLeService.numConnectedDevices() > 0)
            {
                runOnUiThread(new Runnable() {

                    final _cls4 this$1;

                    public void run()
                    {
                        MainActivity.mThis.setError("Multiple connections!");
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
                return;
            } else
            {
                startScan();
                Log.i("MainActivity", "BluetoothLeService connected");
                return;
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            mBluetoothLeService = null;
            Log.i("MainActivity", "BluetoothLeService disconnected");
        }

            
            {
                this$0 = MainActivity.this;
                super();
            }
    };

    public MainActivity()
    {
        mInitialised = false;
        mBleSupported = true;
        mScanning = false;
        mNumDevs = 0;
        mConnIndex = -1;
        mBtAdapter = null;
        mBluetoothDevice = null;
        mBluetoothLeService = null;
        mDeviceFilter = null;
        mReceiver = new BroadcastReceiver() {

            final MainActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                String s = intent.getAction();
                if (!"android.bluetooth.adapter.action.STATE_CHANGED".equals(s)) goto _L2; else goto _L1
_L1:
                mBtAdapter.getState();
                JVM INSTR tableswitch 10 12: default 52
            //                           10 87
            //                           11 52
            //                           12 68;
                   goto _L3 _L4 _L3 _L5
_L3:
                Log.w("MainActivity", "Action STATE CHANGED not processed ");
_L6:
                updateGuiState();
                return;
_L5:
                mConnIndex = -1;
                startBluetoothLeService();
                continue; /* Loop/switch isn't completed */
_L4:
                Toast.makeText(context, 0x7f05000b, 1).show();
                finish();
                if (true) goto _L6; else goto _L2
_L2:
                if ("ti.android.ble.common.ACTION_GATT_CONNECTED".equals(s))
                {
                    int j = intent.getIntExtra("ti.android.ble.common.EXTRA_STATUS", 257);
                    if (j == 0)
                    {
                        setBusy(false);
                        startDeviceActivity();
                        return;
                    } else
                    {
                        setError((new StringBuilder()).append("Connect failed. Status: ").append(j).toString());
                        return;
                    }
                }
                if ("ti.android.ble.common.ACTION_GATT_DISCONNECTED".equals(s))
                {
                    int i = intent.getIntExtra("ti.android.ble.common.EXTRA_STATUS", 257);
                    stopDeviceActivity();
                    if (i == 0)
                    {
                        setBusy(false);
                        mScanView.setStatus((new StringBuilder()).append(mBluetoothDevice.getName()).append(" disconnected").toString(), 5);
                    } else
                    {
                        setError((new StringBuilder()).append("Disconnect failed. Status: ").append(i).toString());
                    }
                    mConnIndex = -1;
                    mBluetoothLeService.close();
                    return;
                } else
                {
                    Log.w("MainActivity", (new StringBuilder()).append("Unknown action: ").append(s).toString());
                    return;
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
        mLeScanCallback = new android.bluetooth.BluetoothAdapter.LeScanCallback() {

            final MainActivity this$0;

            public void onLeScan(final BluetoothDevice device, int i, byte abyte0[])
            {
                runOnUiThread(i. new Runnable() {

                    final _cls5 this$1;
                    final BluetoothDevice val$device;
                    final int val$rssi;

                    public void run()
                    {
label0:
                        {
                            if (checkDeviceFilter(device))
                            {
                                if (deviceInfoExists(device.getAddress()))
                                {
                                    break label0;
                                }
                                BleDeviceInfo bledeviceinfo = createDeviceInfo(device, rssi);
                                addDevice(bledeviceinfo);
                            }
                            return;
                        }
                        findDeviceInfo(device).updateRssi(rssi);
                        mScanView.notifyDataSetChanged();
                    }

            
            {
                this$1 = final__pcls5;
                device = bluetoothdevice;
                rssi = I.this;
                super();
            }
                });
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
        Log.i("MainActivity", "Construct");
        mThis = this;
        mResourceFragmentPager = 0x7f030007;
        mResourceIdPager = 0x7f090017;
    }

    private void addDevice(BleDeviceInfo bledeviceinfo)
    {
        mNumDevs = 1 + mNumDevs;
        mDeviceInfoList.add(bledeviceinfo);
        mScanView.notifyDataSetChanged();
        if (mNumDevs > 1)
        {
            mScanView.setStatus((new StringBuilder()).append(mNumDevs).append(" devices").toString());
            return;
        } else
        {
            mScanView.setStatus("1 device");
            return;
        }
    }

    private boolean checkDeviceFilter(BluetoothDevice bluetoothdevice)
    {
        int i = mDeviceFilter.length;
        boolean flag;
        if (i > 0)
        {
            flag = false;
            for (int j = 0; j < i && !flag; j++)
            {
                flag = bluetoothdevice.getName().equals(mDeviceFilter[j]);
            }

        } else
        {
            flag = true;
        }
        return flag;
    }

    private BleDeviceInfo createDeviceInfo(BluetoothDevice bluetoothdevice, int i)
    {
        return new BleDeviceInfo(bluetoothdevice, i);
    }

    private boolean deviceInfoExists(String s)
    {
        for (int i = 0; i < mDeviceInfoList.size(); i++)
        {
            if (((BleDeviceInfo)mDeviceInfoList.get(i)).getBluetoothDevice().getAddress().equals(s))
            {
                return true;
            }
        }

        return false;
    }

    private BleDeviceInfo findDeviceInfo(BluetoothDevice bluetoothdevice)
    {
        for (int i = 0; i < mDeviceInfoList.size(); i++)
        {
            if (((BleDeviceInfo)mDeviceInfoList.get(i)).getBluetoothDevice().getAddress().equals(bluetoothdevice.getAddress()))
            {
                return (BleDeviceInfo)mDeviceInfoList.get(i);
            }
        }

        return null;
    }

    private void onAbout()
    {
        (new AboutDialog(this)).show();
    }

    private void onBluetooth()
    {
        startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
    }

    private void onUrl(Uri uri)
    {
        startActivity(new Intent("android.intent.action.VIEW", uri));
    }

    private boolean scanLeDevice(boolean flag)
    {
        if (flag)
        {
            mScanning = mBtAdapter.startLeScan(mLeScanCallback);
        } else
        {
            mScanning = false;
            mBtAdapter.stopLeScan(mLeScanCallback);
        }
        return mScanning;
    }

    private void setBusy(boolean flag)
    {
        mScanView.setBusy(flag);
    }

    private void startBluetoothLeService()
    {
        Intent intent = new Intent(this, ti/android/ble/common/BluetoothLeService);
        startService(intent);
        if (bindService(intent, mServiceConnection, 1))
        {
            Log.d("MainActivity", "BluetoothLeService - success");
            return;
        } else
        {
            CustomToast.middleBottom(this, "Bind to BluetoothLeService failed");
            finish();
            return;
        }
    }

    private void startDeviceActivity()
    {
        mDeviceIntent = new Intent(this, ti/android/ble/sensortag/DeviceActivity);
        mDeviceIntent.putExtra("EXTRA_DEVICE", mBluetoothDevice);
        startActivityForResult(mDeviceIntent, 1);
    }

    private void startScan()
    {
        if (mBleSupported)
        {
            mNumDevs = 0;
            mDeviceInfoList.clear();
            mScanView.notifyDataSetChanged();
            scanLeDevice(true);
            mScanView.updateGui(mScanning);
            if (!mScanning)
            {
                setError("Device discovery start failed");
                setBusy(false);
            }
            return;
        } else
        {
            setError("BLE not supported on this device");
            return;
        }
    }

    private void stopDeviceActivity()
    {
        finishActivity(1);
    }

    private void stopScan()
    {
        mScanning = false;
        mScanView.updateGui(false);
        scanLeDevice(false);
    }

    List getDeviceInfoList()
    {
        return mDeviceInfoList;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        i;
        JVM INSTR tableswitch 0 1: default 32
    //                   0 65
    //                   1 42;
           goto _L1 _L2 _L3
_L1:
        Log.e("MainActivity", "Unknown request code");
_L5:
        return;
_L3:
        if (mConnIndex == -1) goto _L5; else goto _L4
_L4:
        mBluetoothLeService.disconnect(mBluetoothDevice.getAddress());
        return;
_L2:
        if (j == -1)
        {
            Toast.makeText(this, 0x7f050009, 0).show();
            return;
        } else
        {
            Toast.makeText(this, 0x7f05000a, 0).show();
            finish();
            return;
        }
    }

    public void onBtnScan(View view)
    {
        if (mScanning)
        {
            stopScan();
            return;
        } else
        {
            startScan();
            return;
        }
    }

    void onConnect()
    {
        if (mNumDevs <= 0) goto _L2; else goto _L1
_L1:
        mBluetoothManager.getConnectionState(mBluetoothDevice, 7);
        JVM INSTR tableswitch 0 2: default 44
    //                   0 61
    //                   1 44
    //                   2 52;
           goto _L3 _L4 _L3 _L5
_L3:
        setError("Device busy (connecting/disconnecting)");
_L2:
        return;
_L5:
        mBluetoothLeService.disconnect(null);
        return;
_L4:
        if (!mBluetoothLeService.connect(mBluetoothDevice.getAddress()))
        {
            setError("Connect failed");
            return;
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public void onConnectTimeout()
    {
        runOnUiThread(new Runnable() {

            final MainActivity this$0;

            public void run()
            {
                setError("Connection timed out");
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        if (mConnIndex != -1)
        {
            mBluetoothLeService.disconnect(mBluetoothDevice.getAddress());
            mConnIndex = -1;
        }
    }

    public void onCreate(Bundle bundle)
    {
        Log.i("MainActivity", "onCreate");
        requestWindowFeature(5);
        super.onCreate(bundle);
        if (!getPackageManager().hasSystemFeature("android.hardware.bluetooth_le"))
        {
            Toast.makeText(this, 0x7f050008, 1).show();
            mBleSupported = false;
        }
        mBluetoothManager = (BluetoothManager)getSystemService("bluetooth");
        mBtAdapter = mBluetoothManager.getAdapter();
        if (mBtAdapter == null)
        {
            Toast.makeText(this, 0x7f050007, 1).show();
            mBleSupported = false;
        }
        mDeviceInfoList = new ArrayList();
        mDeviceFilter = getResources().getStringArray(0x7f060000);
        mScanView = new ScanView();
        mSectionsPagerAdapter.addSection(mScanView, "BLE Device List");
        mSectionsPagerAdapter.addSection(new HelpView("help_scan.html", 0x7f030006, 0x7f090016), "Help");
        mFilter = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
        mFilter.addAction("ti.android.ble.common.ACTION_GATT_CONNECTED");
        mFilter.addAction("ti.android.ble.common.ACTION_GATT_DISCONNECTED");
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f080001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        Log.d("MainActivity", "Destroy");
        super.onDestroy();
        if (mBluetoothLeService != null)
        {
            scanLeDevice(false);
            mBluetoothLeService.close();
            unregisterReceiver(mReceiver);
            unbindService(mServiceConnection);
            mBluetoothLeService = null;
        }
    }

    public void onDeviceClick(int i)
    {
        if (mScanning)
        {
            stopScan();
        }
        setBusy(true);
        mBluetoothDevice = ((BleDeviceInfo)mDeviceInfoList.get(i)).getBluetoothDevice();
        if (mConnIndex == -1)
        {
            mScanView.setStatus("Connecting");
            mConnIndex = i;
            onConnect();
        } else
        {
            mScanView.setStatus("Disconnecting");
            if (mConnIndex != -1)
            {
                mBluetoothLeService.disconnect(mBluetoothDevice.getAddress());
                return;
            }
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            onBackPressed();
            return true;

        case 2131296306: 
            onBluetooth();
            return true;

        case 2131296307: 
            onUrl(URL_FORUM);
            return true;

        case 2131296308: 
            onUrl(URL_STHOME);
            return true;

        case 2131296305: 
            onAbout();
            return true;

        case 2131296309: 
            finish();
            break;
        }
        return true;
    }

    public void onScanTimeout()
    {
        runOnUiThread(new Runnable() {

            final MainActivity this$0;

            public void run()
            {
                stopScan();
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    public void onScanViewReady(View view)
    {
        updateGuiState();
        if (!mInitialised)
        {
            registerReceiver(mReceiver, mFilter);
            if (mBtAdapter.isEnabled())
            {
                startBluetoothLeService();
            } else
            {
                startActivityForResult(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"), 0);
            }
            mInitialised = true;
            return;
        } else
        {
            mScanView.notifyDataSetChanged();
            return;
        }
    }

    void setError(String s)
    {
        mScanView.setError(s);
    }

    public void updateGuiState()
    {
label0:
        {
label1:
            {
                if (!mBtAdapter.isEnabled())
                {
                    break label0;
                }
                if (mScanning)
                {
                    if (mConnIndex == -1)
                    {
                        break label1;
                    }
                    String s = (new StringBuilder()).append(mBluetoothDevice.getName()).append(" connected").toString();
                    mScanView.setStatus(s);
                }
                return;
            }
            mScanView.setStatus((new StringBuilder()).append(mNumDevs).append(" devices").toString());
            return;
        }
        mDeviceInfoList.clear();
        mScanView.notifyDataSetChanged();
    }












/*
    static int access$202(MainActivity mainactivity, int i)
    {
        mainactivity.mConnIndex = i;
        return i;
    }

*/









/*
    static BluetoothLeService access$902(MainActivity mainactivity, BluetoothLeService bluetoothleservice)
    {
        mainactivity.mBluetoothLeService = bluetoothleservice;
        return bluetoothleservice;
    }

*/
}
