.class public Lsafiap/framework/sdk/SAFFramework;
.super Ljava/lang/Object;
.source "SAFFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;,
        Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;
    }
.end annotation


# static fields
.field public static final RESULT_CODE_MALICIOUS_PLUGIN:I = -0xc8

.field public static final RESULT_CODE_MANDATORY_UPDATE:I = -0x12c

.field public static final RESULT_CODE_PLUGIN_NOT_EXIST:I = -0x1

.field public static final RESULT_CODE_PLUGIN_OK:I = 0x0

.field public static final RESULT_CODE_PLUGIN_OPTIONAL_UPDATE:I = -0x1f4

.field public static final RESULT_CODE_PLUGIN_TO_INSTALL:I = -0x190

.field public static final RESULT_CODE_SERVICE_EXCEPTION:I = -0x258

.field public static final STATUS_ERROR_WITH_INVALID_CONTEXT:I = 0x4

.field public static final STATUS_INIT_SUCCESS:I = 0x0

.field public static final STATUS_MALICIOUS_SERVICE:I = 0x2

.field public static final STATUS_SERVICE_ALREADY_INITED:I = 0x3

.field public static final STATUS_SERVICE_NOT_INSTALLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IAPSAFFramework"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mAdapter:Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;

.field private mCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

.field private mContext:Landroid/content/Context;

.field private final mDataPort:Landroid/os/IBinder;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDialogView:Landroid/widget/RelativeLayout;

.field private mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

.field private mHasCleauUp:Z

.field private mIsUseSdkService:Z

.field private mJni:Lsafiap/framework/jni/SAF_Jni;

.field private mOnGotAuthListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

.field private mPluginListener:Lsafiap/framework/sdk/PluginInstallListener;

.field private mPluginsToDel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkService:Lsafiap/framework/sdk/ISAFFramework;

.field private mSdkServiceConnection:Landroid/content/ServiceConnection;

.field private mService:Lsafiap/framework/sdk/ISAFFramework;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

.field private final mStartLock:Ljava/lang/Object;

.field private final mTextId:I

.field private mUpdateManager:Lsafiap/framework/UpdateManager;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "SAFFramework"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mUpdateManager:Lsafiap/framework/UpdateManager;

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mPluginsToDel:Ljava/util/List;

    .line 115
    const/4 v3, 0x1

    iput v3, p0, Lsafiap/framework/sdk/SAFFramework;->mTextId:I

    .line 117
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mStartLock:Ljava/lang/Object;

    .line 118
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    .line 119
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    .line 120
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    .line 121
    iput-boolean v5, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    .line 123
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

    .line 125
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 127
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mPluginListener:Lsafiap/framework/sdk/PluginInstallListener;

    .line 129
    iput-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 133
    iput-boolean v5, p0, Lsafiap/framework/sdk/SAFFramework;->mHasCleauUp:Z

    .line 169
    new-instance v3, Lsafiap/framework/sdk/SAFFramework$1;

    invoke-direct {v3, p0}, Lsafiap/framework/sdk/SAFFramework$1;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 213
    new-instance v3, Lsafiap/framework/sdk/SAFFramework$2;

    invoke-direct {v3, p0}, Lsafiap/framework/sdk/SAFFramework$2;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkServiceConnection:Landroid/content/ServiceConnection;

    .line 244
    new-instance v3, Lsafiap/framework/sdk/SAFFramework$3;

    invoke-direct {v3, p0}, Lsafiap/framework/sdk/SAFFramework$3;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 769
    new-instance v3, Lsafiap/framework/sdk/SAFFramework$4;

    invoke-direct {v3, p0}, Lsafiap/framework/sdk/SAFFramework$4;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mOnGotAuthListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 939
    new-instance v3, Lsafiap/framework/sdk/SAFFramework$5;

    invoke-direct {v3, p0}, Lsafiap/framework/sdk/SAFFramework$5;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mDataPort:Landroid/os/IBinder;

    .line 142
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/app/Service;

    if-nez v3, :cond_1

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    .line 147
    new-instance v3, Lsafiap/framework/UpdateManager;

    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lsafiap/framework/UpdateManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mUpdateManager:Lsafiap/framework/UpdateManager;

    .line 148
    new-instance v3, Lsafiap/framework/data/SharedDataManager;

    invoke-direct {v3, p1}, Lsafiap/framework/data/SharedDataManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

    .line 151
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mDialogView:Landroid/widget/RelativeLayout;

    .line 152
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v1, "param3":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v0, Landroid/widget/ListView;

    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 158
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v2, "param4":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v3, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;

    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework;->mPluginsToDel:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;-><init>(Lsafiap/framework/sdk/SAFFramework;Ljava/util/List;)V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mAdapter:Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;

    .line 163
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mAdapter:Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    new-instance v3, Lsafiap/framework/jni/SAF_Jni;

    invoke-direct {v3}, Lsafiap/framework/jni/SAF_Jni;-><init>()V

    iput-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mJni:Lsafiap/framework/jni/SAF_Jni;

    goto :goto_0
