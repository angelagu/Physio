// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import java.util.UUID;

// Referenced classes of package ti.android.ble.sensortag:
//            Sensor, SimpleKeysStatus

static final class nit> extends Sensor
{

    public SimpleKeysStatus convertKeys(byte abyte0[])
    {
        Integer integer = Integer.valueOf(abyte0[0]);
        return SimpleKeysStatus.values()[integer.intValue() % 4];
    }

    sStatus(String s, int i, UUID uuid, UUID uuid1, UUID uuid2)
    {
        super(s, i, uuid, uuid1, uuid2, null);
    }
}
