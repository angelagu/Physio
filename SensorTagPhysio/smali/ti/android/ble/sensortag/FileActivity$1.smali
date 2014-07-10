.class Lti/android/ble/sensortag/FileActivity$1;
.super Ljava/lang/Object;
.source "FileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/ble/sensortag/FileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/android/ble/sensortag/FileActivity;


# direct methods
.method constructor <init>(Lti/android/ble/sensortag/FileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lti/android/ble/sensortag/FileActivity$1;->this$0:Lti/android/ble/sensortag/FileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lti/android/ble/sensortag/FileActivity$1;->this$0:Lti/android/ble/sensortag/FileActivity;

    #getter for: Lti/android/ble/sensortag/FileActivity;->mFileAdapter:Lti/android/ble/sensortag/FileActivity$FileAdapter;
    invoke-static {v0}, Lti/android/ble/sensortag/FileActivity;->access$000(Lti/android/ble/sensortag/FileActivity;)Lti/android/ble/sensortag/FileActivity$FileAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lti/android/ble/sensortag/FileActivity$FileAdapter;->setSelectedPosition(I)V

    .line 123
    return-void
.end method
