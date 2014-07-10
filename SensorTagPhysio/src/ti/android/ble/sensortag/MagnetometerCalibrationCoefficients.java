// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import ti.android.util.Point3D;

public final class MagnetometerCalibrationCoefficients extends Enum
{

    private static final MagnetometerCalibrationCoefficients $VALUES[];
    public static final MagnetometerCalibrationCoefficients INSTANCE;
    Point3D val;

    private MagnetometerCalibrationCoefficients(String s, int i)
    {
        super(s, i);
        val = new Point3D(0.0D, 0.0D, 0.0D);
    }

    public static MagnetometerCalibrationCoefficients valueOf(String s)
    {
        return (MagnetometerCalibrationCoefficients)Enum.valueOf(ti/android/ble/sensortag/MagnetometerCalibrationCoefficients, s);
    }

    public static MagnetometerCalibrationCoefficients[] values()
    {
        return (MagnetometerCalibrationCoefficients[])$VALUES.clone();
    }

    static 
    {
        INSTANCE = new MagnetometerCalibrationCoefficients("INSTANCE", 0);
        MagnetometerCalibrationCoefficients amagnetometercalibrationcoefficients[] = new MagnetometerCalibrationCoefficients[1];
        amagnetometercalibrationcoefficients[0] = INSTANCE;
        $VALUES = amagnetometercalibrationcoefficients;
    }
}
