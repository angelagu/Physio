.class final enum Lti/android/ble/sensortag/Sensor$4;
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
    .line 137
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
    .locals 13
    .parameter "value"

    .prologue
    const/high16 v2, -0x4080

    const/high16 v1, 0x3cfa

    .line 140
    sget-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    iget-object v7, v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->val:Lti/android/util/Point3D;

    .line 142
    .local v7, mcal:Lti/android/util/Point3D;
    const/4 v0, 0x0

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float v8, v0, v2

    .line 143
    .local v8, x:F
    const/4 v0, 0x2

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    mul-float v9, v0, v2

    .line 144
    .local v9, y:F
    const/4 v0, 0x4

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v10, v0, v1

    .line 146
    .local v10, z:F
    new-instance v0, Lti/android/util/Point3D;

    float-to-double v1, v8

    iget-wide v3, v7, Lti/android/util/Point3D;->x:D

    sub-double/2addr v1, v3

    float-to-double v3, v9

    iget-wide v5, v7, Lti/android/util/Point3D;->y:D

    sub-double/2addr v3, v5

    float-to-double v5, v10

    iget-wide v11, v7, Lti/android/util/Point3D;->z:D

    sub-double/2addr v5, v11

    invoke-direct/range {v0 .. v6}, Lti/android/util/Point3D;-><init>(DDD)V

    return-object v0
.end method
