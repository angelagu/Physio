// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ti.android.ble.sensortag;

import android.bluetooth.BluetoothGattCharacteristic;
import android.util.Log;
import java.util.List;
import java.util.UUID;
import ti.android.util.Point3D;

// Referenced classes of package ti.android.ble.sensortag:
//            SensorTag, SimpleKeysStatus, MagnetometerCalibrationCoefficients, BarometerCalibrationCoefficients

public class Sensor extends Enum
{

    private static final Sensor $VALUES[];
    public static final Sensor ACCELEROMETER;
    public static final Sensor BAROMETER;
    public static final byte CALIBRATE_SENSOR_CODE = 2;
    public static final byte DISABLE_SENSOR_CODE = 0;
    public static final byte ENABLE_SENSOR_CODE = 1;
    public static final Sensor GYROSCOPE;
    public static final Sensor HUMIDITY;
    public static final Sensor IR_TEMPERATURE;
    public static final Sensor MAGNETOMETER;
    public static final Sensor SENSOR_LIST[];
    public static final Sensor SIMPLE_KEYS;
    private final UUID config;
    private final UUID data;
    private byte enableCode;
    private final UUID service;

    private Sensor(String s, int i, UUID uuid, UUID uuid1, UUID uuid2)
    {
        super(s, i);
        service = uuid;
        data = uuid1;
        config = uuid2;
        enableCode = 1;
    }

    private Sensor(String s, int i, UUID uuid, UUID uuid1, UUID uuid2, byte byte0)
    {
        super(s, i);
        service = uuid;
        data = uuid1;
        config = uuid2;
        enableCode = byte0;
    }



    public static Sensor getFromDataUuid(UUID uuid)
    {
        Sensor asensor[] = values();
        int i = asensor.length;
        for (int j = 0; j < i; j++)
        {
            Sensor sensor = asensor[j];
            if (sensor.getData().equals(uuid))
            {
                return sensor;
            }
        }

        throw new RuntimeException("Programmer error, unable to find uuid.");
    }

    private static Integer shortSignedAtOffset(byte abyte0[], int i)
    {
        Integer integer = Integer.valueOf(0xff & abyte0[i]);
        return Integer.valueOf((Integer.valueOf(abyte0[i + 1]).intValue() << 8) + integer.intValue());
    }

    private static Integer shortUnsignedAtOffset(byte abyte0[], int i)
    {
        Integer integer = Integer.valueOf(0xff & abyte0[i]);
        return Integer.valueOf((Integer.valueOf(0xff & abyte0[i + 1]).intValue() << 8) + integer.intValue());
    }

    public static Sensor valueOf(String s)
    {
        return (Sensor)Enum.valueOf(ti/android/ble/sensortag/Sensor, s);
    }

    public static Sensor[] values()
    {
        return (Sensor[])$VALUES.clone();
    }

    public Point3D convert(byte abyte0[])
    {
        throw new UnsupportedOperationException("Programmer error, the individual enum classes are supposed to override this method.");
    }

    public SimpleKeysStatus convertKeys(byte abyte0[])
    {
        throw new UnsupportedOperationException("Programmer error, the individual enum classes are supposed to override this method.");
    }

    public UUID getConfig()
    {
        return config;
    }

    public UUID getData()
    {
        return data;
    }

    public byte getEnableSensorCode()
    {
        return enableCode;
    }

    public UUID getService()
    {
        return service;
    }

    public void onCharacteristicChanged(BluetoothGattCharacteristic bluetoothgattcharacteristic)
    {
        throw new UnsupportedOperationException("Programmer error, the individual enum classes are supposed to override this method.");
    }

