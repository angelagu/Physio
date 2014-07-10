.class public Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/ViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SectionsPagerAdapter"
.end annotation


# instance fields
.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lti/android/ble/sensortag/ViewPagerActivity;


# direct methods
.method public constructor <init>(Lti/android/ble/sensortag/ViewPagerActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter
    .parameter "fm"

    .prologue
    .line 137
    iput-object p1, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->this$0:Lti/android/ble/sensortag/ViewPagerActivity;

    .line 138
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mFragmentList:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mTitles:Ljava/util/List;

    .line 141
    return-void
.end method


# virtual methods
.method public addSection(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 4
    .parameter "fragment"
    .parameter "title"

    .prologue
    .line 144
    iget-object v1, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->this$0:Lti/android/ble/sensortag/ViewPagerActivity;

    invoke-virtual {v1}, Lti/android/ble/sensortag/ViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 145
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mTitles:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v2, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->this$0:Lti/android/ble/sensortag/ViewPagerActivity;

    iget-object v2, v2, Lti/android/ble/sensortag/ViewPagerActivity;->tabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 148
    invoke-virtual {p0}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->notifyDataSetChanged()V

    .line 149
    const-string v1, "ViewPagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 154
    iget-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mFragmentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    invoke-virtual {p0}, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lti/android/ble/sensortag/ViewPagerActivity$SectionsPagerAdapter;->mTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
