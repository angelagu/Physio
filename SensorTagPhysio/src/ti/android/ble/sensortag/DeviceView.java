// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import java.text.DecimalFormat;
import java.util.UUID;
import ti.android.util.Point3D;

// Referenced classes of package ti.android.ble.sensortag:
//            SensorTag, Sensor, BarometerCalibrationCoefficients, SimpleKeysStatus, 
//            DeviceActivity

public class DeviceView extends Fragment
{

    private static final int ID_ACC = 1;
    private static final int ID_AMB = 5;
    private static final int ID_BAR = 7;
    private static final int ID_GYR = 3;
    private static final int ID_HUM = 6;
    private static final int ID_KEY = 0;
    private static final int ID_MAG = 2;
    private static final int ID_OBJ = 4;
    private static final int ID_OFFSET = 0;
    private static final double PA_PER_METER = 12D;
    private static final String TAG = "DeviceView";
    public static DeviceView mInstance = null;
    private DecimalFormat decimal;
    private TextView mAccValue;
    private DeviceActivity mActivity;
    private TextView mAmbValue;
    private TableRow mBarPanel;
    private TextView mBarValue;
    private ImageView mButton;
    private TextView mGyrValue;
    private TextView mHumValue;
    private TableRow mMagPanel;
    private TextView mMagValue;
    private TextView mObjValue;
    private TextView mStatus;
    private TableLayout table;

    public DeviceView()
    {
        decimal = new DecimalFormat("+0.00;-0.00");
    }

    private void showItem(int i, boolean flag)
    {
        View view = table.getChildAt(0 + i * 2);
        View view1 = table.getChildAt(1 + (0 + i * 2));
        int j;
        if (flag)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        view.setVisibility(j);
        view1.setVisibility(j);
    }

