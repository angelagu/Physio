// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.common;

import android.content.res.XmlResourceParser;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParserException;

public class GattInfo
{

    public static final UUID CC_SERVICE_UUID = UUID.fromString("f000ccc0-0451-4000-b000-000000000000");
    public static final UUID CLIENT_CHARACTERISTIC_CONFIG = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    public static final UUID OAD_SERVICE_UUID = UUID.fromString("f000ffc0-0451-4000-b000-000000000000");
    private static Map mDescrMap = new HashMap();
    private static Map mNameMap = new HashMap();
    private static final String uuidBtSigBase = "0000****-0000-1000-8000-00805f9b34fb";
    private static final String uuidTiBase = "f000****-0451-4000-b000-000000000000";

    public GattInfo(XmlResourceParser xmlresourceparser)
    {
        try
        {
            readUuidData(xmlresourceparser);
            return;
        }
        catch (XmlPullParserException xmlpullparserexception)
        {
            xmlpullparserexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    public static String getDescription(UUID uuid)
    {
        String s = toShortUuidStr(uuid);
        return (String)mDescrMap.get(s.toUpperCase());
    }

    public static boolean isBtSigUuid(UUID uuid)
    {
        return uuid.toString().replace(toShortUuidStr(uuid), "****").equals("0000****-0000-1000-8000-00805f9b34fb");
    }

    public static boolean isTiUuid(UUID uuid)
    {
        return uuid.toString().replace(toShortUuidStr(uuid), "****").equals("f000****-0451-4000-b000-000000000000");
    }

    private void readUuidData(XmlResourceParser xmlresourceparser)
        throws XmlPullParserException, IOException
    {
        xmlresourceparser.next();
        String s = null;
        String s1 = null;
        String s2 = null;
        int i = xmlresourceparser.getEventType();
        while (i != 1) 
        {
            if (i != 0)
            {
                if (i == 2)
                {
                    s = xmlresourceparser.getName();
                    s1 = xmlresourceparser.getAttributeValue(null, "uuid");
                    s2 = xmlresourceparser.getAttributeValue(null, "descr");
                } else
                if (i != 3 && i == 4 && s.equalsIgnoreCase("item") && !s1.isEmpty())
                {
                    s1 = s1.replace("0x", "");
                    mNameMap.put(s1, xmlresourceparser.getText());
                    mDescrMap.put(s1, s2);
                }
            }
            i = xmlresourceparser.next();
        }
    }

    private static String toShortUuidStr(UUID uuid)
    {
        return uuid.toString().substring(4, 8);
    }

    private static String uuidToName(String s)
    {
        return (String)mNameMap.get(s);
    }

    public static String uuidToName(UUID uuid)
    {
        return uuidToName(toShortUuidStr(uuid).toUpperCase());
    }

    public static String uuidToString(UUID uuid)
    {
        String s;
        if (isBtSigUuid(uuid))
        {
            s = toShortUuidStr(uuid);
        } else
        {
            s = uuid.toString();
        }
        return s.toUpperCase();
    }

}