    static 
    {
        IR_TEMPERATURE = new Sensor("IR_TEMPERATURE", 0, SensorTag.UUID_IRT_SERV, SensorTag.UUID_IRT_DATA, SensorTag.UUID_IRT_CONF) {

            private double extractAmbientTemperature(byte abyte0[])
            {
                return (double)Sensor.shortUnsignedAtOffset(abyte0, 2).intValue() / 128D;
            }

            private double extractTargetTemperature(byte abyte0[], double d)
            {
                double d1 = 1.5625000000000001E-07D * Sensor.shortSignedAtOffset(abyte0, 0).doubleValue();
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

        };
        ACCELEROMETER = new Sensor("ACCELEROMETER", 1, SensorTag.UUID_ACC_SERV, SensorTag.UUID_ACC_DATA, SensorTag.UUID_ACC_CONF) {

            public Point3D convert(byte abyte0[])
            {
                Integer integer = Integer.valueOf(abyte0[0]);
                Integer integer1 = Integer.valueOf(abyte0[1]);
                Integer integer2 = Integer.valueOf(-1 * abyte0[2]);
                return new Point3D((double)integer.intValue() / 64D, (double)integer1.intValue() / 64D, (double)integer2.intValue() / 64D);
            }

        };
        HUMIDITY = new Sensor("HUMIDITY", 2, SensorTag.UUID_HUM_SERV, SensorTag.UUID_HUM_DATA, SensorTag.UUID_HUM_CONF) {

            public Point3D convert(byte abyte0[])
            {
                int i = Sensor.shortUnsignedAtOffset(abyte0, 2).intValue();
                return new Point3D(-6F + 125F * ((float)(i - i % 4) / 65535F), 0.0D, 0.0D);
            }

        };
        MAGNETOMETER = new Sensor("MAGNETOMETER", 3, SensorTag.UUID_MAG_SERV, SensorTag.UUID_MAG_DATA, SensorTag.UUID_MAG_CONF) {

            public Point3D convert(byte abyte0[])
            {
                Point3D point3d = MagnetometerCalibrationCoefficients.INSTANCE.val;
                float f = -1F * (0.03051758F * (float)Sensor.shortSignedAtOffset(abyte0, 0).intValue());
                float f1 = -1F * (0.03051758F * (float)Sensor.shortSignedAtOffset(abyte0, 2).intValue());
                float f2 = 0.03051758F * (float)Sensor.shortSignedAtOffset(abyte0, 4).intValue();
                return new Point3D((double)f - point3d.x, (double)f1 - point3d.y, (double)f2 - point3d.z);
            }

        };
        GYROSCOPE = new Sensor("GYROSCOPE", 4, SensorTag.UUID_GYR_SERV, SensorTag.UUID_GYR_DATA, SensorTag.UUID_GYR_CONF, (byte)7) {

            public Point3D convert(byte abyte0[])
            {
                float f = -1F * (0.007629395F * (float)Sensor.shortSignedAtOffset(abyte0, 0).intValue());
                float f1 = 0.007629395F * (float)Sensor.shortSignedAtOffset(abyte0, 2).intValue();
                float f2 = 0.007629395F * (float)Sensor.shortSignedAtOffset(abyte0, 4).intValue();
                return new Point3D(f1, f, f2);
            }

        };
        BAROMETER = new Sensor("BAROMETER", 5, SensorTag.UUID_BAR_SERV, SensorTag.UUID_BAR_DATA, SensorTag.UUID_BAR_CONF) {

            public Point3D convert(byte abyte0[])
            {
                List list = BarometerCalibrationCoefficients.INSTANCE.barometerCalibrationCoefficients;
                if (list == null)
                {
                    Log.w("Custom", "Data notification arrived for barometer before it was calibrated.");
                    return new Point3D(0.0D, 0.0D, 0.0D);
                }
                int ai[] = new int[list.size()];
                for (int i = 0; i < list.size(); i++)
                {
                    ai[i] = ((Integer)list.get(i)).intValue();
                }

                Integer integer = Sensor.shortSignedAtOffset(abyte0, 0);
                Integer integer1 = Sensor.shortUnsignedAtOffset(abyte0, 2);
                Double double1 = Double.valueOf((double)ai[2] + (double)(ai[3] * integer.intValue()) / Math.pow(2D, 17D) + (((double)(ai[4] * integer.intValue()) / Math.pow(2D, 15D)) * (double)integer.intValue()) / Math.pow(2D, 19D));
                Double double2 = Double.valueOf((double)ai[5] * Math.pow(2D, 14D) + (double)(ai[6] * integer.intValue()) / Math.pow(2D, 3D) + (((double)(ai[7] * integer.intValue()) / Math.pow(2D, 15D)) * (double)integer.intValue()) / Math.pow(2D, 4D));
                return new Point3D(Double.valueOf((double1.doubleValue() * (double)integer1.intValue() + double2.doubleValue()) / Math.pow(2D, 14D)).doubleValue(), 0.0D, 0.0D);
            }

        };
        SIMPLE_KEYS = new Sensor("SIMPLE_KEYS", 6, SensorTag.UUID_KEY_SERV, SensorTag.UUID_KEY_DATA, null) {

            public SimpleKeysStatus convertKeys(byte abyte0[])
            {
                Integer integer = Integer.valueOf(abyte0[0]);
                return SimpleKeysStatus.values()[integer.intValue() % 4];
            }

        };
        Sensor asensor[] = new Sensor[7];
        asensor[0] = IR_TEMPERATURE;
        asensor[1] = ACCELEROMETER;
        asensor[2] = HUMIDITY;
        asensor[3] = MAGNETOMETER;
        asensor[4] = GYROSCOPE;
        asensor[5] = BAROMETER;
        asensor[6] = SIMPLE_KEYS;
        $VALUES = asensor;
        Sensor asensor1[] = new Sensor[7];
        asensor1[0] = IR_TEMPERATURE;
        asensor1[1] = ACCELEROMETER;
        asensor1[2] = MAGNETOMETER;
        asensor1[3] = GYROSCOPE;
        asensor1[4] = HUMIDITY;
        asensor1[5] = BAROMETER;
        asensor1[6] = SIMPLE_KEYS;
        SENSOR_LIST = asensor1;
    }


}
