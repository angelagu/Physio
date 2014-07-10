// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import ti.android.util.CustomTimerCallback;

// Referenced classes of package ti.android.ble.sensortag:
//            ScanView, MainActivity

class <init> extends CustomTimerCallback
{

    final ScanView this$0;

    public void onTick(int i)
    {
    }

    public void onTimeout()
    {
        ScanView.access$300(ScanView.this).onScanTimeout();
    }

    y()
    {
        this$0 = ScanView.this;
        super();
    }
}
