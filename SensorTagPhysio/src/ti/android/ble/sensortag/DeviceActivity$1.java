// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

// Referenced classes of package ti.android.ble.sensortag:
//            DeviceActivity

class this._cls0 extends BroadcastReceiver
{

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
        DeviceActivity.access$000(DeviceActivity.this);
        DeviceActivity.access$100(DeviceActivity.this);
_L6:
        if (i != 0)
        {
            DeviceActivity.access$500(DeviceActivity.this, (new StringBuilder()).append("GATT error code: ").append(i).toString());
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
            DeviceActivity.access$200(DeviceActivity.this, s3, abyte1);
        } else
        if ("ti.android.ble.common.ACTION_DATA_WRITE".equals(s))
        {
            String s2 = intent.getStringExtra("ti.android.ble.common.EXTRA_UUID");
            DeviceActivity.access$300(DeviceActivity.this, s2, i);
        } else
        if ("ti.android.ble.common.ACTION_DATA_READ".equals(s))
        {
            String s1 = intent.getStringExtra("ti.android.ble.common.EXTRA_UUID");
            byte abyte0[] = intent.getByteArrayExtra("ti.android.ble.common.EXTRA_DATA");
            DeviceActivity.access$400(DeviceActivity.this, s1, abyte0, i);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    ()
    {
        this$0 = DeviceActivity.this;
        super();
    }
}
