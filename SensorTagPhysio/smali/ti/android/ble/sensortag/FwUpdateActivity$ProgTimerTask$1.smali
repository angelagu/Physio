.class Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask$1;
.super Ljava/lang/Object;
.source "FwUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask$1;->this$1:Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask$1;->this$1:Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;

    iget-object v0, v0, Lti/android/ble/sensortag/FwUpdateActivity$ProgTimerTask;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #calls: Lti/android/ble/sensortag/FwUpdateActivity;->displayStats()V
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$800(Lti/android/ble/sensortag/FwUpdateActivity;)V

    .line 522
    return-void
.end method
