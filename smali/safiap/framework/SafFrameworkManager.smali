.class public Lsafiap/framework/SafFrameworkManager;
.super Landroid/app/Service;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/SafFrameworkManager$DownloaderState;,
        Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;,
        Lsafiap/framework/SafFrameworkManager$PluginDownloader;,
        Lsafiap/framework/SafFrameworkManager$PluginQueryTask;,
        Lsafiap/framework/SafFrameworkManager$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CHECK_UPDATE:Ljava/lang/String; = "safiap.framework.ACTION_CHECK_UPDATE"

.field public static final ACTION_START_DOWNLOAD:Ljava/lang/String; = "safiap.framework.ACTION_START_DOWNLOAD"

.field public static final CFG_SAVE_TO_SDCARD:Z = true

.field public static ID_UPDATE_DOWNLOADING_FRAMEWORK:I = 0x0

.field public static ID_UPDATE_DOWNLOADING_FRAMEWORK_ERROR:I = 0x0

.field public static ID_UPDATE_DOWNLOADING_IAP_ERROR:I = 0x0

.field public static ID_UPDATE_DOWNLOADING_PLUGIN:I = 0x0

.field public static ID_UPDATE_FRAMEWORK_NOTIFICATION:I = 0x0

.field public static ID_UPDATE_PLUGIN_NOTIFICATION:I = 0x0

.field public static ID_UPDATE_TO_INSTALL_FRAMEWORK:I = 0x0

.field public static ID_UPDATE_TO_INSTALL_PLUGIN:I = 0x0

.field private static final KEY_ACTION_NAME:Ljava/lang/String; = "action_name"

.field public static final LASTUPDATE:Ljava/lang/String; = "lastupdateVERSION"

.field private static final MSG_FINISH_INSTALL:I = 0x0

.field public static final MSG_INSERT_ALREADY_EXIST:I = 0x66

.field public static final MSG_INSERT_FAIL:I = -0x1

.field public static final MSG_INSERT_OK:I = 0x0

.field private static final MSG_INSTALL_TIMEOUT:I = 0x1

.field protected static final MSG_PLUGIN_AUTH_FAILED:I = -0x67

.field protected static final MSG_PLUGIN_INSTALL_FAIL:I = 0xc9

.field protected static final MSG_PLUGIN_INSTALL_OK:I = 0xc8

.field protected static final MSG_PLUGIN_INSTALL_VERISON_DISMATCH:I = 0xca

.field protected static final MSG_PLUGIN_SYNC_COMPLETE:I = 0x0

.field protected static final MSG_PLUGIN_SYNC_MANDATORY_UPDATE:I = 0x2

.field protected static final MSG_PLUGIN_SYNC_NOT_INSTALLED:I = -0x1

.field private static final MSG_SCHEDULE_DOWNLOAD:I = 0x2

.field public static final NAME:Ljava/lang/String; = "pluginname"

.field public static final NEEDSAFE:Ljava/lang/String; = "needsafe"

.field private static final REGISTRATION:Ljava/lang/String; = "safiap.framework.PluginReg"

.field private static final REGISTRATION_RESULT:Ljava/lang/String; = "safiap.framework.PluginReg.result"

.field protected static final REG_RESULT:Ljava/lang/String; = "reg_result"

.field private static TAG:Ljava/lang/String; = null

.field public static final TOUPDATE:Ljava/lang/String; = "newversionavailble"

.field public static final VERSION:Ljava/lang/String; = "version"

.field private static logger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private isUpdateChecking:Z

.field private final mBinder:Lsafiap/framework/sdk/ISAFFramework$Stub;

.field private mContext:Landroid/content/Context;

.field private mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

.field private mFrameworkDownloadCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIAPDownloadCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

.field private mIsUnbind:Z

.field private mIsdownloading:Z

.field private mOnGotUpdateListListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

.field public mSafCrashLog_Intent:Landroid/content/Intent;

