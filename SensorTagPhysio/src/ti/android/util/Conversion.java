// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.util;

import java.util.Formatter;

public class Conversion
{

    public Conversion()
    {
    }

    public static String BytetohexString(byte abyte0[], int i)
    {
        StringBuilder stringbuilder = new StringBuilder(3 * abyte0.length);
        Formatter formatter = new Formatter(stringbuilder);
        int j = 0;
        while (j < i) 
        {
            if (j < i - 1)
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = Byte.valueOf(abyte0[j]);
                formatter.format("%02X:", aobj1);
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = Byte.valueOf(abyte0[j]);
                formatter.format("%02X", aobj);
            }
            j++;
        }
        formatter.close();
        return stringbuilder.toString();
    }

    static String BytetohexString(byte abyte0[], boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder(3 * abyte0.length);
        Formatter formatter = new Formatter(stringbuilder);
        if (!flag)
        {
            int j = 0;
            while (j < abyte0.length) 
            {
                if (j < -1 + abyte0.length)
                {
                    Object aobj3[] = new Object[1];
                    aobj3[0] = Byte.valueOf(abyte0[j]);
                    formatter.format("%02X:", aobj3);
                } else
                {
                    Object aobj2[] = new Object[1];
                    aobj2[0] = Byte.valueOf(abyte0[j]);
                    formatter.format("%02X", aobj2);
                }
                j++;
            }
        } else
        {
            int i = -1 + abyte0.length;
            while (i >= 0) 
            {
                if (i > 0)
                {
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Byte.valueOf(abyte0[i]);
                    formatter.format("%02X:", aobj1);
                } else
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = Byte.valueOf(abyte0[i]);
                    formatter.format("%02X", aobj);
                }
                i--;
            }
        }
        formatter.close();
        return stringbuilder.toString();
    }

    public static short buildUint16(byte byte0, byte byte1)
    {
        return (short)((byte0 << 8) + (byte1 & 0xff));
    }

    public static int hexStringtoByte(String s, byte abyte0[])
    {
        boolean flag = false;
        int i = 0;
        if (s != null)
        {
            int j = 0;
            while (j < s.length()) 
            {
                if (s.charAt(j) >= '0' && s.charAt(j) <= '9' || s.charAt(j) >= 'a' && s.charAt(j) <= 'f' || s.charAt(j) >= 'A' && s.charAt(j) <= 'F')
                {
                    if (flag)
                    {
                        abyte0[i] = (byte)(abyte0[i] + (byte)Character.digit(s.charAt(j), 16));
                        i++;
                    } else
                    {
                        abyte0[i] = (byte)(Character.digit(s.charAt(j), 16) << 4);
                    }
                    if (!flag)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                }
                j++;
            }
        }
        return i;
    }

    public static byte hiUint16(short word0)
    {
        return (byte)(word0 >> 8);
    }

    private static boolean isAsciiPrintable(char c)
    {
        return c >= ' ' && c < '\177';
    }

    public static boolean isAsciiPrintable(String s)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = s.length();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                if (!isAsciiPrintable(s.charAt(j)))
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public static byte loUint16(short word0)
    {
        return (byte)(word0 & 0xff);
    }
}
