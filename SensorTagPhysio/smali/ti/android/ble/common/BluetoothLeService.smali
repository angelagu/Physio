.class public Lti/android/ble/common/BluetoothLeService;
.super Landroid/app/Service;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/common/BluetoothLeService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_NOTIFY:Ljava/lang/String; = "ti.android.ble.common.ACTION_DATA_NOTIFY"

.field public static final ACTION_DATA_READ:Ljava/lang/String; = "ti.android.ble.common.ACTION_DATA_READ"

.field public static final ACTION_DATA_WRITE:Ljava/lang/String; = "ti.android.ble.common.ACTION_DATA_WRITE"

.field public static final ACTION_GATT_CONNECTED:Ljava/lang/String; = "ti.android.ble.common.ACTION_GATT_CONNECTED"

.field public static final ACTION_GATT_DISCONNECTED:Ljava/lang/String; = "ti.android.ble.common.ACTION_GATT_DISCONNECTED"

.field public static final ACTION_GATT_SERVICES_DISCOVERED:Ljava/lang/String; = "ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED"

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "ti.android.ble.common.EXTRA_ADDRESS"

.field public static final EXTRA_DATA:Ljava/lang/String; = "ti.android.ble.common.EXTRA_DATA"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "ti.android.ble.common.EXTRA_STATUS"

.field public static final EXTRA_UUID:Ljava/lang/String; = "ti.android.ble.common.EXTRA_UUID"

.field static final TAG:Ljava/lang/String; = "BluetoothLeService"

.field private static mThis:Lti/android/ble/common/BluetoothLeService;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private mBluetoothDeviceAddress:Ljava/lang/String;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private volatile mBusy:Z

