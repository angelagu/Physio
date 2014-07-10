.class public Lti/android/ble/common/BluetoothLeService$LocalBinder;
.super Landroid/os/Binder;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/common/BluetoothLeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/common/BluetoothLeService;


# direct methods
.method public constructor <init>(Lti/android/ble/common/BluetoothLeService;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lti/android/ble/common/BluetoothLeService$LocalBinder;->this$0:Lti/android/ble/common/BluetoothLeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lti/android/ble/common/BluetoothLeService;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lti/android/ble/common/BluetoothLeService$LocalBinder;->this$0:Lti/android/ble/common/BluetoothLeService;

    return-object v0
.end method
