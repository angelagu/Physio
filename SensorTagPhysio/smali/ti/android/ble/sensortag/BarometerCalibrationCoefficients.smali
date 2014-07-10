.class public final enum Lti/android/ble/sensortag/BarometerCalibrationCoefficients;
.super Ljava/lang/Enum;
.source "BarometerCalibrationCoefficients.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lti/android/ble/sensortag/BarometerCalibrationCoefficients;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

.field public static final enum INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;


# instance fields
.field public volatile barometerCalibrationCoefficients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile heightCalibration:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    sget-object v1, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    aput-object v1, v0, v2

    sput-object v0, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->$VALUES:[Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lti/android/ble/sensortag/BarometerCalibrationCoefficients;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    return-object v0
.end method

.method public static values()[Lti/android/ble/sensortag/BarometerCalibrationCoefficients;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->$VALUES:[Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    invoke-virtual {v0}, [Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    return-object v0
.end method
