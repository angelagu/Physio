// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.ActionBar;
import android.app.Dialog;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.MenuItem;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package ti.android.ble.sensortag:
//            AboutDialog

public class ViewPagerActivity extends FragmentActivity
{
    public class SectionsPagerAdapter extends FragmentStatePagerAdapter
    {

        private List mFragmentList;
        private List mTitles;
        final ViewPagerActivity this$0;

        public void addSection(Fragment fragment, String s)
        {
            ActionBar actionbar = getActionBar();
            mFragmentList.add(fragment);
            mTitles.add(s);
            actionbar.addTab(actionbar.newTab().setText(s).setTabListener(tabListener));
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

        public SectionsPagerAdapter(FragmentManager fragmentmanager)
        {
            this$0 = ViewPagerActivity.this;
            super(fragmentmanager);
            mFragmentList = new ArrayList();
            mTitles = new ArrayList();
        }
    }


    private static final String TAG = "ViewPagerActivity";
    protected static ViewPagerActivity mThis = null;
    private int mCurrentTab;
    protected int mResourceFragmentPager;
    protected int mResourceIdPager;
    protected SectionsPagerAdapter mSectionsPagerAdapter;
    private ViewPager mViewPager;
    android.app.ActionBar.TabListener tabListener;

    protected ViewPagerActivity()
    {
        mCurrentTab = 0;
        tabListener = new android.app.ActionBar.TabListener() {

            final ViewPagerActivity this$0;

            public void onTabReselected(android.app.ActionBar.Tab tab, FragmentTransaction fragmenttransaction)
            {
                int i = tab.getPosition();
                Log.d("ViewPagerActivity", (new StringBuilder()).append("onTabReselected: ").append(i).toString());
            }

            public void onTabSelected(android.app.ActionBar.Tab tab, FragmentTransaction fragmenttransaction)
            {
                int i = tab.getPosition();
                Log.d("ViewPagerActivity", (new StringBuilder()).append("onTabSelected: ").append(i).toString());
                mCurrentTab = i;
                mViewPager.setCurrentItem(i);
            }

            public void onTabUnselected(android.app.ActionBar.Tab tab, FragmentTransaction fragmenttransaction)
            {
                int i = tab.getPosition();
                Log.d("ViewPagerActivity", (new StringBuilder()).append("onTabUnselected: ").append(i).toString());
            }

            
            {
                this$0 = ViewPagerActivity.this;
                super();
            }
        };
        Log.d("ViewPagerActivity", "construct");
        mThis = this;
    }

    public void onBackPressed()
    {
        if (mCurrentTab != 0)
        {
            getActionBar().setSelectedNavigationItem(0);
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        Log.d("ViewPagerActivity", "onCreate");
        super.onCreate(bundle);
        setContentView(mResourceFragmentPager);
        final ActionBar actionBar = getActionBar();
        actionBar.setNavigationMode(2);
        ((ImageView)findViewById(0x102002c)).setPadding(10, 0, 20, 10);
        mViewPager = (ViewPager)findViewById(mResourceIdPager);
        mViewPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.SimpleOnPageChangeListener() {

            final ViewPagerActivity this$0;
            final ActionBar val$actionBar;

            public void onPageSelected(int i)
            {
                Log.d("ViewPagerActivity", (new StringBuilder()).append("onPageSelected: ").append(i).toString());
                actionBar.setSelectedNavigationItem(i);
            }

            
            {
                this$0 = ViewPagerActivity.this;
                actionBar = actionbar;
                super();
            }
        });
        mSectionsPagerAdapter = new SectionsPagerAdapter(getSupportFragmentManager());
        mViewPager.setAdapter(mSectionsPagerAdapter);
    }

    public void onDestroy()
    {
        Log.d("ViewPagerActivity", "onDestroy");
        mSectionsPagerAdapter = null;
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        Log.d("ViewPagerActivity", "onOptionsItemSelected");
        switch (menuitem.getItemId())
        {
        default:
            return super.onOptionsItemSelected(menuitem);

        case 16908332: 
            onBackPressed();
            break;
        }
        return true;
    }

    protected void openAboutDialog()
    {
        (new AboutDialog(this)).show();
    }



/*
    static int access$002(ViewPagerActivity viewpageractivity, int i)
    {
        viewpageractivity.mCurrentTab = i;
        return i;
    }

*/

}
