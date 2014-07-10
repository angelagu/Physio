.class Lti/android/ble/sensortag/FwUpdateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FwUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/FwUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/FwUpdateActivity;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lti/android/ble/sensortag/FwUpdateActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v4, "ti.android.ble.common.ACTION_DATA_NOTIFY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    const-string v4, "ti.android.ble.common.EXTRA_DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 235
    .local v3, value:[B
    const-string v4, "ti.android.ble.common.EXTRA_UUID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, uuidStr:Ljava/lang/String;
    iget-object v4, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mCharIdentify:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v4}, Lti/android/ble/sensortag/FwUpdateActivity;->access$300(Lti/android/ble/sensortag/FwUpdateActivity;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    invoke-static {v4}, Lti/android/ble/sensortag/FwUpdateActivity;->access$400(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    move-result-object v4

    aget-byte v5, v3, v8

    aget-byte v6, v3, v7

    invoke-static {v5, v6}, Lti/android/util/Conversion;->buildUint16(BB)S

    move-result v5

    iput-short v5, v4, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    .line 239
    iget-object v4, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    invoke-static {v4}, Lti/android/ble/sensortag/FwUpdateActivity;->access$400(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    move-result-object v5

    iget-object v4, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    invoke-static {v4}, Lti/android/ble/sensortag/FwUpdateActivity;->access$400(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    move-result-object v4

    iget-short v4, v4, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->ver:S

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_1

    const/16 v4, 0x42

    :goto_0
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    iput-object v4, v5, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->imgType:Ljava/lang/Character;

    .line 240
    iget-object v4, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    invoke-static {v4}, Lti/android/ble/sensortag/FwUpdateActivity;->access$400(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    move-result-object v4

    const/4 v5, 0x3

    aget-byte v5, v3, v5

    const/4 v6, 0x2

    aget-byte v6, v3, v6

    invoke-static {v5, v6}, Lti/android/util/Conversion;->buildUint16(BB)S

    move-result v5

    iput-short v5, v4, Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;->len:S

    .line 241
    iget-object v4, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    iget-object v5, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mTargImage:Landroid/widget/TextView;
    invoke-static {v5}, Lti/android/ble/sensortag/FwUpdateActivity;->access$500(Lti/android/ble/sensortag/FwUpdateActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lti/android/ble/sensortag/FwUpdateActivity$1;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #getter for: Lti/android/ble/sensortag/FwUpdateActivity;->mTargImgHdr:Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;
    invoke-static {v6}, Lti/android/ble/sensortag/FwUpdateActivity;->access$400(Lti/android/ble/sensortag/FwUpdateActivity;)Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;

    move-result-object v6

    #calls: Lti/android/ble/sensortag/FwUpdateActivity;->displayImageInfo(Landroid/widget/TextView;Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;)V
    invoke-static {v4, v5, v6}, Lti/android/ble/sensortag/FwUpdateActivity;->access$600(Lti/android/ble/sensortag/FwUpdateActivity;Landroid/widget/TextView;Lti/android/ble/sensortag/FwUpdateActivity$ImgHdr;)V

    .line 250
    .end local v2           #uuidStr:Ljava/lang/String;
    .end local v3           #value:[B
    :cond_0
    :goto_1
    return-void

    .line 239
    .restart local v2       #uuidStr:Ljava/lang/String;
    .restart local v3       #value:[B
    :cond_1
    const/16 v4, 0x41

    goto :goto_0

    .line 243
    .end local v2           #uuidStr:Ljava/lang/String;
    .end local v3           #value:[B
    :cond_2
    const-string v4, "ti.android.ble.common.ACTION_DATA_WRITE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    const-string v4, "ti.android.ble.common.EXTRA_STATUS"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 245
    .local v1, status:I
    if-eqz v1, :cond_0

    .line 246
    invoke-static {}, Lti/android/ble/sensortag/FwUpdateActivity;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GATT error: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
