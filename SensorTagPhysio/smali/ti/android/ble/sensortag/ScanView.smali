.class public Lti/android/ble/sensortag/ScanView;
.super Landroid/support/v4/app/Fragment;
.source "ScanView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/android/ble/sensortag/ScanView$DeviceListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanView"


# instance fields
.field private final CONNECT_TIMEOUT:I

.field private final SCAN_TIMEOUT:I

.field private mActivity:Lti/android/ble/sensortag/MainActivity;

.field private mBtnScan:Landroid/widget/Button;

.field private mClearStatusCallback:Lti/android/util/CustomTimerCallback;

.field private mConnectTimer:Lti/android/util/CustomTimer;

.field private mContext:Landroid/content/Context;

.field private mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

.field private mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mDeviceListView:Landroid/widget/ListView;

.field private mEmptyMsg:Landroid/widget/TextView;

.field private mPgConnectCallback:Lti/android/util/CustomTimerCallback;

.field private mPgScanCallback:Lti/android/util/CustomTimerCallback;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScanTimer:Lti/android/util/CustomTimer;

.field private mStatus:Landroid/widget/TextView;

.field private mStatusTimer:Lti/android/util/CustomTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    iput v1, p0, Lti/android/ble/sensortag/ScanView;->SCAN_TIMEOUT:I

    .line 61
    iput v1, p0, Lti/android/ble/sensortag/ScanView;->CONNECT_TIMEOUT:I

    .line 62
    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    .line 64
    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    .line 67
    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mBtnScan:Landroid/widget/Button;

    .line 68
    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mDeviceListView:Landroid/widget/ListView;

    .line 71
    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mScanTimer:Lti/android/util/CustomTimer;

    .line 72
    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mConnectTimer:Lti/android/util/CustomTimer;

    .line 175
    new-instance v0, Lti/android/ble/sensortag/ScanView$1;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/ScanView$1;-><init>(Lti/android/ble/sensortag/ScanView;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 184
    new-instance v0, Lti/android/ble/sensortag/ScanView$2;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/ScanView$2;-><init>(Lti/android/ble/sensortag/ScanView;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mPgScanCallback:Lti/android/util/CustomTimerCallback;

    .line 194
    new-instance v0, Lti/android/ble/sensortag/ScanView$3;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/ScanView$3;-><init>(Lti/android/ble/sensortag/ScanView;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mPgConnectCallback:Lti/android/util/CustomTimerCallback;

    .line 204
    new-instance v0, Lti/android/ble/sensortag/ScanView$4;

    invoke-direct {v0, p0}, Lti/android/ble/sensortag/ScanView$4;-><init>(Lti/android/ble/sensortag/ScanView;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mClearStatusCallback:Lti/android/util/CustomTimerCallback;

    .line 232
    return-void
.end method

.method static synthetic access$002(Lti/android/ble/sensortag/ScanView;Lti/android/util/CustomTimer;)Lti/android/util/CustomTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lti/android/ble/sensortag/ScanView;->mConnectTimer:Lti/android/util/CustomTimer;

    return-object p1
.end method

.method static synthetic access$100(Lti/android/ble/sensortag/ScanView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lti/android/ble/sensortag/ScanView;)Lti/android/util/CustomTimerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mPgConnectCallback:Lti/android/util/CustomTimerCallback;

    return-object v0
.end method

.method static synthetic access$300(Lti/android/ble/sensortag/ScanView;)Lti/android/ble/sensortag/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    return-object v0
.end method

.method static synthetic access$402(Lti/android/ble/sensortag/ScanView;Lti/android/util/CustomTimer;)Lti/android/util/CustomTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lti/android/ble/sensortag/ScanView;->mStatusTimer:Lti/android/util/CustomTimer;

    return-object p1
.end method

.method private stopTimers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mScanTimer:Lti/android/util/CustomTimer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mScanTimer:Lti/android/util/CustomTimer;

    invoke-virtual {v0}, Lti/android/util/CustomTimer;->stop()V

    .line 221
    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mScanTimer:Lti/android/util/CustomTimer;

    .line 223
    :cond_0
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mConnectTimer:Lti/android/util/CustomTimer;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mConnectTimer:Lti/android/util/CustomTimer;

    invoke-virtual {v0}, Lti/android/util/CustomTimer;->stop()V

    .line 225
    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mConnectTimer:Lti/android/util/CustomTimer;

    .line 227
    :cond_1
    return-void
.end method


# virtual methods
.method notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v1}, Lti/android/ble/sensortag/MainActivity;->getDeviceInfoList()Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Lti/android/ble/common/BleDeviceInfo;>;"
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    iget-object v2, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    invoke-direct {v1, p0, v2, v0}, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;-><init>(Lti/android/ble/sensortag/ScanView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    .line 132
    :cond_0
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceListView:Landroid/widget/ListView;

    iget-object v2, p0, Lti/android/ble/sensortag/ScanView;->mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    invoke-virtual {v1}, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->notifyDataSetChanged()V

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 135
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mEmptyMsg:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mEmptyMsg:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 78
    const-string v1, "ScanView"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lti/android/ble/sensortag/ScanView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lti/android/ble/sensortag/MainActivity;

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    .line 84
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v1}, Lti/android/ble/sensortag/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mContext:Landroid/content/Context;

    .line 87
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mBtnScan:Landroid/widget/Button;

    .line 89
    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceListView:Landroid/widget/ListView;

    .line 90
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 91
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mDeviceListView:Landroid/widget/ListView;

    iget-object v2, p0, Lti/android/ble/sensortag/ScanView;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mEmptyMsg:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 96
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 99
    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v1, v0}, Lti/android/ble/sensortag/MainActivity;->onScanViewReady(Landroid/view/View;)V

    .line 101
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "ScanView"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 108
    return-void
.end method

.method setBusy(Z)V
    .locals 2
    .parameter "f"

    .prologue
    .line 142
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    .line 145
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lti/android/ble/sensortag/ScanView;->stopTimers()V

    .line 148
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method setError(Ljava/lang/String;)V
    .locals 3
    .parameter "txt"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/android/ble/sensortag/ScanView;->setBusy(Z)V

    .line 122
    invoke-direct {p0}, Lti/android/ble/sensortag/ScanView;->stopTimers()V

    .line 123
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mContext:Landroid/content/Context;

    const v2, 0x7f070013

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 125
    return-void
.end method

.method setStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "txt"

    .prologue
    .line 111
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mContext:Landroid/content/Context;

    const v2, 0x7f070011

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    return-void
.end method

.method setStatus(Ljava/lang/String;I)V
    .locals 3
    .parameter "txt"
    .parameter "duration"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lti/android/ble/sensortag/ScanView;->setStatus(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lti/android/util/CustomTimer;

    const/4 v1, 0x0

    iget-object v2, p0, Lti/android/ble/sensortag/ScanView;->mClearStatusCallback:Lti/android/util/CustomTimerCallback;

    invoke-direct {v0, v1, p2, v2}, Lti/android/util/CustomTimer;-><init>(Landroid/widget/ProgressBar;ILti/android/util/CustomTimerCallback;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatusTimer:Lti/android/util/CustomTimer;

    .line 118
    return-void
.end method

.method updateGui(Z)V
    .locals 4
    .parameter "scanning"

    .prologue
    .line 153
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mBtnScan:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lti/android/ble/sensortag/ScanView;->setBusy(Z)V

    .line 157
    if-eqz p1, :cond_1

    .line 158
    new-instance v0, Lti/android/util/CustomTimer;

    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0xa

    iget-object v3, p0, Lti/android/ble/sensortag/ScanView;->mPgScanCallback:Lti/android/util/CustomTimerCallback;

    invoke-direct {v0, v1, v2, v3}, Lti/android/util/CustomTimer;-><init>(Landroid/widget/ProgressBar;ILti/android/util/CustomTimerCallback;)V

    iput-object v0, p0, Lti/android/ble/sensortag/ScanView;->mScanTimer:Lti/android/util/CustomTimer;

    .line 159
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mContext:Landroid/content/Context;

    const v2, 0x7f070012

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 160
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mBtnScan:Landroid/widget/Button;

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    const-string v1, "Scanning..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mEmptyMsg:Landroid/widget/TextView;

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    invoke-virtual {v0}, Lti/android/ble/sensortag/MainActivity;->updateGuiState()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lti/android/ble/sensortag/ScanView;->mContext:Landroid/content/Context;

    const v2, 0x7f070011

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 167
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mBtnScan:Landroid/widget/Button;

    const-string v1, "Scan"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mEmptyMsg:Landroid/widget/TextView;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mActivity:Lti/android/ble/sensortag/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/android/ble/sensortag/MainActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 170
    iget-object v0, p0, Lti/android/ble/sensortag/ScanView;->mDeviceAdapter:Lti/android/ble/sensortag/ScanView$DeviceListAdapter;

    invoke-virtual {v0}, Lti/android/ble/sensortag/ScanView$DeviceListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
