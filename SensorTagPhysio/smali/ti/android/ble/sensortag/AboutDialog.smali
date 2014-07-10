.class public Lti/android/ble/sensortag/AboutDialog;
.super Landroid/app/Dialog;
.source "AboutDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/sensortag/AboutDialog$1;,
        Lti/android/ble/sensortag/AboutDialog$OkListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AboutDialog"

.field private static mDialog:Lti/android/ble/sensortag/AboutDialog;

.field private static mOkListener:Lti/android/ble/sensortag/AboutDialog$OkListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lti/android/ble/sensortag/AboutDialog;->mContext:Landroid/content/Context;

    .line 61
    sput-object p0, Lti/android/ble/sensortag/AboutDialog;->mDialog:Lti/android/ble/sensortag/AboutDialog;

    .line 62
    new-instance v0, Lti/android/ble/sensortag/AboutDialog$OkListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lti/android/ble/sensortag/AboutDialog$OkListener;-><init>(Lti/android/ble/sensortag/AboutDialog;Lti/android/ble/sensortag/AboutDialog$1;)V

    sput-object v0, Lti/android/ble/sensortag/AboutDialog;->mOkListener:Lti/android/ble/sensortag/AboutDialog$OkListener;

    .line 63
    return-void
.end method

.method static synthetic access$100()Lti/android/ble/sensortag/AboutDialog;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lti/android/ble/sensortag/AboutDialog;->mDialog:Lti/android/ble/sensortag/AboutDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 67
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->requestWindowFeature(I)Z

    .line 68
    const v10, 0x7f030002

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->setContentView(I)V

    .line 71
    iget-object v10, p0, Lti/android/ble/sensortag/AboutDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 72
    .local v6, res:Landroid/content/res/Resources;
    const/high16 v10, 0x7f05

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, appName:Ljava/lang/String;
    const v10, 0x7f09000c

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 74
    .local v7, title:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "About "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v10, 0x7f09000d

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 78
    .local v4, head:Landroid/widget/TextView;
    const-string v1, "Revision: "

    .line 80
    .local v1, appVersion:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lti/android/ble/sensortag/AboutDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lti/android/ble/sensortag/AboutDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v10, 0x7f09000e

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    .line 88
    .local v9, wv:Landroid/webkit/WebView;
    const-string v10, "file:///android_asset/about.html"

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    const v10, 0x7f090010

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 92
    .local v5, okButton:Landroid/widget/Button;
    sget-object v10, Lti/android/ble/sensortag/AboutDialog;->mOkListener:Lti/android/ble/sensortag/AboutDialog$OkListener;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v10, 0x7f09000f

    invoke-virtual {p0, v10}, Lti/android/ble/sensortag/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 96
    .local v3, foot:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Android "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, txt:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 81
    .end local v3           #foot:Landroid/widget/TextView;
    .end local v5           #okButton:Landroid/widget/Button;
    .end local v8           #txt:Ljava/lang/String;
    .end local v9           #wv:Landroid/webkit/WebView;
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AboutDialog"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
