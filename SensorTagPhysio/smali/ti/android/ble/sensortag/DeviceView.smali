.class public Lti/android/ble/sensortag/DeviceView;
.super Landroid/support/v4/app/Fragment;
.source "DeviceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/sensortag/DeviceView$2;
    }
.end annotation


# static fields
.field private static final ID_ACC:I = 0x1

.field private static final ID_AMB:I = 0x5

.field private static final ID_BAR:I = 0x7

.field private static final ID_GYR:I = 0x3

.field private static final ID_HUM:I = 0x6

.field private static final ID_KEY:I = 0x0

.field private static final ID_MAG:I = 0x2

.field private static final ID_OBJ:I = 0x4

.field private static final ID_OFFSET:I = 0x0

.field private static final PA_PER_METER:D = 12.0

.field private static final TAG:Ljava/lang/String; = "DeviceView"

.field public static mInstance:Lti/android/ble/sensortag/DeviceView;


# instance fields
.field private decimal:Ljava/text/DecimalFormat;

.field private mAccValue:Landroid/widget/TextView;

.field private mActivity:Lti/android/ble/sensortag/DeviceActivity;

.field private mAmbValue:Landroid/widget/TextView;

.field private mBarPanel:Landroid/widget/TableRow;

.field private mBarValue:Landroid/widget/TextView;

.field private mButton:Landroid/widget/ImageView;

.field private mGyrValue:Landroid/widget/TextView;

.field private mHumValue:Landroid/widget/TextView;

.field private mMagPanel:Landroid/widget/TableRow;

.field private mMagValue:Landroid/widget/TextView;

.field private mObjValue:Landroid/widget/TextView;

.field private mStatus:Landroid/widget/TextView;

.field private table:Landroid/widget/TableLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lti/android/ble/sensortag/DeviceView;->mInstance:Lti/android/ble/sensortag/DeviceView;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 88
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "+0.00;-0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    return-void
.end method

.method static synthetic access$000(Lti/android/ble/sensortag/DeviceView;)Lti/android/ble/sensortag/DeviceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    return-object v0
.end method

