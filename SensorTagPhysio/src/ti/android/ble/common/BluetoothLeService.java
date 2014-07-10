// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.common;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothManager;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import java.util.List;
import java.util.UUID;

// Referenced classes of package ti.android.ble.common:
//            GattInfo

public class BluetoothLeService extends Service
{
    public class LocalBinder extends Binder
    {

        final BluetoothLeService this$0;

        public BluetoothLeService getService()
        {
            return BluetoothLeService.this;
        }

        public LocalBinder()
        {
            this$0 = BluetoothLeService.this;
            super();
        }
    }


    public static final String ACTION_DATA_NOTIFY = "ti.android.ble.common.ACTION_DATA_NOTIFY";
    public static final String ACTION_DATA_READ = "ti.android.ble.common.ACTION_DATA_READ";
    public static final String ACTION_DATA_WRITE = "ti.android.ble.common.ACTION_DATA_WRITE";
    public static final String ACTION_GATT_CONNECTED = "ti.android.ble.common.ACTION_GATT_CONNECTED";
    public static final String ACTION_GATT_DISCONNECTED = "ti.android.ble.common.ACTION_GATT_DISCONNECTED";
    public static final String ACTION_GATT_SERVICES_DISCOVERED = "ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED";
    public static final String EXTRA_ADDRESS = "ti.android.ble.common.EXTRA_ADDRESS";
    public static final String EXTRA_DATA = "ti.android.ble.common.EXTRA_DATA";
    public static final String EXTRA_STATUS = "ti.android.ble.common.EXTRA_STATUS";
    public static final String EXTRA_UUID = "ti.android.ble.common.EXTRA_UUID";
    static final String TAG = "BluetoothLeService";
    private static BluetoothLeService mThis = null;
    private final IBinder binder = new LocalBinder();
    private String mBluetoothDeviceAddress;
    private BluetoothGatt mBluetoothGatt;
    private BluetoothManager mBluetoothManager;
    private BluetoothAdapter mBtAdapter;
    private volatile boolean mBusy;
    private BluetoothGattCallback mGattCallbacks;

