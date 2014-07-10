// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.util;

import android.content.Context;
import android.widget.Toast;

public class CustomToast
{

    public CustomToast()
    {
    }

    public static void middleBottom(Context context, String s)
    {
        Toast toast = Toast.makeText(context, s, 0);
        toast.setGravity(81, 0, 300);
        toast.show();
    }
}
