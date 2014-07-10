.class Lti/android/ble/common/BluetoothLeService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/common/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/common/BluetoothLeService;


# direct methods
.method constructor <init>(Lti/android/ble/common/BluetoothLeService;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .parameter "gatt"
    .parameter "characteristic"

    .prologue
    .line 120
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const-string v1, "ti.android.ble.common.ACTION_DATA_NOTIFY"

    const/4 v2, 0x0

    #calls: Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    invoke-static {v0, v1, p2, v2}, Lti/android/ble/common/BluetoothLeService;->access$200(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 121
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .parameter "gatt"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 125
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const-string v1, "ti.android.ble.common.ACTION_DATA_READ"

    #calls: Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    invoke-static {v0, v1, p2, p3}, Lti/android/ble/common/BluetoothLeService;->access$200(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 126
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2
    .parameter "gatt"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 130
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const-string v1, "ti.android.ble.common.ACTION_DATA_WRITE"

    #calls: Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    invoke-static {v0, v1, p2, p3}, Lti/android/ble/common/BluetoothLeService;->access$200(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 131
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 6
    .parameter "gatt"
    .parameter "status"
    .parameter "newState"

    .prologue
    .line 86
    iget-object v3, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    #getter for: Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    invoke-static {v3}, Lti/android/ble/common/BluetoothLeService;->access$000(Lti/android/ble/common/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    if-nez v3, :cond_0

    .line 87
    const-string v3, "BluetoothLeService"

    const-string v4, "mBluetoothGatt not created!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 92
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, address:Ljava/lang/String;
    const-string v3, "BluetoothLeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnectionStateChange ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    packed-switch p3, :pswitch_data_0

    .line 104
    :pswitch_0
    :try_start_0
    const-string v3, "BluetoothLeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New state not processed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v2           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const-string v4, "ti.android.ble.common.ACTION_GATT_CONNECTED"

    #calls: Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v0, p2}, Lti/android/ble/common/BluetoothLeService;->access$100(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v3, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const-string v4, "ti.android.ble.common.ACTION_GATT_DISCONNECTED"

    #calls: Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v0, p2}, Lti/android/ble/common/BluetoothLeService;->access$100(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .parameter "gatt"
    .parameter "descriptor"
    .parameter "status"

    .prologue
    .line 135
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const/4 v1, 0x0

    #setter for: Lti/android/ble/common/BluetoothLeService;->mBusy:Z
    invoke-static {v0, v1}, Lti/android/ble/common/BluetoothLeService;->access$302(Lti/android/ble/common/BluetoothLeService;Z)Z

    .line 136
    const-string v0, "BluetoothLeService"

    const-string v1, "onDescriptorRead"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .parameter "gatt"
    .parameter "descriptor"
    .parameter "status"

    .prologue
    .line 141
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const/4 v1, 0x0

    #setter for: Lti/android/ble/common/BluetoothLeService;->mBusy:Z
    invoke-static {v0, v1}, Lti/android/ble/common/BluetoothLeService;->access$302(Lti/android/ble/common/BluetoothLeService;Z)Z

    .line 142
    const-string v0, "BluetoothLeService"

    const-string v1, "onDescriptorWrite"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .parameter "gatt"
    .parameter "status"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 115
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lti/android/ble/common/BluetoothLeService$1;->this$0:Lti/android/ble/common/BluetoothLeService;

    const-string v2, "ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    #calls: Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, p2}, Lti/android/ble/common/BluetoothLeService;->access$100(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    return-void
.end method
