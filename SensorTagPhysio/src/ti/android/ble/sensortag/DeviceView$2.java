// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;


// Referenced classes of package ti.android.ble.sensortag:
//            DeviceView, SimpleKeysStatus

static class tus
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
