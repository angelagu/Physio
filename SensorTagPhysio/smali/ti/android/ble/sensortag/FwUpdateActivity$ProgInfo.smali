.class Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;
.super Ljava/lang/Object;
.source "FwUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/FwUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgInfo"
.end annotation


# instance fields
.field iBlocks:S

.field iBytes:I

.field iTimeElapsed:I

.field mTick:I

.field nBlocks:S

.field final synthetic this$0:Lti/android/ble/sensortag/FwUpdateActivity;


# direct methods
.method private constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 536
    iput-object p1, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    .line 538
    iput-short v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    .line 539
    iput-short v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->nBlocks:S

    .line 540
    iput v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iTimeElapsed:I

    .line 541
    iput v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->mTick:I

    return-void
.end method

.method synthetic constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;)V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 544
    iput v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    .line 545
    iput-short v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    .line 546
    iput v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iTimeElapsed:I

    .line 547
    iput v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->mTick:I

    .line 548
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$1300(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    move-result-object v0

    iget-short v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    div-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->nBlocks:S

    .line 549
    return-void
.end method
