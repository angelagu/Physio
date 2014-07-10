.class Lti/android/ble/sensortag/DeviceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/DeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/DeviceActivity;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/DeviceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, action:Ljava/lang/String;
    const-string v4, "ti.android.ble.common.EXTRA_STATUS"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 432
    .local v1, status:I
    const-string v4, "ti.android.ble.common.ACTION_GATT_SERVICES_DISCOVERED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 433
    if-nez v1, :cond_2

    .line 434
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    #calls: Lti/android/ble/sensortag/DeviceActivity;->displayServices()V
    invoke-static {v4}, Lti/android/ble/sensortag/DeviceActivity;->access$000(Lti/android/ble/sensortag/DeviceActivity;)V

    .line 435
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    #calls: Lti/android/ble/sensortag/DeviceActivity;->checkOad()V
    invoke-static {v4}, Lti/android/ble/sensortag/DeviceActivity;->access$100(Lti/android/ble/sensortag/DeviceActivity;)V

    .line 456
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 457
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GATT error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lti/android/ble/sensortag/DeviceActivity;->setError(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lti/android/ble/sensortag/DeviceActivity;->access$500(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;)V

    .line 459
    :cond_1
    :goto_1
    return-void

    .line 437
    :cond_2
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    invoke-virtual {v4}, Lti/android/ble/sensortag/DeviceActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "Service discovery failed"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 440
    :cond_3
    const-string v4, "ti.android.ble.common.ACTION_DATA_NOTIFY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 442
    const-string v4, "ti.android.ble.common.EXTRA_DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 443
    .local v3, value:[B
    const-string v4, "ti.android.ble.common.EXTRA_UUID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, uuidStr:Ljava/lang/String;
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    #calls: Lti/android/ble/sensortag/DeviceActivity;->onCharacteristicChanged(Ljava/lang/String;[B)V
    invoke-static {v4, v2, v3}, Lti/android/ble/sensortag/DeviceActivity;->access$200(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;[B)V

    goto :goto_0

    .line 445
    .end local v2           #uuidStr:Ljava/lang/String;
    .end local v3           #value:[B
    :cond_4
    const-string v4, "ti.android.ble.common.ACTION_DATA_WRITE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 447
    const-string v4, "ti.android.ble.common.EXTRA_UUID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .restart local v2       #uuidStr:Ljava/lang/String;
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    #calls: Lti/android/ble/sensortag/DeviceActivity;->onCharacteristicWrite(Ljava/lang/String;I)V
    invoke-static {v4, v2, v1}, Lti/android/ble/sensortag/DeviceActivity;->access$300(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 449
    .end local v2           #uuidStr:Ljava/lang/String;
    :cond_5
    const-string v4, "ti.android.ble.common.ACTION_DATA_READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    const-string v4, "ti.android.ble.common.EXTRA_UUID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .restart local v2       #uuidStr:Ljava/lang/String;
    const-string v4, "ti.android.ble.common.EXTRA_DATA"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 453
    .restart local v3       #value:[B
    iget-object v4, p0, Lti/android/ble/sensortag/DeviceActivity$1;->this$0:Lti/android/ble/sensortag/DeviceActivity;

    #calls: Lti/android/ble/sensortag/DeviceActivity;->onCharacteristicsRead(Ljava/lang/String;[BI)V
    invoke-static {v4, v2, v3, v1}, Lti/android/ble/sensortag/DeviceActivity;->access$400(Lti/android/ble/sensortag/DeviceActivity;Ljava/lang/String;[BI)V

    goto :goto_0
.end method
