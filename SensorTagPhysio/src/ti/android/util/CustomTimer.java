// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.util;

import android.widget.ProgressBar;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package ti.android.util:
//            CustomTimerCallback

public class CustomTimer
{
    private class ProgressTask extends TimerTask
    {

        int i;
        final CustomTimer this$0;

        public void run()
        {
            i = 1 + i;
            if (mProgressBar != null)
            {
                mProgressBar.setProgress(i);
            }
            if (i >= mTimeout)
            {
                mTimer.cancel();
                mTimer = null;
                if (mCb != null)
                {
                    mCb.onTimeout();
                }
            } else
            if (mCb != null)
            {
                mCb.onTick(i);
                return;
            }
        }

        private ProgressTask()
        {
            this$0 = CustomTimer.this;
            super();
            i = 0;
        }

    }


    private CustomTimerCallback mCb;
    private ProgressBar mProgressBar;
    private int mTimeout;
    private Timer mTimer;

    public CustomTimer(ProgressBar progressbar, int i, CustomTimerCallback customtimercallback)
    {
        mCb = null;
        mTimeout = i;
        mProgressBar = progressbar;
        mTimer = new Timer();
        ProgressTask progresstask = new ProgressTask();
        mTimer.schedule(progresstask, 0L, 1000L);
        mCb = customtimercallback;
    }

    public void stop()
    {
        if (mTimer != null)
        {
            mTimer.cancel();
            mTimer = null;
        }
    }





/*
    static Timer access$302(CustomTimer customtimer, Timer timer)
    {
        customtimer.mTimer = timer;
        return timer;
    }

*/

}