.method private showItem(IZ)V
    .locals 5
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 240
    iget-object v3, p0, Lti/android/ble/sensortag/DeviceView;->table:Landroid/widget/TableLayout;

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, hdr:Landroid/view/View;
    iget-object v3, p0, Lti/android/ble/sensortag/DeviceView;->table:Landroid/widget/TableLayout;

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, txt:Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .line 243
    .local v2, vc:I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    return-void

    .line 242
    .end local v2           #vc:I
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onCharacteristicChanged(Ljava/lang/String;[B)V
    .locals 12
    .parameter "uuidStr"
    .parameter "rawValue"

    .prologue
    const-wide/high16 v10, 0x4024

    .line 161
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_ACC_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    sget-object v6, Lti/android/ble/sensortag/Sensor;->ACCELEROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v5

    .line 163
    .local v5, v:Lti/android/util/Point3D;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->x:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->y:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->z:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, msg:Ljava/lang/String;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mAccValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #v:Lti/android/util/Point3D;
    :cond_0
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_MAG_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    sget-object v6, Lti/android/ble/sensortag/Sensor;->MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v5

    .line 169
    .restart local v5       #v:Lti/android/util/Point3D;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->x:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->y:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->z:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .restart local v3       #msg:Ljava/lang/String;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mMagValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #v:Lti/android/util/Point3D;
    :cond_1
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_GYR_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    sget-object v6, Lti/android/ble/sensortag/Sensor;->GYROSCOPE:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v5

    .line 175
    .restart local v5       #v:Lti/android/util/Point3D;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->x:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->y:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->z:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .restart local v3       #msg:Ljava/lang/String;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mGyrValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #v:Lti/android/util/Point3D;
    :cond_2
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_IRT_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    sget-object v6, Lti/android/ble/sensortag/Sensor;->IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v5

    .line 181
    .restart local v5       #v:Lti/android/util/Point3D;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->x:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3       #msg:Ljava/lang/String;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mAmbValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->y:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mObjValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #v:Lti/android/util/Point3D;
    :cond_3
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_HUM_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 188
    sget-object v6, Lti/android/ble/sensortag/Sensor;->HUMIDITY:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v5

    .line 189
    .restart local v5       #v:Lti/android/util/Point3D;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->x:D

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .restart local v3       #msg:Ljava/lang/String;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mHumValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #v:Lti/android/util/Point3D;
    :cond_4
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_BAR_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 194
    sget-object v6, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convert([B)Lti/android/util/Point3D;

    move-result-object v5

    .line 195
    .restart local v5       #v:Lti/android/util/Point3D;
    iget-wide v6, v5, Lti/android/util/Point3D;->x:D

    sget-object v8, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->INSTANCE:Lti/android/ble/sensortag/BarometerCalibrationCoefficients;

    iget-wide v8, v8, Lti/android/ble/sensortag/BarometerCalibrationCoefficients;->heightCalibration:D

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4028

    div-double v0, v6, v8

    .line 196
    .local v0, h:D
    neg-double v6, v0

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    div-double v0, v6, v10

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lti/android/ble/sensortag/DeviceView;->decimal:Ljava/text/DecimalFormat;

    iget-wide v8, v5, Lti/android/util/Point3D;->x:D

    const-wide/high16 v10, 0x4059

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .restart local v3       #msg:Ljava/lang/String;
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mBarValue:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .end local v0           #h:D
    .end local v3           #msg:Ljava/lang/String;
    .end local v5           #v:Lti/android/util/Point3D;
    :cond_5
    sget-object v6, Lti/android/ble/sensortag/SensorTag;->UUID_KEY_DATA:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 204
    sget-object v6, Lti/android/ble/sensortag/Sensor;->SIMPLE_KEYS:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v6, p2}, Lti/android/ble/sensortag/Sensor;->convertKeys([B)Lti/android/ble/sensortag/SimpleKeysStatus;

    move-result-object v4

    .line 206
    .local v4, s:Lti/android/ble/sensortag/SimpleKeysStatus;
    sget-object v6, Lti/android/ble/sensortag/DeviceView$2;->$SwitchMap$ti$android$ble$sensortag$SimpleKeysStatus:[I

    invoke-virtual {v4}, Lti/android/ble/sensortag/SimpleKeysStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 220
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 208
    :pswitch_0
    const v2, 0x7f020003

    .line 223
    .local v2, img:I
    :goto_0
    iget-object v6, p0, Lti/android/ble/sensortag/DeviceView;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    .end local v2           #img:I
    .end local v4           #s:Lti/android/ble/sensortag/SimpleKeysStatus;
    :cond_6
    return-void

    .line 211
    .restart local v4       #s:Lti/android/ble/sensortag/SimpleKeysStatus;
    :pswitch_1
    const v2, 0x7f020004

    .line 212
    .restart local v2       #img:I
    goto :goto_0

    .line 214
    .end local v2           #img:I
    :pswitch_2
    const v2, 0x7f020005

    .line 215
    .restart local v2       #img:I
    goto :goto_0

    .line 217
    .end local v2           #img:I
    :pswitch_3
    const v2, 0x7f020006

    .line 218
    .restart local v2       #img:I
    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    const-string v2, "DeviceView"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sput-object p0, Lti/android/ble/sensortag/DeviceView;->mInstance:Lti/android/ble/sensortag/DeviceView;

    .line 96
    invoke-virtual {p0}, Lti/android/ble/sensortag/DeviceView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lti/android/ble/sensortag/DeviceActivity;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    .line 99
    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, view:Landroid/view/View;
    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->table:Landroid/widget/TableLayout;

    .line 105
    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mAccValue:Landroid/widget/TextView;

    .line 106
    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mMagValue:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mGyrValue:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mObjValue:Landroid/widget/TextView;

    .line 109
    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mAmbValue:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mHumValue:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mBarValue:Landroid/widget/TextView;

    .line 112
    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mButton:Landroid/widget/ImageView;

    .line 113
    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mMagPanel:Landroid/widget/TableRow;

    .line 117
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mBarPanel:Landroid/widget/TableRow;

    .line 118
    new-instance v0, Lti/android/ble/sensortag/DeviceView$1;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/DeviceView$1;-><init>(Lti/android/ble/sensortag/DeviceView;)V

    .line 132
    .local v0, cl:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mMagPanel:Landroid/widget/TableRow;

    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mBarPanel:Landroid/widget/TableRow;

    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    invoke-virtual {v2, v1}, Lti/android/ble/sensortag/DeviceActivity;->onViewInflated(Landroid/view/View;)V

    .line 138
    return-object v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Lti/android/ble/sensortag/DeviceView;->updateVisibility()V

    .line 146
    return-void
.end method

.method setBusy(Z)V
    .locals 3
    .parameter "f"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    const v2, 0x7f070012

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    const v2, 0x7f07000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method setError(Ljava/lang/String;)V
    .locals 3
    .parameter "txt"

    .prologue
    .line 253
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    const v2, 0x7f070013

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 255
    return-void
.end method

.method setStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "txt"

    .prologue
    .line 248
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    const v2, 0x7f070011

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 250
    return-void
.end method

.method updateVisibility()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->SIMPLE_KEYS:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 229
    const/4 v0, 0x1

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->ACCELEROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 230
    const/4 v0, 0x2

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->MAGNETOMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 231
    const/4 v0, 0x3

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->GYROSCOPE:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 232
    const/4 v0, 0x4

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 233
    const/4 v0, 0x5

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->IR_TEMPERATURE:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 234
    const/4 v0, 0x6

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->HUMIDITY:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 235
    const/4 v0, 0x7

    iget-object v1, p0, Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;

    sget-object v2, Lti/android/ble/sensortag/Sensor;->BAROMETER:Lti/android/ble/sensortag/Sensor;

    invoke-virtual {v1, v2}, Lti/android/ble/sensortag/DeviceActivity;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lti/android/ble/sensortag/DeviceView;->showItem(IZ)V

    .line 236
    return-void
.end method
