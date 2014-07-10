.class Lti/android/ble/sensortag/ScanView$4;
.super Lti/android/util/CustomTimerCallback;
.source "ScanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/ScanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/ScanView;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/ScanView;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lti/android/ble/sensortag/ScanView$4;->this$0:Lti/android/ble/sensortag/ScanView;

    invoke-direct {p0}, Lti/android/util/CustomTimerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 215
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$4;->this$0:Lti/android/ble/sensortag/ScanView;

    #getter for: Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;
    invoke-static {v0}, Lti/android/ble/sensortag/ScanView;->access$300(Lti/android/ble/sensortag/ScanView;)Lti/android/ble/sensortag/MainActivity;

    move-result-object v0

    new-instance v1, Lti/android/ble/sensortag/ScanView$4$1;

    invoke-direct {v1, p0}, Lti/android/ble/sensortag/ScanView$4$1;-><init>(Lti/android/ble/sensortag/ScanView$4;)V

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$4;->this$0:Lti/android/ble/sensortag/ScanView;

    const/4 v1, 0x0

    #setter for: Lti/android/ble/sensortag/ScanView;->mStatusTimer:Lti/android/util/CustomTimer;
    invoke-static {v0, v1}, Lti/android/ble/sensortag/ScanView;->access$402(Lti/android/ble/sensortag/ScanView;Lti/android/util/CustomTimer;)Lti/android/util/CustomTimer;

    .line 212
    return-void
.end method