    public BluetoothLeService()
    {
        mBluetoothManager = null;
        mBtAdapter = null;
        mBluetoothGatt = null;
        mBusy = false;
        mGattCallbacks = new BluetoothGattCallback() {

            final BluetoothLeService this$0;

            public void onCharacteristicChanged(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
            {
                broadcastUpdate("ti.android.ble.common.ACTION_DATA_NOTIFY", bluetoothgattcharacteristic, 0);
            }

            public void onCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
            {
                broadcastUpdate("ti.android.ble.common.ACTION_DATA_READ", bluetoothgattcharacteristic, i);
            }

            public void onCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
            {
                broadcastUpdate("ti.android.ble.common.ACTION_DATA_WRITE", bluetoothgattcharacteristic, i);
            }

            public void onConnectionStateChange(BluetoothGatt bluetoothgatt, int i, int j)
            {
                String s;
                if (mBluetoothGatt == null)
                {
                    Log.e("BluetoothLeService", "mBluetoothGatt not created!");
                    return;
                }
                s = bluetoothgatt.getDevice().getAddress();
                Log.d("BluetoothLeService", (new StringBuilder()).append("onConnectionStateChange (").append(s).append(") ").append(j).append(" status: ").append(i).toString());
                j;
                JVM INSTR tableswitch 0 2: default 100
            //                           0 147
            //                           1 100
            //                           2 134;
                   goto _L1 _L2 _L1 _L3
_L1:
                try
                {
                    Log.e("BluetoothLeService", (new StringBuilder()).append("New state not processed: ").append(j).toString());
                    return;
                }
                catch (NullPointerException nullpointerexception)
                {
                    nullpointerexception.printStackTrace();
                }
                return;
_L3:
                broadcastUpdate("ti.android.ble.common.ACTION_GATT_CONNECTED", s, i);
                return;
_L2:
                broadcastUpdate("ti.android.ble.common.ACTION_GATT_DISCONNECTED", s, i);
                return;
            }

            public void onDescriptorRead(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, int i)
            {
                mBusy = false;
                Log.i("BluetoothLeService", "onDescriptorRead");
            }

            public void onDescriptorWrite(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, int i)
            {
                mBusy = false;
                Log.i("BluetoothLeService", "onDescriptorWrite");
            }

            public void onServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
            {
                BluetoothDevice bluetoothdevice = bluetoothgatt.getDevice();
                broadcastUpdate("ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED", bluetoothdevice.getAddress(), i);
            }

            
            {
                this$0 = BluetoothLeService.this;
                super();
            }
        };
    }

    private void broadcastUpdate(String s, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        Intent intent = new Intent(s);
        intent.putExtra("ti.android.ble.common.EXTRA_UUID", bluetoothgattcharacteristic.getUuid().toString());
        intent.putExtra("ti.android.ble.common.EXTRA_DATA", bluetoothgattcharacteristic.getValue());
        intent.putExtra("ti.android.ble.common.EXTRA_STATUS", i);
        sendBroadcast(intent);
        mBusy = false;
    }

    private void broadcastUpdate(String s, String s1, int i)
    {
        Intent intent = new Intent(s);
        intent.putExtra("ti.android.ble.common.EXTRA_ADDRESS", s1);
        intent.putExtra("ti.android.ble.common.EXTRA_STATUS", i);
        sendBroadcast(intent);
        mBusy = false;
    }

    private boolean checkGatt()
    {
        if (mBtAdapter == null)
        {
            Log.w("BluetoothLeService", "BluetoothAdapter not initialized");
            return false;
        }
        if (mBluetoothGatt == null)
        {
            Log.w("BluetoothLeService", "BluetoothGatt not initialized");
            return false;
        }
        if (mBusy)
        {
            Log.w("BluetoothLeService", "LeService busy");
            return false;
        } else
        {
            return true;
        }
    }

    public static BluetoothGatt getBtGatt()
    {
        return mThis.mBluetoothGatt;
    }

    public static BluetoothManager getBtManager()
    {
        return mThis.mBluetoothManager;
    }

    public static BluetoothLeService getInstance()
    {
        return mThis;
    }

    public void close()
    {
        if (mBluetoothGatt != null)
        {
            Log.i("BluetoothLeService", "close");
            mBluetoothGatt.close();
            mBluetoothGatt = null;
        }
    }

    public boolean connect(String s)
    {
        boolean flag = true;
        if (mBtAdapter == null || s == null)
        {
            Log.w("BluetoothLeService", "BluetoothAdapter not initialized or unspecified address.");
            flag = false;
        } else
        {
            BluetoothDevice bluetoothdevice = mBtAdapter.getRemoteDevice(s);
            int i = mBluetoothManager.getConnectionState(bluetoothdevice, 7);
            if (i == 0)
            {
                if (mBluetoothDeviceAddress != null && s.equals(mBluetoothDeviceAddress) && mBluetoothGatt != null)
                {
                    Log.d("BluetoothLeService", "Re-use GATT connection");
                    if (!mBluetoothGatt.connect())
                    {
                        Log.w("BluetoothLeService", "GATT re-connect failed.");
                        return false;
                    }
                } else
                if (bluetoothdevice == null)
                {
                    Log.w("BluetoothLeService", "Device not found.  Unable to connect.");
                    return false;
                } else
                {
                    Log.d("BluetoothLeService", "Create a new GATT connection.");
                    mBluetoothGatt = bluetoothdevice.connectGatt(this, false, mGattCallbacks);
                    mBluetoothDeviceAddress = s;
                    return flag;
                }
            } else
            {
                Log.w("BluetoothLeService", (new StringBuilder()).append("Attempt to connect in state: ").append(i).toString());
                return false;
            }
        }
        return flag;
    }

    public void disconnect(String s)
    {
        if (mBtAdapter == null)
        {
            Log.w("BluetoothLeService", "disconnect: BluetoothAdapter not initialized");
        } else
        {
            BluetoothDevice bluetoothdevice = mBtAdapter.getRemoteDevice(s);
            int i = mBluetoothManager.getConnectionState(bluetoothdevice, 7);
            if (mBluetoothGatt != null)
            {
                Log.i("BluetoothLeService", "disconnect");
                if (i != 0)
                {
                    mBluetoothGatt.disconnect();
                    return;
                } else
                {
                    Log.w("BluetoothLeService", (new StringBuilder()).append("Attempt to disconnect in state: ").append(i).toString());
                    return;
                }
            }
        }
    }

    public int getNumServices()
    {
        if (mBluetoothGatt == null)
        {
            return 0;
        } else
        {
            return mBluetoothGatt.getServices().size();
        }
    }

    public List getSupportedGattServices()
    {
        if (mBluetoothGatt == null)
        {
            return null;
        } else
        {
            return mBluetoothGatt.getServices();
        }
    }

    public boolean initialize()
    {
        Log.d("BluetoothLeService", "initialize");
        mThis = this;
        if (mBluetoothManager == null)
        {
            mBluetoothManager = (BluetoothManager)getSystemService("bluetooth");
            if (mBluetoothManager == null)
            {
                Log.e("BluetoothLeService", "Unable to initialize BluetoothManager.");
                return false;
            }
        }
        mBtAdapter = mBluetoothManager.getAdapter();
        if (mBtAdapter == null)
        {
            Log.e("BluetoothLeService", "Unable to obtain a BluetoothAdapter.");
            return false;
        } else
        {
            return true;
        }
    }

    public boolean isNotificationEnabled(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        BluetoothGattDescriptor bluetoothgattdescriptor;
        if (checkGatt())
        {
            if ((bluetoothgattdescriptor = bluetoothgattcharacteristic.getDescriptor(GattInfo.CLIENT_CHARACTERISTIC_CONFIG)) != null && bluetoothgattdescriptor.getValue() == BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE)
            {
                return true;
            }
        }
        return false;
    }

    public int numConnectedDevices()
    {
        BluetoothGatt bluetoothgatt = mBluetoothGatt;
        int i = 0;
        if (bluetoothgatt != null)
        {
            i = mBluetoothManager.getConnectedDevices(7).size();
        }
        return i;
    }

    public IBinder onBind(Intent intent)
    {
        return binder;
    }

    public void onDestroy()
    {
        super.onDestroy();
        Log.d("BluetoothLeService", "onDestroy() called");
        if (mBluetoothGatt != null)
        {
            mBluetoothGatt.close();
            mBluetoothGatt = null;
        }
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.i("BluetoothLeService", (new StringBuilder()).append("Received start id ").append(j).append(": ").append(intent).toString());
        return 1;
    }

    public boolean onUnbind(Intent intent)
    {
        close();
        return super.onUnbind(intent);
    }

    public void readCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (!checkGatt())
        {
            return;
        } else
        {
            mBusy = true;
            mBluetoothGatt.readCharacteristic(bluetoothgattcharacteristic);
            return;
        }
    }

