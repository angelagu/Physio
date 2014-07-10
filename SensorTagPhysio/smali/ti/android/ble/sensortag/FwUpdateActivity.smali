.class public Lti/android/ble/sensortag/FwUpdateActivity;
.super Landroid/app/Activity;
.source "FwUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;,
        Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;,
        Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;
    }
.end annotation


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "ti.android.ble.sensortag.MESSAGE"

.field private static final FILE_ACTIVITY_REQ:I = 0x0

.field private static final FILE_BUFFER_SIZE:I = 0x40000

.field private static final FW_CUSTOM_DIRECTORY:Ljava/lang/String; = null

.field private static final FW_FILE_A:Ljava/lang/String; = "SensorTagImgA.bin"

.field private static final FW_FILE_B:Ljava/lang/String; = "SensorTagImgB.bin"

.field private static final GATT_WRITE_TIMEOUT:I = 0x64

.field private static final HAL_FLASH_WORD_SIZE:I = 0x4

.field private static final OAD_BLOCK_SIZE:I = 0x10

.field private static final OAD_BUFFER_SIZE:I = 0x12

.field private static final OAD_CONN_INTERVAL:S = 0xas

.field private static final OAD_IMG_HDR_SIZE:I = 0x8

.field private static final OAD_SUPERVISION_TIMEOUT:S = 0x64s

.field private static final PKT_INTERVAL:I = 0x14

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBtnLoadA:Landroid/widget/Button;

.field private mBtnLoadB:Landroid/widget/Button;

.field private mBtnLoadC:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private mCharBlock:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharConnReq:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mCharListCc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private mCharListOad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private mConnControlService:Landroid/bluetooth/BluetoothGattService;

.field private mDeviceActivity:Lti/android/ble/sensortag/DeviceActivity;

.field private mEstDuration:I

