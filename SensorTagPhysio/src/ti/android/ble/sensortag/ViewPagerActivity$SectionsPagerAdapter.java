// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.ActionBar;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package ti.android.ble.sensortag:
//            ViewPagerActivity

public class mTitles extends FragmentStatePagerAdapter
{

    private List mFragmentList;
    private List mTitles;
    final ViewPagerActivity this$0;

    public void addSection(Fragment fragment, String s)
    {
        ActionBar actionbar = getActionBar();
        mFragmentList.add(fragment);
        mTitles.add(s);
        actionbar.addTab(actionbar.newTab().mTitles(s).mTitles(tabListener));
        notifyDataSetChanged();
        Log.d("ViewPagerActivity", (new StringBuilder()).append("Tab: ").append(s).toString());
    }

    public int getCount()
    {
        return mTitles.size();
    }

    public Fragment getItem(int i)
    {
        return (Fragment)mFragmentList.get(i);
    }

    public CharSequence getPageTitle(int i)
    {
        if (i < getCount())
        {
            return (CharSequence)mTitles.get(i);
        } else
        {
            return null;
        }
    }

    public (FragmentManager fragmentmanager)
    {
        this$0 = ViewPagerActivity.this;
        super(fragmentmanager);
        mFragmentList = new ArrayList();
        mTitles = new ArrayList();
    }
}
