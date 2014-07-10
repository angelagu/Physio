// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import ti.android.ble.common.BluetoothLeService;
import ti.android.ble.common.GattInfo;
import ti.android.ble.common.HelpView;
import ti.android.util.Point3D;

// Referenced classes of package ti.android.ble.sensortag:
//            ViewPagerActivity, Sensor, SensorTag, MagnetometerCalibrationCoefficients, 
//            BarometerCalibrationCoefficients, DeviceView, FwUpdateActivity, PreferencesActivity, 
//            PreferencesFragment

public class DeviceActivity extends ViewPagerActivity
{

    public static final String EXTRA_DEVICE = "EXTRA_DEVICE";
    private static final int FWUPDATE_ACT_REQ = 1;
    private static final int GATT_TIMEOUT = 100;
    private static final int PREF_ACT_REQ;
    private static String TAG = "DeviceActivity";
    private BluetoothDevice mBluetoothDevice;
    private BluetoothGatt mBtGatt;
    private BluetoothLeService mBtLeService;
    private BluetoothGattService mConnControlService;
    private DeviceView mDeviceView;
    private List mEnabledSensors;
    private final BroadcastReceiver mGattUpdateReceiver = new BroadcastReceiver() {

        final DeviceActivity this$0;

        public void onReceive(Context context, Intent intent)
        {
            String s;
            int i;
            s = intent.getAction();
            i = intent.getIntExtra("ti.android.ble.common.EXTRA_STATUS", 0);
            if (!"ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED".equals(s)) goto _L2; else goto _L1
_L1:
            if (i != 0) goto _L4; else goto _L3
_L3:
            displayServices();
            checkOad();
_L6:
            if (i != 0)
            {
                setError((new StringBuilder()).append("GATT error code: ").append(i).toString());
            }
            return;
_L4:
            Toast.makeText(getApplication(), "Service discovery failed", 1).show();
            return;
_L2:
            if ("ti.android.ble.common.ACTION_DATA_NOTIFY".equals(s))
            {
                byte abyte1[] = intent.getByteArrayExtra("ti.android.ble.common.EXTRA_DATA");
                String s3 = intent.getStringExtra("ti.android.ble.common.EXTRA_UUID");
                onCharacteristicChanged(s3, abyte1);
            } else
            if ("ti.android.ble.common.ACTION_DATA_WRITE".equals(s))
            {
                String s2 = intent.getStringExtra("ti.android.ble.common.EXTRA_UUID");
                onCharacteristicWrite(s2, i);
            } else
            if ("ti.android.ble.common.ACTION_DATA_READ".equals(s))
            {
                String s1 = intent.getStringExtra("ti.android.ble.common.EXTRA_UUID");
                byte abyte0[] = intent.getByteArrayExtra("ti.android.ble.common.EXTRA_DATA");
                onCharacteristicsRead(s1, abyte0, i);
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

            
            {
                this$0 = DeviceActivity.this;
                super();
            }
    };
    private boolean mHeightCalibrateRequest;
    private boolean mIsReceiving;
    private boolean mMagCalibrateRequest;
    private BluetoothGattService mOadService;
    private List mServiceList;
    private boolean mServicesRdy;

    public DeviceActivity()
    {
        mDeviceView = null;
        mBtLeService = null;
        mBluetoothDevice = null;
        mBtGatt = null;
        mServiceList = null;
        mServicesRdy = false;
        mIsReceiving = false;
        mEnabledSensors = new ArrayList();
        mOadService = null;
        mConnControlService = null;
        mMagCalibrateRequest = true;
        mHeightCalibrateRequest = true;
        mResourceFragmentPager = 0x7f030007;
        mResourceIdPager = 0x7f090017;
    }

    private void calibrateBarometer()
    {
        Log.i(TAG, "calibrateBarometer");
        UUID uuid = Sensor.BAROMETER.getService();
        UUID uuid1 = Sensor.BAROMETER.getConfig();
        BluetoothGattService bluetoothgattservice = mBtGatt.getService(uuid);
        android.bluetooth.BluetoothGattCharacteristic bluetoothgattcharacteristic = bluetoothgattservice.getCharacteristic(uuid1);
        mBtLeService.writeCharacteristic(bluetoothgattcharacteristic, (byte)2);
        mBtLeService.waitIdle(100);
        android.bluetooth.BluetoothGattCharacteristic bluetoothgattcharacteristic1 = bluetoothgattservice.getCharacteristic(SensorTag.UUID_BAR_CALI);
        mBtLeService.readCharacteristic(bluetoothgattcharacteristic1);
        mBtLeService.waitIdle(100);
    }

    private void checkOad()
    {
        mOadService = null;
        mConnControlService = null;
        for (int i = 0; i < mServiceList.size() && (mOadService == null || mConnControlService == null); i++)
        {
            BluetoothGattService bluetoothgattservice = (BluetoothGattService)mServiceList.get(i);
            if (bluetoothgattservice.getUuid().equals(GattInfo.OAD_SERVICE_UUID))
            {
                mOadService = bluetoothgattservice;
            }
            if (bluetoothgattservice.getUuid().equals(GattInfo.CC_SERVICE_UUID))
            {
                mConnControlService = bluetoothgattservice;
            }
        }

    }

    private void discoverServices()
    {
        if (mBtGatt.discoverServices())
        {
            Log.i(TAG, "START SERVICE DISCOVERY");
            mServiceList.clear();
            setStatus("Service discovery started");
            return;
        } else
        {
            setError("Service discovery start failed");
            return;
        }
    }

    private void displayServices()
    {
        mServicesRdy = true;
        try
        {
            mServiceList = mBtLeService.getSupportedGattServices();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            mServicesRdy = false;
        }
        if (mServicesRdy)
        {
            setStatus("Service discovery complete");
            enableSensors(true);
            enableNotifications(true);
            return;
        } else
        {
            setError("Failed to read services");
            return;
        }
    }

    private void enableNotifications(boolean flag)
    {
        for (Iterator iterator = mEnabledSensors.iterator(); iterator.hasNext(); mBtLeService.waitIdle(100))
        {
            Sensor sensor = (Sensor)iterator.next();
            UUID uuid = sensor.getService();
            UUID uuid1 = sensor.getData();
            android.bluetooth.BluetoothGattCharacteristic bluetoothgattcharacteristic = mBtGatt.getService(uuid).getCharacteristic(uuid1);
            mBtLeService.setCharacteristicNotification(bluetoothgattcharacteristic, flag);
        }

    }

    private void enableSensors(boolean flag)
    {
        Iterator iterator = mEnabledSensors.iterator();
        do
        {
            Sensor sensor;
            UUID uuid;
            UUID uuid1;
label0:
            {
                if (iterator.hasNext())
                {
                    sensor = (Sensor)iterator.next();
                    uuid = sensor.getService();
                    uuid1 = sensor.getConfig();
                    if (uuid1 != null)
                    {
                        break label0;
                    }
                }
                return;
            }
            if (uuid1.equals(SensorTag.UUID_BAR_CONF) && flag)
            {
                calibrateBarometer();
            }
            android.bluetooth.BluetoothGattCharacteristic bluetoothgattcharacteristic = mBtGatt.getService(uuid).getCharacteristic(uuid1);
            byte byte0;
            if (flag)
            {
                byte0 = sensor.getEnableSensorCode();
            } else
            {
                byte0 = 0;
            }
            mBtLeService.writeCharacteristic(bluetoothgattcharacteristic, byte0);
            mBtLeService.waitIdle(100);
        } while (true);
    }

    public static DeviceActivity getInstance()
    {
        return (DeviceActivity)mThis;
    }

    private static IntentFilter makeGattUpdateIntentFilter()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED");
        intentfilter.addAction("ti.android.ble.common.ACTION_DATA_NOTIFY");
        intentfilter.addAction("ti.android.ble.common.ACTION_DATA_WRITE");
        intentfilter.addAction("ti.android.ble.common.ACTION_DATA_READ");
        return intentfilter;
    }

    private void onCharacteristicChanged(String s, byte abyte0[])
    {
        if (mDeviceView != null)
        {
            if (mMagCalibrateRequest && s.equals(SensorTag.UUID_MAG_DATA.toString()))
            {
                Point3D point3d1 = Sensor.MAGNETOMETER.convert(abyte0);
                MagnetometerCalibrationCoefficients.INSTANCE.val = point3d1;
                mMagCalibrateRequest = false;
                Toast.makeText(this, "Magnetometer calibrated", 0).show();
            }
            if (mHeightCalibrateRequest && s.equals(SensorTag.UUID_BAR_DATA.toString()))
            {
                Point3D point3d = Sensor.BAROMETER.convert(abyte0);
                BarometerCalibrationCoefficients.INSTANCE.heightCalibration = point3d.x;
                mHeightCalibrateRequest = false;
                Toast.makeText(this, "Height measurement calibrated", 0).show();
            }
            mDeviceView.onCharacteristicChanged(s, abyte0);
        }
    }

    private void onCharacteristicWrite(String s, int i)
    {
        Log.d(TAG, (new StringBuilder()).append("onCharacteristicWrite: ").append(s).toString());
    }

    private void onCharacteristicsRead(String s, byte abyte0[], int i)
    {
        Log.i(TAG, (new StringBuilder()).append("onCharacteristicsRead: ").append(s).toString());
        if (s.equals(SensorTag.UUID_BAR_CALI.toString()))
        {
            Log.i(TAG, "CALIBRATED");
            ArrayList arraylist = new ArrayList();
            for (int j = 0; j < 8; j += 2)
            {
                Integer integer1 = Integer.valueOf(0xff & abyte0[j]);
                arraylist.add(Integer.valueOf((Integer.valueOf(0xff & abyte0[j + 1]).intValue() << 8) + integer1.intValue()));
            }

            for (int k = 8; k < 16; k += 2)
            {
                Integer integer = Integer.valueOf(0xff & abyte0[k]);
                arraylist.add(Integer.valueOf((Integer.valueOf(abyte0[k + 1]).intValue() << 8) + integer.intValue()));
            }

            BarometerCalibrationCoefficients.INSTANCE.barometerCalibrationCoefficients = arraylist;
        }
    }

    private void setError(String s)
    {
        if (mDeviceView != null)
        {
            mDeviceView.setError(s);
        }
    }

    private void setStatus(String s)
    {
        if (mDeviceView != null)
        {
            mDeviceView.setStatus(s);
        }
    }

    private void startOadActivity()
    {
        if (mOadService != null && mConnControlService != null)
        {
            enableSensors(false);
            enableNotifications(false);
            Toast.makeText(this, "OAD service available", 1).show();
            startActivityForResult(new Intent(this, ti/android/ble/sensortag/FwUpdateActivity), 1);
            return;
        } else
        {
            Toast.makeText(this, "OAD service not available on this device", 1).show();
            return;
        }
    }

    private void startPrefrenceActivity()
    {
        enableSensors(false);
        enableNotifications(false);
        Intent intent = new Intent(this, ti/android/ble/sensortag/PreferencesActivity);
        intent.putExtra(":android:show_fragment", ti/android/ble/sensortag/PreferencesFragment.getName());
        intent.putExtra(":android:no_headers", true);
        intent.putExtra("EXTRA_DEVICE", mBluetoothDevice);
        startActivityForResult(intent, 0);
    }

    private void updateSensorList()
    {
        mEnabledSensors.clear();
        for (int i = 0; i < Sensor.SENSOR_LIST.length; i++)
        {
            Sensor sensor = Sensor.SENSOR_LIST[i];
            if (isEnabledByPrefs(sensor))
            {
                mEnabledSensors.add(sensor);
            }
        }

    }

    void calibrateHeight()
    {
        mHeightCalibrateRequest = true;
    }

    void calibrateMagnetometer()
    {
        Log.d(TAG, "calibrateMagnetometer");
        MagnetometerCalibrationCoefficients.INSTANCE.val.x = 0.0D;
        MagnetometerCalibrationCoefficients.INSTANCE.val.y = 0.0D;
        MagnetometerCalibrationCoefficients.INSTANCE.val.z = 0.0D;
        mMagCalibrateRequest = true;
    }

    BluetoothGattService getConnControlService()
    {
        return mConnControlService;
    }

    BluetoothGattService getOadService()
    {
        return mOadService;
    }

    boolean isEnabledByPrefs(Sensor sensor)
    {
        String s = (new StringBuilder()).append("pref_").append(sensor.name().toLowerCase(Locale.ENGLISH)).append("_on").toString();
        return PreferenceManager.getDefaultSharedPreferences(this).getBoolean(s, Boolean.valueOf(true).booleanValue());
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        switch (i)
        {
        default:
            Log.e(TAG, "Unknown request code");
            return;

        case 0: // '\0'
            mDeviceView.updateVisibility();
            Toast.makeText(this, "Applying preferences", 0).show();
            if (!mIsReceiving)
            {
                mIsReceiving = true;
                registerReceiver(mGattUpdateReceiver, makeGattUpdateIntentFilter());
            }
            updateSensorList();
            enableSensors(true);
            enableNotifications(true);
            return;

        case 1: // '\001'
            enableSensors(true);
            enableNotifications(true);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        requestWindowFeature(5);
        super.onCreate(bundle);
        Intent intent = getIntent();
        mDeviceView = new DeviceView();
        mSectionsPagerAdapter.addSection(mDeviceView, "Services");
        mSectionsPagerAdapter.addSection(new HelpView("help_device.html", 0x7f030006, 0x7f090016), "Help");
        PreferenceManager.setDefaultValues(this, 0x7f040004, false);
        mBtLeService = BluetoothLeService.getInstance();
        mBluetoothDevice = (BluetoothDevice)intent.getParcelableExtra("EXTRA_DEVICE");
        mServiceList = new ArrayList();
        new GattInfo(getResources().getXml(0x7f040000));
        updateSensorList();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        getMenuInflater().inflate(0x7f080000, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public void onDestroy()
    {
        super.onDestroy();
        finishActivity(0);
        finishActivity(1);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 2131296303 2131296305: default 32
    //                   2131296303 38
    //                   2131296304 44
    //                   2131296305 51;
           goto _L1 _L2 _L3 _L4
_L1:
        return super.onOptionsItemSelected(menuitem);
_L2:
        startPrefrenceActivity();
_L6:
        return true;
_L3:
        startOadActivity();
        continue; /* Loop/switch isn't completed */
_L4:
        openAboutDialog();
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onPause()
    {
        Log.d(TAG, "onPause");
        super.onPause();
        if (mIsReceiving)
        {
            unregisterReceiver(mGattUpdateReceiver);
            mIsReceiving = false;
        }
    }

    protected void onResume()
    {
        Log.d(TAG, "onResume");
        super.onResume();
        if (!mIsReceiving)
        {
            registerReceiver(mGattUpdateReceiver, makeGattUpdateIntentFilter());
            mIsReceiving = true;
        }
    }

    void onViewInflated(View view)
    {
label0:
        {
            Log.d(TAG, "Gatt view ready");
            setTitle(mBluetoothDevice.getName());
            mBtGatt = BluetoothLeService.getBtGatt();
            if (!mServicesRdy && mBtGatt != null)
            {
                if (mBtLeService.getNumServices() != 0)
                {
                    break label0;
                }
                discoverServices();
            }
            return;
        }
        displayServices();
    }







}
