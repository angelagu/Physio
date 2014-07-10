// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.Dialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;

public class AboutDialog extends Dialog
{
    private class OkListener
        implements android.view.View.OnClickListener
    {

        final AboutDialog this$0;

        public void onClick(View view)
        {
            AboutDialog.mDialog.dismiss();
        }

        private OkListener()
        {
            this$0 = AboutDialog.this;
            super();
        }

    }


    private static final String TAG = "AboutDialog";
    private static AboutDialog mDialog;
    private static OkListener mOkListener;
    private Context mContext;

    public AboutDialog(Context context)
    {
        super(context);
        mContext = context;
        mDialog = this;
        mOkListener = new OkListener();
    }

    public void onCreate(Bundle bundle)
    {
        TextView textview;
        String s1;
        requestWindowFeature(1);
        setContentView(0x7f030002);
        String s = mContext.getResources().getString(0x7f050000);
        ((TextView)findViewById(0x7f09000c)).setText((new StringBuilder()).append("About ").append(s).toString());
        textview = (TextView)findViewById(0x7f09000d);
        s1 = "Revision: ";
        String s2 = (new StringBuilder()).append(s1).append(mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionName).toString();
        s1 = s2;
_L2:
        textview.setText(s1);
        ((WebView)findViewById(0x7f09000e)).loadUrl("file:///android_asset/about.html");
        ((Button)findViewById(0x7f090010)).setOnClickListener(mOkListener);
        ((TextView)findViewById(0x7f09000f)).setText((new StringBuilder()).append(Build.MANUFACTURER.toUpperCase()).append(" ").append(Build.MODEL).append(" Android ").append(android.os.Build.VERSION.RELEASE).append(" ").append(Build.DISPLAY).toString());
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        Log.v("AboutDialog", namenotfoundexception.getMessage());
        if (true) goto _L2; else goto _L1
_L1:
    }

}
