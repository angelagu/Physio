.class Lti/android/ble/sensortag/ScanView$DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScanView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/ScanView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceListAdapter"
.end annotation


# instance fields
.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lti/android/ble/common/BleDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lti/android/ble/sensortag/ScanView;


# direct methods
.method public constructor <init>(Lti/android/ble/sensortag/ScanView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lti/android/ble/common/BleDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, devices:Ljava/util/List;,"Ljava/util/List<Lti/android/ble/common/BleDeviceInfo;>;"
    iput-object p1, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->this$0:Lti/android/ble/sensortag/ScanView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 237
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 238
    iput-object p3, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->mDevices:Ljava/util/List;

    .line 239
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 246
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 250
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 257
    check-cast v4, Landroid/view/ViewGroup;

    .line 262
    .local v4, vg:Landroid/view/ViewGroup;
    :goto_0
    iget-object v5, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->mDevices:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/android/ble/common/BleDeviceInfo;

    .line 263
    .local v2, deviceInfo:Lti/android/ble/common/BleDeviceInfo;
    invoke-virtual {v2}, Lti/android/ble/common/BleDeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 264
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Lti/android/ble/common/BleDeviceInfo;->getRssi()I

    move-result v3

    .line 265
    .local v3, rssi:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nRssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dBm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, descr:Ljava/lang/String;
    const v5, 0x7f090014

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-object v4

    .line 259
    .end local v0           #descr:Ljava/lang/String;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #deviceInfo:Lti/android/ble/common/BleDeviceInfo;
    .end local v3           #rssi:I
    .end local v4           #vg:Landroid/view/ViewGroup;
    :cond_0
    iget-object v5, p0, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4       #vg:Landroid/view/ViewGroup;
    goto :goto_0
.end method
