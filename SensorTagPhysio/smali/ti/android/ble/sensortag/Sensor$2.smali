.class final enum Lti/android/ble/sensortag/Sensor$2;
.super Lti/android/ble/sensortag/Sensor;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 7
    .parameter
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lti/android/ble/sensortag/Sensor;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Lti/android/ble/sensortag/Sensor$1;)V

    return-void
.end method


# virtual methods
.method public convert([B)Lti/android/util/Point3D;
    .locals 12
    .parameter "value"

    .prologue
    const-wide/high16 v10, 0x4050

    .line 116
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 117
    .local v7, x:Ljava/lang/Integer;
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 118
    .local v8, y:Ljava/lang/Integer;
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 120
    .local v9, z:Ljava/lang/Integer;
    new-instance v0, Lti/android/util/Point3D;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v10

    invoke-direct/range {v0 .. v6}, Lti/android/util/Point3D;-><init>(DDD)V

    return-object v0
.end method
