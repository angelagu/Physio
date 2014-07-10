.class public Lti/android/util/CustomTimer;
.super Ljava/lang/Object;
.source "CustomTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/util/CustomTimer$1;,
        Lti/android/util/CustomTimer$ProgressTask;
    }
.end annotation


# instance fields
.field private mCb:Lti/android/util/CustomTimerCallback;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTimeout:I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;ILti/android/util/CustomTimerCallback;)V
    .locals 6
    .parameter "progressBar"
    .parameter "timeout"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;

    .line 49
    iput p2, p0, Lti/android/util/CustomTimer;->mTimeout:I

    .line 50
    iput-object p1, p0, Lti/android/util/CustomTimer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 51
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    .line 52
    new-instance v1, Lti/android/util/CustomTimer$ProgressTask;

    invoke-direct {v1, p0, v2}, Lti/android/util/CustomTimer$ProgressTask;-><init>(Lti/android/util/CustomTimer;Lti/android/util/CustomTimer$1;)V

    .line 53
    .local v1, t:Lti/android/util/CustomTimer$ProgressTask;
    iget-object v0, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 54
    iput-object p3, p0, Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lti/android/util/CustomTimer;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lti/android/util/CustomTimer;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lti/android/util/CustomTimer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lti/android/util/CustomTimer;->mTimeout:I

    return v0
.end method

.method static synthetic access$300(Lti/android/util/CustomTimer;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lti/android/util/CustomTimer;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lti/android/util/CustomTimer;)Lti/android/util/CustomTimerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lti/android/util/CustomTimer;->mCb:Lti/android/util/CustomTimerCallback;

    return-object v0
.end method


# virtual methods
.method public stop()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lti/android/util/CustomTimer;->mTimer:Ljava/util/Timer;

    .line 62
    :cond_0
    return-void
.end method
