// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothGattCharacteristic;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import java.util.UUID;
import ti.android.util.Conversion;

// Referenced classes of package ti.android.ble.sensortag:
//            FwUpdateActivity

class this._cls0 extends BroadcastReceiver
{

    final FwUpdateActivity this$0;

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        Log.d(FwUpdateActivity.access$200(), (new StringBuilder()).append("action: ").append(s).toString());
        if ("ti.android.ble.common.ACTION_DATA_NOTIFY".equals(s))
        {
            byte abyte0[] = intent.getByteArrayExtra("ti.android.ble.common.EXTRA_DATA");
            if (intent.getStringExtra("ti.android.ble.common.EXTRA_UUID").equals(FwUpdateActivity.access$300(FwUpdateActivity.this).getUuid().toString()))
            {
                FwUpdateActivity.access$400(FwUpdateActivity.this).ver = Conversion.buildUint16(abyte0[1], abyte0[0]);
                gHdr ghdr = FwUpdateActivity.access$400(FwUpdateActivity.this);
                char c;
                if ((1 & FwUpdateActivity.access$400(FwUpdateActivity.this).ver) == 1)
                {
                    c = 'B';
                } else
                {
                    c = 'A';
                }
                ghdr.imgType = Character.valueOf(c);
                FwUpdateActivity.access$400(FwUpdateActivity.this).len = Conversion.buildUint16(abyte0[3], abyte0[2]);
                FwUpdateActivity.access$600(FwUpdateActivity.this, FwUpdateActivity.access$500(FwUpdateActivity.this), FwUpdateActivity.access$400(FwUpdateActivity.this));
            }
        } else
        if ("ti.android.ble.common.ACTION_DATA_WRITE".equals(s))
        {
            int i = intent.getIntExtra("ti.android.ble.common.EXTRA_STATUS", 0);
            if (i != 0)
            {
                Log.e(FwUpdateActivity.access$200(), (new StringBuilder()).append("Write failed: ").append(i).toString());
                Toast.makeText(context, (new StringBuilder()).append("GATT error: status=").append(i).toString(), 0).show();
                return;
            }
        }
    }

    gHdr()
    {
        this$0 = FwUpdateActivity.this;
        super();
    }
}
