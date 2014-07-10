.class public enum Lti/android/ble/sensortag/Sensor;
.super Ljava/lang/Enum;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lti/android/ble/sensortag/Sensor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti/android/ble/sensortag/Sensor; = null

.field public static final enum ACCELEROMETER:Lti/android/ble/sensortag/Sensor; = null

.field public static final enum BAROMETER:Lti/android/ble/sensortag/Sensor; = null

.field public static final CALIBRATE_SENSOR_CODE:B = 0x2t

.field public static final DISABLE_SENSOR_CODE:B = 0x0t

.field public static final ENABLE_SENSOR_CODE:B = 0x1t

.field public static final enum GYROSCOPE:Lti/android/ble/sensortag/Sensor;

.field public static final enum HUMIDITY:Lti/android/ble/sensortag/Sensor;

.field public static final enum IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

.field public static final enum MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

.field public static final SENSOR_LIST:[Lti/android/ble/sensortag/Sensor;

.field public static final enum SIMPLE_KEYS:Lti/android/ble/sensortag/Sensor;


# instance fields
.field private final config:Ljava/util/UUID;

.field private final data:Ljava/util/UUID;

.field private enableCode:B

.field private final service:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lti/android/ble/sensortag/Sensor$1;

    const-string v1, "IR_TEMPERATURE"

    sget-object v3, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_SERV:Ljava/util/UUID;

    sget-object v4, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_DATA:Ljava/util/UUID;

    sget-object v5, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_CONF:Ljava/util/UUID;

    invoke-direct/range {v0 .. v5}, Lti/android/ble/sensortag/Sensor$1;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    sput-object v0, Lti/android/ble/sensortag/Sensor;->IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

    .line 103
    new-instance v3, Lti/android/ble/sensortag/Sensor$2;

    const-string v4, "ACCELEROMETER"

    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_SERV:Ljava/util/UUID;

    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_DATA:Ljava/util/UUID;

    sget-object v8, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_CONF:Ljava/util/UUID;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lti/android/ble/sensortag/Sensor$2;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    sput-object v3, Lti/android/ble/sensortag/Sensor;->ACCELEROMETER:Lti/android/ble/sensortag/Sensor;

    .line 124
    new-instance v3, Lti/android/ble/sensortag/Sensor$3;

    const-string v4, "HUMIDITY"

    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_SERV:Ljava/util/UUID;

    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_DATA:Ljava/util/UUID;

    sget-object v8, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_CONF:Ljava/util/UUID;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lti/android/ble/sensortag/Sensor$3;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    sput-object v3, Lti/android/ble/sensortag/Sensor;->HUMIDITY:Lti/android/ble/sensortag/Sensor;

    .line 137
    new-instance v3, Lti/android/ble/sensortag/Sensor$4;

    const-string v4, "MAGNETOMETER"

    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_SERV:Ljava/util/UUID;

    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_DATA:Ljava/util/UUID;

    sget-object v8, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_CONF:Ljava/util/UUID;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lti/android/ble/sensortag/Sensor$4;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    sput-object v3, Lti/android/ble/sensortag/Sensor;->MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

    .line 150
    new-instance v3, Lti/android/ble/sensortag/Sensor$5;

    const-string v4, "GYROSCOPE"

    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_SERV:Ljava/util/UUID;

    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_DATA:Ljava/util/UUID;

    sget-object v8, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_CONF:Ljava/util/UUID;

    const/4 v9, 0x7

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lti/android/ble/sensortag/Sensor$5;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;B)V

    sput-object v3, Lti/android/ble/sensortag/Sensor;->GYROSCOPE:Lti/android/ble/sensortag/Sensor;

    .line 162
    new-instance v3, Lti/android/ble/sensortag/Sensor$6;

    const-string v4, "BAROMETER"

    const/4 v5, 0x5

    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_SERV:Ljava/util/UUID;

    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_DATA:Ljava/util/UUID;

    sget-object v8, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_CONF:Ljava/util/UUID;

    invoke-direct/range {v3 .. v8}, Lti/android/ble/sensortag/Sensor$6;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    sput-object v3, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    .line 195
    new-instance v3, Lti/android/ble/sensortag/Sensor$7;

    const-string v4, "SIMPLE_KEYS"

    const/4 v5, 0x6

    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_KEY_SERV:Ljava/util/UUID;

    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_KEY_DATA:Ljava/util/UUID;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lti/android/ble/sensortag/Sensor$7;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    sput-object v3, Lti/android/ble/sensortag/Sensor;->SIMPLE_KEYS:Lti/android/ble/sensortag/Sensor;

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Lti/android/ble/sensortag/Sensor;

    sget-object v1, Lti/android/ble/sensortag/Sensor;->IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v2

    sget-object v1, Lti/android/ble/sensortag/Sensor;->ACCELEROMETER:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v10

    sget-object v1, Lti/android/ble/sensortag/Sensor;->HUMIDITY:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v11

    sget-object v1, Lti/android/ble/sensortag/Sensor;->MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v12

    sget-object v1, Lti/android/ble/sensortag/Sensor;->GYROSCOPE:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v3, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lti/android/ble/sensortag/Sensor;->SIMPLE_KEYS:Lti/android/ble/sensortag/Sensor;

    aput-object v3, v0, v1

    sput-object v0, Lti/android/ble/sensortag/Sensor;->$VALUES:[Lti/android/ble/sensortag/Sensor;

    .line 292
    const/4 v0, 0x7

    new-array v0, v0, [Lti/android/ble/sensortag/Sensor;

    sget-object v1, Lti/android/ble/sensortag/Sensor;->IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v2

    sget-object v1, Lti/android/ble/sensortag/Sensor;->ACCELEROMETER:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v10

    sget-object v1, Lti/android/ble/sensortag/Sensor;->MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v11

    sget-object v1, Lti/android/ble/sensortag/Sensor;->GYROSCOPE:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v12

    sget-object v1, Lti/android/ble/sensortag/Sensor;->HUMIDITY:Lti/android/ble/sensortag/Sensor;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lti/android/ble/sensortag/Sensor;->SIMPLE_KEYS:Lti/android/ble/sensortag/Sensor;

    aput-object v2, v0, v1

    sput-object v0, Lti/android/ble/sensortag/Sensor;->SENSOR_LIST:[Lti/android/ble/sensortag/Sensor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 1
    .parameter
    .parameter
    .parameter "service"
    .parameter "data"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 258
    iput-object p3, p0, Lti/android/ble/sensortag/Sensor;->service:Ljava/util/UUID;

    .line 259
    iput-object p4, p0, Lti/android/ble/sensortag/Sensor;->data:Ljava/util/UUID;

    .line 260
    iput-object p5, p0, Lti/android/ble/sensortag/Sensor;->config:Ljava/util/UUID;

    .line 261
    const/4 v0, 0x1

    iput-byte v0, p0, Lti/android/ble/sensortag/Sensor;->enableCode:B

    .line 262
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;B)V
    .locals 0
    .parameter
    .parameter
    .parameter "service"
    .parameter "data"
    .parameter "config"
    .parameter "enableCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput-object p3, p0, Lti/android/ble/sensortag/Sensor;->service:Ljava/util/UUID;

    .line 249
    iput-object p4, p0, Lti/android/ble/sensortag/Sensor;->data:Ljava/util/UUID;

    .line 250
    iput-object p5, p0, Lti/android/ble/sensortag/Sensor;->config:Ljava/util/UUID;

    .line 251
    iput-byte p6, p0, Lti/android/ble/sensortag/Sensor;->enableCode:B

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;BLti/android/ble/sensortag/Sensor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lti/android/ble/sensortag/Sensor;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;B)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lti/android/ble/sensortag/Sensor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lti/android/ble/sensortag/Sensor;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$100([BI)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lti/android/ble/sensortag/Sensor;->shortUnsignedAtOffset([BI)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BI)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getFromDataUuid(Ljava/util/UUID;)Lti/android/ble/sensortag/Sensor;
    .locals 6
    .parameter "uuid"

    .prologue
    .line 284
    invoke-static {}, Lti/android/ble/sensortag/Sensor;->values()[Lti/android/ble/sensortag/Sensor;

    move-result-object v0

    .local v0, arr$:[Lti/android/ble/sensortag/Sensor;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 285
    .local v3, s:Lti/android/ble/sensortag/Sensor;
    invoke-virtual {v3}, Lti/android/ble/sensortag/Sensor;->getData()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    return-object v3

    .line 284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v3           #s:Lti/android/ble/sensortag/Sensor;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Programmer error, unable to find uuid."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static shortSignedAtOffset([BI)Ljava/lang/Integer;
    .locals 4
    .parameter "c"
    .parameter "offset"

    .prologue
    .line 214
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 215
    .local v0, lowerByte:Ljava/lang/Integer;
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 216
    .local v1, upperByte:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private static shortUnsignedAtOffset([BI)Ljava/lang/Integer;
    .locals 4
    .parameter "c"
    .parameter "offset"

    .prologue
    .line 220
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 221
    .local v0, lowerByte:Ljava/lang/Integer;
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 222
    .local v1, upperByte:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lti/android/ble/sensortag/Sensor;
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lti/android/ble/sensortag/Sensor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lti/android/ble/sensortag/Sensor;

    return-object v0
.end method

.method public static values()[Lti/android/ble/sensortag/Sensor;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lti/android/ble/sensortag/Sensor;->$VALUES:[Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v0}, [Lti/android/ble/sensortag/Sensor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/android/ble/sensortag/Sensor;

    return-object v0
.end method


# virtual methods
.method public convert([B)Lti/android/util/Point3D;
    .locals 2
    .parameter "value"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Programmer error, the individual enum classes are supposed to override this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertKeys([B)Lti/android/ble/sensortag/SimpleKeysStatus;
    .locals 2
    .parameter "value"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Programmer error, the individual enum classes are supposed to override this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConfig()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lti/android/ble/sensortag/Sensor;->config:Ljava/util/UUID;

    return-object v0
.end method

.method public getData()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lti/android/ble/sensortag/Sensor;->data:Ljava/util/UUID;

    return-object v0
.end method

.method public getEnableSensorCode()B
    .locals 1

    .prologue
    .line 268
    iget-byte v0, p0, Lti/android/ble/sensortag/Sensor;->enableCode:B

    return v0
.end method

.method public getService()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lti/android/ble/sensortag/Sensor;->service:Ljava/util/UUID;

    return-object v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Programmer error, the individual enum classes are supposed to override this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
