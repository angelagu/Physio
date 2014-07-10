.class Lti/android/ble/sensortag/DeviceView$1;
.super Ljava/lang/Object;
.source "DeviceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/android/ble/sensortag/DeviceView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/DeviceView;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/DeviceView;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lti/android/ble/sensortag/DeviceView$1;->this$0:Lti/android/ble/sensortag/DeviceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 122
    :sswitch_0
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView$1;->this$0:Lti/android/ble/sensortag/DeviceView;

    #getter for: Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;
    invoke-static {v0}, Lti/android/ble/sensortag/DeviceView;->access$000(Lti/android/ble/sensortag/DeviceView;)Lti/android/ble/sensortag/DeviceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lti/android/ble/sensortag/DeviceActivity;->calibrateMagnetometer()V

    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v0, p0, Lti/android/ble/sensortag/DeviceView$1;->this$0:Lti/android/ble/sensortag/DeviceView;

    #getter for: Lti/android/ble/sensortag/DeviceView;->mActivity:Lti/android/ble/sensortag/DeviceActivity;
    invoke-static {v0}, Lti/android/ble/sensortag/DeviceView;->access$000(Lti/android/ble/sensortag/DeviceView;)Lti/android/ble/sensortag/DeviceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lti/android/ble/sensortag/DeviceActivity;->calibrateHeight()V

    goto :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x7f090022 -> :sswitch_0
        0x7f09002c -> :sswitch_1
    .end sparse-switch
.end method
