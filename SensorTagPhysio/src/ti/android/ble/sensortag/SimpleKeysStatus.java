// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;


public final class SimpleKeysStatus extends Enum
{

    private static final SimpleKeysStatus $VALUES[];
    public static final SimpleKeysStatus OFF_OFF;
    public static final SimpleKeysStatus OFF_ON;
    public static final SimpleKeysStatus ON_OFF;
    public static final SimpleKeysStatus ON_ON;

    private SimpleKeysStatus(String s, int i)
    {
        super(s, i);
    }

    public static SimpleKeysStatus valueOf(String s)
    {
        return (SimpleKeysStatus)Enum.valueOf(ti/android/ble/sensortag/SimpleKeysStatus, s);
    }

    public static SimpleKeysStatus[] values()
    {
        return (SimpleKeysStatus[])$VALUES.clone();
    }

    static 
    {
        OFF_OFF = new SimpleKeysStatus("OFF_OFF", 0);
        OFF_ON = new SimpleKeysStatus("OFF_ON", 1);
        ON_OFF = new SimpleKeysStatus("ON_OFF", 2);
        ON_ON = new SimpleKeysStatus("ON_ON", 3);
        SimpleKeysStatus asimplekeysstatus[] = new SimpleKeysStatus[4];
        asimplekeysstatus[0] = OFF_OFF;
        asimplekeysstatus[1] = OFF_ON;
        asimplekeysstatus[2] = ON_OFF;
        asimplekeysstatus[3] = ON_ON;
        $VALUES = asimplekeysstatus;
    }
}
