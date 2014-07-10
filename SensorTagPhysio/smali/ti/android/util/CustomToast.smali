.class public Lti/android/util/CustomToast;
.super Ljava/lang/Object;
.source "CustomToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static middleBottom(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "c"
    .parameter "txt"

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    .local v0, m:Landroid/widget/Toast;
    const/16 v1, 0x51

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 48
    return-void
.end method