.field private final mFileBuffer:[B

.field private mFileImage:Landroid/widget/TextView;

.field private mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

.field private final mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLeService:Lti/android/ble/common/BluetoothLeService;

.field private mLog:Landroid/widget/TextView;

.field private final mOadBuffer:[B

.field private mOadService:Landroid/bluetooth/BluetoothGattService;

.field private mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

.field private mProgramming:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressInfo:Landroid/widget/TextView;

.field private mServiceOk:Z

.field private mTargImage:Landroid/widget/TextView;

.field private mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "FwUpdateActivity"

    sput-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    .line 81
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sput-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->FW_CUSTOM_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    iput-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 107
    iput-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharBlock:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 108
    iput-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharConnReq:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 109
    iput-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mDeviceActivity:Lti/android/ble/sensortag/DeviceActivity;

    .line 113
    const/high16 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    .line 114
    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadBuffer:[B

    .line 115
    new-instance v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    invoke-direct {v0, p0, v3}, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    .line 116
    new-instance v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    invoke-direct {v0, p0, v3}, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    .line 117
    iput-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    .line 118
    new-instance v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    invoke-direct {v0, p0, v3}, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    .line 119
    iput-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 122
    iput-boolean v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    .line 123
    iput-boolean v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    .line 124
    iput v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mEstDuration:I

    .line 226
    new-instance v0, Lti/android/ble/sensortag/FwUpdateActivity$1;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/FwUpdateActivity$1;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    sget-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    const-string v3, "construct"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lti/android/ble/sensortag/DeviceActivity;->getInstance()Lti/android/ble/sensortag/DeviceActivity;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mDeviceActivity:Lti/android/ble/sensortag/DeviceActivity;

    .line 132
    invoke-static {}, Lti/android/ble/common/BluetoothLeService;->getInstance()Lti/android/ble/common/BluetoothLeService;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    .line 135
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mDeviceActivity:Lti/android/ble/sensortag/DeviceActivity;

    invoke-virtual {v0}, Lti/android/ble/sensortag/DeviceActivity;->getOadService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    .line 136
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mDeviceActivity:Lti/android/ble/sensortag/DeviceActivity;

    invoke-virtual {v0}, Lti/android/ble/sensortag/DeviceActivity;->getConnControlService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    .line 139
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListOad:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mConnControlService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListCc:Ljava/util/List;

    .line 142
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListOad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListCc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    .line 143
    iget-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListOad:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 145
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListOad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharBlock:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 146
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharListCc:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharConnReq:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 148
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method static synthetic access$1000(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lti/android/ble/sensortag/FwUpdateActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    return v0
.end method

.method static synthetic access$1200(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->onBlockTimer()V

    return-void
.end method

.method static synthetic access$1300(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lti/android/ble/sensortag/FwUpdateActivity;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$400(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    return-object v0
.end method

.method static synthetic access$500(Lti/android/ble/sensortag/FwUpdateActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTargImage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lti/android/ble/sensortag/FwUpdateActivity;Landroid/widget/TextView;Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lti/android/ble/sensortag/FwUpdateActivity;->displayImageInfo(Landroid/widget/TextView;Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;)V

    return-void
.end method

.method static synthetic access$800(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->displayStats()V

    return-void
.end method

.method static synthetic access$900(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->stopProgramming()V

    return-void
.end method

.method private displayImageInfo(Landroid/widget/TextView;Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;)V
    .locals 7
    .parameter "v"
    .parameter "h"

    .prologue
    .line 397
    iget-short v3, p2, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    shr-int/lit8 v1, v3, 0x1

    .line 398
    .local v1, imgVer:I
    iget-short v3, p2, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    mul-int/lit8 v0, v3, 0x4

    .line 399
    .local v0, imgSize:I
    const-string v3, "Type: %c Ver.: %d Size: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p2, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method private displayStats()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    iget-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget v3, v3, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iTimeElapsed:I

    div-int/lit16 v1, v3, 0x3e8

    .line 407
    .local v1, sec:I
    if-lez v1, :cond_0

    .line 408
    iget-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget v3, v3, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    div-int v0, v3, v1

    .line 413
    .local v0, byteRate:I
    :goto_0
    const-string v3, "Time: %d / %d sec"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mEstDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, txt:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Bytes: %d (%d/sec)"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget v6, v6, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    iget-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void

    .line 410
    .end local v0           #byteRate:I
    .end local v2           #txt:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #byteRate:I
    goto :goto_0
.end method

.method private enableNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 3
    .parameter "c"
    .parameter "enable"

    .prologue
    .line 439
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v1, p1, p2}, Lti/android/ble/common/BluetoothLeService;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 440
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    move-result v0

    .line 442
    :cond_0
    return v0
.end method

.method private getTargetImageInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 420
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v1, v3}, Lti/android/ble/sensortag/FwUpdateActivity;->enableNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 423
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 424
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lti/android/ble/sensortag/FwUpdateActivity;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z

    move-result v0

    .line 425
    :cond_0
    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v1, v3}, Lti/android/ble/sensortag/FwUpdateActivity;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z

    move-result v0

    .line 427
    :cond_1
    if-nez v0, :cond_2

    .line 428
    const-string v1, "Failed to get target info"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 429
    :cond_2
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 256
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ti.android.ble.common.ACTION_DATA_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ti.android.ble.common.ACTION_DATA_WRITE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method private loadFile(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "filepath"
    .parameter "isAsset"

    .prologue
    const/4 v11, 0x4

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 348
    const/4 v2, 0x0

    .line 354
    .local v2, fSuccess:Z
    if-eqz p2, :cond_0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 360
    .local v5, stream:Ljava/io/InputStream;
    :goto_0
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    array-length v9, v9

    invoke-virtual {v5, v6, v8, v9}, Ljava/io/InputStream;->read([BII)I

    .line 361
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v8, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    const/4 v9, 0x5

    aget-byte v8, v8, v9

    iget-object v9, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    aget-byte v9, v9, v11

    invoke-static {v8, v9}, Lti/android/util/Conversion;->buildUint16(BB)S

    move-result v8

    iput-short v8, v6, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    .line 370
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v8, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    const/4 v9, 0x7

    aget-byte v8, v8, v9

    iget-object v9, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    const/4 v10, 0x6

    aget-byte v9, v9, v10

    invoke-static {v8, v9}, Lti/android/util/Conversion;->buildUint16(BB)S

    move-result v8

    iput-short v8, v6, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    .line 371
    iget-object v8, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-short v6, v6, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_1

    const/16 v6, 0x42

    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    iput-object v6, v8, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    .line 372
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    const/16 v8, 0x8

    iget-object v9, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v9, v9, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->uid:[B

    invoke-static {v6, v8, v9, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImage:Landroid/widget/TextView;

    iget-object v8, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    invoke-direct {p0, v6, v8}, Lti/android/ble/sensortag/FwUpdateActivity;->displayImageInfo(Landroid/widget/TextView;Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;)V

    .line 376
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v6, v6, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    iget-object v8, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v8, v8, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    if-eq v6, v8, :cond_2

    .line 377
    .local v3, ready:Z
    :goto_2
    if-eqz v3, :cond_3

    const v4, 0x7f07000a

    .line 378
    .local v4, resid:I
    :goto_3
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImage:Landroid/widget/TextView;

    invoke-virtual {v6, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 381
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 384
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-short v6, v6, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    mul-int/lit8 v6, v6, 0x14

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x10

    div-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mEstDuration:I

    .line 385
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->displayStats()V

    .line 388
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v9, v9, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " selected.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v8, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    const-string v6, "Ready to program device!\n"

    :goto_4
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 391
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->updateGui()V

    .line 393
    .end local v3           #ready:Z
    .end local v4           #resid:I
    .end local v5           #stream:Ljava/io/InputStream;
    :goto_5
    return v7

    .line 357
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, f:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5       #stream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 362
    .end local v1           #f:Ljava/io/File;
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/io/IOException;
    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File open failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 371
    .end local v0           #e:Ljava/io/IOException;
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_1
    const/16 v6, 0x41

    goto/16 :goto_1

    :cond_2
    move v3, v7

    .line 376
    goto :goto_2

    .line 377
    .restart local v3       #ready:Z
    :cond_3
    const v4, 0x7f07000b

    goto :goto_3

    .line 389
    .restart local v4       #resid:I
    :cond_4
    const-string v6, "Incompatible image, select alternative!\n"

    goto :goto_4
.end method

.method private onBlockTimer()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 475
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v1, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v2, v2, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->nBlocks:S

    if-ge v1, v2, :cond_3

    .line 476
    iput-boolean v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    .line 479
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadBuffer:[B

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v2, v2, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    invoke-static {v2}, Lti/android/util/Conversion;->loUint16(S)B

    move-result v2

    aput-byte v2, v1, v6

    .line 480
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadBuffer:[B

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v2, v2, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    invoke-static {v2}, Lti/android/util/Conversion;->hiUint16(S)B

    move-result v2

    aput-byte v2, v1, v3

    .line 481
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileBuffer:[B

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget v2, v2, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    iget-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadBuffer:[B

    const/4 v4, 0x2

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharBlock:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mOadBuffer:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 485
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharBlock:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Lti/android/ble/common/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 487
    .local v0, success:Z
    if-eqz v0, :cond_2

    .line 489
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v2, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    .line 490
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget v2, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    add-int/lit8 v2, v2, 0x10

    iput v2, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBytes:I

    .line 491
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v2, v2, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v3, v3, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->nBlocks:S

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 500
    .end local v0           #success:Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget v2, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iTimeElapsed:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iTimeElapsed:I

    .line 502
    iget-boolean v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    if-nez v1, :cond_1

    .line 503
    new-instance v1, Lti/android/ble/sensortag/FwUpdateActivity$2;

    invoke-direct {v1, p0}, Lti/android/ble/sensortag/FwUpdateActivity$2;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;)V

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    :cond_1
    return-void

    .line 494
    .restart local v0       #success:Z
    :cond_2
    invoke-static {}, Lti/android/ble/common/BluetoothLeService;->getBtGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-nez v1, :cond_0

    .line 495
    iput-boolean v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    goto :goto_0

    .line 498
    .end local v0           #success:Z
    :cond_3
    iput-boolean v6, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    goto :goto_0
.end method

.method private setConnectionParameters()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    const/16 v4, 0xa

    .line 447
    const/16 v2, 0x8

    new-array v1, v2, [B

    invoke-static {v4}, Lti/android/util/Conversion;->loUint16(S)B

    move-result v2

    aput-byte v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v4}, Lti/android/util/Conversion;->hiUint16(S)B

    move-result v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Lti/android/util/Conversion;->loUint16(S)B

    move-result v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v4}, Lti/android/util/Conversion;->hiUint16(S)B

    move-result v3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v5, v1, v2

    const/4 v2, 0x5

    aput-byte v5, v1, v2

    const/4 v2, 0x6

    invoke-static {v6}, Lti/android/util/Conversion;->loUint16(S)B

    move-result v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v6}, Lti/android/util/Conversion;->hiUint16(S)B

    move-result v3

    aput-byte v3, v1, v2

    .line 449
    .local v1, value:[B
    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharConnReq:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 450
    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharConnReq:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Lti/android/ble/common/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 451
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 452
    iget-object v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v2, v6}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    move-result v0

    .line 453
    :cond_0
    return-void
.end method

.method private startProgramming()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    const-string v1, "Programming started\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 284
    iput-boolean v3, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    .line 285
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->updateGui()V

    .line 288
    const/16 v0, 0xc

    new-array v6, v0, [B

    .line 289
    .local v6, buf:[B
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-short v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    invoke-static {v0}, Lti/android/util/Conversion;->loUint16(S)B

    move-result v0

    aput-byte v0, v6, v2

    .line 290
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-short v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    invoke-static {v0}, Lti/android/util/Conversion;->hiUint16(S)B

    move-result v0

    aput-byte v0, v6, v3

    .line 291
    const/4 v0, 0x2

    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-short v1, v1, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    invoke-static {v1}, Lti/android/util/Conversion;->loUint16(S)B

    move-result v1

    aput-byte v1, v6, v0

    .line 292
    const/4 v0, 0x3

    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-short v1, v1, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    invoke-static {v1}, Lti/android/util/Conversion;->hiUint16(S)B

    move-result v1

    aput-byte v1, v6, v0

    .line 293
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->uid:[B

    invoke-static {v0, v2, v6, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 297
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1}, Lti/android/ble/common/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 300
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    invoke-virtual {v0}, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->reset()V

    .line 303
    iput-object v5, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    .line 304
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    .line 305
    new-instance v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;

    invoke-direct {v0, p0, v5}, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;-><init>(Lti/android/ble/sensortag/FwUpdateActivity;Lti/android/ble/sensortag/FwUpdateActivity$1;)V

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 306
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 307
    return-void
.end method

.method private stopProgramming()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 311
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 312
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    .line 315
    iput-boolean v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    .line 316
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 318
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->updateGui()V

    .line 320
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->iBlocks:S

    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgInfo:Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;

    iget-short v1, v1, Lti/android/ble/sensortag/FwUpdateActivity$ProgInfo;->nBlocks:S

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    const-string v1, "Programming complete!\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    const-string v1, "Programming cancelled\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateGui()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    iget-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f05002a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 331
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadA:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadB:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 336
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 337
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_2

    .line 338
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadA:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadB:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    iget-object v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadA:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadB:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z
    .locals 3
    .parameter "c"
    .parameter "v"

    .prologue
    .line 432
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    invoke-virtual {v1, p1, p2}, Lti/android/ble/common/BluetoothLeService;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;B)Z

    move-result v0

    .line 433
    .local v0, ok:Z
    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLeService:Lti/android/ble/common/BluetoothLeService;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lti/android/ble/common/BluetoothLeService;->waitIdle(I)Z

    move-result v0

    .line 435
    :cond_0
    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 461
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 462
    const-string v1, "ti.android.ble.devicemonitor.FILENAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, filename:Ljava/lang/String;
    sget-object v1, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->loadFile(Ljava/lang/String;Z)Z

    .line 467
    .end local v0           #filename:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    if-eqz v0, :cond_0

    .line 196
    const v0, 0x7f05002b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 152
    sget-object v1, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->setContentView(I)V

    .line 158
    const v1, 0x102002c

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .local v0, view:Landroid/widget/ImageView;
    const/16 v1, 0x14

    invoke-virtual {v0, v4, v3, v1, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 162
    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->setTitle(I)V

    .line 165
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressInfo:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTargImage:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mFileImage:Landroid/widget/TextView;

    .line 168
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mLog:Landroid/widget/TextView;

    .line 169
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 170
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnStart:Landroid/widget/Button;

    .line 171
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadA:Landroid/widget/Button;

    .line 173
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadB:Landroid/widget/Button;

    .line 174
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadC:Landroid/widget/Button;

    .line 177
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadA:Landroid/widget/Button;

    iget-boolean v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadB:Landroid/widget/Button;

    iget-boolean v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mBtnLoadC:Landroid/widget/Button;

    iget-boolean v2, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->initIntentFilter()V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mTimer:Ljava/util/Timer;

    .line 190
    return-void
.end method

.method public onLoad(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090005

    if-ne v0, v1, :cond_0

    .line 270
    const-string v0, "SensorTagImgA.bin"

    invoke-direct {p0, v0, v2}, Lti/android/ble/sensortag/FwUpdateActivity;->loadFile(Ljava/lang/String;Z)Z

    .line 273
    :goto_0
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->updateGui()V

    .line 274
    return-void

    .line 272
    :cond_0
    const-string v0, "SensorTagImgB.bin"

    invoke-direct {p0, v0, v2}, Lti/android/ble/sensortag/FwUpdateActivity;->loadFile(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public onLoadCustom(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lti/android/ble/sensortag/FileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ti.android.ble.sensortag.MESSAGE"

    sget-object v2, Lti/android/ble/sensortag/FwUpdateActivity;->FW_CUSTOM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 223
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/FwUpdateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lti/android/ble/sensortag/FwUpdateActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    iget-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mServiceOk:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mGattUpdateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lti/android/ble/sensortag/FwUpdateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->getTargetImageInfo()V

    .line 213
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->setConnectionParameters()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "OAD service initialisation failed"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 261
    iget-boolean v0, p0, Lti/android/ble/sensortag/FwUpdateActivity;->mProgramming:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->stopProgramming()V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lti/android/ble/sensortag/FwUpdateActivity;->startProgramming()V

    goto :goto_0
.end method
