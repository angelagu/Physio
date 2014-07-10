// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;
import ti.android.ble.common.BleDeviceInfo;

// Referenced classes of package ti.android.ble.sensortag:
//            ScanView

class mDevices extends BaseAdapter
{

    private List mDevices;
    private LayoutInflater mInflater;
    final ScanView this$0;

    public int getCount()
    {
        return mDevices.size();
    }

    public Object getItem(int i)
    {
        return mDevices.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewGroup viewgroup1;
        BleDeviceInfo bledeviceinfo;
        BluetoothDevice bluetoothdevice;
        int j;
        String s;
        if (view != null)
        {
            viewgroup1 = (ViewGroup)view;
        } else
        {
            viewgroup1 = (ViewGroup)mInflater.inflate(0x7f030004, null);
        }
        bledeviceinfo = (BleDeviceInfo)mDevices.get(i);
        bluetoothdevice = bledeviceinfo.getBluetoothDevice();
        j = bledeviceinfo.getRssi();
        s = (new StringBuilder()).append(bluetoothdevice.getName()).append("\n").append(bluetoothdevice.getAddress()).append("\nRssi: ").append(j).append(" dBm").toString();
        ((TextView)viewgroup1.findViewById(0x7f090014)).setText(s);
        return viewgroup1;
    }

    public _cls9(Context context, List list)
    {
        this$0 = ScanView.this;
        super();
        mInflater = LayoutInflater.from(context);
        mDevices = list;
    }
}
