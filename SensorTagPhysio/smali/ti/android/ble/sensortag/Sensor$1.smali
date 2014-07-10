.class final enum Lti/android/ble/sensortag/Sensor$1;
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
    .line 56
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

.method private extractAmbientTemperature([B)D
    .locals 5
    .parameter "v"

    .prologue
    .line 74
    const/4 v0, 0x2

    .line 75
    .local v0, offset:I
    #calls: Lti/android/ble/sensortag/Sensor;->shortUnsignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {p1, v0}, Lti/android/ble/sensortag/Sensor;->access$100([BI)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4060

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private extractTargetTemperature([BD)D
    .locals 37
    .parameter "v"
    .parameter "ambient"

    .prologue
    .line 79
    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v31

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {v0, v1}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v30

    .line 81
    .local v30, twoByteValue:Ljava/lang/Integer;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v10

    .line 82
    .local v10, Vobj2:D
    const-wide v31, 0x3e84f8b588e368f1L

    mul-double v10, v10, v31

    .line 84
    const-wide v31, 0x4071126666666666L

    add-double v6, p2, v31

    .line 86
    .local v6, Tdie:D
    const-wide v4, 0x3d2f7c5ccac617a9L

    .line 87
    .local v4, S0:D
    const-wide v14, 0x3f5cac083126e979L

    .line 88
    .local v14, a1:D
    const-wide v16, -0x410e67a72e2cb91cL

    .line 89
    .local v16, a2:D
    const-wide v18, -0x41012bff624b4eb3L

    .line 90
    .local v18, b0:D
    const-wide v20, -0x415cdfbcbe8cc31cL

    .line 91
    .local v20, b1:D
    const-wide v22, 0x3e33e2bd24654675L

    .line 92
    .local v22, b2:D
    const-wide v24, 0x402acccccccccccdL

    .line 93
    .local v24, c2:D
    const-wide v8, 0x4072a26666666666L

    .line 94
    .local v8, Tref:D
    const-wide/high16 v31, 0x3ff0

    sub-double v33, v6, v8

    mul-double v33, v33, v14

    add-double v31, v31, v33

    sub-double v33, v6, v8

    const-wide/high16 v35, 0x4000

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v33, v33, v16

    add-double v31, v31, v33

    mul-double v2, v4, v31

    .line 95
    .local v2, S:D
    sub-double v31, v6, v8

    mul-double v31, v31, v20

    add-double v31, v31, v18

    sub-double v33, v6, v8

    const-wide/high16 v35, 0x4000

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v33, v33, v22

    add-double v12, v31, v33

    .line 96
    .local v12, Vos:D
    sub-double v31, v10, v12

    sub-double v33, v10, v12

    const-wide/high16 v35, 0x4000

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v33

    mul-double v33, v33, v24

    add-double v26, v31, v33

    .line 97
    .local v26, fObj:D
    const-wide/high16 v31, 0x4010

    move-wide/from16 v0, v31

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v31

    div-double v33, v26, v2

    add-double v31, v31, v33

    const-wide/high16 v33, 0x3fd0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    .line 99
    .local v28, tObj:D
    const-wide v31, 0x4071126666666666L

    sub-double v31, v28, v31

    return-wide v31
.end method


# virtual methods
.method public convert([B)Lti/android/util/Point3D;
    .locals 7
    .parameter "value"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/Sensor$1;->extractAmbientTemperature([B)D

    move-result-wide v1

    .line 69
    .local v1, ambient:D
    invoke-direct {p0, p1, v1, v2}, Lti/android/ble/sensortag/Sensor$1;->extractTargetTemperature([BD)D

    move-result-wide v3

    .line 70
    .local v3, target:D
    new-instance v0, Lti/android/util/Point3D;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lti/android/util/Point3D;-><init>(DDD)V

    return-object v0
.end method
