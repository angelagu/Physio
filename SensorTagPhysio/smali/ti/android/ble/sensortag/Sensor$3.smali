.class final enum Lti/android/ble/sensortag/Sensor$3;
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
    .line 124
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
    .locals 8
    .parameter "value"

    .prologue
    const-wide/16 v3, 0x0

    .line 127
    const/4 v0, 0x2

    #calls: Lti/android/ble/sensortag/Sensor;->shortUnsignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$100([BI)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 131
    .local v7, a:I
    rem-int/lit8 v0, v7, 0x4

    sub-int/2addr v7, v0

    .line 133
    new-instance v0, Lti/android/util/Point3D;

    const/high16 v1, -0x3f40

    const/high16 v2, 0x42fa

    int-to-float v5, v7

    const v6, 0x477fff00

    div-float/2addr v5, v6

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-double v1, v1

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lti/android/util/Point3D;-><init>(DDD)V

    return-object v0
.end method
