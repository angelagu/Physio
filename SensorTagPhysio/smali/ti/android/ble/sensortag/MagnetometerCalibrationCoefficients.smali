.class public final enum Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;
.super Ljava/lang/Enum;
.source "MagnetometerCalibrationCoefficients.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

.field public static final enum INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;


# instance fields
.field val:Lti/android/util/Point3D;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    sget-object v1, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    aput-object v1, v0, v2

    sput-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->$VALUES:[Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    new-instance v0, Lti/android/util/Point3D;

    move-wide v3, v1

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lti/android/util/Point3D;-><init>(DDD)V

    iput-object v0, p0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->val:Lti/android/util/Point3D;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    return-object v0
.end method

.method public static values()[Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->$VALUES:[Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    invoke-virtual {v0}, [Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    return-object v0
.end method
