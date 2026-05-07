.class Lsafiap/framework/SafFrameworkManager$PluginDownloader;
.super Lsafiap/framework/Downloader;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginDownloader"
.end annotation


# instance fields
.field private callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private downloadTask:Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

.field private pluginName:Ljava/lang/String;

.field private queryTask:Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

.field private state:Lsafiap/framework/SafFrameworkManager$DownloaderState;

.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 602
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Lsafiap/framework/Downloader;-><init>()V

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->callbackList:Ljava/util/List;

    .line 603
    iput-object p2, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->pluginName:Ljava/lang/String;

    .line 604
    sget-object v0, Lsafiap/framework/SafFrameworkManager$DownloaderState;->PENDING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->state:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 605
    return-void
.end method


# virtual methods
.method public addCallback(Lsafiap/framework/sdk/ISAFFrameworkCallback;)Z
    .locals 1
    .param p1, "callback"    # Lsafiap/framework/sdk/ISAFFrameworkCallback;

    .prologue
    .line 646
    if-eqz p1, :cond_0

    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->callbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallbackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->callbackList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadTask()Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->downloadTask:Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryTask()Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->queryTask:Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

    return-object v0
.end method

.method public getState()Lsafiap/framework/SafFrameworkManager$DownloaderState;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->state:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    return-object v0
.end method

.method public setDownloadTask(Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;)V
    .locals 0
    .param p1, "downloadTask"    # Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    .prologue
    .line 632
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->downloadTask:Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    .line 633
    return-void
.end method

.method public setQueryTask(Lsafiap/framework/SafFrameworkManager$PluginQueryTask;)V
    .locals 0
    .param p1, "queryTask"    # Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

    .prologue
    .line 619
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->queryTask:Lsafiap/framework/SafFrameworkManager$PluginQueryTask;

    .line 620
    return-void
.end method

.method public setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V
    .locals 0
    .param p1, "state"    # Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .prologue
    .line 670
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->state:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    .line 671
    return-void
.end method
