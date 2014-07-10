// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.util;


public abstract class CustomTimerCallback
{

    public CustomTimerCallback()
    {
    }

    protected abstract void onTick(int i);

    protected abstract void onTimeout();
}