.field private mTaskPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/SafFrameworkManager$PluginDownloader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "SafFrameworkManager"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    .line 67
    const-string v0, "SafFrameworkManager"

    sput-object v0, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    .line 82
    const/16 v0, 0x3e9

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_PLUGIN_NOTIFICATION:I

    .line 83
    const/16 v0, 0x3ea

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_FRAMEWORK_NOTIFICATION:I

    .line 84
    const/16 v0, 0x3eb

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_PLUGIN:I

    .line 85
    const/16 v0, 0x3ec

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_FRAMEWORK:I

    .line 86
    const/16 v0, 0x3ed

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_PLUGIN:I

    .line 87
    const/16 v0, 0x3ee

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK:I

    .line 88
    const/16 v0, 0x3ef

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK_ERROR:I

    .line 89
    const/16 v0, 0x3f0

    sput v0, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_IAP_ERROR:I

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 118
    iput-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->mIsUnbind:Z

    .line 119
    iput-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->mIsdownloading:Z

    .line 120
    iput-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->isUpdateChecking:Z

    .line 131
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    .line 133
    new-instance v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;

    invoke-direct {v0, p0, v1}, Lsafiap/framework/SafFrameworkManager$ServiceHandler;-><init>(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/SafFrameworkManager$ServiceHandler;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    .line 1081
    new-instance v0, Lsafiap/framework/SafFrameworkManager$1;

    invoke-direct {v0, p0}, Lsafiap/framework/SafFrameworkManager$1;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDownloadCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 1126
    new-instance v0, Lsafiap/framework/SafFrameworkManager$2;

    invoke-direct {v0, p0}, Lsafiap/framework/SafFrameworkManager$2;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mIAPDownloadCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 1476
    new-instance v0, Lsafiap/framework/SafFrameworkManager$3;

    invoke-direct {v0, p0}, Lsafiap/framework/SafFrameworkManager$3;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mBinder:Lsafiap/framework/sdk/ISAFFramework$Stub;

    .line 1953
    new-instance v0, Lsafiap/framework/SafFrameworkManager$4;

    invoke-direct {v0, p0}, Lsafiap/framework/SafFrameworkManager$4;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mOnGotUpdateListListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 61
    return-void
.end method

.method static synthetic access$0()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lsafiap/framework/SafFrameworkManager;Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lsafiap/framework/SafFrameworkManager;->isUpdateChecking:Z

    return-void
.end method

.method static synthetic access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->stopInstallTimer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0, p1, p2, p3}, Lsafiap/framework/SafFrameworkManager;->notifyFinishInstall(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$14(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0, p1, p2}, Lsafiap/framework/SafFrameworkManager;->notifyInstallTimeout(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0, p1, p2, p3}, Lsafiap/framework/SafFrameworkManager;->notifyFinishDownload(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$16(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lsafiap/framework/SafFrameworkManager;->notifyStartInstall(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$17(Lsafiap/framework/SafFrameworkManager;Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lsafiap/framework/SafFrameworkManager;->mIsdownloading:Z

    return-void
.end method

.method static synthetic access$18(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0, p1, p2, p3, p4}, Lsafiap/framework/SafFrameworkManager;->updateDBDownloadinfo(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$19(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0, p1, p2, p3, p4}, Lsafiap/framework/SafFrameworkManager;->notifyDownloadProgress(Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1854
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->syncVersionInfo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Lsafiap/framework/SafFrameworkManager;->notifyPrepareDownload(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$22(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0

    .prologue
    .line 1018
    invoke-direct {p0}, Lsafiap/framework/SafFrameworkManager;->handleException()V

    return-void
.end method

.method static synthetic access$23(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mOnGotUpdateListListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    return-object v0
.end method

.method static synthetic access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    return-object v0
.end method

.method static synthetic access$4(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/data/SafFrameworkDB;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    return-void
.end method

.method static synthetic access$5(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0, p1, p2, p3, p4}, Lsafiap/framework/SafFrameworkManager;->startDownload(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$6(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->cancelTask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lsafiap/framework/SafFrameworkManager;)Z
    .locals 1

    .prologue
    .line 905
    invoke-direct {p0}, Lsafiap/framework/SafFrameworkManager;->cancelAllTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1912
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->checkUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private cancelAllTask()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 906
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v6, "cancelAllTask...start"

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 907
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 908
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 909
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 920
    invoke-direct {p0}, Lsafiap/framework/SafFrameworkManager;->stopAllInstallTimer()V

    .line 921
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 924
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    return v4

    .line 910
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 911
    .local v0, "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getQueryTask()Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

    move-result-object v2

    .line 912
    .local v2, "query":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->cancel(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 913
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v6, "query cancelled successfully!"

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 915
    :cond_2
    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getDownloadTask()Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    move-result-object v3

    .line 916
    .local v3, "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->cancel(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 917
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "download task: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->getPluginInfo()Lsafiap/framework/data/PluginInfo;

    move-result-object v7

    invoke-virtual {v7}, Lsafiap/framework/data/PluginInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cancelled successfully!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    .end local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "query":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    .end local v3    # "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private cancelTask(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 883
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 884
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 885
    .local v0, "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    if-eqz v0, :cond_2

    .line 886
    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getQueryTask()Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

    move-result-object v1

    .line 887
    .local v1, "query":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->cancel(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 888
    sget-object v4, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query task for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cancelled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 902
    .end local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    .end local v1    # "query":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    :goto_0
    return v3

    .line 891
    .restart local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    .restart local v1    # "query":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    :cond_0
    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getDownloadTask()Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    move-result-object v2

    .line 892
    .local v2, "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    if-eqz v2, :cond_2

    .line 893
    invoke-virtual {v2, v3}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->cancel(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 894
    sget-object v4, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download task for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cancelled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_1
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->stopInstallTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 902
    .end local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    .end local v1    # "query":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    .end local v2    # "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static checkPluginInstalInfo(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    const/16 v1, 0xc9

    const/16 v0, 0xc8

    .line 2003
    if-gtz p2, :cond_2

    .line 2004
    invoke-static {p0, p1}, Lsafiap/framework/sdk/util/PackageUtil;->isComponentsInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2007
    goto :goto_0

    .line 2010
    :cond_2
    invoke-static {p0, p1, p2}, Lsafiap/framework/sdk/util/PackageUtil;->isComponentsInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2013
    goto :goto_0
.end method

.method private checkUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "ServiceActionName"    # Ljava/lang/String;

    .prologue
    .line 1913
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ Start to check update $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1914
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkUpdate() ...main looper: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1916
    new-instance v0, Lsafiap/framework/SafFrameworkManager$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsafiap/framework/SafFrameworkManager$7;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/os/Looper;)V

    .line 1932
    .local v0, "handler":Landroid/os/Handler;
    if-nez p1, :cond_0

    .line 1933
    sget-object p1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    .line 1935
    :cond_0
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager;->syncVersionInfo(Ljava/lang/String;)I

    .line 1936
    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1937
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsafiap/framework/SafFrameworkManager;->isUpdateChecking:Z

    .line 1938
    return-void
.end method

.method private checkUpdateForIAP()V
    .locals 0

    .prologue
    .line 1948
    return-void
.end method

.method private deletePackageInfo(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1240
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v0, :cond_0

    .line 1241
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "mFrameworkDB == null restart DB..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1242
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 1244
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    invoke-virtual {v0, p1}, Lsafiap/framework/data/SafFrameworkDB;->deletePluginsInfo(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getAllPluginInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 2097
    sget-object v11, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v13, "getAllPluginInfoList...start"

    invoke-virtual {v11, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2098
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    .local v8, "pluginMap":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v3

    .line 2104
    .local v3, "fmwDB":Lsafiap/framework/data/SafFrameworkDB;
    invoke-virtual {v3}, Lsafiap/framework/data/SafFrameworkDB;->selectAll()Landroid/database/Cursor;

    move-result-object v2

    .line 2106
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2108
    :cond_0
    const-string v11, "cnname"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2109
    .local v1, "cnname":Ljava/lang/String;
    const-string v11, "package_name"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2110
    .local v7, "packageName":Ljava/lang/String;
    const-string v11, "action_name"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2111
    .local v0, "actionName":Ljava/lang/String;
    const-string v11, "version"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2112
    .local v10, "version":I
    const-string v11, "version_latest"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2113
    .local v6, "latestVersion":I
    const-string v11, "isdownloading"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2115
    .local v5, "isDownloading":I
    new-instance v4, Lsafiap/framework/data/PluginInfo;

    invoke-direct {v4}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 2117
    .local v4, "info":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v4, v1}, Lsafiap/framework/data/PluginInfo;->setAppName(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v4, v0}, Lsafiap/framework/data/PluginInfo;->setAppAction(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v4, v7}, Lsafiap/framework/data/PluginInfo;->setPackageName(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {v4, v10}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 2121
    invoke-virtual {v4, v6}, Lsafiap/framework/data/PluginInfo;->setLatestVersion(I)V

    .line 2122
    if-ne v5, v12, :cond_3

    move v11, v12

    :goto_0
    invoke-virtual {v4, v11}, Lsafiap/framework/data/PluginInfo;->setDownloading(Z)V

    .line 2125
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {p0, v0, v11}, Lsafiap/framework/SafFrameworkManager;->checkPluginInstalInfo(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 2126
    .local v9, "result":I
    sget-object v13, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "getAllPluginInfoList().actionName:"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ",result:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_4

    const-string v11, "OK"

    :goto_1
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2127
    const/16 v11, 0xc9

    if-ne v11, v9, :cond_5

    sget-object v11, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 2137
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    .line 2107
    if-nez v11, :cond_0

    .line 2140
    .end local v0    # "actionName":Ljava/lang/String;
    .end local v1    # "cnname":Ljava/lang/String;
    .end local v4    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v5    # "isDownloading":I
    .end local v6    # "latestVersion":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "result":I
    .end local v10    # "version":I
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2144
    :cond_2
    return-object v8

    .line 2122
    .restart local v0    # "actionName":Ljava/lang/String;
    .restart local v1    # "cnname":Ljava/lang/String;
    .restart local v4    # "info":Lsafiap/framework/data/PluginInfo;
    .restart local v5    # "isDownloading":I
    .restart local v6    # "latestVersion":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v10    # "version":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 2126
    .restart local v9    # "result":I
    :cond_4
    const-string v11, "FAIL"

    goto :goto_1

    .line 2133
    :cond_5
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2135
    sget-object v11, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getAllPluginInfoList().add info: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static getAllPluginInfoMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2024
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 2025
    .local v24, "pluginMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsafiap/framework/data/PluginInfo;>;"
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v4, "getAllPluginInfoMap -------------- "

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2029
    invoke-static/range {p0 .. p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v2

    .line 2030
    .local v2, "fmwDB":Lsafiap/framework/data/SafFrameworkDB;
    invoke-virtual {v2}, Lsafiap/framework/data/SafFrameworkDB;->selectAll()Landroid/database/Cursor;

    move-result-object v15

    .line 2032
    .local v15, "cursor":Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2033
    .local v16, "deletePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2035
    .local v18, "deleteVersionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2037
    :cond_0
    const-string v3, "action_name"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2038
    .local v14, "actionName":Ljava/lang/String;
    const-string v3, "package_name"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2039
    .local v23, "packageName":Ljava/lang/String;
    const-string v3, "version"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 2040
    .local v26, "version":I
    const-string v3, "version_latest"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 2041
    .local v22, "latestVersion":I
    const-string v3, "isdownloading"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2043
    .local v20, "isDownloading":I
    new-instance v19, Lsafiap/framework/data/PluginInfo;

    invoke-direct/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 2044
    .local v19, "info":Lsafiap/framework/data/PluginInfo;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lsafiap/framework/data/PluginInfo;->setAppAction(Ljava/lang/String;)V

    .line 2045
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lsafiap/framework/data/PluginInfo;->setPackageName(Ljava/lang/String;)V

    .line 2046
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 2047
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lsafiap/framework/data/PluginInfo;->setLatestVersion(I)V

    .line 2048
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lsafiap/framework/data/PluginInfo;->setDownloading(Z)V

    .line 2051
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3}, Lsafiap/framework/SafFrameworkManager;->checkPluginInstalInfo(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    .line 2052
    .local v25, "result":I
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllPluginInfoMap().actionName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2054
    const/16 v3, 0xc9

    move/from16 v0, v25

    if-ne v3, v0, :cond_4

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v14, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2056
    invoke-virtual/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    invoke-virtual/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2073
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 2036
    if-nez v3, :cond_0

    .line 2076
    .end local v14    # "actionName":Ljava/lang/String;
    .end local v19    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v20    # "isDownloading":I
    .end local v22    # "latestVersion":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v25    # "result":I
    .end local v26    # "version":I
    :cond_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2077
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2080
    :cond_2
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v4, "pluginInCursor.close() -------------- "

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2082
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_5

    .line 2087
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v4, "fmwDB.deletePluginsInfo(pkgName) -------------- "

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2088
    return-object v24

    .line 2048
    .end local v21    # "j":I
    .restart local v14    # "actionName":Ljava/lang/String;
    .restart local v19    # "info":Lsafiap/framework/data/PluginInfo;
    .restart local v20    # "isDownloading":I
    .restart local v22    # "latestVersion":I
    .restart local v23    # "packageName":Ljava/lang/String;
    .restart local v26    # "version":I
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2061
    .restart local v25    # "result":I
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 2062
    .local v6, "installedVersion":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 2063
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllPluginInfoMap().installedVersion:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2066
    const/4 v3, 0x0

    invoke-virtual/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2067
    const/4 v7, -0x1

    .line 2068
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2066
    invoke-virtual/range {v2 .. v13}, Lsafiap/framework/data/SafFrameworkDB;->updatePluginUpdateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 2071
    invoke-virtual/range {v19 .. v19}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2083
    .end local v6    # "installedVersion":I
    .end local v14    # "actionName":Ljava/lang/String;
    .end local v19    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v20    # "isDownloading":I
    .end local v22    # "latestVersion":I
    .end local v23    # "packageName":Ljava/lang/String;
    .end local v25    # "result":I
    .end local v26    # "version":I
    .restart local v21    # "j":I
    :cond_5
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2084
    .local v17, "deleteVersion":I
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2085
    .restart local v14    # "actionName":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lsafiap/framework/data/SafFrameworkDB;->deletePluginsInfo(Ljava/lang/String;)J

    .line 2082
    add-int/lit8 v21, v21, 0x1

    goto :goto_2
.end method

.method public static getFrameworkInfo(Landroid/content/Context;)Lsafiap/framework/data/PluginInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 2152
    const/4 v2, 0x0

    .line 2153
    .local v2, "frameworkInfo":Lsafiap/framework/data/PluginInfo;
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    .line 2154
    .local v1, "fmwDB":Lsafiap/framework/data/SafFrameworkDB;
    invoke-virtual {v1}, Lsafiap/framework/data/SafFrameworkDB;->getFrameworkInfoV2()Landroid/database/Cursor;

    move-result-object v0

    .line 2155
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2157
    new-instance v2, Lsafiap/framework/data/PluginInfo;

    .end local v2    # "frameworkInfo":Lsafiap/framework/data/PluginInfo;
    invoke-direct {v2}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 2158
    .restart local v2    # "frameworkInfo":Lsafiap/framework/data/PluginInfo;
    sget-object v4, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lsafiap/framework/data/PluginInfo;->setAppAction(Ljava/lang/String;)V

    .line 2160
    const-string v4, "update_option"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2159
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2160
    if-ne v4, v3, :cond_1

    .line 2159
    :goto_0
    invoke-virtual {v2, v3}, Lsafiap/framework/data/PluginInfo;->setMandatoryUpdate(Z)V

    .line 2161
    sget v3, Lsafiap/framework/SafFrameworkApplication;->FRAMEWORK_VERSION:I

    invoke-virtual {v2, v3}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 2163
    const-string v3, "version_latest"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2162
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lsafiap/framework/data/PluginInfo;->setLatestVersion(I)V

    .line 2167
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2168
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2170
    :cond_0
    return-object v2

    .line 2160
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2165
    :cond_2
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "framework info is null!!!! count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static getNameVersionPair(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1997
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getPluginVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleException()V
    .locals 2

    .prologue
    .line 1024
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1026
    return-void
.end method

.method private insertNewPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .param p1, "cnname"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "needsafe"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 1250
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1251
    .local v7, "ComponentsInsert":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v7, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v1, "version"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "insertNewPluginInfo..."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1258
    if-nez p2, :cond_0

    .line 1259
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "name == null..."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v5, v0

    .line 1292
    :goto_0
    return v5

    .line 1264
    :cond_0
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p4}, Lsafiap/framework/sdk/util/PackageUtil;->isComponentsInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v8

    .line 1265
    .local v8, "result":Z
    if-nez v8, :cond_1

    .line 1266
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1267
    const-string v3, "install failed ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v5, v0

    .line 1268
    goto :goto_0

    .line 1284
    :cond_1
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v0, :cond_2

    .line 1285
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "mFrameworkDB == null restart DB..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1286
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 1288
    :cond_2
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "check mFrameworkDB..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1290
    .local v4, "versionCode":I
    invoke-static {}, Lsafiap/framework/data/TimeManager;->getNowDate()Ljava/lang/String;

    move-result-object v6

    .line 1291
    .local v6, "currentTime":Ljava/lang/String;
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lsafiap/framework/data/SafFrameworkDB;->insertPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    goto :goto_0
.end method

.method private isPluginDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1464
    const/4 v0, 0x0

    .line 1465
    .local v0, "cond1":Z
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-eqz v2, :cond_0

    .line 1467
    :try_start_0
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    invoke-virtual {v2, p1}, Lsafiap/framework/data/SafFrameworkDB;->isPluginDownloading(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1473
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager;->mIsdownloading:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1468
    :catch_0
    move-exception v1

    .line 1469
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1473
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private notifyDownloadProgress(Ljava/util/List;Ljava/lang/String;II)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "callbackList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/sdk/ISAFFrameworkCallback;>;"
    if-eqz p1, :cond_0

    .line 698
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 706
    :cond_0
    :goto_1
    return-void

    .line 698
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 699
    .local v0, "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-interface {v0, p2, p3, p4}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onDownloadProgress(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    .end local v0    # "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    :catch_0
    move-exception v1

    .line 702
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v3, "SAF-A Exception:520002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyFinishDownload(Ljava/util/List;Ljava/lang/String;I)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "callbackList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/sdk/ISAFFrameworkCallback;>;"
    if-eqz p1, :cond_0

    .line 715
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 723
    :cond_0
    :goto_1
    return-void

    .line 715
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 716
    .local v0, "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-interface {v0, p2, p3}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onFinishDownload(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    .end local v0    # "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v3, "SAF-A Exception:520003"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyFinishInstall(Ljava/util/List;Ljava/lang/String;I)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "callbackList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/sdk/ISAFFrameworkCallback;>;"
    if-eqz p1, :cond_0

    .line 755
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 763
    :cond_0
    :goto_1
    return-void

    .line 755
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 756
    .local v0, "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-interface {v0, p2, p3}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onFinishInstall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v0    # "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v3, "SAF-A Exception:520005"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyInstallTimeout(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "callbackList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/sdk/ISAFFrameworkCallback;>;"
    if-eqz p1, :cond_0

    .line 772
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 780
    :cond_0
    :goto_1
    return-void

    .line 772
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 773
    .local v0, "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-interface {v0, p2}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onInstallTimeout(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v0    # "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v3, "SAF-A Exception:520006"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyPrepareDownload(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "callbackList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/sdk/ISAFFrameworkCallback;>;"
    if-eqz p1, :cond_0

    .line 681
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 689
    :cond_0
    :goto_1
    return-void

    .line 681
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 682
    .local v0, "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-interface {v0, p2}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onPrepareDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    .end local v0    # "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v3, "SAF-A Exception:520001"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private notifyStartInstall(Ljava/util/List;Ljava/lang/String;)J
    .locals 10
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .local p1, "callbackList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/sdk/ISAFFrameworkCallback;>;"
    const-wide/16 v8, 0x0

    .line 730
    const-wide/16 v4, 0x0

    .line 732
    .local v4, "timeout":J
    if-eqz p1, :cond_1

    .line 734
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 745
    :cond_1
    :goto_1
    return-wide v4

    .line 734
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .line 735
    .local v0, "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-interface {v0, p2}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onStartInstall(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 736
    .local v2, "result":J
    cmp-long v7, v4, v8

    if-nez v7, :cond_0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 737
    move-wide v4, v2

    goto :goto_0

    .line 740
    .end local v0    # "callback":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    .end local v2    # "result":J
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lsafiap/framework/SafFrameworkManager;->TAG:Ljava/lang/String;

    const-string v7, "SAF-A Exception:520004"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private scanInstalledPlugins()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1795
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "scan installed plugins... "

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1796
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1797
    .local v10, "mainIntent":Landroid/content/Intent;
    sget-object v0, Lsafiap/framework/util/Constants;->SAF_COMPONENT_KEY:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1804
    .local v11, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v11, v10, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1805
    .local v7, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_0

    .line 1806
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, " appsInfos is null! "

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1808
    :cond_0
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checking appsInfos.size():("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1809
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    .line 1844
    return-void

    .line 1810
    :cond_1
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1813
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1814
    const-string v2, "8ddb342f2da5408402d7568af21e29f9"

    .line 1812
    invoke-static {p0, v0, v2}, Lsafiap/framework/sdk/util/PackageUtil;->isSignatureMatched(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1815
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checking signature RIGHT!!!activeInfo: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1816
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")  and  Package Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1817
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1815
    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1820
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1819
    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 1821
    .local v4, "mPackageVersion":I
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v0, :cond_2

    .line 1822
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "new framework DB in scanInstalledPlugins"

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1823
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 1825
    :cond_2
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 1826
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1825
    invoke-virtual {v0, v2, v4}, Lsafiap/framework/data/SafFrameworkDB;->hasPlugininfo(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1829
    invoke-static {}, Lsafiap/framework/data/TimeManager;->getNowDate()Ljava/lang/String;

    move-result-object v6

    .line 1830
    .local v6, "CurrentTime":Ljava/lang/String;
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In search there is no such plug-in  and name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1831
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1832
    const-string v3, " mPackageVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1833
    const-string v3, " needsafe:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CurrentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1830
    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1834
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageCnName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1835
    .local v1, "cnname":Ljava/lang/String;
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    const-string v2, "action unknow"

    .line 1836
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1835
    invoke-virtual/range {v0 .. v6}, Lsafiap/framework/data/SafFrameworkDB;->insertPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    .line 1809
    .end local v1    # "cnname":Ljava/lang/String;
    .end local v4    # "mPackageVersion":I
    .end local v6    # "CurrentTime":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1840
    .restart local v4    # "mPackageVersion":I
    :cond_4
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "already have one ..."

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendFinishInstallMsg(Ljava/lang/String;I)V
    .locals 4
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "result"    # I

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 211
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "action_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 214
    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method static sendIntallNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 218
    if-nez p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->isApkServiceRunning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 230
    .local v10, "isServiceRunning":Z
    new-instance v13, Landroid/content/Intent;

    const-class v1, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v13, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v13, "notificationIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    sget-object v1, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL_IAP:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :cond_2
    :goto_1
    const-string v1, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    sget-object v1, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    if-nez v10, :cond_5

    .line 246
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendIntallNotification ... fileName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->e(Ljava/lang/String;)V

    .line 247
    const-string v1, "iapFileName"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendIntallNotification ... intent fileName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "iapFileName"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->e(Ljava/lang/String;)V

    .line 249
    new-instance v12, Landroid/app/Notification;

    const v1, 0x108000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p3

    invoke-direct {v12, v1, v0, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 250
    .local v12, "notification":Landroid/app/Notification;
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 251
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    const-string v1, "\u5347\u7ea7\u63d0\u793a"

    move-object/from16 v0, p3

    invoke-virtual {v12, p0, v1, v0, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 252
    const/16 v1, 0x10

    iput v1, v12, Landroid/app/Notification;->flags:I

    .line 253
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 256
    .local v11, "manager":Landroid/app/NotificationManager;
    sget v1, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_PLUGIN:I

    invoke-virtual {v11, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 257
    sget v1, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_PLUGIN:I

    invoke-virtual {v11, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 258
    sget v1, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_PLUGIN:I

    invoke-virtual {v11, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 278
    .end local v11    # "manager":Landroid/app/NotificationManager;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    :goto_2
    if-eqz p3, :cond_0

    .line 280
    new-instance v9, Landroid/content/Intent;

    const-string v1, "safiap.framework.ACTION_CANCEL_NOTIFICATION"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v9, "cancelIntent":Landroid/content/Intent;
    sget-object v1, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 235
    .end local v9    # "cancelIntent":Landroid/content/Intent;
    :cond_4
    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    sget-object v1, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 260
    :cond_5
    sget v2, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_PLUGIN:I

    sget v3, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_PLUGIN:I

    const/4 v4, 0x0

    const v5, 0x108000a

    .line 261
    const-string v6, "\u5347\u7ea7\u63d0\u793a"

    const-string v7, "\u5347\u7ea7\u63d0\u793a"

    const-string v8, "\u66f4\u65b0\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u5f53\u524d\u6b63\u5728\u8fd0\u884c\u4e2d\uff0c\u5c06\u5728\u4e0b\u4e00\u6b21\u542f\u52a8\u65f6\u5b89\u88c5\u3002"

    move-object v1, p0

    .line 260
    invoke-static/range {v1 .. v8}, Lsafiap/framework/sdk/util/PackageUtil;->notify(Landroid/content/Context;IILandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 264
    :cond_6
    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const-string v1, "fwFileName"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    new-instance v12, Landroid/app/Notification;

    const v1, 0x108000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p3

    invoke-direct {v12, v1, v0, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 267
    .restart local v12    # "notification":Landroid/app/Notification;
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 268
    .restart local v14    # "pendingIntent":Landroid/app/PendingIntent;
    const-string v1, "\u5347\u7ea7\u63d0\u793a"

    move-object/from16 v0, p3

    invoke-virtual {v12, p0, v1, v0, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 269
    const/16 v1, 0x10

    iput v1, v12, Landroid/app/Notification;->flags:I

    .line 270
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 273
    .restart local v11    # "manager":Landroid/app/NotificationManager;
    sget v1, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK:I

    invoke-virtual {v11, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 274
    sget v1, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_FRAMEWORK:I

    invoke-virtual {v11, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 275
    sget v1, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_FRAMEWORK:I

    invoke-virtual {v11, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2
.end method

.method static setDisconnectNotification(Landroid/content/Context;I)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const v13, 0x1080027

    const/16 v12, 0x10

    const/4 v11, 0x0

    const/high16 v10, 0x10000000

    .line 2285
    sget-object v7, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setDisconnectNotification download type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 2286
    const/4 v2, 0x0

    .line 2287
    .local v2, "mContent":Ljava/lang/String;
    move v4, p1

    .line 2289
    .local v4, "mtype":I
    const/16 v7, 0x7531

    if-ne v4, v7, :cond_1

    .line 2290
    sget-object v7, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v8, "Framework is not complete downloading!"

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2291
    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u5e76\u70b9\u51fb\u91cd\u8bd5"

    .line 2292
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2293
    .local v1, "frameworkIntent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2294
    sget-object v7, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR_FRAMEWORK:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    new-instance v5, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v13, v2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2297
    .local v5, "notification":Landroid/app/Notification;
    invoke-static {p0, v11, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2298
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v7, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\u63d0\u793a"

    invoke-virtual {v5, p0, v7, v2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2299
    iput v12, v5, Landroid/app/Notification;->flags:I

    .line 2300
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 2302
    .local v3, "manager":Landroid/app/NotificationManager;
    sget v7, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK:I

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2303
    sget v7, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK_ERROR:I

    invoke-virtual {v3, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2320
    .end local v1    # "frameworkIntent":Landroid/content/Intent;
    .end local v3    # "manager":Landroid/app/NotificationManager;
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 2304
    :cond_1
    const/16 v7, 0x7532

    if-ne v4, v7, :cond_0

    .line 2305
    sget-object v7, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v8, "IAP is not complete downloading!"

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2306
    const-string v2, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u5e76\u70b9\u51fb\u91cd\u8bd5"

    .line 2307
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2308
    .local v0, "IAPIntent":Landroid/content/Intent;
    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2309
    sget-object v7, Lsafiap/framework/util/Constants;->ACTION_NETWORK_ERROR_IAP:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2311
    new-instance v5, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v13, v2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2312
    .restart local v5    # "notification":Landroid/app/Notification;
    invoke-static {p0, v11, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2313
    .restart local v6    # "pendingIntent":Landroid/app/PendingIntent;
    const-string v7, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\u63d0\u793a"

    invoke-virtual {v5, p0, v7, v2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2314
    iput v12, v5, Landroid/app/Notification;->flags:I

    .line 2315
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 2317
    .restart local v3    # "manager":Landroid/app/NotificationManager;
    sget v7, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_PLUGIN:I

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2318
    sget v7, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_IAP_ERROR:I

    invoke-virtual {v3, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static setDownloadNotification(Landroid/content/Context;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const v8, 0x1080081

    .line 2261
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setdownloadNotification download type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 2262
    const/4 v0, 0x0

    .line 2263
    .local v0, "mContent":Ljava/lang/String;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2264
    .local v1, "manager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2265
    .local v3, "notificationIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2268
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const/16 v5, 0x7531

    if-ne p1, v5, :cond_1

    .line 2269
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u4e2d..."

    .line 2270
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v8, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2271
    .local v2, "notification":Landroid/app/Notification;
    const-string v5, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v2, p0, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2273
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK:I

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2274
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK:I

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2282
    .end local v2    # "notification":Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    const/16 v5, 0x7532

    if-ne p1, v5, :cond_0

    .line 2276
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u4e2d..."

    .line 2277
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v8, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2278
    .restart local v2    # "notification":Landroid/app/Notification;
    const-string v5, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v2, p0, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2279
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_PLUGIN:I

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2280
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_PLUGIN:I

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static setUpdateNotification(Landroid/content/Context;II)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateItemCount"    # I
    .param p2, "type"    # I

    .prologue
    const/16 v12, 0x7533

    const/16 v11, 0x7532

    const/16 v10, 0x7531

    const/4 v9, 0x1

    .line 2182
    sget-object v6, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setUpdateNotification...start, updateItemCount: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 2185
    if-gez p1, :cond_1

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    const/4 v5, 0x0

    .line 2191
    .local v5, "title":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2193
    .local v3, "notificationIntent":Landroid/content/Intent;
    if-ne p2, v10, :cond_3

    .line 2194
    const-string v5, "\u4e2d\u56fd\u79fb\u52a8\u80fd\u529b\u6846\u67b6\u6709\u66f4\u65b0"

    .line 2195
    const-string v6, "DownloadItems"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2197
    const-string v6, "UpdateType"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2213
    :cond_2
    :goto_1
    new-instance v2, Landroid/app/Notification;

    const v6, 0x108000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2214
    .local v2, "notification":Landroid/app/Notification;
    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    invoke-static {p0, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2216
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v6, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v2, p0, v6, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2217
    const/16 v6, 0x10

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 2219
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2221
    .local v1, "manager":Landroid/app/NotificationManager;
    sget v6, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_PLUGIN_NOTIFICATION:I

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2222
    if-lez p1, :cond_0

    .line 2223
    sget v6, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_PLUGIN_NOTIFICATION:I

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2226
    new-instance v0, Landroid/content/Intent;

    const-string v6, "safiap.framework.ACTION_CANCEL_NOTIFICATION"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2227
    .local v0, "intent":Landroid/content/Intent;
    sget-object v6, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2199
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    if-ne p2, v11, :cond_4

    .line 2200
    const-string v6, "DownloadItems"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2201
    const-string v5, "\u4e2d\u56fd\u79fb\u52a8\u5e94\u7528\u5185\u8ba1\u8d39\u80fd\u529b\u7ec4\u4ef6\u6709\u66f4\u65b0"

    .line 2203
    const-string v6, "UpdateType"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 2205
    :cond_4
    if-ne p2, v12, :cond_2

    .line 2206
    const-string v5, "\u4e2d\u56fd\u79fb\u52a8\u80fd\u529b\u6846\u67b6\u548c\u5e94\u7528\u5185\u8ba1\u8d39\u80fd\u529b\u7ec4\u4ef6\u8981\u66f4\u65b0"

    .line 2207
    const-string v6, "DownloadItems"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2209
    const-string v6, "UpdateType"

    invoke-virtual {v3, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method static setUpdateNotification2(Landroid/content/Context;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/16 v12, 0x7532

    const/16 v11, 0x7531

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2232
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " update type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 2233
    const/4 v0, 0x0

    .line 2234
    .local v0, "mContent":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2235
    .local v3, "notificationIntent":Landroid/content/Intent;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2237
    .local v1, "manager":Landroid/app/NotificationManager;
    if-ne p1, v11, :cond_1

    .line 2238
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8\u80fd\u529b\u6846\u67b6\u6709\u66f4\u65b0"

    .line 2239
    const-string v5, "DownloadItems"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2240
    const-string v5, "UpdateType"

    invoke-virtual {v3, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2241
    new-instance v2, Landroid/app/Notification;

    const v5, 0x108000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v5, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2242
    .local v2, "notification":Landroid/app/Notification;
    const/high16 v5, 0x10000000

    invoke-static {p0, v8, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2243
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v5, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v2, p0, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2244
    iput v10, v2, Landroid/app/Notification;->flags:I

    .line 2245
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_FRAMEWORK_NOTIFICATION:I

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2246
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_FRAMEWORK_NOTIFICATION:I

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2258
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 2247
    :cond_1
    if-ne p1, v12, :cond_0

    .line 2248
    const-string v5, "DownloadItems"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2249
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8\u5e94\u7528\u5185\u8ba1\u8d39\u80fd\u529b\u7ec4\u4ef6\u6709\u66f4\u65b0"

    .line 2250
    const-string v5, "UpdateType"

    invoke-virtual {v3, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2251
    new-instance v2, Landroid/app/Notification;

    const v5, 0x108000a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v5, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2252
    .restart local v2    # "notification":Landroid/app/Notification;
    const/high16 v5, 0x10000000

    invoke-static {p0, v8, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2253
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    const-string v5, "\u5347\u7ea7\u63d0\u793a"

    invoke-virtual {v2, p0, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2254
    iput v10, v2, Landroid/app/Notification;->flags:I

    .line 2255
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_PLUGIN_NOTIFICATION:I

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2256
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_PLUGIN_NOTIFICATION:I

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private startDownload(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "listener"    # Lsafiap/framework/sdk/ISAFFrameworkCallback;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "installLater"    # Z

    .prologue
    const/4 v4, 0x1

    .line 811
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "startDownload ... name:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",and change isDownloadStatus..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 812
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p2, v0, v1, v4}, Lsafiap/framework/SafFrameworkManager;->updateDBDownloadinfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 813
    iput-boolean v4, p0, Lsafiap/framework/SafFrameworkManager;->mIsdownloading:Z

    .line 814
    const/4 v6, 0x0

    .line 815
    .local v6, "isNewAddTask":Z
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    new-instance v1, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    invoke-direct {v1, p0, p2}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;-><init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const/4 v6, 0x1

    .line 819
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "New task! mTaskPool.put(name, new PluginDownloader("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")); ..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 822
    :cond_0
    move v2, v6

    .line 824
    .local v2, "isNewTask":Z
    iget-object v7, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lsafiap/framework/SafFrameworkManager$5;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/SafFrameworkManager$5;-><init>(Lsafiap/framework/SafFrameworkManager;ZLjava/lang/String;Lsafiap/framework/sdk/ISAFFrameworkCallback;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    return-void
.end method

.method private startInstallTimer(Ljava/lang/String;J)V
    .locals 6
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 291
    sget-object v3, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start install timer: timeout = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 292
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    invoke-virtual {v3}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 295
    .local v2, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "action_name"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 298
    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private stopAllInstallTimer()V
    .locals 2

    .prologue
    .line 319
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "stop install timer"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    return-void
.end method

.method private stopInstallTimer(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 307
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "stop install timer"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 311
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MSG_INSTALL_TIMEOUT for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 313
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncVersionInfo(Ljava/lang/String;)I
    .locals 18
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 1855
    const/4 v15, -0x1

    .line 1857
    .local v15, "checkRresult":I
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v3, "getPluginInfo.syncVersionInfo() @ Framework service ..."

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->isComponentsInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    .line 1861
    .local v17, "result":Z
    if-nez v17, :cond_0

    .line 1862
    const/4 v15, -0x1

    .line 1864
    invoke-direct/range {p0 .. p1}, Lsafiap/framework/SafFrameworkManager;->deletePackageInfo(Ljava/lang/String;)J

    .line 1865
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "check ("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")install failed ..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move/from16 v16, v15

    .line 1902
    .end local v15    # "checkRresult":I
    .local v16, "checkRresult":I
    :goto_0
    return v16

    .line 1868
    .end local v16    # "checkRresult":I
    .restart local v15    # "checkRresult":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v1, :cond_1

    .line 1869
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v3, "mFrameworkDB == null restart DB..."

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 1872
    :cond_1
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v3, "check the database info..."

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 1876
    .local v5, "versionCode":I
    invoke-static {}, Lsafiap/framework/data/TimeManager;->getNowDate()Ljava/lang/String;

    move-result-object v7

    .line 1878
    .local v7, "currentTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentCnName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, "cnname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1880
    .local v4, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v7}, Lsafiap/framework/data/SafFrameworkDB;->insertPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    .line 1881
    const/4 v15, 0x0

    .line 1884
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v1, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    .line 1885
    .local v12, "frameworkversion":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v1, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentCnName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1886
    .local v9, "frameworkcnname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v1, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1887
    .local v11, "frameworkpkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v10, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v14, v7

    invoke-virtual/range {v8 .. v14}, Lsafiap/framework/data/SafFrameworkDB;->insertPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    .line 1889
    sget-boolean v1, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-nez v1, :cond_4

    .line 1891
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Lsafiap/framework/data/SafFrameworkDB;->checkMandatoryUpdate(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v3, v12}, Lsafiap/framework/data/SafFrameworkDB;->checkMandatoryUpdate(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1892
    :cond_2
    sget-object v1, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v3, "check the database info... SAFFramework.RESULT_CODE_MANDATORY_UPDATE; "

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1893
    const/16 v15, -0x12c

    :cond_3
    :goto_1
    move/from16 v16, v15

    .line 1902
    .end local v15    # "checkRresult":I
    .restart local v16    # "checkRresult":I
    goto/16 :goto_0

    .line 1897
    .end local v16    # "checkRresult":I
    .restart local v15    # "checkRresult":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Lsafiap/framework/data/SafFrameworkDB;->checkMandatoryUpdate(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1898
    const/16 v15, -0x12c

    goto :goto_1
.end method

.method private updateDBDownloadinfo(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "isDownloading"    # I

    .prologue
    .line 784
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateDBDownloadinfo().action Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v0, :cond_0

    .line 786
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "Create DB @ fwk..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 789
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsafiap/framework/data/SafFrameworkDB;->updateDownloadFileInfo(Ljava/lang/String;Ljava/lang/String;II)J

    .line 791
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1181
    invoke-static {p0}, Lsafiap/framework/util/UpdateAlarm;->isTimerInitialed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    invoke-static {p0}, Lsafiap/framework/util/UpdateAlarm;->initTimer(Landroid/content/Context;)V

    .line 1185
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mBinder:Lsafiap/framework/sdk/ISAFFramework$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 929
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 930
    iput-object p0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    .line 931
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAF-IAP main service onCreate(), it\'s version is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lsafiap/framework/sdk/util/PackageUtil;->getMyFrameworkVersion(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v0, :cond_0

    .line 934
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "Create DB @ fwk..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 937
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 938
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "mTaskPool == null"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 939
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mTaskPool:Ljava/util/Map;

    .line 941
    :cond_1
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager;->startLogService()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mSafCrashLog_Intent:Landroid/content/Intent;

    .line 949
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1224
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1225
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    .line 1226
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1034
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v10, "new intent at onStartCommand ... "

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1035
    if-eqz p1, :cond_0

    .line 1036
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v10, "@RegReceiver:get new intent..."

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1038
    .local v6, "action":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1040
    const-string v0, "safiap.framework.PluginReg"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    const-string v0, "pluginname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1042
    .local v3, "pkgName":Ljava/lang/String;
    const-string v0, "version"

    const/4 v10, -0x1

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1043
    .local v4, "version":I
    const-string v0, "needsafe"

    const/4 v10, -0x1

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1044
    .local v5, "needsafe":I
    const-string v0, "cnname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "cnname":Ljava/lang/String;
    const-string v2, ""

    .line 1046
    .local v2, "actionName":Ljava/lang/String;
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get new REGISTRATION:("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") +("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    move-object v0, p0

    .line 1047
    invoke-direct/range {v0 .. v5}, Lsafiap/framework/SafFrameworkManager;->insertNewPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v9

    .line 1050
    .local v9, "result":I
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "send out MSG_INSERT result("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") info..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1051
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1052
    .local v8, "iRegResult":Landroid/content/Intent;
    const-string v0, "safiap.framework.PluginReg.result"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v0, "pluginname"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    const-string v0, "reg_result"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "send  REGISTRATION result :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, v8}, Lsafiap/framework/SafFrameworkManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 1057
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v10, "new REGISTRATION finish..."

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1077
    .end local v1    # "cnname":Ljava/lang/String;
    .end local v2    # "actionName":Ljava/lang/String;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "version":I
    .end local v5    # "needsafe":I
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "iRegResult":Landroid/content/Intent;
    .end local v9    # "result":I
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 1058
    .restart local v6    # "action":Ljava/lang/String;
    :cond_1
    const-string v0, "safiap.framework.ACTION_START_DOWNLOAD"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    const-string v0, "version"

    const/4 v10, -0x1

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1061
    .restart local v4    # "version":I
    const-string v0, "pluginname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1063
    .local v7, "appActionName":Ljava/lang/String;
    if-eqz v7, :cond_2

    sget-object v0, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    const/16 v10, 0x7532

    invoke-static {v0, v10}, Lsafiap/framework/SafFrameworkManager;->setDownloadNotification(Landroid/content/Context;I)V

    .line 1065
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mIAPDownloadCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    const/4 v10, 0x1

    invoke-direct {p0, v0, v7, v4, v10}, Lsafiap/framework/SafFrameworkManager;->startDownload(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1066
    :cond_2
    if-eqz v7, :cond_0

    sget-object v0, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    const/16 v10, 0x7531

    invoke-static {v0, v10}, Lsafiap/framework/SafFrameworkManager;->setDownloadNotification(Landroid/content/Context;I)V

    .line 1068
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDownloadCallback:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    const/4 v10, 0x1

    invoke-direct {p0, v0, v7, v4, v10}, Lsafiap/framework/SafFrameworkManager;->startDownload(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1071
    .end local v4    # "version":I
    .end local v7    # "appActionName":Ljava/lang/String;
    :cond_3
    const-string v0, "safiap.framework.ACTION_CHECK_UPDATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v10, "action check update"

    invoke-virtual {v0, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsafiap/framework/SafFrameworkManager;->checkUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->mIsUnbind:Z

    .line 1196
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    .line 1198
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendLogCrash()V
    .locals 2

    .prologue
    .line 995
    new-instance v0, Landroid/content/Intent;

    const-string v1, "saf.framework.logreport.monitor.handler.ACTION_SENDREPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 996
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager;->sendBroadcast(Landroid/content/Intent;)V

    .line 997
    return-void
.end method

.method public showCrashReport(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1014
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1015
    return-void
.end method

.method public startInstallDialog(ZZ)V
    .locals 8
    .param p1, "FrameworkHasAPK"    # Z
    .param p2, "IAPPluginHasPAK"    # Z

    .prologue
    .line 1302
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startInstallDialog().FrameworkHasinstall: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",IAPPluginHasinstall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1303
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    const-class v6, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1304
    .local v3, "installIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1306
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v5, :cond_0

    .line 1307
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v6, "mFrameworkDB == null restart DB..."

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1308
    invoke-static {p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v5

    iput-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 1311
    :cond_0
    :try_start_0
    sget-boolean v5, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-nez v5, :cond_5

    .line 1313
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1314
    sget-object v5, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const-string v5, "packageName"

    sget-object v6, Lsafiap/framework/util/Constants;->FLAG_TO_INSTALL_BOTH:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string v5, "fwFileName"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getDownloadAPKname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    const-string v5, "iapFileName"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getDownloadAPKname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lsafiap/framework/SafFrameworkManager;->startActivity(Landroid/content/Intent;)V

    .line 1355
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lsafiap/framework/SafFrameworkManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1357
    .local v4, "manager":Landroid/app/NotificationManager;
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_PLUGIN:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1358
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_TO_INSTALL_FRAMEWORK:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1359
    .end local v4    # "manager":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 1319
    :cond_3
    if-eqz p1, :cond_4

    .line 1320
    :try_start_1
    sget-object v5, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    const-string v5, "packageName"

    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsafiap/framework/data/SafFrameworkDB;->getDownloadAPKname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1323
    .local v2, "frameworkFileName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1324
    const-string v5, "fwFileName"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1351
    .end local v2    # "frameworkFileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1328
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz p2, :cond_1

    .line 1329
    :try_start_2
    sget-object v5, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL_IAP:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    const-string v5, "packageName"

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsafiap/framework/data/SafFrameworkDB;->getDownloadAPKname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, "IAPFileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1333
    const-string v5, "iapFileName"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1340
    .end local v0    # "IAPFileName":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_1

    .line 1341
    sget-object v5, Lsafiap/framework/util/Constants;->ACTION_TO_INSTALL_IAP:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v5, "packageName"

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsafiap/framework/data/SafFrameworkDB;->getDownloadAPKname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    .restart local v0    # "IAPFileName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1345
    const-string v5, "iapFileName"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public startLogService()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 957
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsafiap/framework/logreport/monitor/handler/LogreportHandler;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 958
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 962
    new-instance v1, Lsafiap/framework/SafFrameworkManager$6;

    invoke-direct {v1, p0}, Lsafiap/framework/SafFrameworkManager$6;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 987
    return-object v0
.end method

.method public startUpdateDialog(ZZZ)V
    .locals 8
    .param p1, "FrameworkHasUpdate"    # Z
    .param p2, "IAPPluginHasUpdate"    # Z
    .param p3, "isMandatoryUpdate"    # Z

    .prologue
    .line 1368
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "starUpdateDialog().FrameworkHasUpdate: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",IAPPluginHasUpdate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isMandatoryUpdate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1369
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lsafiap/framework/SafFrameworkManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1371
    .local v3, "manager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mContext:Landroid/content/Context;

    const-class v6, Lsafiap/framework/ui/UpdateHintActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1372
    .local v4, "updateIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1375
    const/4 v0, 0x0

    .line 1376
    .local v0, "appUpdateType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1377
    .local v2, "frmUpdateType":Ljava/lang/String;
    sget-boolean v5, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-nez v5, :cond_7

    .line 1378
    if-eqz p1, :cond_0

    .line 1379
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsafiap/framework/data/SafFrameworkDB;->getAppUpdateType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1380
    :cond_0
    if-eqz p2, :cond_1

    .line 1381
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsafiap/framework/data/SafFrameworkDB;->getAppUpdateType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    :cond_1
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "frmUpdateType is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",iapUpdateType is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1383
    const-string v5, "apk"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "apk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1384
    const-string v0, "apk"

    .line 1392
    :goto_0
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startUpdateDialog().appUpdateType is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1393
    const-string v5, "appUpdateType"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1394
    const-string v5, "isMandatoryUpdate"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1406
    :goto_1
    :try_start_0
    sget-boolean v5, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-nez v5, :cond_b

    .line 1408
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 1409
    const-string v5, "DownloadItems"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1410
    const-string v5, "fwIsDownloading"

    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lsafiap/framework/SafFrameworkManager;->isPluginDownloading(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1411
    const-string v5, "iapIsDownloading"

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lsafiap/framework/SafFrameworkManager;->isPluginDownloading(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1412
    const-string v5, "fwApkSize"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getAppSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string v5, "iapApkSize"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getAppSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1414
    const-string v5, "iapApkVersion"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getPluginLatestVersion(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1415
    const-string v5, "fwApkVersion"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getPluginLatestVersion(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1417
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK_ERROR:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1418
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_IAP_ERROR:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1420
    const-string v5, "UpdateType"

    const/16 v6, 0x7533

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    :cond_2
    :goto_2
    invoke-virtual {p0, v4}, Lsafiap/framework/SafFrameworkManager;->startActivity(Landroid/content/Intent;)V

    .line 1461
    :cond_3
    return-void

    .line 1385
    :cond_4
    const-string v5, "apk"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v0, :cond_5

    .line 1386
    const-string v0, "apk"

    goto/16 :goto_0

    .line 1387
    :cond_5
    const-string v5, "apk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 1388
    const-string v0, "apk"

    goto/16 :goto_0

    .line 1390
    :cond_6
    const-string v0, "patch"

    goto/16 :goto_0

    .line 1396
    :cond_7
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lsafiap/framework/data/SafFrameworkDB;->getAppUpdateType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    const-string v5, "apk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1398
    const-string v0, "apk"

    .line 1402
    :goto_3
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startUpdateDialog().appUpdateType is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1403
    const-string v5, "appUpdateType"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1400
    :cond_8
    const-string v0, "patch"

    goto :goto_3

    .line 1421
    :cond_9
    if-eqz p1, :cond_a

    .line 1422
    :try_start_1
    const-string v5, "DownloadItems"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1424
    const-string v5, "UpdateType"

    const/16 v6, 0x7531

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    const-string v5, "fwIsDownloading"

    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lsafiap/framework/SafFrameworkManager;->isPluginDownloading(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1426
    const-string v5, "fwApkSize"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getAppSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const-string v5, "fwApkVersion"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getPluginLatestVersion(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1429
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_FRAMEWORK_ERROR:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1457
    :catch_0
    move-exception v1

    .line 1458
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1430
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz p2, :cond_2

    .line 1431
    :try_start_2
    const-string v5, "DownloadItems"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1433
    const-string v5, "UpdateType"

    const/16 v6, 0x7532

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1434
    const-string v5, "iapIsDownloading"

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lsafiap/framework/SafFrameworkManager;->isPluginDownloading(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1435
    const-string v5, "iapApkSize"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getAppSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    const-string v5, "iapApkVersion"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getPluginLatestVersion(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1438
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_IAP_ERROR:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_2

    .line 1442
    :cond_b
    sget-object v5, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "prepare for intent: IAPPluginHasUpdate: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1443
    if-eqz p2, :cond_3

    .line 1444
    const-string v5, "DownloadItems"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1446
    const-string v5, "UpdateType"

    const/16 v6, 0x7532

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    const-string v5, "iapIsDownloading"

    sget-object v6, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {p0, v6}, Lsafiap/framework/SafFrameworkManager;->isPluginDownloading(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1448
    const-string v5, "iapApkSize"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getAppSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string v5, "iapApkVersion"

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager;->mFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    sget-object v7, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsafiap/framework/data/SafFrameworkDB;->getPluginLatestVersion(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1451
    sget v5, Lsafiap/framework/SafFrameworkManager;->ID_UPDATE_DOWNLOADING_IAP_ERROR:I

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public stopLogService(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager;->stopService(Landroid/content/Intent;)Z

    .line 1007
    :cond_0
    return-void
.end method

.method public stopProcess()V
    .locals 3

    .prologue
    .line 1202
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopProcess...start, mIsUnbind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager;->mIsUnbind:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsdownloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager;->mIsdownloading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUpdateChecking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsafiap/framework/SafFrameworkManager;->isUpdateChecking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1203
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1205
    iget-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->mIsUnbind:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->mIsdownloading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsafiap/framework/SafFrameworkManager;->isUpdateChecking:Z

    if-nez v0, :cond_0

    .line 1206
    sget-object v0, Lsafiap/framework/SafFrameworkManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "SafFrameworkManager stop Process!$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager;->mSafCrashLog_Intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lsafiap/framework/SafFrameworkManager;->stopLogService(Landroid/content/Intent;)V

    .line 1208
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1221
    :cond_0
    return-void
.end method
