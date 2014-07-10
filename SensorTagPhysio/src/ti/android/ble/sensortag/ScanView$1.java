// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import ti.android.util.CustomTimer;

// Referenced classes of package ti.android.ble.sensortag:
//            ScanView, MainActivity

class this._cls0
    implements android.widget..OnItemClickListener
{

    final ScanView this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Log.d("ScanView", "item click");
        ScanView.access$002(ScanView.this, new CustomTimer(ScanView.access$100(ScanView.this), 10, ScanView.access$200(ScanView.this)));
        ScanView.access$300(ScanView.this).onDeviceClick(i);
    }

    y()
    {
        this$0 = ScanView.this;
        super();
    }
}