    public boolean setCharacteristicNotification(BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        if (checkGatt())
        {
            if (!mBluetoothGatt.setCharacteristicNotification(bluetoothgattcharacteristic, flag))
            {
                Log.w("BluetoothLeService", "setCharacteristicNotification failed");
                return false;
            }
            BluetoothGattDescriptor bluetoothgattdescriptor = bluetoothgattcharacteristic.getDescriptor(GattInfo.CLIENT_CHARACTERISTIC_CONFIG);
            if (bluetoothgattdescriptor != null)
            {
                if (flag)
                {
                    Log.i("BluetoothLeService", "enable notification");
                    bluetoothgattdescriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                } else
                {
                    Log.i("BluetoothLeService", "disable notification");
                    bluetoothgattdescriptor.setValue(BluetoothGattDescriptor.DISABLE_NOTIFICATION_VALUE);
                }
                mBusy = true;
                return mBluetoothGatt.writeDescriptor(bluetoothgattdescriptor);
            }
        }
        return false;
    }

    public boolean waitIdle(int i)
    {
        int j;
        for (j = i / 10; --j > 0 && mBusy;)
        {
            try
            {
                Thread.sleep(10L);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        }

        return j > 0;
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        if (!checkGatt())
        {
            return false;
        } else
        {
            mBusy = true;
            return mBluetoothGatt.writeCharacteristic(bluetoothgattcharacteristic);
        }
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic, byte byte0)
    {
        if (!checkGatt())
        {
            return false;
        } else
        {
            bluetoothgattcharacteristic.setValue(new byte[] {
                byte0
            });
            mBusy = true;
            return mBluetoothGatt.writeCharacteristic(bluetoothgattcharacteristic);
        }
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothgattcharacteristic, boolean flag)
    {
        if (!checkGatt())
        {
            return false;
        }
        byte abyte0[] = new byte[1];
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        abyte0[0] = (byte)i;
        bluetoothgattcharacteristic.setValue(abyte0);
        mBusy = true;
        return mBluetoothGatt.writeCharacteristic(bluetoothgattcharacteristic);
    }






/*
    static boolean access$302(BluetoothLeService bluetoothleservice, boolean flag)
    {
        bluetoothleservice.mBusy = flag;
        return flag;
    }

*/
}
