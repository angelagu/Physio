.class Lti/android/ble/sensortag/FileActivity$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/FileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field mSelectedPos:I

.field final synthetic this$0:Lti/android/ble/sensortag/FileActivity;


# direct methods
.method public constructor <init>(Lti/android/ble/sensortag/FileActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, files:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->this$0:Lti/android/ble/sensortag/FileActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 146
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 147
    iput-object p2, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mFiles:Ljava/util/List;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mSelectedPos:I

    .line 150
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 157
    iget-object v0, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mSelectedPos:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 177
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 178
    check-cast v2, Landroid/view/ViewGroup;

    .line 184
    .local v2, vg:Landroid/view/ViewGroup;
    :goto_0
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mFiles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, file:Ljava/lang/String;
    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    .local v1, twName:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget v3, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mSelectedPos:I

    if-ne p1, v3, :cond_1

    .line 192
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f07000d

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    :goto_1
    return-object v2

    .line 180
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #twName:Landroid/widget/TextView;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .restart local v2       #vg:Landroid/view/ViewGroup;
    goto :goto_0

    .line 194
    .restart local v0       #file:Ljava/lang/String;
    .restart local v1       #twName:Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f070007

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public setSelectedPosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 165
    iget-object v1, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->this$0:Lti/android/ble/sensortag/FileActivity;

    iget-object v0, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->this$0:Lti/android/ble/sensortag/FileActivity;

    #getter for: Lti/android/ble/sensortag/FileActivity;->mFileList:Ljava/util/List;
    invoke-static {v0}, Lti/android/ble/sensortag/FileActivity;->access$200(Lti/android/ble/sensortag/FileActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lti/android/ble/sensortag/FileActivity;->mSelectedFile:Ljava/lang/String;
    invoke-static {v1, v0}, Lti/android/ble/sensortag/FileActivity;->access$102(Lti/android/ble/sensortag/FileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iput p1, p0, Lti/android/ble/sensortag/FileActivity$FileAdapter;->mSelectedPos:I

    .line 167
    invoke-virtual {p0}, Lti/android/ble/sensortag/FileActivity$FileAdapter;->notifyDataSetChanged()V

    .line 168
    return-void
.end method
