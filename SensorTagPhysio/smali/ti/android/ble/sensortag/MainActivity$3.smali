.class Lti/android/ble/sensortag/MainActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/MainActivity;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v4, 0x101

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lti/android/ble/sensortag/MainActivity;->access$100(Lti/android/ble/sensortag/MainActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 497
    :pswitch_0
    const-string v2, "MainActivity"

    const-string v3, "Action STATE CHANGED not processed "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v2}, Lti/android/ble/sensortag/MainActivity;->updateGuiState()V

    .line 526
    :goto_1
    return-void

    .line 489
    :pswitch_1
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #setter for: Lti/android/ble/sensortag/MainActivity;->mConnIndex:I
    invoke-static {v2, v5}, Lti/android/ble/sensortag/MainActivity;->access$202(Lti/android/ble/sensortag/MainActivity;I)I

    .line 490
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->startBluetoothLeService()V
    invoke-static {v2}, Lti/android/ble/sensortag/MainActivity;->access$300(Lti/android/ble/sensortag/MainActivity;)V

    goto :goto_0

    .line 493
    :pswitch_2
    const v2, 0x7f05000b

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 494
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v2}, Lti/android/ble/sensortag/MainActivity;->finish()V

    goto :goto_0

    .line 502
    :cond_0
    const-string v2, "ti.android.ble.common.ACTION_GATT_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    const-string v2, "ti.android.ble.common.EXTRA_STATUS"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 505
    .local v1, status:I
    if-nez v1, :cond_1

    .line 506
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->setBusy(Z)V
    invoke-static {v2, v3}, Lti/android/ble/sensortag/MainActivity;->access$400(Lti/android/ble/sensortag/MainActivity;Z)V

    .line 507
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->startDeviceActivity()V
    invoke-static {v2}, Lti/android/ble/sensortag/MainActivity;->access$500(Lti/android/ble/sensortag/MainActivity;)V

    goto :goto_1

    .line 509
    :cond_1
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect failed. Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 510
    .end local v1           #status:I
    :cond_2
    const-string v2, "ti.android.ble.common.ACTION_GATT_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    const-string v2, "ti.android.ble.common.EXTRA_STATUS"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 513
    .restart local v1       #status:I
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->stopDeviceActivity()V
    invoke-static {v2}, Lti/android/ble/sensortag/MainActivity;->access$600(Lti/android/ble/sensortag/MainActivity;)V

    .line 514
    if-nez v1, :cond_3

    .line 515
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->setBusy(Z)V
    invoke-static {v2, v3}, Lti/android/ble/sensortag/MainActivity;->access$400(Lti/android/ble/sensortag/MainActivity;Z)V

    .line 516
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mScanView:Lti/android/ble/sensortag/ScanView;
    invoke-static {v2}, Lti/android/ble/sensortag/MainActivity;->access$800(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/sensortag/ScanView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lti/android/ble/sensortag/MainActivity;->access$700(Lti/android/ble/sensortag/MainActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " disconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;I)V

    .line 520
    :goto_2
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #setter for: Lti/android/ble/sensortag/MainActivity;->mConnIndex:I
    invoke-static {v2, v5}, Lti/android/ble/sensortag/MainActivity;->access$202(Lti/android/ble/sensortag/MainActivity;I)I

    .line 521
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    #getter for: Lti/android/ble/sensortag/MainActivity;->mBluetoothLeService:Lti/android/ble/common/BluetoothLeService;
    invoke-static {v2}, Lti/android/ble/sensortag/MainActivity;->access$900(Lti/android/ble/sensortag/MainActivity;)Lti/android/ble/common/BluetoothLeService;

    move-result-object v2

    invoke-virtual {v2}, Lti/android/ble/common/BluetoothLeService;->close()V

    goto/16 :goto_1

    .line 518
    :cond_3
    iget-object v2, p0, Lti/android/ble/sensortag/MainActivity$3;->this$0:Lti/android/ble/sensortag/MainActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnect failed. Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    goto :goto_2

    .line 523
    .end local v1           #status:I
    :cond_4
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 487
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
