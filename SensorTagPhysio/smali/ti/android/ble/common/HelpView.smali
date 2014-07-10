.class public Lti/android/ble/common/HelpView;
.super Landroid/support/v4/app/Fragment;
.source "HelpView.java"


# instance fields
.field private mFile:Ljava/lang/String;

.field private mIdFragment:I

.field private mIdWebPage:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "file"
    .parameter "idFragment"
    .parameter "idWebPage"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    const-string v0, "about.html"

    iput-object v0, p0, Lti/android/ble/common/HelpView;->mFile:Ljava/lang/String;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lti/android/ble/common/HelpView;->mFile:Ljava/lang/String;

    .line 52
    :cond_0
    iput p2, p0, Lti/android/ble/common/HelpView;->mIdFragment:I

    .line 53
    iput p3, p0, Lti/android/ble/common/HelpView;->mIdWebPage:I

    .line 54
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    iget v2, p0, Lti/android/ble/common/HelpView;->mIdFragment:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, rootView:Landroid/view/View;
    iget v2, p0, Lti/android/ble/common/HelpView;->mIdWebPage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 61
    .local v1, wv:Landroid/webkit/WebView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/android/ble/common/HelpView;->mFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 62
    return-object v0
.end method
