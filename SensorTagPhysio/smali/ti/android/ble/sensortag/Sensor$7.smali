.class final enum Lti/android/ble/sensortag/Sensor$7;
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
    .line 195
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
.method public convertKeys([B)Lti/android/ble/sensortag/SimpleKeysStatus;
    .locals 3
    .parameter "value"

    .prologue
    .line 201
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    .local v0, encodedInteger:Ljava/lang/Integer;
    invoke-static {}, Lti/android/ble/sensortag/SimpleKeysStatus;->values()[Lti/android/ble/sensortag/SimpleKeysStatus;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    aget-object v1, v1, v2

    return-object v1
.end method
