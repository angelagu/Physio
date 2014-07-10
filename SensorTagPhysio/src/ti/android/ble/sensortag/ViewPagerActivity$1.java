// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.ActionBar;
import android.util.Log;

// Referenced classes of package ti.android.ble.sensortag:
//            ViewPagerActivity

class eChangeListener extends android.support.v4.view.geChangeListener
{

    final ViewPagerActivity this$0;
    final ActionBar val$actionBar;

    public void onPageSelected(int i)
    {
        Log.d("ViewPagerActivity", (new StringBuilder()).append("onPageSelected: ").append(i).toString());
        val$actionBar.setSelectedNavigationItem(i);
    }

    eChangeListener()
    {
        this$0 = final_viewpageractivity;
        val$actionBar = ActionBar.this;
        super();
    }
}
