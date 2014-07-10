.class Lti/android/ble/sensortag/AboutDialog$OkListener;
.super Ljava/lang/Object;
.source "AboutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/AboutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/AboutDialog;


# direct methods
.method private constructor <init>(Lti/android/ble/sensortag/AboutDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lti/android/ble/sensortag/AboutDialog$OkListener;->this$0:Lti/android/ble/sensortag/AboutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lti/android/ble/sensortag/AboutDialog;Lti/android/ble/sensortag/AboutDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lti/android/ble/sensortag/AboutDialog$OkListener;-><init>(Lti/android/ble/sensortag/AboutDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    invoke-static {}, Lti/android/ble/sensortag/AboutDialog;->access$100()Lti/android/ble/sensortag/AboutDialog;

    move-result-object v0

    invoke-virtual {v0}, Lti/android/ble/sensortag/AboutDialog;->dismiss()V

    .line 105
    return-void
.end method
