// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.common;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.util.Log;

// Referenced classes of package ti.android.ble.common:
//            BluetoothLeService

class it> extends BluetoothGattCallback
{

    final BluetoothLeService this$0;

    public void onCharacteristicChanged(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        BluetoothLeService.access$200(BluetoothLeService.this, "ti.android.ble.common.ACTION_DATA_NOTIFY", bluetoothgattcharacteristic, 0);
    }

    public void onCharacteristicRead(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        BluetoothLeService.access$200(BluetoothLeService.this, "ti.android.ble.common.ACTION_DATA_READ", bluetoothgattcharacteristic, i);
    }

    public void onCharacteristicWrite(BluetoothGatt bluetoothgatt, BluetoothGattCharacteristic bluetoothgattcharacteristic, int i)
    {
        BluetoothLeService.access$200(BluetoothLeService.this, "ti.android.ble.common.ACTION_DATA_WRITE", bluetoothgattcharacteristic, i);
    }

    public void onConnectionStateChange(BluetoothGatt bluetoothgatt, int i, int j)
    {
        String s;
        if (BluetoothLeService.access$000(BluetoothLeService.this) == null)
        {
            Log.e("BluetoothLeService", "mBluetoothGatt not created!");
            return;
        }
        s = bluetoothgatt.getDevice().getAddress();
        Log.d("BluetoothLeService", (new StringBuilder()).append("onConnectionStateChange (").append(s).append(") ").append(j).append(" status: ").append(i).toString());
        j;
        JVM INSTR tableswitch 0 2: default 100
    //                   0 147
    //                   1 100
    //                   2 134;
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
        BluetoothLeService.access$100(BluetoothLeService.this, "ti.android.ble.common.ACTION_GATT_CONNECTED", s, i);
        return;
_L2:
        BluetoothLeService.access$100(BluetoothLeService.this, "ti.android.ble.common.ACTION_GATT_DISCONNECTED", s, i);
        return;
    }

    public void onDescriptorRead(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, int i)
    {
        BluetoothLeService.access$302(BluetoothLeService.this, false);
        Log.i("BluetoothLeService", "onDescriptorRead");
    }

    public void onDescriptorWrite(BluetoothGatt bluetoothgatt, BluetoothGattDescriptor bluetoothgattdescriptor, int i)
    {
        BluetoothLeService.access$302(BluetoothLeService.this, false);
        Log.i("BluetoothLeService", "onDescriptorWrite");
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothgatt, int i)
    {
        BluetoothDevice bluetoothdevice = bluetoothgatt.getDevice();
        BluetoothLeService.access$100(BluetoothLeService.this, "ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED", bluetoothdevice.getAddress(), i);
    }

    ic()
    {
        this$0 = BluetoothLeService.this;
        super();
    }
}
