// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import ti.android.util.CustomTimerCallback;

// Referenced classes of package ti.android.ble.sensortag:
//            ScanView, MainActivity

class this._cls1
    implements Runnable
{

    final tatus this$1;

    public void run()
    {
        setStatus("");
    }

    nit>()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class ti/android/ble/sensortag/ScanView$4

/* anonymous class */
    class ScanView._cls4 extends CustomTimerCallback
    {

        final ScanView this$0;

        public void onTick(int i)
        {
        }

        public void onTimeout()
        {
            ScanView.access$300(ScanView.this).runOnUiThread(new ScanView._cls4._cls1());
            ScanView.access$402(ScanView.this, null);
        }

            
            {
                this$0 = ScanView.this;
                super();
            }
    }

}
