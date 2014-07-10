// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;


// Referenced classes of package ti.android.ble.sensortag:
//            MainActivity

class this._cls0
    implements Runnable
{

    final MainActivity this$0;

    public void run()
    {
        setError("Connection timed out");
    }

    ()
    {
        this$0 = MainActivity.this;
        super();
    }
}
