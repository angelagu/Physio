// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.view.View;

// Referenced classes of package ti.android.ble.sensortag:
//            DeviceView, DeviceActivity

class this._cls0
    implements android.view.istener
{

    final DeviceView this$0;

    public void onClick(View view)
    {
        switch (view.getId())
        {
        default:
            return;

        case 2131296290: 
            DeviceView.access$000(DeviceView.this).calibrateMagnetometer();
            return;

        case 2131296300: 
            DeviceView.access$000(DeviceView.this).calibrateHeight();
            break;
        }
    }

    y()
    {
        this$0 = DeviceView.this;
        super();
    }
}
