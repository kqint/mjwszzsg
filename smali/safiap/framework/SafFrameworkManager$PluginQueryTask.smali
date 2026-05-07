.class Lsafiap/framework/SafFrameworkManager$PluginQueryTask;
.super Lsafiap/framework/sdk/task/QueryTask;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginQueryTask"
.end annotation


# static fields
.field private static final PARAM_AVP:Ljava/lang/String; = "avp"


# instance fields
.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/sdk/ISAFFrameworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

.field private mInfo:Lsafiap/framework/data/PluginInfo;

.field private mSaveToExternalStorage:Z

.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/data/PluginInfo;Z)V
    .locals 2
    .param p2, "info"    # Lsafiap/framework/data/PluginInfo;
    .param p3, "save2External"    # Z

    .prologue
    .line 498
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 499
    invoke-virtual {p2}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsafiap/framework/sdk/task/QueryTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    .line 500
    iput-object p2, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    .line 501
    iput-boolean p3, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mSaveToExternalStorage:Z

    .line 502
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->QUERYING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v0, v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 524
    :cond_0
    invoke-super {p0, p1}, Lsafiap/framework/sdk/task/QueryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 18
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 530
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "PluginQueryTask.onPostExecute().result: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 532
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v7, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    :try_start_0
    const-string v13, "["

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 536
    .local v5, "idx":I
    new-instance v1, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v4, v13, :cond_0

    .line 544
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 545
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsafiap/framework/data/PluginInfo;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 582
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v7    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsafiap/framework/data/PluginInfo;>;"
    :goto_2
    return-void

    .line 538
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v5    # "idx":I
    .restart local v7    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    :cond_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 539
    .local v10, "object":Lorg/json/JSONObject;
    invoke-static {v10}, Lsafiap/framework/data/PluginInfo;->createFromJson(Lorg/json/JSONObject;)Lsafiap/framework/data/PluginInfo;

    move-result-object v6

    .line 540
    .local v6, "info":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    .end local v6    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v10    # "object":Lorg/json/JSONObject;
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsafiap/framework/data/PluginInfo;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsafiap/framework/data/PluginInfo;

    .line 548
    .local v11, "plugin":Lsafiap/framework/data/PluginInfo;
    new-instance v12, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v14}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mSaveToExternalStorage:Z

    invoke-direct {v12, v13, v14, v11, v15}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;-><init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/data/PluginInfo;Z)V

    .line 549
    .local v12, "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    invoke-virtual {v12}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->getPluginInfo()Lsafiap/framework/data/PluginInfo;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lsafiap/framework/data/PluginInfo;->setInstallLaterEnabled(Z)V

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    invoke-virtual {v13, v12}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setDownloadTask(Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$21(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 553
    .local v9, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v2, "data":Landroid/os/Bundle;
    const-string v13, "action_name"

    invoke-virtual {v11}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$21(Lsafiap/framework/SafFrameworkManager;)Landroid/os/Handler;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 562
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v5    # "idx":I
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsafiap/framework/data/PluginInfo;>;"
    .end local v9    # "msg":Landroid/os/Message;
    .end local v11    # "plugin":Lsafiap/framework/data/PluginInfo;
    .end local v12    # "task":Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
    :catch_0
    move-exception v3

    .line 563
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$8()Ljava/lang/String;

    move-result-object v13

    const-string v14, "SAF-A Exception:530001"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 573
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    sget-object v14, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v13, v14}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mTaskName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lsafiap/framework/SafFrameworkManager;->access$18(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lsafiap/framework/SafFrameworkManager;->access$17(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mTaskName:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mCallbackList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mTaskName:Ljava/lang/String;

    .line 581
    const/16 v16, 0xb

    .line 580
    invoke-static/range {v13 .. v16}, Lsafiap/framework/SafFrameworkManager;->access$15(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 506
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mTaskName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mTaskName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    iput-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 508
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    invoke-virtual {v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getCallbackList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mCallbackList:Ljava/util/List;

    .line 510
    :cond_0
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mCallbackList:Ljava/util/List;

    iget-object v3, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mTaskName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->access$20(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    invoke-static {v1, v2}, Lsafiap/framework/data/PluginInfo;->getPluginAVPJson(Landroid/content/Context;Lsafiap/framework/data/PluginInfo;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "json":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginQueryTask.onPreExecute().json: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    const-string v1, "avp"

    invoke-virtual {p0, v1, v0}, Lsafiap/framework/SafFrameworkManager$PluginQueryTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_1
    return-void
.end method
