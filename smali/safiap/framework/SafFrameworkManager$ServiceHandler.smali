.class final Lsafiap/framework/SafFrameworkManager$ServiceHandler;
.super Landroid/os/Handler;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method private constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/SafFrameworkManager$ServiceHandler;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lsafiap/framework/SafFrameworkManager$ServiceHandler;-><init>(Lsafiap/framework/SafFrameworkManager;)V

    return-void
.end method

.method private clearTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearTask...start.packageName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 137
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Handle message: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "action_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "actionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 140
    .local v14, "downloader":Lsafiap/framework/SafFrameworkManager$PluginDownloader;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "msg.what:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " downloader:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " actionName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 141
    if-eqz v3, :cond_0

    if-eqz v14, :cond_0

    .line 142
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 194
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {v14}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getDownloadTask()Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    move-result-object v17

    .line 145
    .local v17, "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    if-eqz v17, :cond_0

    .line 146
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->getPluginInfo()Lsafiap/framework/data/PluginInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/data/PluginInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, "downloadUrl":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 158
    .end local v13    # "downloadUrl":Ljava/lang/String;
    .end local v17    # "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    :pswitch_1
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "install done:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 159
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALL_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v14, v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1, v3}, Lsafiap/framework/SafFrameworkManager;->access$12(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->clearTask(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 163
    .local v16, "reason":I
    const/16 v1, 0x17

    move/from16 v0, v16

    if-eq v0, v1, :cond_1

    .line 164
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "SAFFramework delete files  ...."

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    if-nez v1, :cond_2

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v2

    invoke-static {v1, v2}, Lsafiap/framework/SafFrameworkManager;->access$4(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/data/SafFrameworkDB;)V

    .line 176
    :cond_2
    invoke-virtual {v14}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getDownloadTask()Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->getPluginInfo()Lsafiap/framework/data/PluginInfo;

    move-result-object v15

    .line 179
    .local v15, "info":Lsafiap/framework/data/PluginInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v5

    .line 180
    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getLatestVersion()I

    move-result v6

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->isMandatoryUpdate()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    .line 181
    :goto_1
    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getDigest()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getAppSize()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lsafiap/framework/data/PluginInfo;->getAppUpdateType()Ljava/lang/String;

    move-result-object v12

    .line 179
    invoke-virtual/range {v1 .. v12}, Lsafiap/framework/data/SafFrameworkDB;->updatePluginUpdateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v14}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getCallbackList()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v16

    invoke-static {v1, v2, v3, v0}, Lsafiap/framework/SafFrameworkManager;->access$13(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 180
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 187
    .end local v15    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v16    # "reason":I
    :pswitch_2
    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALL_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v14, v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 188
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->clearTask(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/SafFrameworkManager$ServiceHandler;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v14}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getCallbackList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->access$14(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
