// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.common;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;

public class HelpView extends Fragment
{

    private String mFile;
    private int mIdFragment;
    private int mIdWebPage;

    public HelpView(String s, int i, int j)
    {
        mFile = "about.html";
        if (s != null)
        {
            mFile = s;
        }
        mIdFragment = i;
        mIdWebPage = j;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(mIdFragment, viewgroup, false);
        ((WebView)view.findViewById(mIdWebPage)).loadUrl((new StringBuilder()).append("file:///android_asset/").append(mFile).toString());
        return view;
    }
}
