.class Lti/android/ble/sensortag/FwUpdateActivity$2;
.super Ljava/lang/Object;
.source "FwUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/FwUpdateActivity;->onBlockTimer()V
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
    .line 503
    iput-object p1, p0, Lti/android/ble/sensortag/FwUpdateActivity$2;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$2;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #calls: Lti/android/ble/sensortag/FwUpdateActivity;->displayStats()V
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$800(Lti/android/ble/sensortag/FwUpdateActivity;)V

    .line 506
    iget-object v0, p0, Lti/android/ble/sensortag/FwUpdateActivity$2;->this$0:Lti/android/ble/sensortag/FwUpdateActivity;

    #calls: Lti/android/ble/sensortag/FwUpdateActivity;->stopProgramming()V
    invoke-static {v0}, Lti/android/ble/sensortag/FwUpdateActivity;->access$900(Lti/android/ble/sensortag/FwUpdateActivity;)V

    .line 507
    return-void
.end method
