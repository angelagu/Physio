.class final enum Lti/android/ble/sensortag/Sensor$5;
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
.method constructor <init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;B)V
    .locals 8
    .parameter
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 150
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lti/android/ble/sensortag/Sensor;-><init>(Ljava/lang/String;ILjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;BLti/android/ble/sensortag/Sensor$1;)V

    return-void
.end method


# virtual methods
.method public convert([B)Lti/android/util/Point3D;
    .locals 10
    .parameter "value"

    .prologue
    const/high16 v2, 0x3bfa

    .line 154
    const/4 v0, 0x0

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, -0x4080

    mul-float v8, v0, v1

    .line 155
    .local v8, y:F
    const/4 v0, 0x2

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v0, v2

    .line 156
    .local v7, x:F
    const/4 v0, 0x4

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v2

    .line 158
    .local v9, z:F
    new-instance v0, Lti/android/util/Point3D;

    float-to-double v1, v7

    float-to-double v3, v8

    float-to-double v5, v9

    invoke-direct/range {v0 .. v6}, Lti/android/util/Point3D;-><init>(DDD)V

    return-object v0
.end method
