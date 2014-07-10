// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothDevice;
import ti.android.ble.common.BleDeviceInfo;

// Referenced classes of package ti.android.ble.sensortag:
//            MainActivity, ScanView

class this._cls0
    implements android.bluetooth.r.LeScanCallback
{

    final MainActivity this$0;

    public void onLeScan(final BluetoothDevice device, final int rssi, byte abyte0[])
    {
        runOnUiThread(new Runnable() {

            final MainActivity._cls5 this$1;
            final BluetoothDevice val$device;
            final int val$rssi;

            public void run()
            {
label0:
                {
                    if (MainActivity.access$1200(this$0, device))
                    {
                        if (MainActivity.access$1300(this$0, device.getAddress()))
                        {
                            break label0;
                        }
                        BleDeviceInfo bledeviceinfo = MainActivity.access$1400(this$0, device, rssi);
                        MainActivity.access$1500(this$0, bledeviceinfo);
                    }
                    return;
                }
                MainActivity.access$1600(this$0, device).updateRssi(rssi);
                MainActivity.access$800(this$0).notifyDataSetChanged();
            }

            
            {
                this$1 = MainActivity._cls5.this;
                device = bluetoothdevice;
                rssi = i;
                super();
            }
        });
    }

    _cls1.val.rssi()
    {
        this$0 = MainActivity.this;
        super();
    }
}
