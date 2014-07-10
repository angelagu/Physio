.class Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;
.super Ljava/util/TimerTask;
.source "FwUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/FwUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/FwUpdateActivity;


# direct methods
.method private constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$1000(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    move-result-object v0

    iget v1, v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->mTick:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->mTick:I

    .line 516
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$1100(Lti/android/ble/sensortag/FwUpdateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #calls: Lti/android/ble/sensortag/FwUpdateActivity;->onBlockTimer()V
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$1200(Lti/android/ble/sensortag/FwUpdateActivity;)V

    .line 518
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$1000(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    move-result-object v0

    iget v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->mTick:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    new-instance v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask$1;

    invoke-direct {v1, p0}, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask$1;-><init>(Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;)V

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    :cond_0
    return-void
.end method