.end method

.method static synthetic access$0(Lsafiap/framework/sdk/SAFFramework;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    return-void
.end method

.method static synthetic access$10()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic access$11(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lsafiap/framework/sdk/SAFFramework;->getFrameworkService()V

    return-void
.end method

.method static synthetic access$12(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mAdapter:Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0}, Lsafiap/framework/sdk/SAFFramework;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$2(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    return-object v0
.end method

.method static synthetic access$3(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    return-void
.end method

.method static synthetic access$4(Lsafiap/framework/sdk/SAFFramework;Lsafiap/framework/sdk/ISAFFramework;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    return-void
.end method

.method static synthetic access$5(Lsafiap/framework/sdk/SAFFramework;Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    return-void
.end method

.method static synthetic access$6(Lsafiap/framework/sdk/SAFFramework;)Lsafiap/framework/sdk/PluginInstallListener;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mPluginListener:Lsafiap/framework/sdk/PluginInstallListener;

    return-object v0
.end method

.method static synthetic access$7(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Lsafiap/framework/sdk/SAFFramework;->dismissWaitingDialog()V

    return-void
.end method

.method static synthetic access$8(Lsafiap/framework/sdk/SAFFramework;)Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mPluginsToDel:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissWaitingDialog()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 833
    :cond_0
    return-void
.end method

.method private getFrameworkService()V
    .locals 5

    .prologue
    .line 301
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_0

    .line 303
    :try_start_0
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "Bind SAF Framework service  ....................."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 304
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A Exception:510001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSdkFrameworkService()V
    .locals 4

    .prologue
    .line 314
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 315
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    const-class v2, Lsafiap/framework/SafFrameworkManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 3

    .prologue
    .line 840
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 841
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u8bf7\u5220\u9664\u4ee5\u4e0b\u7b7e\u540d\u9519\u8bef\u7684\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 842
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mDialogView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 843
    const-string v1, "\u5378\u8f7d"

    new-instance v2, Lsafiap/framework/sdk/SAFFramework$6;

    invoke-direct {v2, p0}, Lsafiap/framework/sdk/SAFFramework$6;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 862
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lsafiap/framework/sdk/SAFFramework$7;

    invoke-direct {v2, p0}, Lsafiap/framework/sdk/SAFFramework$7;-><init>(Lsafiap/framework/sdk/SAFFramework;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 870
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 872
    return-void
.end method

.method private showWaitingDialog()V
    .locals 2

    .prologue
    .line 819
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 820
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 821
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u68c0\u67e5\u6846\u67b6\u8eab\u4efd..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 823
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 4
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 549
    if-nez p1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v1

    .line 553
    :cond_1
    iget-boolean v2, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v2, :cond_3

    .line 555
    :try_start_0
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v2, :cond_2

    .line 556
    sget-object v2, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v3, "Framework service instance is null!"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510008"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2, p1}, Lsafiap/framework/sdk/ISAFFramework;->cancel(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 567
    :cond_3
    :try_start_2
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2, p1}, Lsafiap/framework/sdk/ISAFFramework;->cancel(Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    goto :goto_0

    .line 571
    :catch_1
    move-exception v0

    .line 572
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510008"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelAll()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-boolean v2, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v2, :cond_2

    .line 588
    :try_start_0
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v2, :cond_1

    .line 589
    sget-object v2, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v3, "Framework service instance is null!"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 607
    :cond_0
    :goto_0
    return v1

    .line 592
    :cond_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2}, Lsafiap/framework/sdk/ISAFFramework;->cancelAll()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510009"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 600
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2}, Lsafiap/framework/sdk/ISAFFramework;->cancelAll()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 604
    :catch_1
    move-exception v0

    .line 605
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510009"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->mHasCleauUp:Z

    .line 375
    iget-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 373
    :cond_0
    :goto_0
    monitor-exit v1

    .line 391
    return-void

    .line 386
    :cond_1
    iget-boolean v0, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public downloadPlugin(Lsafiap/framework/sdk/PluginInstallListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lsafiap/framework/sdk/PluginInstallListener;
    .param p2, "actionName"    # Ljava/lang/String;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->mPluginListener:Lsafiap/framework/sdk/PluginInstallListener;

    .line 483
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v1, :cond_3

    .line 485
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_2

    .line 486
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A Exception:510003"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 489
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-interface {v1, v2, p2}, Lsafiap/framework/sdk/ISAFFramework;->downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 496
    :cond_3
    :try_start_2
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-interface {v1, v2, p2}, Lsafiap/framework/sdk/ISAFFramework;->downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A Exception:510003"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    .line 297
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 298
    return-void
.end method

.method public getFrameworkVersion()I
    .locals 4

    .prologue
    .line 638
    const/4 v1, -0x1

    .line 639
    .local v1, "frameworkVerion":I
    iget-boolean v2, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v2, :cond_2

    .line 641
    :try_start_0
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v2, :cond_1

    .line 642
    sget-object v2, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v3, "Framework service instance is null!"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 663
    :cond_0
    :goto_0
    return v1

    .line 644
    :cond_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2}, Lsafiap/framework/sdk/ISAFFramework;->getFrameworkVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510010"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 652
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2}, Lsafiap/framework/sdk/ISAFFramework;->getFrameworkVersion()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 656
    :catch_1
    move-exception v0

    .line 657
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510010"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIAPDedicateActionName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-boolean v2, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v2, :cond_2

    .line 448
    :try_start_0
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v2, :cond_1

    .line 449
    sget-object v2, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v3, "Framework service instance is null!"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 469
    :cond_0
    :goto_0
    return-object v1

    .line 452
    :cond_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2}, Lsafiap/framework/sdk/ISAFFramework;->getIAPDedicateActionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510017"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v2}, Lsafiap/framework/sdk/ISAFFramework;->getIAPDedicateActionName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    .line 464
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "IAPSAFFramework"

    const-string v3, "SAF-A Exception:510017"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework;->mDataPort:Landroid/os/IBinder;

    return-object v0
.end method

.method public getPluginInfo(Ljava/lang/String;)I
    .locals 6
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v2, -0x258

    .line 406
    if-nez p1, :cond_0

    .line 407
    const/4 v1, -0x1

    .line 433
    :goto_0
    return v1

    .line 409
    :cond_0
    iget-boolean v3, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v3, :cond_2

    .line 411
    :try_start_0
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v3, :cond_1

    .line 412
    sget-object v3, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v4, "Framework service instance is null!"

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v1, v2

    .line 413
    goto :goto_0

    .line 415
    :cond_1
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v3, p1}, Lsafiap/framework/sdk/ISAFFramework;->getPluginInfo(Ljava/lang/String;)I

    move-result v1

    .line 416
    .local v1, "result":I
    const-string v3, "zhide"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SAF getPluginInfo result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "IAPSAFFramework"

    const-string v4, "SAF-A Exception:510002"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v2

    .line 422
    goto :goto_0

    .line 426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v3, :cond_3

    move v1, v2

    .line 427
    goto :goto_0

    .line 429
    :cond_3
    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v3, p1}, Lsafiap/framework/sdk/ISAFFramework;->getPluginInfo(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "IAPSAFFramework"

    const-string v4, "SAF-A Exception:510002"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v2

    .line 433
    goto :goto_0
.end method

.method public getSharedData(Ljava/lang/String;Ljava/lang/String;Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;)V
    .locals 3
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "listener"    # Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;

    .prologue
    .line 615
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

    invoke-virtual {v1, v0, p3}, Lsafiap/framework/data/SharedDataManager;->getSharedData(Ljava/lang/String;Lsafiap/framework/data/SharedDataManager$IOnGotShareDataListener;)V

    goto :goto_0
.end method

.method public init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "initListener"    # Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;
    .param p2, "testflag"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "init...start"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 337
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    .line 343
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Service;

    if-nez v1, :cond_3

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 344
    :cond_2
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onInit(I)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_4

    .line 349
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "The instance has already been inited!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mFrameworkListener:Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;->onInit(I)V

    goto :goto_0

    .line 354
    :cond_4
    if-eqz p2, :cond_5

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_COMPONENT_TEST_FLAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 356
    invoke-direct {p0}, Lsafiap/framework/sdk/SAFFramework;->getFrameworkService()V

    goto :goto_0

    .line 359
    :cond_5
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mContext:Landroid/content/Context;

    sget-object v2, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->getUnauthPluginAppInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 360
    .local v0, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mUpdateManager:Lsafiap/framework/UpdateManager;

    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_AUTH_FRAMEWORK:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/sdk/SAFFramework;->mOnGotAuthListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    invoke-virtual {v1, v2, v0, v3}, Lsafiap/framework/UpdateManager;->startQueryAuthTask(Ljava/lang/String;Ljava/util/List;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 362
    invoke-direct {p0}, Lsafiap/framework/sdk/SAFFramework;->showWaitingDialog()V

    goto :goto_0
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "sharedData"    # Ljava/lang/String;

    .prologue
    .line 624
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    :cond_0
    const/4 v1, 0x0

    .line 629
    :goto_0
    return v1

    .line 628
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSharedDataManager:Lsafiap/framework/data/SharedDataManager;

    invoke-virtual {v1, v0, p3}, Lsafiap/framework/data/SharedDataManager;->setDataByName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public startCheckUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceActionName"    # Ljava/lang/String;

    .prologue
    .line 513
    if-nez p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "startCheckUpdate ... "

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 517
    iget-boolean v1, p0, Lsafiap/framework/sdk/SAFFramework;->mIsUseSdkService:Z

    if-nez v1, :cond_3

    .line 519
    :try_start_0
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    if-nez v1, :cond_2

    .line 520
    sget-object v1, Lsafiap/framework/sdk/SAFFramework;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "Framework service instance is null!"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A Exception:510006"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, p1}, Lsafiap/framework/sdk/ISAFFramework;->startCheckUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 530
    :cond_3
    :try_start_2
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lsafiap/framework/sdk/SAFFramework;->mSdkService:Lsafiap/framework/sdk/ISAFFramework;

    invoke-interface {v1, p1}, Lsafiap/framework/sdk/ISAFFramework;->startCheckUpdate(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 534
    :catch_1
    move-exception v0

    .line 535
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "IAPSAFFramework"

    const-string v2, "SAF-A Exception:510006"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
