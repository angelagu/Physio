.class public Lti/android/ble/common/BleDeviceInfo;
.super Ljava/lang/Object;
.source "BleDeviceInfo.java"


# instance fields
.field private mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "device"
    .parameter "rssi"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lti/android/ble/common/BleDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    .line 46
    iput p2, p0, Lti/android/ble/common/BleDeviceInfo;->mRssi:I

    .line 47
    return-void
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lti/android/ble/common/BleDeviceInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lti/android/ble/common/BleDeviceInfo;->mRssi:I

    return v0
.end method

.method public updateRssi(I)V
    .locals 0
    .parameter "rssiValue"

    .prologue
    .line 58
    iput p1, p0, Lti/android/ble/common/BleDeviceInfo;->mRssi:I

    .line 59
    return-void
.end method
