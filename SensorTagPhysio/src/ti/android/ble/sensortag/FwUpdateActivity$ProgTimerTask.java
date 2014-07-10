// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import java.util.TimerTask;

// Referenced classes of package ti.android.ble.sensortag:
//            FwUpdateActivity

private class <init> extends TimerTask
{

    final FwUpdateActivity this$0;

    public void run()
    {
        <init> <init>1 = FwUpdateActivity.access$1000(FwUpdateActivity.this);
        <init>1. = 1 + <init>1.;
        if (FwUpdateActivity.access$1100(FwUpdateActivity.this))
        {
            FwUpdateActivity.access$1200(FwUpdateActivity.this);
            if (FwUpdateActivity.access$1000(FwUpdateActivity.this). % 20 == 0)
            {
                runOnUiThread(new Runnable() {

                    final FwUpdateActivity.ProgTimerTask this$1;

                    public void run()
                    {
                        FwUpdateActivity.access$800(this$0);
                    }

            
            {
                this$1 = FwUpdateActivity.ProgTimerTask.this;
                super();
            }
                });
            }
        }
    }

    private _cls1.this._cls1()
    {
        this$0 = FwUpdateActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
