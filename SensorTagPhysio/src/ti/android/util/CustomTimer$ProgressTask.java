// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.util;

import android.widget.ProgressBar;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package ti.android.util:
//            CustomTimer, CustomTimerCallback

private class <init> extends TimerTask
{

    int i;
    final CustomTimer this$0;

    public void run()
    {
        i = 1 + i;
        if (CustomTimer.access$100(CustomTimer.this) != null)
        {
            CustomTimer.access$100(CustomTimer.this).setProgress(i);
        }
        if (i >= CustomTimer.access$200(CustomTimer.this))
        {
            CustomTimer.access$300(CustomTimer.this).cancel();
            CustomTimer.access$302(CustomTimer.this, null);
            if (CustomTimer.access$400(CustomTimer.this) != null)
            {
                CustomTimer.access$400(CustomTimer.this).onTimeout();
            }
        } else
        if (CustomTimer.access$400(CustomTimer.this) != null)
        {
            CustomTimer.access$400(CustomTimer.this).onTick(i);
            return;
        }
    }

    private ()
    {
        this$0 = CustomTimer.this;
        super();
        i = 0;
    }

    i(i j)
    {
        this();
    }
}
