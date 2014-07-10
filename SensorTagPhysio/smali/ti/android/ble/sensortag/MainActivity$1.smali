.class Lti/android/ble/sensortag/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/MainActivity;->onScanTimeout()V
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
    .line 321
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$1;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity$1;->this$0:Lti/android/ble/sensortag/MainActivity;

    #calls: Lti/android/ble/sensortag/MainActivity;->stopScan()V
    invoke-static {v0}, Lti/android/ble/sensortag/MainActivity;->access$000(Lti/android/ble/sensortag/MainActivity;)V

    .line 324
    return-void
.end method
