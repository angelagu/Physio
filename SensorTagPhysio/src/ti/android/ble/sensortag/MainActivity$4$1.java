// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import ti.android.ble.common.BluetoothLeService;

// Referenced classes of package ti.android.ble.sensortag:
//            MainActivity

class this._cls1
    implements Runnable
{

    final rror this$1;

    public void run()
    {
        MainActivity.access$1000().setError("Multiple connections!");
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class ti/android/ble/sensortag/MainActivity$4

/* anonymous class */
    class MainActivity._cls4
        implements ServiceConnection
    {

        final MainActivity this$0;

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            MainActivity.access$902(MainActivity.this, ((ti.android.ble.common.BluetoothLeService.LocalBinder)ibinder).getService());
            if (!MainActivity.access$900(MainActivity.this).initialize())
            {
                Log.e("MainActivity", "Unable to initialize BluetoothLeService");
                finish();
                return;
            }
            if (MainActivity.access$900(MainActivity.this).numConnectedDevices() > 0)
            {
                runOnUiThread(new MainActivity._cls4._cls1());
                return;
            } else
            {
                MainActivity.access$1100(MainActivity.this);
                Log.i("MainActivity", "BluetoothLeService connected");
                return;
            }
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            MainActivity.access$902(MainActivity.this, null);
            Log.i("MainActivity", "BluetoothLeService disconnected");
        }

            
            {
                this$0 = MainActivity.this;
                super();
            }
    }

}
