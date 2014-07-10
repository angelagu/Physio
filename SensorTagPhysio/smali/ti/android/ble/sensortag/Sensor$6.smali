.class final enum Lti/android/ble/sensortag/Sensor$6;
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
    .line 162
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
    .locals 19
    .parameter "value"

    .prologue
    .line 166
    sget-object v2, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    iget-object v11, v2, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->barometerCalibrationCoefficients:Ljava/util/List;

    .line 167
    .local v11, barometerCalibrationCoefficients:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v11, :cond_0

    .line 168
    const-string v2, "Custom"

    const-string v3, "Data notification arrived for barometer before it was calibrated."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v2, Lti/android/util/Point3D;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lti/android/util/Point3D;-><init>(DDD)V

    .line 191
    :goto_0
    return-object v2

    .line 179
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [I

    .line 180
    .local v12, c:[I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 181
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v12, v13

    .line 180
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 184
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    #calls: Lti/android/ble/sensortag/Sensor;->shortSignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {v0, v2}, Lti/android/ble/sensortag/Sensor;->access$200([BI)Ljava/lang/Integer;

    move-result-object v16

    .line 185
    .local v16, t_r:Ljava/lang/Integer;
    const/4 v2, 0x2

    move-object/from16 v0, p1

    #calls: Lti/android/ble/sensortag/Sensor;->shortUnsignedAtOffset([BI)Ljava/lang/Integer;
    invoke-static {v0, v2}, Lti/android/ble/sensortag/Sensor;->access$100([BI)Ljava/lang/Integer;

    move-result-object v15

    .line 187
    .local v15, p_r:Ljava/lang/Integer;
    const/4 v2, 0x2

    aget v2, v12, v2

    int-to-double v2, v2

    const/4 v4, 0x3

    aget v4, v12, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    const-wide/high16 v17, 0x4031

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x4

    aget v4, v12, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    const-wide/high16 v17, 0x402e

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    const-wide/high16 v17, 0x4033

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 188
    .local v10, S:Ljava/lang/Double;
    const/4 v2, 0x5

    aget v2, v12, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000

    const-wide/high16 v6, 0x402c

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const/4 v4, 0x6

    aget v4, v12, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    const-wide/high16 v17, 0x4008

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x7

    aget v4, v12, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    const-wide/high16 v17, 0x402e

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    const-wide/high16 v17, 0x4010

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 189
    .local v9, O:Ljava/lang/Double;
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000

    const-wide/high16 v6, 0x402c

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 191
    .local v14, p_a:Ljava/lang/Double;
    new-instance v2, Lti/android/util/Point3D;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lti/android/util/Point3D;-><init>(DDD)V

    goto/16 :goto_0
.end method
