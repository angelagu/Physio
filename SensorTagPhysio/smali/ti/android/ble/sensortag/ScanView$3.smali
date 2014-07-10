.class Lti/android/ble/sensortag/ScanView$3;
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
    .line 194
    iput-object p1, p0, Lti/android/ble/sensortag/ScanView$3;->this$0:Lti/android/ble/sensortag/ScanView;

    invoke-direct {p0}, Lti/android/util/CustomTimerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 200
    return-void
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$3;->this$0:Lti/android/ble/sensortag/ScanView;

    #getter for: Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;
    invoke-static {v0}, Lti/android/ble/sensortag/ScanView;->access$300(Lti/android/ble/sensortag/ScanView;)Lti/android/ble/sensortag/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lti/android/ble/sensortag/MainActivity;->onConnectTimeout()V

    .line 197
    return-void
.end method
