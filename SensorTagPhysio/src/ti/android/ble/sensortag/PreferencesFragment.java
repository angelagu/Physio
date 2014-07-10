// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import java.util.Locale;

// Referenced classes of package ti.android.ble.sensortag:
//            Sensor, PreferencesListener

public class PreferencesFragment extends PreferenceFragment
{

    private static final String TAG = "PreferencesFragment";
    private PreferencesListener preferencesListener;

    public PreferencesFragment()
    {
    }

    public boolean isEnabledByPrefs(Sensor sensor)
    {
        String s = (new StringBuilder()).append("pref_").append(sensor.name().toLowerCase(Locale.ENGLISH)).append("_on").toString();
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
        if (!sharedpreferences.contains(s))
        {
            throw new RuntimeException((new StringBuilder()).append("Programmer error, could not find preference with key ").append(s).toString());
        } else
        {
            return sharedpreferences.getBoolean(s, true);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        addPreferencesFromResource(0x7f040004);
        SharedPreferences sharedpreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
        preferencesListener = new PreferencesListener(getActivity(), sharedpreferences, this);
        sharedpreferences.registerOnSharedPreferenceChangeListener(preferencesListener);
    }
}
