.class Lti/android/util/CustomTimer$ProgressTask;
.super Ljava/util/TimerTask;
.source "CustomTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/android/util/CustomTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressTask"
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lti/android/util/CustomTimer;


# direct methods
.method private constructor <init>(Lti/android/util/CustomTimer;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lti/android/util/CustomTimer$ProgressTask;->i:I

    return-void
.end method

.method synthetic constructor <init>(Lti/android/util/CustomTimer;Lti/android/util/CustomTimer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lti/android/util/CustomTimer$ProgressTask;-><init>(Lti/android/util/CustomTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lti/android/util/CustomTimer$ProgressTask;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lti/android/util/CustomTimer$ProgressTask;->i:I

    .line 70
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$100(Lti/android/util/CustomTimer;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$100(Lti/android/util/CustomTimer;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lti/android/util/CustomTimer$ProgressTask;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    :cond_0
    iget v0, p0, Lti/android/util/CustomTimer$ProgressTask;->i:I

    iget-object v1, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mTimeout:I
    invoke-static {v1}, Lti/android/util/CustomTimer;->access$200(Lti/android/util/CustomTimer;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$300(Lti/android/util/CustomTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 74
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    const/4 v1, 0x0

    #setter for: Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lti/android/util/CustomTimer;->access$302(Lti/android/util/CustomTimer;Ljava/util/Timer;)Ljava/util/Timer;

    .line 75
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$400(Lti/android/util/CustomTimer;)Lti/android/util/CustomTimerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$400(Lti/android/util/CustomTimer;)Lti/android/util/CustomTimerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lti/android/util/CustomTimerCallback;->onTimeout()V

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$400(Lti/android/util/CustomTimer;)Lti/android/util/CustomTimerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lti/android/util/CustomTimer$ProgressTask;->this$0:Lti/android/util/CustomTimer;

    #getter for: Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;
    invoke-static {v0}, Lti/android/util/CustomTimer;->access$400(Lti/android/util/CustomTimer;)Lti/android/util/CustomTimerCallback;

    move-result-object v0

    iget v1, p0, Lti/android/util/CustomTimer$ProgressTask;->i:I

    invoke-virtual {v0, v1}, Lti/android/util/CustomTimerCallback;->onTick(I)V

    goto :goto_0
.end method
