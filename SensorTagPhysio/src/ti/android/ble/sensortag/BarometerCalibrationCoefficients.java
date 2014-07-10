// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import java.util.List;

public final class BarometerCalibrationCoefficients extends Enum
{

    private static final BarometerCalibrationCoefficients $VALUES[];
    public static final BarometerCalibrationCoefficients INSTANCE;
    public volatile List barometerCalibrationCoefficients;
    public volatile double heightCalibration;

    private BarometerCalibrationCoefficients(String s, int i)
    {
        super(s, i);
    }

    public static BarometerCalibrationCoefficients valueOf(String s)
    {
        return (BarometerCalibrationCoefficients)Enum.valueOf(ti/android/ble/sensortag/BarometerCalibrationCoefficients, s);
    }

    public static BarometerCalibrationCoefficients[] values()
    {
        return (BarometerCalibrationCoefficients[])$VALUES.clone();
    }

    static 
    {
        INSTANCE = new BarometerCalibrationCoefficients("INSTANCE", 0);
        BarometerCalibrationCoefficients abarometercalibrationcoefficients[] = new BarometerCalibrationCoefficients[1];
        abarometercalibrationcoefficients[0] = INSTANCE;
        $VALUES = abarometercalibrationcoefficients;
    }
}
