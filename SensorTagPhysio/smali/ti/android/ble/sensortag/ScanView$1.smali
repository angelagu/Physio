.class Lti/android/ble/sensortag/ScanView$1;
.super Ljava/lang/Object;
.source "ScanView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 175
    iput-object p1, p0, Lti/android/ble/sensortag/ScanView$1;->this$0:Lti/android/ble/sensortag/ScanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "ScanView"

    const-string v1, "item click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$1;->this$0:Lti/android/ble/sensortag/ScanView;

    new-instance v1, Lti/android/util/CustomTimer;

    iget-object v2, p0, Lti/android/ble/sensortag/ScanView$1;->this$0:Lti/android/ble/sensortag/ScanView;

    #getter for: Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lti/android/ble/sensortag/ScanView;->access$100(Lti/android/ble/sensortag/ScanView;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v3, 0xa

    iget-object v4, p0, Lti/android/ble/sensortag/ScanView$1;->this$0:Lti/android/ble/sensortag/ScanView;

    #getter for: Lti/android/ble/sensortag/ScanView;->mPgConnectCallback:Lti/android/util/CustomTimerCallback;
    invoke-static {v4}, Lti/android/ble/sensortag/ScanView;->access$200(Lti/android/ble/sensortag/ScanView;)Lti/android/util/CustomTimerCallback;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lti/android/util/CustomTimer;-><init>(Landroid/widget/ProgressBar;ILti/android/util/CustomTimerCallback;)V

    #setter for: Lti/android/ble/sensortag/ScanView;->mConnectTimer:Lti/android/util/CustomTimer;
    invoke-static {v0, v1}, Lti/android/ble/sensortag/ScanView;->access$002(Lti/android/ble/sensortag/ScanView;Lti/android/util/CustomTimer;)Lti/android/util/CustomTimer;

    .line 179
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$1;->this$0:Lti/android/ble/sensortag/ScanView;

    #getter for: Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;
    invoke-static {v0}, Lti/android/ble/sensortag/ScanView;->access$300(Lti/android/ble/sensortag/ScanView;)Lti/android/ble/sensortag/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lti/android/ble/sensortag/MainActivity;->onDeviceClick(I)V

    .line 180
    return-void
.end method
