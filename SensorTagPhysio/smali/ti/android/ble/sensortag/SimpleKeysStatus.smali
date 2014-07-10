.class public final enum Lti/android/ble/sensortag/SimpleKeysStatus;
.super Ljava/lang/Enum;
.source "SimpleKeysStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lti/android/ble/sensortag/SimpleKeysStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lti/android/ble/sensortag/SimpleKeysStatus;

.field public static final enum OFF_OFF:Lti/android/ble/sensortag/SimpleKeysStatus;

.field public static final enum OFF_ON:Lti/android/ble/sensortag/SimpleKeysStatus;

.field public static final enum ON_OFF:Lti/android/ble/sensortag/SimpleKeysStatus;

.field public static final enum ON_ON:Lti/android/ble/sensortag/SimpleKeysStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lti/android/ble/sensortag/SimpleKeysStatus;

    const-string v1, "OFF_OFF"

    invoke-direct {v0, v1, v2}, Lti/android/ble/sensortag/SimpleKeysStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/android/ble/sensortag/SimpleKeysStatus;->OFF_OFF:Lti/android/ble/sensortag/SimpleKeysStatus;

    new-instance v0, Lti/android/ble/sensortag/SimpleKeysStatus;

    const-string v1, "OFF_ON"

    invoke-direct {v0, v1, v3}, Lti/android/ble/sensortag/SimpleKeysStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/android/ble/sensortag/SimpleKeysStatus;->OFF_ON:Lti/android/ble/sensortag/SimpleKeysStatus;

    new-instance v0, Lti/android/ble/sensortag/SimpleKeysStatus;

    const-string v1, "ON_OFF"

    invoke-direct {v0, v1, v4}, Lti/android/ble/sensortag/SimpleKeysStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/android/ble/sensortag/SimpleKeysStatus;->ON_OFF:Lti/android/ble/sensortag/SimpleKeysStatus;

    new-instance v0, Lti/android/ble/sensortag/SimpleKeysStatus;

    const-string v1, "ON_ON"

    invoke-direct {v0, v1, v5}, Lti/android/ble/sensortag/SimpleKeysStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lti/android/ble/sensortag/SimpleKeysStatus;->ON_ON:Lti/android/ble/sensortag/SimpleKeysStatus;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lti/android/ble/sensortag/SimpleKeysStatus;

    sget-object v1, Lti/android/ble/sensortag/SimpleKeysStatus;->OFF_OFF:Lti/android/ble/sensortag/SimpleKeysStatus;

    aput-object v1, v0, v2

    sget-object v1, Lti/android/ble/sensortag/SimpleKeysStatus;->OFF_ON:Lti/android/ble/sensortag/SimpleKeysStatus;

    aput-object v1, v0, v3

    sget-object v1, Lti/android/ble/sensortag/SimpleKeysStatus;->ON_OFF:Lti/android/ble/sensortag/SimpleKeysStatus;

    aput-object v1, v0, v4

    sget-object v1, Lti/android/ble/sensortag/SimpleKeysStatus;->ON_ON:Lti/android/ble/sensortag/SimpleKeysStatus;

    aput-object v1, v0, v5

    sput-object v0, Lti/android/ble/sensortag/SimpleKeysStatus;->$VALUES:[Lti/android/ble/sensortag/SimpleKeysStatus;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lti/android/ble/sensortag/SimpleKeysStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lti/android/ble/sensortag/SimpleKeysStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lti/android/ble/sensortag/SimpleKeysStatus;

    return-object v0
.end method

.method public static values()[Lti/android/ble/sensortag/SimpleKeysStatus;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lti/android/ble/sensortag/SimpleKeysStatus;->$VALUES:[Lti/android/ble/sensortag/SimpleKeysStatus;

    invoke-virtual {v0}, [Lti/android/ble/sensortag/SimpleKeysStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/android/ble/sensortag/SimpleKeysStatus;

    return-object v0
.end method
