.class public Lti/android/ble/sensortag/MainActivity;
.super Lti/android/ble/sensortag/ViewPagerActivity;
.source "MainActivity.java"


# static fields
.field private static final NO_DEVICE:I = -0x1

.field private static final REQ_DEVICE_ACT:I = 0x1

.field private static final REQ_ENABLE_BT:I = 0x0

.field private static final STATUS_DURATION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field private static final URL_FORUM:Landroid/net/Uri;

.field private static final URL_STHOME:Landroid/net/Uri;

.field private static mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private static mThis:Lti/android/ble/sensortag/MainActivity;


# instance fields
.field private mBleSupported:Z

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnIndex:I

.field private mDeviceFilter:[Ljava/lang/String;

.field private mDeviceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lti/android/ble/common/BleDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceIntent:Landroid/content/Intent;

.field private mFilter:Landroid/content/IntentFilter;

.field private mInitialised:Z

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mNumDevs:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanView:Lti/android/ble/sensortag/ScanView;

.field private mScanning:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "http://e2e.ti.com/support/low_power_rf/default.aspx?DCMP=hpa_hpa_community&HQS=NotApplicable+OT+lprf-forum"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/MainActivity;->URL_FORUM:Landroid/net/Uri;

    .line 75
    const-string v0, "http://www.ti.com/ww/en/wireless_connectivity/sensortag/index.shtml?INTC=SensorTag&HQS=sensortag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lti/android/ble/sensortag/MainActivity;->URL_STHOME:Landroid/net/Uri;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lti/android/ble/sensortag/MainActivity;->mThis:Lti/android/ble/sensortag/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lti/android/ble/sensortag/ViewPagerActivity;-><init>()V

    .line 83
    iput-boolean v2, p0, Lti/android/ble/sensortag/MainActivity;->mInitialised:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mBleSupported:Z

    .line 93
    iput-boolean v2, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    .line 94
    iput v2, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    .line 98
    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 100
    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    .line 102
    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceFilter:[Ljava/lang/String;

    .line 480
    new-instance v0, Lti/android/ble/sensortag/MainActivity$3;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/MainActivity$3;-><init>(Lti/android/ble/sensortag/MainActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 530
    new-instance v0, Lti/android/ble/sensortag/MainActivity$4;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/MainActivity$4;-><init>(Lti/android/ble/sensortag/MainActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 560
    new-instance v0, Lti/android/ble/sensortag/MainActivity$5;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/MainActivity$5;-><init>(Lti/android/ble/sensortag/MainActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 105
    const-string v0, "MainActivity"

    const-string v1, "Construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sput-object p0, Lti/android/ble/sensortag/MainActivity;->mThis:Lti/android/ble/sensortag/MainActivity;

    .line 107
    const v0, 0x7f030007

    iput v0, p0, Lti/android/ble/sensortag/MainActivity;->mResourceFragmentPager:I

    .line 108
    const v0, 0x7f090017

    iput v0, p0, Lti/android/ble/sensortag/MainActivity;->mResourceIdPager:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->stopScan()V

    return-void
.end method

.method static synthetic access$100(Lti/android/ble/sensortag/MainActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1000()Lti/android/ble/sensortag/MainActivity;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lti/android/ble/sensortag/MainActivity;->mThis:Lti/android/ble/sensortag/MainActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->startScan()V

    return-void
.end method

.method static synthetic access$1200(Lti/android/ble/sensortag/MainActivity;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/MainActivity;->checkDeviceFilter(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lti/android/ble/sensortag/MainActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/MainActivity;->deviceInfoExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lti/android/ble/sensortag/MainActivity;Landroid/bluetooth/BluetoothDevice;I)Lti/android/ble/common/BleDeviceInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lti/android/ble/sensortag/MainActivity;->createDeviceInfo(Landroid/bluetooth/BluetoothDevice;I)Lti/android/ble/common/BleDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lti/android/ble/sensortag/MainActivity;Lti/android/ble/common/BleDeviceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/MainActivity;->addDevice(Lti/android/ble/common/BleDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1600(Lti/android/ble/sensortag/MainActivity;Landroid/bluetooth/BluetoothDevice;)Lti/android/ble/common/BleDeviceInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/MainActivity;->findDeviceInfo(Landroid/bluetooth/BluetoothDevice;)Lti/android/ble/common/BleDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lti/android/ble/sensortag/MainActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    return p1
.end method

.method static synthetic access$300(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->startBluetoothLeService()V

    return-void
.end method

.method static synthetic access$400(Lti/android/ble/sensortag/MainActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/MainActivity;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$500(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->startDeviceActivity()V

    return-void
.end method

.method static synthetic access$600(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->stopDeviceActivity()V

    return-void
.end method

.method static synthetic access$700(Lti/android/ble/sensortag/MainActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$800(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/sensortag/ScanView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    return-object v0
.end method

.method static synthetic access$900(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/common/BluetoothLeService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    return-object v0
.end method

.method static synthetic access$902(Lti/android/ble/sensortag/MainActivity;Lti/android/ble/common/BluetoothLeService;)Lti/android/ble/common/BluetoothLeService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    return-object p1
.end method

.method private addDevice(Lti/android/ble/common/BleDeviceInfo;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 391
    iget v0, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    .line 392
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v0}, Lti/android/ble/sensortag/ScanView;->notifyDataSetChanged()V

    .line 394
    iget v0, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " devices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    const-string v1, "1 device"

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkDeviceFilter(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 378
    iget-object v3, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceFilter:[Ljava/lang/String;

    array-length v2, v3

    .line 379
    .local v2, n:I
    if-lez v2, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 382
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceFilter:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0           #found:Z
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private createDeviceInfo(Landroid/bluetooth/BluetoothDevice;I)Lti/android/ble/common/BleDeviceInfo;
    .locals 1
    .parameter "device"
    .parameter "rssi"

    .prologue
    .line 372
    new-instance v0, Lti/android/ble/common/BleDeviceInfo;

    invoke-direct {v0, p1, p2}, Lti/android/ble/common/BleDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;I)V

    .line 374
    .local v0, deviceInfo:Lti/android/ble/common/BleDeviceInfo;
    return-object v0
.end method

.method private deviceInfoExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 402
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/android/ble/common/BleDeviceInfo;

    invoke-virtual {v1}, Lti/android/ble/common/BleDeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const/4 v1, 0x1

    .line 406
    :goto_1
    return v1

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findDeviceInfo(Landroid/bluetooth/BluetoothDevice;)Lti/android/ble/common/BleDeviceInfo;
    .locals 3
    .parameter "device"

    .prologue
    .line 410
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 411
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/android/ble/common/BleDeviceInfo;

    invoke-virtual {v1}, Lti/android/ble/common/BleDeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/android/ble/common/BleDeviceInfo;

    .line 415
    :goto_1
    return-object v1

    .line 410
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onAbout()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lti/android/ble/sensortag/AboutDialog;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/AboutDialog;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 213
    return-void
.end method

.method private onBluetooth()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private onUrl(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    .local v0, web:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method private scanLeDevice(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    .line 425
    :goto_0
    iget-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    return v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    .line 423
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    goto :goto_0
.end method

.method private setBusy(Z)V
    .locals 1
    .parameter "f"

    .prologue
    .line 364
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v0, p1}, Lti/android/ble/sensortag/ScanView;->setBusy(Z)V

    .line 365
    return-void
.end method

.method private startBluetoothLeService()V
    .locals 4

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lti/android/ble/common/BluetoothLeService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v0, bindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 437
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lti/android/ble/sensortag/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 438
    .local v1, f:Z
    if-eqz v1, :cond_0

    .line 439
    const-string v2, "MainActivity"

    const-string v3, "BluetoothLeService - success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string v2, "Bind to BluetoothLeService failed"

    invoke-static {p0, v2}, Lti/android/util/CustomToast;->middleBottom(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->finish()V

    goto :goto_0
.end method

.method private startDeviceActivity()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lti/android/ble/sensortag/DeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceIntent:Landroid/content/Intent;

    .line 293
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceIntent:Landroid/content/Intent;

    const-string v1, "EXTRA_DEVICE"

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lti/android/ble/sensortag/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method

.method private startScan()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mBleSupported:Z

    if-eqz v0, :cond_1

    .line 270
    iput v2, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    .line 271
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 272
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v0}, Lti/android/ble/sensortag/ScanView;->notifyDataSetChanged()V

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lti/android/ble/sensortag/MainActivity;->scanLeDevice(Z)Z

    .line 274
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    iget-boolean v1, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/ScanView;->updateGui(Z)V

    .line 275
    iget-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    if-nez v0, :cond_0

    .line 276
    const-string v0, "Device discovery start failed"

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v2}, Lti/android/ble/sensortag/MainActivity;->setBusy(Z)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v0, "BLE not supported on this device"

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDeviceActivity()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->finishActivity(I)V

    .line 299
    return-void
.end method

.method private stopScan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iput-boolean v1, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    .line 287
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/ScanView;->updateGui(Z)V

    .line 288
    invoke-direct {p0, v1}, Lti/android/ble/sensortag/MainActivity;->scanLeDevice(Z)Z

    .line 289
    return-void
.end method


# virtual methods
.method getDeviceInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lti/android/ble/common/BleDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 448
    invoke-super {p0, p1, p2, p3}, Lti/android/ble/sensortag/ViewPagerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 450
    packed-switch p1, :pswitch_data_0

    .line 470
    const-string v0, "MainActivity"

    const-string v1, "Unknown request code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 453
    :pswitch_0
    iget v0, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    if-eq v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/android/ble/common/BluetoothLeService;->disconnect(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :pswitch_1
    if-ne p2, v1, :cond_1

    .line 462
    const v0, 0x7f050009

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 465
    :cond_1
    const v0, 0x7f05000a

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->finish()V

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBtnScan(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 239
    iget-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->stopScan()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->startScan()V

    goto :goto_0
.end method

.method onConnect()V
    .locals 5

    .prologue
    .line 247
    iget v2, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    if-lez v2, :cond_0

    .line 248
    sget-object v2, Lti/android/ble/sensortag/MainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    iget-object v3, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 250
    .local v0, connState:I
    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    const-string v2, "Device busy (connecting/disconnecting)"

    invoke-virtual {p0, v2}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    .line 265
    .end local v0           #connState:I
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v0       #connState:I
    :pswitch_1
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lti/android/ble/common/BluetoothLeService;->disconnect(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v3, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/android/ble/common/BluetoothLeService;->connect(Ljava/lang/String;)Z

    move-result v1

    .line 256
    .local v1, ok:Z
    if-nez v1, :cond_0

    .line 257
    const-string v2, "Connect failed"

    invoke-virtual {p0, v2}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectTimeout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 329
    new-instance v0, Lti/android/ble/sensortag/MainActivity$2;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/MainActivity$2;-><init>(Lti/android/ble/sensortag/MainActivity;)V

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    iget v0, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    if-eq v0, v2, :cond_0

    .line 335
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/android/ble/common/BluetoothLeService;->disconnect(Ljava/lang/String;)V

    .line 336
    iput v2, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    .line 338
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    const-string v1, "MainActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/MainActivity;->requestWindowFeature(I)Z

    .line 116
    invoke-super {p0, p1}, Lti/android/ble/sensortag/ViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const v1, 0x7f050008

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    iput-boolean v3, p0, Lti/android/ble/sensortag/MainActivity;->mBleSupported:Z

    .line 127
    :cond_0
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    sput-object v1, Lti/android/ble/sensortag/MainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 128
    sget-object v1, Lti/android/ble/sensortag/MainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 131
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 132
    const v1, 0x7f050007

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 133
    iput-boolean v3, p0, Lti/android/ble/sensortag/MainActivity;->mBleSupported:Z

    .line 137
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    .line 138
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceFilter:[Ljava/lang/String;

    .line 142
    new-instance v1, Lti/android/ble/sensortag/ScanView;

    invoke-direct {v1}, Lti/android/ble/sensortag/ScanView;-><init>()V

    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    .line 143
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    const-string v3, "BLE Device List"

    invoke-virtual {v1, v2, v3}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->addSection(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    new-instance v2, Lti/android/ble/common/HelpView;

    const-string v3, "help_scan.html"

    const v4, 0x7f030006

    const v5, 0x7f090016

    invoke-direct {v2, v3, v4, v5}, Lti/android/ble/common/HelpView;-><init>(Ljava/lang/String;II)V

    const-string v3, "Help"

    invoke-virtual {v1, v2, v3}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->addSection(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mFilter:Landroid/content/IntentFilter;

    .line 148
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "ti.android.ble.common.ACTION_GATT_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "ti.android.ble.common.ACTION_GATT_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 168
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 169
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    invoke-super {p0, p1}, Lti/android/ble/sensortag/ViewPagerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "MainActivity"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/android/ble/sensortag/MainActivity;->scanLeDevice(Z)Z

    .line 158
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v0}, Lti/android/ble/common/BluetoothLeService;->close()V

    .line 159
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    .line 163
    :cond_0
    return-void
.end method

.method public onDeviceClick(I)V
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 303
    iget-boolean v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->stopScan()V

    .line 306
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lti/android/ble/sensortag/MainActivity;->setBusy(Z)V

    .line 307
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/android/ble/common/BleDeviceInfo;

    invoke-virtual {v0}, Lti/android/ble/common/BleDeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 308
    iget v0, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    if-ne v0, v2, :cond_2

    .line 309
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    const-string v1, "Connecting"

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    .line 310
    iput p1, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    .line 311
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->onConnect()V

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    const-string v1, "Disconnecting"

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    .line 314
    iget v0, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    if-eq v0, v2, :cond_1

    .line 315
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/android/ble/common/BluetoothLeService;->disconnect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lti/android/ble/sensortag/ViewPagerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 177
    :sswitch_0
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->onBackPressed()V

    goto :goto_0

    .line 180
    :sswitch_1
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->onBluetooth()V

    goto :goto_0

    .line 183
    :sswitch_2
    sget-object v1, Lti/android/ble/sensortag/MainActivity;->URL_FORUM:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lti/android/ble/sensortag/MainActivity;->onUrl(Landroid/net/Uri;)V

    goto :goto_0

    .line 186
    :sswitch_3
    sget-object v1, Lti/android/ble/sensortag/MainActivity;->URL_STHOME:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lti/android/ble/sensortag/MainActivity;->onUrl(Landroid/net/Uri;)V

    goto :goto_0

    .line 189
    :sswitch_4
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->onAbout()V

    goto :goto_0

    .line 192
    :sswitch_5
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->finish()V

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090031 -> :sswitch_4
        0x7f090032 -> :sswitch_1
        0x7f090033 -> :sswitch_2
        0x7f090034 -> :sswitch_3
        0x7f090035 -> :sswitch_5
    .end sparse-switch
.end method

.method public onScanTimeout()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lti/android/ble/sensortag/MainActivity$1;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/MainActivity$1;-><init>(Lti/android/ble/sensortag/MainActivity;)V

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public onScanViewReady(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 218
    invoke-virtual {p0}, Lti/android/ble/sensortag/MainActivity;->updateGuiState()V

    .line 220
    iget-boolean v1, p0, Lti/android/ble/sensortag/MainActivity;->mInitialised:Z

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lti/android/ble/sensortag/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-direct {p0}, Lti/android/ble/sensortag/MainActivity;->startBluetoothLeService()V

    .line 232
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/android/ble/sensortag/MainActivity;->mInitialised:Z

    .line 236
    :goto_1
    return-void

    .line 229
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, enableIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/android/ble/sensortag/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 234
    .end local v0           #enableIntent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v1}, Lti/android/ble/sensortag/ScanView;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method setError(Ljava/lang/String;)V
    .locals 1
    .parameter "txt"

    .prologue
    .line 368
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v0, p1}, Lti/android/ble/sensortag/ScanView;->setError(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public updateGuiState()V
    .locals 5

    .prologue
    .line 345
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 347
    .local v0, mBtEnabled:Z
    if-eqz v0, :cond_2

    .line 348
    iget-boolean v2, p0, Lti/android/ble/sensortag/MainActivity;->mScanning:Z

    if-eqz v2, :cond_0

    .line 350
    iget v2, p0, Lti/android/ble/sensortag/MainActivity;->mConnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, txt:Ljava/lang/String;
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v2, v1}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    .line 361
    .end local v1           #txt:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lti/android/ble/sensortag/MainActivity;->mNumDevs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " devices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 359
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;

    invoke-virtual {v2}, Lti/android/ble/sensortag/ScanView;->notifyDataSetChanged()V

    goto :goto_0
.end method
