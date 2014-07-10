.class Lti/android/ble/sensortag/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/MainActivity$5;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/android/ble/sensortag/MainActivity$5;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$rssi:I


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/MainActivity$5;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iput-object p2, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$rssi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 566
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iget-object v1, v1, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    #calls: Lti/android/ble/sensortag/MainActivity;->checkDeviceFilter(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, v2}, Lti/android/ble/sensortag/MainActivity;->access$1200(Lti/android/ble/sensortag/MainActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iget-object v1, v1, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    #calls: Lti/android/ble/sensortag/MainActivity;->deviceInfoExists(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lti/android/ble/sensortag/MainActivity;->access$1300(Lti/android/ble/sensortag/MainActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 569
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iget-object v1, v1, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$rssi:I

    #calls: Lti/android/ble/sensortag/MainActivity;->createDeviceInfo(Landroid/bluetooth/BluetoothDevice;I)Lti/android/ble/common/BleDeviceInfo;
    invoke-static {v1, v2, v3}, Lti/android/ble/sensortag/MainActivity;->access$1400(Lti/android/ble/sensortag/MainActivity;Landroid/bluetooth/BluetoothDevice;I)Lti/android/ble/common/BleDeviceInfo;

    move-result-object v0

    .line 570
    .local v0, deviceInfo:Lti/android/ble/common/BleDeviceInfo;
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iget-object v1, v1, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->addDevice(Lti/android/ble/common/BleDeviceInfo;)V
    invoke-static {v1, v0}, Lti/android/ble/sensortag/MainActivity;->access$1500(Lti/android/ble/sensortag/MainActivity;Lti/android/ble/common/BleDeviceInfo;)V

    .line 578
    .end local v0           #deviceInfo:Lti/android/ble/common/BleDeviceInfo;
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iget-object v1, v1, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    #calls: Lti/android/ble/sensortag/MainActivity;->findDeviceInfo(Landroid/bluetooth/BluetoothDevice;)Lti/android/ble/common/BleDeviceInfo;
    invoke-static {v1, v2}, Lti/android/ble/sensortag/MainActivity;->access$1600(Lti/android/ble/sensortag/MainActivity;Landroid/bluetooth/BluetoothDevice;)Lti/android/ble/common/BleDeviceInfo;

    move-result-object v0

    .line 574
    .restart local v0       #deviceInfo:Lti/android/ble/common/BleDeviceInfo;
    iget v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->val$rssi:I

    invoke-virtual {v0, v1}, Lti/android/ble/common/BleDeviceInfo;->updateRssi(I)V

    .line 575
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity$5$1;->this$1:Lti/android/ble/sensortag/MainActivity$5;

    iget-object v1, v1, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;
    invoke-static {v1}, Lti/android/ble/sensortag/MainActivity;->access$800(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/sensortag/ScanView;

    move-result-object v1

    invoke-virtual {v1}, Lti/android/ble/sensortag/ScanView;->notifyDataSetChanged()V

    goto :goto_0
.end method
