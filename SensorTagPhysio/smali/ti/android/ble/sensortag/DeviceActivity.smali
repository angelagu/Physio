.class public Lti/android/ble/sensortag/DeviceActivity;
.super Lti/android/ble/sensortag/ViewPagerActivity;
.source "DeviceActivity.java"


# static fields
.field public static final EXTRA_DEVICE:Ljava/lang/String; = "EXTRA_DEVICE"

.field private static final FWUPDATE_ACT_REQ:I = 0x1

.field private static final GATT_TIMEOUT:I = 0x64

.field private static final PREF_ACT_REQ:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBtGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBtLeService:Lti/android/ble/common/BluetoothLeService;

.field private mConnControlService:Landroid/bluetooth/BluetoothGattService;

.field private mDeviceView:Lti/android/ble/sensortag/DeviceView;

.field private mEnabledSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lti/android/ble/sensortag/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mHeightCalibrateRequest:Z

.field private mIsReceiving:Z

.field private mMagCalibrateRequest:Z

.field private mOadService:Landroid/bluetooth/BluetoothGattService;

.field private mServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesRdy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "DeviceActivity"

    sput-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lti/android/ble/sensortag/ViewPagerActivity;-><init>()V

    .line 76
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    .line 79
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    .line 80
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 81
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    .line 82
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mServiceList:Ljava/util/List;

    .line 84
    iput-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mServicesRdy:Z

    .line 85
    iput-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mEnabledSensors:Ljava/util/List;

    .line 89
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    .line 90
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    .line 91
    iput-boolean v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mMagCalibrateRequest:Z

    .line 92
    iput-boolean v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mHeightCalibrateRequest:Z

    .line 426
    new-instance v0, Lti/android/ble/sensortag/DeviceActivity$1;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/DeviceActivity$1;-><init>(Lti/android/ble/sensortag/DeviceActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    const v0, 0x7f030007

    iput v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mResourceFragmentPager:I

    .line 97
    const v0, 0x7f090017

    iput v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mResourceIdPager:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lti/android/ble/sensortag/DeviceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->displayServices()V

    return-void
.end method

.method static synthetic access$100(Lti/android/ble/sensortag/DeviceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->checkOad()V

    return-void
.end method

.method static synthetic access$200(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lti/android/ble/sensortag/DeviceActivity;->onCharacteristicChanged(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$300(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lti/android/ble/sensortag/DeviceActivity;->onCharacteristicWrite(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lti/android/ble/sensortag/DeviceActivity;->onCharacteristicsRead(Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$500(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/DeviceActivity;->setError(Ljava/lang/String;)V

    return-void
.end method

.method private calibrateBarometer()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 370
    sget-object v5, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v6, "calibrateBarometer"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v5, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v5}, Lti/android/ble/sensortag/Sensor;->getService()Ljava/util/UUID;

    move-result-object v4

    .line 373
    .local v4, servUuid:Ljava/util/UUID;
    sget-object v5, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v5}, Lti/android/ble/sensortag/Sensor;->getConfig()Ljava/util/UUID;

    move-result-object v2

    .line 374
    .local v2, configUuid:Ljava/util/UUID;
    iget-object v5, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    .line 375
    .local v3, serv:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 378
    .local v1, config:Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v5, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v6}, Lti/android/ble/common/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z

    .line 379
    iget-object v5, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v5, v7}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    .line 380
    sget-object v5, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_CALI:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 381
    .local v0, calibrationCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v5, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v5, v0}, Lti/android/ble/common/BluetoothLeService;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 382
    iget-object v5, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v5, v7}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    .line 383
    return-void
.end method

.method private checkOad()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 273
    iput-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    .line 274
    iput-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mServiceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    if-nez v2, :cond_3

    .line 277
    :cond_0
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mServiceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 278
    .local v1, srv:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lti/android/ble/common/GattInfo;->OAD_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    .line 281
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lti/android/ble/common/GattInfo;->CC_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    .line 276
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v1           #srv:Landroid/bluetooth/BluetoothGattService;
    :cond_3
    return-void
.end method

.method private discoverServices()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "START SERVICE DISCOVERY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    const-string v0, "Service discovery started"

    invoke-direct {p0, v0}, Lti/android/ble/sensortag/DeviceActivity;->setStatus(Ljava/lang/String;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "Service discovery start failed"

    invoke-direct {p0, v0}, Lti/android/ble/sensortag/DeviceActivity;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayServices()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 299
    iput-boolean v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mServicesRdy:Z

    .line 302
    :try_start_0
    iget-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v1}, Lti/android/ble/common/BluetoothLeService;->getSupportedGattServices()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mServiceList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    iget-boolean v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mServicesRdy:Z

    if-eqz v1, :cond_0

    .line 310
    const-string v1, "Service discovery complete"

    invoke-direct {p0, v1}, Lti/android/ble/sensortag/DeviceActivity;->setStatus(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/DeviceActivity;->enableSensors(Z)V

    .line 312
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/DeviceActivity;->enableNotifications(Z)V

    .line 316
    :goto_1
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mServicesRdy:Z

    goto :goto_0

    .line 314
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Failed to read services"

    invoke-direct {p0, v1}, Lti/android/ble/sensortag/DeviceActivity;->setError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private enableNotifications(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 352
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceActivity;->mEnabledSensors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/android/ble/sensortag/Sensor;

    .line 353
    .local v3, sensor:Lti/android/ble/sensortag/Sensor;
    invoke-virtual {v3}, Lti/android/ble/sensortag/Sensor;->getService()Ljava/util/UUID;

    move-result-object v5

    .line 354
    .local v5, servUuid:Ljava/util/UUID;
    invoke-virtual {v3}, Lti/android/ble/sensortag/Sensor;->getData()Ljava/util/UUID;

    move-result-object v1

    .line 355
    .local v1, dataUuid:Ljava/util/UUID;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 356
    .local v4, serv:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 358
    .local v0, charac:Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v6, v0, p1}, Lti/android/ble/common/BluetoothLeService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 359
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    goto :goto_0

    .line 361
    .end local v0           #charac:Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1           #dataUuid:Ljava/util/UUID;
    .end local v3           #sensor:Lti/android/ble/sensortag/Sensor;
    .end local v4           #serv:Landroid/bluetooth/BluetoothGattService;
    .end local v5           #servUuid:Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method private enableSensors(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    .line 329
    iget-object v7, p0, Lti/android/ble/sensortag/DeviceActivity;->mEnabledSensors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/android/ble/sensortag/Sensor;

    .line 330
    .local v3, sensor:Lti/android/ble/sensortag/Sensor;
    invoke-virtual {v3}, Lti/android/ble/sensortag/Sensor;->getService()Ljava/util/UUID;

    move-result-object v5

    .line 331
    .local v5, servUuid:Ljava/util/UUID;
    invoke-virtual {v3}, Lti/android/ble/sensortag/Sensor;->getConfig()Ljava/util/UUID;

    move-result-object v1

    .line 334
    .local v1, confUuid:Ljava/util/UUID;
    if-nez v1, :cond_1

    .line 349
    .end local v1           #confUuid:Ljava/util/UUID;
    .end local v3           #sensor:Lti/android/ble/sensortag/Sensor;
    .end local v5           #servUuid:Ljava/util/UUID;
    :cond_0
    return-void

    .line 338
    .restart local v1       #confUuid:Ljava/util/UUID;
    .restart local v3       #sensor:Lti/android/ble/sensortag/Sensor;
    .restart local v5       #servUuid:Ljava/util/UUID;
    :cond_1
    sget-object v7, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_CONF:Ljava/util/UUID;

    invoke-virtual {v1, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p1, :cond_2

    .line 339
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->calibrateBarometer()V

    .line 342
    :cond_2
    iget-object v7, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    .line 343
    .local v4, serv:Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 344
    .local v0, charac:Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lti/android/ble/sensortag/Sensor;->getEnableSensorCode()B

    move-result v6

    .line 345
    .local v6, value:B
    :goto_1
    iget-object v7, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v7, v0, v6}, Lti/android/ble/common/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z

    .line 346
    iget-object v7, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    goto :goto_0

    .line 344
    .end local v6           #value:B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lti/android/ble/sensortag/DeviceActivity;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->mThis:Lti/android/ble/sensortag/ViewPagerActivity;

    check-cast v0, Lti/android/ble/sensortag/DeviceActivity;

    return-object v0
.end method

.method private static makeGattUpdateIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, fi:Landroid/content/IntentFilter;
    const-string v1, "ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "ti.android.ble.common.ACTION_DATA_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "ti.android.ble.common.ACTION_DATA_WRITE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "ti.android.ble.common.ACTION_DATA_READ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    return-object v0
.end method

.method private onCharacteristicChanged(Ljava/lang/String;[B)V
    .locals 5
    .parameter "uuidStr"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 467
    iget-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    if-eqz v1, :cond_2

    .line 468
    iget-boolean v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mMagCalibrateRequest:Z

    if-eqz v1, :cond_0

    .line 469
    sget-object v1, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_DATA:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    sget-object v1, Lti/android/ble/sensortag/Sensor;->MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v0

    .line 472
    .local v0, v:Lti/android/util/Point3D;
    sget-object v1, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    iput-object v0, v1, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->val:Lti/android/util/Point3D;

    .line 473
    iput-boolean v4, p0, Lti/android/ble/sensortag/DeviceActivity;->mMagCalibrateRequest:Z

    .line 474
    const-string v1, "Magnetometer calibrated"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 479
    .end local v0           #v:Lti/android/util/Point3D;
    :cond_0
    iget-boolean v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mHeightCalibrateRequest:Z

    if-eqz v1, :cond_1

    .line 480
    sget-object v1, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_DATA:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    sget-object v1, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v0

    .line 483
    .restart local v0       #v:Lti/android/util/Point3D;
    sget-object v1, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    iget-wide v2, v0, Lti/android/util/Point3D;->x:D

    iput-wide v2, v1, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->heightCalibration:D

    .line 484
    iput-boolean v4, p0, Lti/android/ble/sensortag/DeviceActivity;->mHeightCalibrateRequest:Z

    .line 485
    const-string v1, "Height measurement calibrated"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 490
    .end local v0           #v:Lti/android/util/Point3D;
    :cond_1
    iget-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    invoke-virtual {v1, p1, p2}, Lti/android/ble/sensortag/DeviceView;->onCharacteristicChanged(Ljava/lang/String;[B)V

    .line 492
    :cond_2
    return-void
.end method

.method private onCharacteristicWrite(Ljava/lang/String;I)V
    .locals 3
    .parameter "uuidStr"
    .parameter "status"

    .prologue
    .line 463
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCharacteristicWrite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method private onCharacteristicsRead(Ljava/lang/String;[BI)V
    .locals 7
    .parameter "uuidStr"
    .parameter "value"
    .parameter "status"

    .prologue
    .line 495
    sget-object v4, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCharacteristicsRead: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v4, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_CALI:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    sget-object v4, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v5, "CALIBRATED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v0, cal:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, offset:I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_0

    .line 501
    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 502
    .local v1, lowerByte:Ljava/lang/Integer;
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 503
    .local v3, upperByte:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 506
    .end local v1           #lowerByte:Ljava/lang/Integer;
    .end local v3           #upperByte:Ljava/lang/Integer;
    :cond_0
    const/16 v2, 0x8

    :goto_1
    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    .line 507
    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 508
    .restart local v1       #lowerByte:Ljava/lang/Integer;
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 509
    .restart local v3       #upperByte:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 512
    .end local v1           #lowerByte:Ljava/lang/Integer;
    .end local v3           #upperByte:Ljava/lang/Integer;
    :cond_1
    sget-object v4, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    iput-object v0, v4, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->barometerCalibrationCoefficients:Ljava/util/List;

    .line 514
    .end local v0           #cal:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #offset:I
    :cond_2
    return-void
.end method

.method private setError(Ljava/lang/String;)V
    .locals 1
    .parameter "txt"

    .prologue
    .line 319
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    invoke-virtual {v0, p1}, Lti/android/ble/sensortag/DeviceView;->setError(Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "txt"

    .prologue
    .line 324
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    invoke-virtual {v0, p1}, Lti/android/ble/sensortag/DeviceView;->setStatus(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method private startOadActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    iget-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0, v3}, Lti/android/ble/sensortag/DeviceActivity;->enableSensors(Z)V

    .line 249
    invoke-direct {p0, v3}, Lti/android/ble/sensortag/DeviceActivity;->enableNotifications(Z)V

    .line 250
    const-string v1, "OAD service available"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lti/android/ble/sensortag/FwUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lti/android/ble/sensortag/DeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v1, "OAD service not available on this device"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startPrefrenceActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-direct {p0, v3}, Lti/android/ble/sensortag/DeviceActivity;->enableSensors(Z)V

    .line 261
    invoke-direct {p0, v3}, Lti/android/ble/sensortag/DeviceActivity;->enableNotifications(Z)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lti/android/ble/sensortag/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, i:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lti/android/ble/sensortag/PreferencesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    const-string v1, "EXTRA_DEVICE"

    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0, v3}, Lti/android/ble/sensortag/DeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method

.method private updateSensorList()V
    .locals 3

    .prologue
    .line 216
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mEnabledSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 218
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lti/android/ble/sensortag/Sensor;->SENSOR_LIST:[Lti/android/ble/sensortag/Sensor;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 219
    sget-object v2, Lti/android/ble/sensortag/Sensor;->SENSOR_LIST:[Lti/android/ble/sensortag/Sensor;

    aget-object v1, v2, v0

    .line 220
    .local v1, sensor:Lti/android/ble/sensortag/Sensor;
    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mEnabledSensors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v1           #sensor:Lti/android/ble/sensortag/Sensor;
    :cond_1
    return-void
.end method


# virtual methods
.method calibrateHeight()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mHeightCalibrateRequest:Z

    .line 396
    return-void
.end method

.method calibrateMagnetometer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 386
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "calibrateMagnetometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    iget-object v0, v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->val:Lti/android/util/Point3D;

    iput-wide v2, v0, Lti/android/util/Point3D;->x:D

    .line 388
    sget-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    iget-object v0, v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->val:Lti/android/util/Point3D;

    iput-wide v2, v0, Lti/android/util/Point3D;->y:D

    .line 389
    sget-object v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;

    iget-object v0, v0, Lti/android/ble/sensortag/MagnetometerCalibrationCoefficients;->val:Lti/android/util/Point3D;

    iput-wide v2, v0, Lti/android/util/Point3D;->z:D

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mMagCalibrateRequest:Z

    .line 392
    return-void
.end method

.method getConnControlService()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method getOadService()Landroid/bluetooth/BluetoothGattService;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z
    .locals 6
    .parameter "sensor"

    .prologue
    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lti/android/ble/sensortag/Sensor;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, preferenceKeyString:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 232
    .local v2, prefs:Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 233
    .local v0, defaultValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 400
    invoke-super {p0, p1, p2, p3}, Lti/android/ble/sensortag/ViewPagerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 402
    packed-switch p1, :pswitch_data_0

    .line 421
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unknown request code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    invoke-virtual {v0}, Lti/android/ble/sensortag/DeviceView;->updateVisibility()V

    .line 405
    const-string v0, "Applying preferences"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    iget-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    if-nez v0, :cond_0

    .line 407
    iput-boolean v2, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    .line 408
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lti/android/ble/sensortag/DeviceActivity;->makeGattUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/android/ble/sensortag/DeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    :cond_0
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->updateSensorList()V

    .line 412
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/DeviceActivity;->enableSensors(Z)V

    .line 413
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/DeviceActivity;->enableNotifications(Z)V

    goto :goto_0

    .line 417
    :pswitch_1
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/DeviceActivity;->enableSensors(Z)V

    .line 418
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/DeviceActivity;->enableNotifications(Z)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lti/android/ble/sensortag/DeviceActivity;->requestWindowFeature(I)Z

    .line 107
    invoke-super {p0, p1}, Lti/android/ble/sensortag/ViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lti/android/ble/sensortag/DeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    new-instance v3, Lti/android/ble/sensortag/DeviceView;

    invoke-direct {v3}, Lti/android/ble/sensortag/DeviceView;-><init>()V

    iput-object v3, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    .line 112
    iget-object v3, p0, Lti/android/ble/sensortag/DeviceActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity;->mDeviceView:Lti/android/ble/sensortag/DeviceView;

    const-string v5, "Services"

    invoke-virtual {v3, v4, v5}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->addSection(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lti/android/ble/sensortag/DeviceActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    new-instance v4, Lti/android/ble/common/HelpView;

    const-string v5, "help_device.html"

    const v6, 0x7f030006

    const v7, 0x7f090016

    invoke-direct {v4, v5, v6, v7}, Lti/android/ble/common/HelpView;-><init>(Ljava/lang/String;II)V

    const-string v5, "Help"

    invoke-virtual {v3, v4, v5}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->addSection(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 114
    const v3, 0x7f040004

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 117
    invoke-static {}, Lti/android/ble/common/BluetoothLeService;->getInstance()Lti/android/ble/common/BluetoothLeService;

    move-result-object v3

    iput-object v3, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    .line 118
    const-string v3, "EXTRA_DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lti/android/ble/sensortag/DeviceActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lti/android/ble/sensortag/DeviceActivity;->mServiceList:Ljava/util/List;

    .line 122
    invoke-virtual {p0}, Lti/android/ble/sensortag/DeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f04

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 124
    .local v2, xpp:Landroid/content/res/XmlResourceParser;
    new-instance v3, Lti/android/ble/common/GattInfo;

    invoke-direct {v3, v2}, Lti/android/ble/common/GattInfo;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 127
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->updateSensorList()V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 140
    invoke-virtual {p0}, Lti/android/ble/sensortag/DeviceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 141
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 142
    invoke-super {p0, p1}, Lti/android/ble/sensortag/ViewPagerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->onDestroy()V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/DeviceActivity;->finishActivity(I)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/DeviceActivity;->finishActivity(I)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Lti/android/ble/sensortag/ViewPagerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->startPrefrenceActivity()V

    .line 161
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->startOadActivity()V

    goto :goto_1

    .line 156
    :pswitch_2
    invoke-virtual {p0}, Lti/android/ble/sensortag/DeviceActivity;->openAboutDialog()V

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7f09002f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->onPause()V

    .line 179
    iget-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/DeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    .line 183
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->onResume()V

    .line 169
    iget-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lti/android/ble/sensortag/DeviceActivity;->makeGattUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/android/ble/sensortag/DeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mIsReceiving:Z

    .line 173
    :cond_0
    return-void
.end method

.method onViewInflated(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 195
    sget-object v0, Lti/android/ble/sensortag/DeviceActivity;->TAG:Ljava/lang/String;

    const-string v1, "Gatt view ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/DeviceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {}, Lti/android/ble/common/BluetoothLeService;->getBtGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    .line 204
    iget-boolean v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mServicesRdy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceActivity;->mBtLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v0}, Lti/android/ble/common/BluetoothLeService;->getNumServices()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->discoverServices()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-direct {p0}, Lti/android/ble/sensortag/DeviceActivity;->displayServices()V

    goto :goto_0
.end method
