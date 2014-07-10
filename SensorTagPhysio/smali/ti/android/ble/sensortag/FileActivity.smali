.class public Lti/android/ble/sensortag/FileActivity;
.super Landroid/app/Activity;
.source "FileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/sensortag/FileActivity$FileAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_FILENAME:Ljava/lang/String; = "ti.android.ble.devicemonitor.FILENAME"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDir:Ljava/io/File;

.field private mDirectoryName:Ljava/lang/String;

.field private mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;

.field private mFileClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLwFileList:Landroid/widget/ListView;

.field private mSelectedFile:Ljava/lang/String;

.field private mTwDirName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "FileActivity"

    sput-object v0, Lti/android/ble/sensortag/FileActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    new-instance v0, Lti/android/ble/sensortag/FileActivity$1;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/FileActivity$1;-><init>(Lti/android/ble/sensortag/FileActivity;)V

    iput-object v0, p0, Lti/android/ble/sensortag/FileActivity;->mFileClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 75
    sget-object v0, Lti/android/ble/sensortag/FileActivity;->TAG:Ljava/lang/String;

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lti/android/ble/sensortag/FileActivity;)Lti/android/ble/sensortag/FileActivity$FileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lti/android/ble/sensortag/FileActivity;->mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lti/android/ble/sensortag/FileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lti/android/ble/sensortag/FileActivity;->mSelectedFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lti/android/ble/sensortag/FileActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lti/android/ble/sensortag/FileActivity;->mFileList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onConfirm(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, i:Landroid/content/Intent;
    sget-object v1, Lti/android/ble/sensortag/FileActivity;->TAG:Ljava/lang/String;

    const-string v2, "onConfirm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v1, "ti.android.ble.devicemonitor.FILENAME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mSelectedFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lti/android/ble/sensortag/FileActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lti/android/ble/sensortag/FileActivity;->finish()V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lti/android/ble/sensortag/FileActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lti/android/ble/sensortag/FileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, i:Landroid/content/Intent;
    const-string v3, "ti.android.ble.sensortag.MESSAGE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDirectoryName:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDirectoryName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDir:Ljava/io/File;

    .line 87
    const/high16 v3, 0x7f09

    invoke-virtual {p0, v3}, Lti/android/ble/sensortag/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mTwDirName:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f090001

    invoke-virtual {p0, v3}, Lti/android/ble/sensortag/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mLwFileList:Landroid/widget/ListView;

    .line 89
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mLwFileList:Landroid/widget/ListView;

    iget-object v4, p0, Lti/android/ble/sensortag/FileActivity;->mFileClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mFileList:Ljava/util/List;

    .line 93
    new-instance v3, Lti/android/ble/sensortag/FileActivity$FileAdapter;

    iget-object v4, p0, Lti/android/ble/sensortag/FileActivity;->mFileList:Ljava/util/List;

    invoke-direct {v3, p0, p0, v4}, Lti/android/ble/sensortag/FileActivity$FileAdapter;-><init>(Lti/android/ble/sensortag/FileActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;

    .line 94
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mLwFileList:Landroid/widget/ListView;

    iget-object v4, p0, Lti/android/ble/sensortag/FileActivity;->mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mTwDirName:Landroid/widget/TextView;

    iget-object v4, p0, Lti/android/ble/sensortag/FileActivity;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 99
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v2

    .line 100
    .local v0, f:Ljava/lang/String;
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mFileList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0           #f:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity;->mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;

    invoke-virtual {v3}, Lti/android/ble/sensortag/FileActivity$FileAdapter;->notifyDataSetChanged()V

    .line 106
    .end local v2           #j:I
    :goto_1
    return-void

    .line 104
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lti/android/ble/sensortag/FileActivity;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-object v0, Lti/android/ble/sensortag/FileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object v2, p0, Lti/android/ble/sensortag/FileActivity;->mFileList:Ljava/util/List;

    .line 113
    iput-object v2, p0, Lti/android/ble/sensortag/FileActivity;->mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    return-void
.end method
