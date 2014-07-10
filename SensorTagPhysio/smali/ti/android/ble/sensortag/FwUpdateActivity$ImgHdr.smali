.class Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
.super Ljava/lang/Object;
.source "FwUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/FwUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImgHdr"
.end annotation


# instance fields
.field imgType:Ljava/lang/Character;

.field len:S

.field final synthetic this$0:Lti/android/ble/sensortag/FwUpdateActivity;

.field uid:[B

.field ver:S


# direct methods
.method private constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->uid:[B

    return-void
.end method

.method synthetic constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;)V

    return-void
.end method
