// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import java.util.UUID;
import ti.android.util.Point3D;

// Referenced classes of package ti.android.ble.sensortag:
//            Sensor

static final class nit> extends Sensor
{

    private double extractAmbientTemperature(byte abyte0[])
    {
        return (double)Sensor.access$100(abyte0, 2).intValue() / 128D;
    }

    private double extractTargetTemperature(byte abyte0[], double d)
    {
        double d1 = 1.5625000000000001E-07D * Sensor.access$200(abyte0, 0).doubleValue();
        double d2 = d + 273.14999999999998D;
        double d3 = 5.5930000000000001E-14D * (1.0D + 0.00175D * (d2 - 298.14999999999998D) + -1.6779999999999999E-05D * Math.pow(d2 - 298.14999999999998D, 2D));
        double d4 = -2.94E-05D + -5.7000000000000005E-07D * (d2 - 298.14999999999998D) + 4.6299999999999999E-09D * Math.pow(d2 - 298.14999999999998D, 2D);
        double d5 = (d1 - d4) + 13.4D * Math.pow(d1 - d4, 2D);
        return Math.pow(Math.pow(d2, 4D) + d5 / d3, 0.25D) - 273.14999999999998D;
    }

    public Point3D convert(byte abyte0[])
    {
        double d = extractAmbientTemperature(abyte0);
        return new Point3D(d, extractTargetTemperature(abyte0, d), 0.0D);
    }

    (String s, int i, UUID uuid, UUID uuid1, UUID uuid2)
    {
        super(s, i, uuid, uuid1, uuid2, null);
    }
}
