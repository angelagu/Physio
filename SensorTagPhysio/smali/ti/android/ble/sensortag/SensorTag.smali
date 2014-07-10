.class public Lti/android/ble/sensortag/SensorTag;
.super Ljava/lang/Object;
.source "SensorTag.java"


# static fields
.field public static final UUID_ACC_CONF:Ljava/util/UUID;

.field public static final UUID_ACC_DATA:Ljava/util/UUID;

.field public static final UUID_ACC_PERI:Ljava/util/UUID;

.field public static final UUID_ACC_SERV:Ljava/util/UUID;

.field public static final UUID_BAR_CALI:Ljava/util/UUID;

.field public static final UUID_BAR_CONF:Ljava/util/UUID;

.field public static final UUID_BAR_DATA:Ljava/util/UUID;

.field public static final UUID_BAR_PERI:Ljava/util/UUID;

.field public static final UUID_BAR_SERV:Ljava/util/UUID;

.field public static final UUID_GYR_CONF:Ljava/util/UUID;

.field public static final UUID_GYR_DATA:Ljava/util/UUID;

.field public static final UUID_GYR_PERI:Ljava/util/UUID;

.field public static final UUID_GYR_SERV:Ljava/util/UUID;

.field public static final UUID_HUM_CONF:Ljava/util/UUID;

.field public static final UUID_HUM_DATA:Ljava/util/UUID;

.field public static final UUID_HUM_PERI:Ljava/util/UUID;

.field public static final UUID_HUM_SERV:Ljava/util/UUID;

.field public static final UUID_IRT_CONF:Ljava/util/UUID;

.field public static final UUID_IRT_DATA:Ljava/util/UUID;

.field public static final UUID_IRT_PERI:Ljava/util/UUID;

.field public static final UUID_IRT_SERV:Ljava/util/UUID;

.field public static final UUID_KEY_DATA:Ljava/util/UUID;

.field public static final UUID_KEY_SERV:Ljava/util/UUID;

.field public static final UUID_MAG_CONF:Ljava/util/UUID;

.field public static final UUID_MAG_DATA:Ljava/util/UUID;

.field public static final UUID_MAG_PERI:Ljava/util/UUID;

.field public static final UUID_MAG_SERV:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "f000aa00-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_SERV:Ljava/util/UUID;

    .line 45
    const-string v0, "f000aa01-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_DATA:Ljava/util/UUID;

    .line 46
    const-string v0, "f000aa02-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_CONF:Ljava/util/UUID;

    .line 47
    const-string v0, "f000aa03-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_PERI:Ljava/util/UUID;

    .line 49
    const-string v0, "f000aa10-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_SERV:Ljava/util/UUID;

    .line 50
    const-string v0, "f000aa11-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_DATA:Ljava/util/UUID;

    .line 51
    const-string v0, "f000aa12-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_CONF:Ljava/util/UUID;

    .line 52
    const-string v0, "f000aa13-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_PERI:Ljava/util/UUID;

    .line 54
    const-string v0, "f000aa20-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_SERV:Ljava/util/UUID;

    .line 55
    const-string v0, "f000aa21-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_DATA:Ljava/util/UUID;

    .line 56
    const-string v0, "f000aa22-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_CONF:Ljava/util/UUID;

    .line 57
    const-string v0, "f000aa23-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_PERI:Ljava/util/UUID;

    .line 59
    const-string v0, "f000aa30-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_SERV:Ljava/util/UUID;

    .line 60
    const-string v0, "f000aa31-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_DATA:Ljava/util/UUID;

    .line 61
    const-string v0, "f000aa32-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_CONF:Ljava/util/UUID;

    .line 62
    const-string v0, "f000aa33-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_PERI:Ljava/util/UUID;

    .line 64
    const-string v0, "f000aa40-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_SERV:Ljava/util/UUID;

    .line 65
    const-string v0, "f000aa41-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_DATA:Ljava/util/UUID;

    .line 66
    const-string v0, "f000aa42-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_CONF:Ljava/util/UUID;

    .line 67
    const-string v0, "f000aa43-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_CALI:Ljava/util/UUID;

    .line 68
    const-string v0, "f000aa44-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_PERI:Ljava/util/UUID;

    .line 70
    const-string v0, "f000aa50-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_SERV:Ljava/util/UUID;

    .line 71
    const-string v0, "f000aa51-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_DATA:Ljava/util/UUID;

    .line 72
    const-string v0, "f000aa52-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_CONF:Ljava/util/UUID;

    .line 73
    const-string v0, "f000aa53-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_PERI:Ljava/util/UUID;

    .line 75
    const-string v0, "0000ffe0-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_KEY_SERV:Ljava/util/UUID;

    .line 76
    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/SensorTag;->UUID_KEY_DATA:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
