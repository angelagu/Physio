.class Lti/android/ble/sensortag/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/MainActivity;->onConnectTimeout()V
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
    .line 329
    iput-object p1, p0, Lti/android/ble/sensortag/MainActivity$2;->this$0:Lti/android/ble/sensortag/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lti/android/ble/sensortag/MainActivity$2;->this$0:Lti/android/ble/sensortag/MainActivity;

    const-string v1, "Connection timed out"

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/MainActivity;->setError(Ljava/lang/String;)V

    .line 332
    return-void
.end method
