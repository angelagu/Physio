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
        int i = Sensor.access$100(abyte0, 2).intValue();
        return new Point3D(-6F + 125F * ((float)(i - i % 4) / 65535F), 0.0D, 0.0D);
    }

    (String s, int i, UUID uuid, UUID uuid1, UUID uuid2)
    {
        super(s, i, uuid, uuid1, uuid2, null);
    }
}
