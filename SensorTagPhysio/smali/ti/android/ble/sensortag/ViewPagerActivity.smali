.class public Lti/android/ble/sensortag/ViewPagerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewPagerActivity"

.field protected static mThis:Lti/android/ble/sensortag/ViewPagerActivity;


# instance fields
.field private mCurrentTab:I

.field protected mResourceFragmentPager:I

.field protected mResourceIdPager:I

.field protected mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field tabListener:Landroid/app/ActionBar$TabListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lti/android/ble/sensortag/ViewPagerActivity;->mThis:Lti/android/ble/sensortag/ViewPagerActivity;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mCurrentTab:I

    .line 173
    new-instance v0, Lti/android/ble/sensortag/ViewPagerActivity$2;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/ViewPagerActivity$2;-><init>(Lti/android/ble/sensortag/ViewPagerActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity;->tabListener:Landroid/app/ActionBar$TabListener;

    .line 67
    const-string v0, "ViewPagerActivity"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sput-object p0, Lti/android/ble/sensortag/ViewPagerActivity;->mThis:Lti/android/ble/sensortag/ViewPagerActivity;

    .line 69
    return-void
.end method

.method static synthetic access$002(Lti/android/ble/sensortag/ViewPagerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mCurrentTab:I

    return p1
.end method

.method static synthetic access$100(Lti/android/ble/sensortag/ViewPagerActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mCurrentTab:I

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0xa

    .line 73
    const-string v2, "ViewPagerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget v2, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mResourceFragmentPager:I

    invoke-virtual {p0, v2}, Lti/android/ble/sensortag/ViewPagerActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 80
    const v2, 0x102002c

    invoke-virtual {p0, v2}, Lti/android/ble/sensortag/ViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    .local v1, view:Landroid/widget/ImageView;
    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 84
    iget v2, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mResourceIdPager:I

    invoke-virtual {p0, v2}, Lti/android/ble/sensortag/ViewPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 85
    iget-object v2, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lti/android/ble/sensortag/ViewPagerActivity$1;

    invoke-direct {v3, p0, v0}, Lti/android/ble/sensortag/ViewPagerActivity$1;-><init>(Lti/android/ble/sensortag/ViewPagerActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 93
    new-instance v2, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    invoke-virtual {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;-><init>(Lti/android/ble/sensortag/ViewPagerActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    .line 96
    iget-object v2, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "ViewPagerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity;->mSectionsPagerAdapter:Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;

    .line 103
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 116
    const-string v0, "ViewPagerActivity"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lti/android/ble/sensortag/ViewPagerActivity;->onBackPressed()V

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected openAboutDialog()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lti/android/ble/sensortag/AboutDialog;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/AboutDialog;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 131
    return-void
.end method
