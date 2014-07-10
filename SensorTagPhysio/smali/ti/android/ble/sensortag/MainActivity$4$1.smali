.class Lti/android/ble/sensortag/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/MainActivity$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lti/android/ble/sensortag/MainActivity$4;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/MainActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$4$1;->this$1:Lti/android/ble/sensortag/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lti/android/ble/sensortag/MainActivity;->access$1000()Lti/android/ble/sensortag/MainActivity;

    move-result-object v0

    const-string v1, "Multiple connections!"

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    .line 544
    return-void
.end method
