// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import ti.android.ble.common.BluetoothLeService;

// Referenced classes of package ti.android.ble.sensortag:
//            MainActivity, ScanView

class  extends BroadcastReceiver
{

    final MainActivity this$0;

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (!"android.bluetooth.adapter.action.STATE_CHANGED".equals(s)) goto _L2; else goto _L1
_L1:
        MainActivity.access$100(MainActivity.this).getState();
        JVM INSTR tableswitch 10 12: default 52
    //                   10 87
    //                   11 52
    //                   12 68;
           goto _L3 _L4 _L3 _L5
_L3:
        Log.w("MainActivity", "Action STATE CHANGED not processed ");
_L6:
        updateGuiState();
        return;
_L5:
        MainActivity.access$202(MainActivity.this, -1);
        MainActivity.access$300(MainActivity.this);
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
                MainActivity.access$400(MainActivity.this, false);
                MainActivity.access$500(MainActivity.this);
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
            MainActivity.access$600(MainActivity.this);
            if (i == 0)
            {
                MainActivity.access$400(MainActivity.this, false);
                MainActivity.access$800(MainActivity.this).setStatus((new StringBuilder()).append(MainActivity.access$700(MainActivity.this).getName()).append(" disconnected").toString(), 5);
            } else
            {
                setError((new StringBuilder()).append("Disconnect failed. Status: ").append(i).toString());
            }
            MainActivity.access$202(MainActivity.this, -1);
            MainActivity.access$900(MainActivity.this).close();
            return;
        } else
        {
            Log.w("MainActivity", (new StringBuilder()).append("Unknown action: ").append(s).toString());
            return;
        }
    }

    ()
    {
        this$0 = MainActivity.this;
        super();
    }
}
