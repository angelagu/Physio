// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.common;

import android.bluetooth.BluetoothDevice;

public class BleDeviceInfo
{

    private BluetoothDevice mBtDevice;
    private int mRssi;

    public BleDeviceInfo(BluetoothDevice bluetoothdevice, int i)
    {
        mBtDevice = bluetoothdevice;
        mRssi = i;
    }

    public BluetoothDevice getBluetoothDevice()
    {
        return mBtDevice;
    }

    public int getRssi()
    {
        return mRssi;
    }

    public void updateRssi(int i)
    {
        mRssi = i;
    }
}
