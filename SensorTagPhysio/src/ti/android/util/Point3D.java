// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.util;


public class Point3D
{

    public double x;
    public double y;
    public double z;

    public Point3D(double d, double d1, double d2)
    {
        x = d;
        y = d1;
        z = d2;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            Point3D point3d = (Point3D)obj;
            if (Double.doubleToLongBits(x) != Double.doubleToLongBits(point3d.x))
            {
                return false;
            }
            if (Double.doubleToLongBits(y) != Double.doubleToLongBits(point3d.y))
            {
                return false;
            }
            if (Double.doubleToLongBits(z) != Double.doubleToLongBits(point3d.z))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        long l = Double.doubleToLongBits(x);
        int i = 31 + (int)(l ^ l >>> 32);
        long l1 = Double.doubleToLongBits(y);
        int j = i * 31 + (int)(l1 ^ l1 >>> 32);
        long l2 = Double.doubleToLongBits(z);
        return j * 31 + (int)(l2 ^ l2 >>> 32);
    }
}
