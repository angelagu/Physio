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
        Integer integer = Integer.valueOf(abyte0[0]);
        Integer integer1 = Integer.valueOf(abyte0[1]);
        Integer integer2 = Integer.valueOf(-1 * abyte0[2]);
        return new Point3D((double)integer.intValue() / 64D, (double)integer1.intValue() / 64D, (double)integer2.intValue() / 64D);
    }

    (String s, int i, UUID uuid, UUID uuid1, UUID uuid2)
    {
        super(s, i, uuid, uuid1, uuid2, null);
    }
}
