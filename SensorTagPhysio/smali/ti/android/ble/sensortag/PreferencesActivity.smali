.class public Lti/android/ble/sensortag/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferencesActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0xa

    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x102002c

    invoke-virtual {p0, v1}, Lti/android/ble/sensortag/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .local v0, view:Landroid/widget/ImageView;
    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 52
    return-void
.end method