    public void onCharacteristicChanged(String s, byte abyte0[])
    {
        if (s.equals(SensorTag.UUID_ACC_DATA.toString()))
        {
            Point3D point3d5 = Sensor.ACCELEROMETER.convert(abyte0);
            String s7 = (new StringBuilder()).append(decimal.format(point3d5.x)).append("\n").append(decimal.format(point3d5.y)).append("\n").append(decimal.format(point3d5.z)).append("\n").toString();
            mAccValue.setText(s7);
        }
        if (s.equals(SensorTag.UUID_MAG_DATA.toString()))
        {
            Point3D point3d4 = Sensor.MAGNETOMETER.convert(abyte0);
            String s6 = (new StringBuilder()).append(decimal.format(point3d4.x)).append("\n").append(decimal.format(point3d4.y)).append("\n").append(decimal.format(point3d4.z)).append("\n").toString();
            mMagValue.setText(s6);
        }
        if (s.equals(SensorTag.UUID_GYR_DATA.toString()))
        {
            Point3D point3d3 = Sensor.GYROSCOPE.convert(abyte0);
            String s5 = (new StringBuilder()).append(decimal.format(point3d3.x)).append("\n").append(decimal.format(point3d3.y)).append("\n").append(decimal.format(point3d3.z)).append("\n").toString();
            mGyrValue.setText(s5);
        }
        if (s.equals(SensorTag.UUID_IRT_DATA.toString()))
        {
            Point3D point3d2 = Sensor.IR_TEMPERATURE.convert(abyte0);
            String s3 = (new StringBuilder()).append(decimal.format(point3d2.x)).append("\n").toString();
            mAmbValue.setText(s3);
            String s4 = (new StringBuilder()).append(decimal.format(point3d2.y)).append("\n").toString();
            mObjValue.setText(s4);
        }
        if (s.equals(SensorTag.UUID_HUM_DATA.toString()))
        {
            Point3D point3d1 = Sensor.HUMIDITY.convert(abyte0);
            String s2 = (new StringBuilder()).append(decimal.format(point3d1.x)).append("\n").toString();
            mHumValue.setText(s2);
        }
        if (s.equals(SensorTag.UUID_BAR_DATA.toString()))
        {
            Point3D point3d = Sensor.BAROMETER.convert(abyte0);
            double d = (double)Math.round(10D * -((point3d.x - BarometerCalibrationCoefficients.INSTANCE.heightCalibration) / 12D)) / 10D;
            String s1 = (new StringBuilder()).append(decimal.format(point3d.x / 100D)).append("\n").append(d).toString();
            mBarValue.setText(s1);
        }
        if (!s.equals(SensorTag.UUID_KEY_DATA.toString())) goto _L2; else goto _L1
_L1:
        SimpleKeysStatus simplekeysstatus = Sensor.SIMPLE_KEYS.convertKeys(abyte0);
        static class _cls2
        {

            static final int $SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus[];

            static 
            {
                $SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus = new int[SimpleKeysStatus.values().length];
                try
                {
                    $SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus[SimpleKeysStatus.OFF_OFF.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus[SimpleKeysStatus.OFF_ON.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus[SimpleKeysStatus.ON_OFF.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus[SimpleKeysStatus.ON_ON.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.ti.android.ble.sensortag.SimpleKeysStatus[simplekeysstatus.ordinal()];
        JVM INSTR tableswitch 1 4: default 640
    //                   1 648
    //                   2 662
    //                   3 669
    //                   4 676;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        throw new UnsupportedOperationException();
_L4:
        int i = 0x7f020003;
_L9:
        mButton.setImageResource(i);
_L2:
        return;
_L5:
        i = 0x7f020004;
        continue; /* Loop/switch isn't completed */
_L6:
        i = 0x7f020005;
        continue; /* Loop/switch isn't completed */
_L7:
        i = 0x7f020006;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        Log.i("DeviceView", "onCreateView");
        mInstance = this;
        mActivity = (DeviceActivity)getActivity();
        View view = layoutinflater.inflate(0x7f030009, viewgroup, false);
        table = (TableLayout)view.findViewById(0x7f09001d);
        mAccValue = (TextView)view.findViewById(0x7f090021);
        mMagValue = (TextView)view.findViewById(0x7f090023);
        mGyrValue = (TextView)view.findViewById(0x7f090025);
        mObjValue = (TextView)view.findViewById(0x7f090027);
        mAmbValue = (TextView)view.findViewById(0x7f090029);
        mHumValue = (TextView)view.findViewById(0x7f09002b);
        mBarValue = (TextView)view.findViewById(0x7f09002d);
        mButton = (ImageView)view.findViewById(0x7f09001f);
        mStatus = (TextView)view.findViewById(0x7f09001b);
        mMagPanel = (TableRow)view.findViewById(0x7f090022);
        mBarPanel = (TableRow)view.findViewById(0x7f09002c);
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final DeviceView this$0;

            public void onClick(View view1)
            {
                switch (view1.getId())
                {
                default:
                    return;

                case 2131296290: 
                    mActivity.calibrateMagnetometer();
                    return;

                case 2131296300: 
                    mActivity.calibrateHeight();
                    break;
                }
            }

            
            {
                this$0 = DeviceView.this;
                super();
            }
        };
        mMagPanel.setOnClickListener(onclicklistener);
        mBarPanel.setOnClickListener(onclicklistener);
        mActivity.onViewInflated(view);
        return view;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        updateVisibility();
    }

    void setBusy(boolean flag)
    {
        if (flag)
        {
            mStatus.setTextAppearance(mActivity, 0x7f070012);
            return;
        } else
        {
            mStatus.setTextAppearance(mActivity, 0x7f07000f);
            return;
        }
    }

    void setError(String s)
    {
        mStatus.setText(s);
        mStatus.setTextAppearance(mActivity, 0x7f070013);
    }

    void setStatus(String s)
    {
        mStatus.setText(s);
        mStatus.setTextAppearance(mActivity, 0x7f070011);
    }

    void updateVisibility()
    {
        showItem(0, mActivity.isEnabledByPrefs(Sensor.SIMPLE_KEYS));
        showItem(1, mActivity.isEnabledByPrefs(Sensor.ACCELEROMETER));
        showItem(2, mActivity.isEnabledByPrefs(Sensor.MAGNETOMETER));
        showItem(3, mActivity.isEnabledByPrefs(Sensor.GYROSCOPE));
        showItem(4, mActivity.isEnabledByPrefs(Sensor.IR_TEMPERATURE));
        showItem(5, mActivity.isEnabledByPrefs(Sensor.IR_TEMPERATURE));
        showItem(6, mActivity.isEnabledByPrefs(Sensor.HUMIDITY));
        showItem(7, mActivity.isEnabledByPrefs(Sensor.BAROMETER));
    }


}