.field private mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lti/android/ble/common/BluetoothLeService;->mThis:Lti/android/ble/common/BluetoothLeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 73
    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 74
    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 82
    new-instance v0, Lti/android/ble/common/BluetoothLeService$1;

    invoke-direct {v0, p0}, Lti/android/ble/common/BluetoothLeService$1;-><init>(Lti/android/ble/common/BluetoothLeService;)V

    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    .line 206
    new-instance v0, Lti/android/ble/common/BluetoothLeService$LocalBinder;

    invoke-direct {v0, p0}, Lti/android/ble/common/BluetoothLeService$LocalBinder;-><init>(Lti/android/ble/common/BluetoothLeService;)V

    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lti/android/ble/common/BluetoothLeService;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$100(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lti/android/ble/common/BluetoothLeService;Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lti/android/ble/common/BluetoothLeService;->broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    return-void
.end method

.method static synthetic access$302(Lti/android/ble/common/BluetoothLeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    return p1
.end method

.method private broadcastUpdate(Ljava/lang/String;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .parameter "action"
    .parameter "characteristic"
    .parameter "status"

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ti.android.ble.common.EXTRA_UUID"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "ti.android.ble.common.EXTRA_DATA"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 158
    const-string v1, "ti.android.ble.common.EXTRA_STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lti/android/ble/common/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 161
    return-void
.end method

.method private broadcastUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "action"
    .parameter "address"
    .parameter "status"

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ti.android.ble.common.EXTRA_ADDRESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "ti.android.ble.common.EXTRA_STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lti/android/ble/common/BluetoothLeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 152
    return-void
.end method

.method private checkGatt()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 165
    const-string v1, "BluetoothLeService"

    const-string v2, "BluetoothAdapter not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return v0

    .line 168
    :cond_0
    iget-object v1, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1

    .line 169
    const-string v1, "BluetoothLeService"

    const-string v2, "BluetoothGatt not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_1
    iget-boolean v1, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "BluetoothLeService"

    const-string v2, "LeService busy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getBtGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lti/android/ble/common/BluetoothLeService;->mThis:Lti/android/ble/common/BluetoothLeService;

    iget-object v0, v0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public static getBtManager()Landroid/bluetooth/BluetoothManager;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lti/android/ble/common/BluetoothLeService;->mThis:Lti/android/ble/common/BluetoothLeService;

    iget-object v0, v0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public static getInstance()Lti/android/ble/common/BluetoothLeService;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lti/android/ble/common/BluetoothLeService;->mThis:Lti/android/ble/common/BluetoothLeService;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "BluetoothLeService"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 449
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 382
    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    .line 383
    :cond_0
    const-string v2, "BluetoothLeService"

    const-string v4, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 415
    :cond_1
    :goto_0
    return v2

    .line 386
    :cond_2
    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 387
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v5, 0x7

    invoke-virtual {v4, v1, v5}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 389
    .local v0, connectionState:I
    if-nez v0, :cond_5

    .line 392
    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_3

    .line 393
    const-string v4, "BluetoothLeService"

    const-string v5, "Re-use GATT connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    const-string v2, "BluetoothLeService"

    const-string v4, "GATT re-connect failed."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 398
    goto :goto_0

    .line 402
    :cond_3
    if-nez v1, :cond_4

    .line 403
    const-string v2, "BluetoothLeService"

    const-string v4, "Device not found.  Unable to connect."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 404
    goto :goto_0

    .line 408
    :cond_4
    const-string v4, "BluetoothLeService"

    const-string v5, "Create a new GATT connection."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v4, p0, Lti/android/ble/common/BluetoothLeService;->mGattCallbacks:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v1, p0, v3, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    iput-object v3, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 410
    iput-object p1, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothDeviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 412
    :cond_5
    const-string v2, "BluetoothLeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to connect in state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 413
    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    .line 423
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 424
    const-string v2, "BluetoothLeService"

    const-string v3, "disconnect: BluetoothAdapter not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 428
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v1, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 430
    .local v0, connectionState:I
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_0

    .line 431
    const-string v2, "BluetoothLeService"

    const-string v3, "disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-eqz v0, :cond_2

    .line 433
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0

    .line 435
    :cond_2
    const-string v2, "BluetoothLeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to disconnect in state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNumServices()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 215
    const-string v0, "BluetoothLeService"

    const-string v2, "initialize"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sput-object p0, Lti/android/ble/common/BluetoothLeService;->mThis:Lti/android/ble/common/BluetoothLeService;

    .line 219
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 220
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lti/android/ble/common/BluetoothLeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 221
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "BluetoothLeService"

    const-string v2, "Unable to initialize BluetoothManager."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 232
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 228
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 229
    const-string v0, "BluetoothLeService"

    const-string v2, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotificationEnabled(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 4
    .parameter "characteristic"

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Lti/android/ble/common/BluetoothLeService;->checkGatt()Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    sget-object v2, Lti/android/ble/common/GattInfo;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 366
    .local v0, clientConfig:Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public numConnectedDevices()I
    .locals 4

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 454
    .local v1, n:I
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 457
    .local v0, devList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 459
    .end local v0           #devList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 192
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 246
    const-string v0, "BluetoothLeService"

    const-string v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 251
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 237
    const-string v0, "BluetoothLeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 202
    invoke-virtual {p0}, Lti/android/ble/common/BluetoothLeService;->close()V

    .line 203
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1
    .parameter "characteristic"

    .prologue
    .line 264
    invoke-direct {p0}, Lti/android/ble/common/BluetoothLeService;->checkGatt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 267
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_0
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 4
    .parameter "characteristic"
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Lti/android/ble/common/BluetoothLeService;->checkGatt()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    iget-object v2, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    const-string v2, "BluetoothLeService"

    const-string v3, "setCharacteristicNotification failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    sget-object v2, Lti/android/ble/common/GattInfo;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 346
    .local v0, clientConfig:Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_0

    .line 349
    if-eqz p2, :cond_3

    .line 350
    const-string v1, "BluetoothLeService"

    const-string v2, "enable notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 357
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 358
    iget-object v1, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    goto :goto_0

    .line 353
    :cond_3
    const-string v1, "BluetoothLeService"

    const-string v2, "disable notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1
.end method

.method public waitIdle(I)Z
    .locals 3
    .parameter "i"

    .prologue
    .line 478
    div-int/lit8 p1, p1, 0xa

    .line 479
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 480
    iget-boolean v1, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    if-eqz v1, :cond_0

    .line 482
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    if-lez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .parameter "characteristic"

    .prologue
    .line 295
    invoke-direct {p0}, Lti/android/ble/common/BluetoothLeService;->checkGatt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 299
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z
    .locals 4
    .parameter "characteristic"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-direct {p0}, Lti/android/ble/common/BluetoothLeService;->checkGatt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    :goto_0
    return v1

    .line 274
    :cond_0
    new-array v0, v3, [B

    .line 275
    .local v0, val:[B
    aput-byte p2, v0, v1

    .line 276
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 278
    iput-boolean v3, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 279
    iget-object v1, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    goto :goto_0
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 4
    .parameter "characteristic"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-direct {p0}, Lti/android/ble/common/BluetoothLeService;->checkGatt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    :goto_0
    return v3

    .line 286
    :cond_0
    new-array v0, v2, [B

    .line 288
    .local v0, val:[B
    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 289
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 290
    iput-boolean v2, p0, Lti/android/ble/common/BluetoothLeService;->mBusy:Z

    .line 291
    iget-object v1, p0, Lti/android/ble/common/BluetoothLeService;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v1, v3

    .line 288
    goto :goto_1
.end method
