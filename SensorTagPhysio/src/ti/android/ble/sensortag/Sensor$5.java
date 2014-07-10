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

    public Point3D convert(byte abyte0[])
    {
        float f = -1F * (0.007629395F * (float)Sensor.access$200(abyte0, 0).intValue());
        float f1 = 0.007629395F * (float)Sensor.access$200(abyte0, 2).intValue();
        float f2 = 0.007629395F * (float)Sensor.access$200(abyte0, 4).intValue();
        return new Point3D(f1, f, f2);
    }

    (String s, int i, UUID uuid, UUID uuid1, UUID uuid2, byte byte0)
    {
        super(s, i, uuid, uuid1, uuid2, byte0, null);
    }
}
