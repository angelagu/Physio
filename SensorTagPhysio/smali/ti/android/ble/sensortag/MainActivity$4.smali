.class Lti/android/ble/sensortag/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/MainActivity;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "componentName"
    .parameter "service"

    .prologue
    .line 533
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    check-cast p2, Lti/android/ble/common/BluetoothLeService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lti/android/ble/common/BluetoothLeService$LocalBinder;->getService()Lti/android/ble/common/BluetoothLeService;

    move-result-object v2

    #setter for: Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;
    invoke-static {v1, v2}, Lti/android/ble/sensortag/MainActivity;->access$902(Lti/android/ble/sensortag/MainActivity;Lti/android/ble/common/BluetoothLeService;)Lti/android/ble/common/BluetoothLeService;

    .line 534
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;
    invoke-static {v1}, Lti/android/ble/sensortag/MainActivity;->access$900(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/common/BluetoothLeService;

    move-result-object v1

    invoke-virtual {v1}, Lti/android/ble/common/BluetoothLeService;->initialize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    const-string v1, "MainActivity"

    const-string v2, "Unable to initialize BluetoothLeService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v1}, Lti/android/ble/sensortag/MainActivity;->finish()V

    .line 550
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;
    invoke-static {v1}, Lti/android/ble/sensortag/MainActivity;->access$900(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/common/BluetoothLeService;

    move-result-object v1

    invoke-virtual {v1}, Lti/android/ble/common/BluetoothLeService;->numConnectedDevices()I

    move-result v0

    .line 540
    .local v0, n:I
    if-lez v0, :cond_1

    .line 541
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    new-instance v2, Lti/android/ble/sensortag/MainActivity$4$1;

    invoke-direct {v2, p0}, Lti/android/ble/sensortag/MainActivity$4$1;-><init>(Lti/android/ble/sensortag/MainActivity$4;)V

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->startScan()V
    invoke-static {v1}, Lti/android/ble/sensortag/MainActivity;->access$1100(Lti/android/ble/sensortag/MainActivity;)V

    .line 548
    const-string v1, "MainActivity"

    const-string v2, "BluetoothLeService connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 553
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity$4;->this$0:Lti/android/ble/sensortag/MainActivity;

    const/4 v1, 0x0

    #setter for: Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;
    invoke-static {v0, v1}, Lti/android/ble/sensortag/MainActivity;->access$902(Lti/android/ble/sensortag/MainActivity;Lti/android/ble/common/BluetoothLeService;)Lti/android/ble/common/BluetoothLeService;

    .line 554
    const-string v0, "MainActivity"

    const-string v1, "BluetoothLeService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method
