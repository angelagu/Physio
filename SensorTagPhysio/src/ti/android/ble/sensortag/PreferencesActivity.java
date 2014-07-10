// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.widget.ImageView;

public class PreferencesActivity extends PreferenceActivity
{

    private static final String TAG = "PreferencesActivity";

    public PreferencesActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        ((ImageView)findViewById(0x102002c)).setPadding(10, 0, 20, 10);
    }
}
