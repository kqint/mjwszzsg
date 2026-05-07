.class Lsafiap/framework/SafFrameworkManager$5;
.super Ljava/lang/Object;
.source "SafFrameworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/SafFrameworkManager;->startDownload(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$safiap$framework$SafFrameworkManager$DownloaderState:[I


# instance fields
.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;

.field private final synthetic val$actionName:Ljava/lang/String;

.field private final synthetic val$installLater:Z

.field private final synthetic val$isNewTask:Z

.field private final synthetic val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;


# direct methods
.method static synthetic $SWITCH_TABLE$safiap$framework$SafFrameworkManager$DownloaderState()[I
    .locals 3

    .prologue
    .line 824
    sget-object v0, Lsafiap/framework/SafFrameworkManager$5;->$SWITCH_TABLE$safiap$framework$SafFrameworkManager$DownloaderState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->values()[Lsafiap/framework/SafFrameworkManager$DownloaderState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOADING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALLING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALL_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->PENDING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->QUERYING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lsafiap/framework/SafFrameworkManager$5;->$SWITCH_TABLE$safiap$framework$SafFrameworkManager$DownloaderState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lsafiap/framework/SafFrameworkManager;ZLjava/lang/String;Lsafiap/framework/sdk/ISAFFrameworkCallback;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$5;->this$0:Lsafiap/framework/SafFrameworkManager;

    iput-boolean p2, p0, Lsafiap/framework/SafFrameworkManager$5;->val$isNewTask:Z

    iput-object p3, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    iput-object p4, p0, Lsafiap/framework/SafFrameworkManager$5;->val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    iput-boolean p5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$installLater:Z

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 827
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v5}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 828
    iget-boolean v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$isNewTask:Z

    if-nez v5, :cond_2

    .line 830
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v5}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 832
    .local v0, "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    if-eqz v5, :cond_0

    .line 833
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "listener != null ..., downloader.state: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getState()Lsafiap/framework/SafFrameworkManager$DownloaderState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lsafiap/framework/SafFrameworkManager$5;->$SWITCH_TABLE$safiap$framework$SafFrameworkManager$DownloaderState()[I

    move-result-object v5

    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getState()Lsafiap/framework/SafFrameworkManager$DownloaderState;

    move-result-object v6

    invoke-virtual {v6}, Lsafiap/framework/SafFrameworkManager$DownloaderState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 856
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-virtual {v0, v5}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->addCallback(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z

    .line 878
    .end local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    :cond_1
    :goto_1
    return-void

    .line 838
    .restart local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    :pswitch_1
    :try_start_0
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onPrepareDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v1

    .line 840
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$8()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SAF-A Exception:520007"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 846
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lsafiap/framework/sdk/ISAFFrameworkCallback;->onStartInstall(Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 847
    :catch_1
    move-exception v1

    .line 848
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$8()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SAF-A Exception:520009"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 860
    .end local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v5}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 861
    .restart local v0    # "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v5}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    invoke-static {v5, v6}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 862
    .local v3, "mPluginVersion":I
    new-instance v2, Lsafiap/framework/data/PluginInfo;

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$actionName:Ljava/lang/String;

    invoke-direct {v2, v5, v3}, Lsafiap/framework/data/PluginInfo;-><init>(Ljava/lang/String;I)V

    .line 863
    .local v2, "info":Lsafiap/framework/data/PluginInfo;
    iget-boolean v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$installLater:Z

    invoke-virtual {v2, v5}, Lsafiap/framework/data/PluginInfo;->setInstallLaterEnabled(Z)V

    .line 864
    new-instance v4, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {v4, v5, v2, v7}, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;-><init>(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/data/PluginInfo;Z)V

    .line 867
    .local v4, "task":Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0, v4}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setQueryTask(Lsafiap/framework/SafFrameworkManager$PluginQueryTask;)V

    .line 869
    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$5;->val$listener:Lsafiap/framework/sdk/ISAFFrameworkCallback;

    invoke-virtual {v0, v5}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->addCallback(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z

    .line 870
    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lsafiap/framework/util/Constants;->URL_CHECK_UPDATE:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 834
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
