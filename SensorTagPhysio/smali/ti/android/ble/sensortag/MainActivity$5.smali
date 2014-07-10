.class Lti/android/ble/sensortag/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


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
    .line 560
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .parameter "device"
    .parameter "rssi"
    .parameter "scanRecord"

    .prologue
    .line 563
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity$5;->this$0:Lti/android/ble/sensortag/MainActivity;

    new-instance v1, Lti/android/ble/sensortag/MainActivity$5$1;

    invoke-direct {v1, p0, p1, p2}, Lti/android/ble/sensortag/MainActivity$5$1;-><init>(Lti/android/ble/sensortag/MainActivity$5;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 581
    return-void
.end method
