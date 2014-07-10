// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothDevice;
import ti.android.ble.common.BleDeviceInfo;

// Referenced classes of package ti.android.ble.sensortag:
//            MainActivity, ScanView

class val.rssi
    implements Runnable
{

    final taSetChanged this$1;
    final BluetoothDevice val$device;
    final int val$rssi;

    public void run()
    {
label0:
        {
            if (MainActivity.access$1200(_fld0, val$device))
            {
                if (MainActivity.access$1300(_fld0, val$device.getAddress()))
                {
                    break label0;
                }
                BleDeviceInfo bledeviceinfo = MainActivity.access$1400(_fld0, val$device, val$rssi);
                MainActivity.access$1500(_fld0, bledeviceinfo);
            }
            return;
        }
        MainActivity.access$1600(_fld0, val$device).updateRssi(val$rssi);
        MainActivity.access$800(_fld0).notifyDataSetChanged();
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$device = bluetoothdevice;
        val$rssi = I.this;
        super();
    }

    // Unreferenced inner class ti/android/ble/sensortag/MainActivity$5

/* anonymous class */
    class MainActivity._cls5
        implements android.bluetooth.BluetoothAdapter.LeScanCallback
    {

        final MainActivity this$0;

        public void onLeScan(final BluetoothDevice device, int i, byte abyte0[])
        {
            runOnUiThread(i. new MainActivity._cls5._cls1());
        }

            
            {
                this$0 = MainActivity.this;
                super();
            }
    }

}
