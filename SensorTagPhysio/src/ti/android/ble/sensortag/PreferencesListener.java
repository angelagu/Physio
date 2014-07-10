// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceFragment;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

// Referenced classes of package ti.android.ble.sensortag:
//            Sensor

public class PreferencesListener
    implements android.content.SharedPreferences.OnSharedPreferenceChangeListener
{

    private static final int MAX_NOTIFICATIONS = 4;
    private Context context;
    private PreferenceFragment preferenceFragment;
    private SharedPreferences sharedPreferences;

    public PreferencesListener(Context context1, SharedPreferences sharedpreferences, PreferenceFragment preferencefragment)
    {
        context = context1;
        sharedPreferences = sharedpreferences;
        preferenceFragment = preferencefragment;
    }

    private void alertNotifyLimitaion()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle("Notifications limit");
        builder.setMessage("Due to limitations in Android 4.3 BLE you may use a maximum of 4 notifications simultaneously.\n");
        builder.setIcon(0x7f020002);
        builder.setNeutralButton(0x104000a, new android.content.DialogInterface.OnClickListener() {

            final PreferencesListener this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
            }

            
            {
                this$0 = PreferencesListener.this;
                super();
            }
        });
        builder.create().show();
    }

    private List enabledSensors()
    {
        ArrayList arraylist = new ArrayList();
        Sensor asensor[] = Sensor.values();
        int i = asensor.length;
        for (int j = 0; j < i; j++)
        {
            Sensor sensor = asensor[j];
            if (isEnabledByPrefs(sensor))
            {
                arraylist.add(sensor);
            }
        }

        return arraylist;
    }

    private Sensor getSensorFromPrefKey(String s)
    {
        Sensor sensor = Sensor.valueOf(s.substring("pref_".length(), s.length() - "_on".length()).toUpperCase(Locale.ENGLISH));
        return sensor;
        NullPointerException nullpointerexception;
        nullpointerexception;
_L2:
        return null;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        continue; /* Loop/switch isn't completed */
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean isEnabledByPrefs(Sensor sensor)
    {
        String s = (new StringBuilder()).append("pref_").append(sensor.name().toLowerCase(Locale.ENGLISH)).append("_on").toString();
        if (!sharedPreferences.contains(s))
        {
            throw new RuntimeException((new StringBuilder()).append("Programmer error, could not find preference with key ").append(s).toString());
        } else
        {
            return sharedPreferences.getBoolean(s, true);
        }
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s)
    {
        boolean flag;
        if (getSensorFromPrefKey(s) == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        while (flag || !sharedpreferences.getBoolean(s, true) || enabledSensors().size() <= 4) 
        {
            return;
        }
        ((CheckBoxPreference)preferenceFragment.findPreference(s)).setChecked(false);
        alertNotifyLimitaion();
    }
}
