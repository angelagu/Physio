// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;


// Referenced classes of package ti.android.ble.sensortag:
//            FwUpdateActivity

private class <init>
{

    short iBlocks;
    int iBytes;
    int iTimeElapsed;
    int mTick;
    short nBlocks;
    final FwUpdateActivity this$0;

    void reset()
    {
        iBytes = 0;
        iBlocks = 0;
        iTimeElapsed = 0;
        mTick = 0;
        nBlocks = (short)(FwUpdateActivity.access$1300(FwUpdateActivity.this).n / 4);
    }

    private ()
    {
        this$0 = FwUpdateActivity.this;
        super();
        iBytes = 0;
        iBlocks = 0;
        nBlocks = 0;
        iTimeElapsed = 0;
        mTick = 0;
    }

    mTick(mTick mtick)
    {
        this();
    }
}
