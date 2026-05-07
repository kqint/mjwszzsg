.class Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;
.super Lsafiap/framework/sdk/task/ApkDownloadTask;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginDownloadTask"
.end annotation


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
.method public constructor <init>(Lsafiap/framework/SafFrameworkManager;Landroid/content/Context;Lsafiap/framework/data/PluginInfo;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lsafiap/framework/data/PluginInfo;
    .param p4, "save2External"    # Z

    .prologue
    .line 337
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 338
    invoke-virtual {p3}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {p3}, Lsafiap/framework/data/PluginInfo;->getAppUpdateType()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lsafiap/framework/sdk/task/ApkDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    .line 339
    iput-object p3, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    .line 340
    iput-boolean p4, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mSaveToExternalStorage:Z

    .line 341
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {p1}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    .line 343
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->getCallbackList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 353
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOADING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v0, v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 356
    :cond_0
    invoke-super {p0, p1}, Lsafiap/framework/sdk/task/ApkDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginInfo()Lsafiap/framework/data/PluginInfo;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 474
    invoke-super {p0}, Lsafiap/framework/sdk/task/ApkDownloadTask;->onCancelled()V

    .line 475
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    sget-object v1, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual {v0, v1}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    .line 479
    const/16 v3, 0xd

    .line 478
    invoke-static {v0, v1, v2, v3}, Lsafiap/framework/SafFrameworkManager;->access$15(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 481
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsafiap/framework/SafFrameworkManager;->access$17(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 482
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v0}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    .line 483
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 26
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "PluginDownloadTask.onPostExecute():result:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    move-object/from16 v21, v0

    sget-object v22, Lsafiap/framework/SafFrameworkManager$DownloaderState;->DOWNLOAD_FINISHED:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 366
    if-eqz p1, :cond_7

    invoke-static/range {p1 .. p1}, Lsafiap/framework/sdk/util/PackageUtil;->isValidFile(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mSaveToExternalStorage:Z

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v8

    .line 368
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 369
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "downloaded file path:  "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 371
    const/16 v24, 0xa

    .line 370
    invoke-static/range {v21 .. v24}, Lsafiap/framework/SafFrameworkManager;->access$15(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 374
    const-string v21, "patch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lsafiap/framework/data/PluginInfo;->getAppUpdateType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageNameByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 376
    .local v16, "packageName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 377
    .local v18, "patchFilePath":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "destDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "bin"

    const-string v23, "bspatch"

    const-string v24, "bspatch"

    invoke-static/range {v21 .. v24}, Lsafiap/framework/sdk/util/PackageUtil;->installAssetBin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "bspatchPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1, v6}, Lsafiap/framework/sdk/util/PackageUtil;->copyPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 380
    .local v15, "oldFilePath":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "before patch().bspatchPath:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",oldFilePath: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 381
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 382
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".new.apk"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 383
    .local v13, "newFilePath":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ".new.apk"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, "newFileName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v5, v15, v13, v0}, Lsafiap/framework/sdk/util/PackageUtil;->patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 386
    .local v7, "execCode":I
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-eq v7, v0, :cond_0

    .line 387
    move-object/from16 p1, v12

    .line 389
    :cond_0
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "after patch().execCode:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ",result: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 392
    .end local v7    # "execCode":I
    .end local v12    # "newFileName":Ljava/lang/String;
    .end local v13    # "newFilePath":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v8

    .line 393
    .local v17, "patchFile":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v14, "oldFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 396
    :cond_2
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 399
    .end local v5    # "bspatchPath":Ljava/lang/String;
    .end local v6    # "destDir":Ljava/lang/String;
    .end local v14    # "oldFile":Ljava/io/File;
    .end local v15    # "oldFilePath":Ljava/lang/String;
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "patchFile":Ljava/io/File;
    .end local v18    # "patchFilePath":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lsafiap/framework/SafFrameworkManager;->access$16(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v19

    .line 400
    .local v19, "timeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mDownloader:Lsafiap/framework/SafFrameworkManager$PluginDownloader;

    move-object/from16 v21, v0

    sget-object v22, Lsafiap/framework/SafFrameworkManager$DownloaderState;->INSTALLING:Lsafiap/framework/SafFrameworkManager$DownloaderState;

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/SafFrameworkManager$PluginDownloader;->setState(Lsafiap/framework/SafFrameworkManager$DownloaderState;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v9

    .line 403
    .local v9, "fileToInstall":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lsafiap/framework/util/VerifyApk;->checkDigests(Ljava/lang/String;)Z

    move-result v11

    .line 404
    .local v11, "isValid":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lsafiap/framework/SafFrameworkManager;->access$17(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 406
    if-eqz v11, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lsafiap/framework/SafFrameworkManager;->access$18(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lsafiap/framework/data/PluginInfo;->isInstallLaterEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 411
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v21

    const-string v22, "Plugin is required to be installed later."

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 414
    const/4 v10, 0x0

    .line 415
    .local v10, "hint":Ljava/lang/String;
    sget-object v21, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 416
    const-string v10, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    .line 420
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v10}, Lsafiap/framework/SafFrameworkManager;->sendIntallNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    .line 458
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileToInstall":Ljava/io/File;
    .end local v10    # "hint":Ljava/lang/String;
    .end local v11    # "isValid":Z
    .end local v19    # "timeout":J
    :goto_1
    return-void

    .line 418
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileToInstall":Ljava/io/File;
    .restart local v10    # "hint":Ljava/lang/String;
    .restart local v11    # "isValid":Z
    .restart local v19    # "timeout":J
    :cond_4
    const-string v10, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u65b0\u7248\u672c\u5df2\u7ecf\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    goto :goto_0

    .line 429
    .end local v10    # "hint":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Lsafiap/framework/SafFrameworkManager;->access$18(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 432
    const/16 v24, 0xb

    .line 431
    invoke-static/range {v21 .. v24}, Lsafiap/framework/SafFrameworkManager;->access$15(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 435
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    goto :goto_1

    .line 438
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileToInstall":Ljava/io/File;
    .end local v11    # "isValid":Z
    .end local v19    # "timeout":J
    :cond_7
    if-eqz p1, :cond_8

    const-string v21, ".tmp"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 440
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v21

    const-string v22, "if result end with .tmp , just return."

    invoke-virtual/range {v21 .. v22}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Lsafiap/framework/SafFrameworkManager;->access$18(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lsafiap/framework/SafFrameworkManager;->access$17(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    goto/16 :goto_1

    .line 451
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->access$11(Lsafiap/framework/SafFrameworkManager;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    invoke-static/range {v21 .. v25}, Lsafiap/framework/SafFrameworkManager;->access$18(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;Ljava/lang/String;II)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 454
    const/16 v24, 0xb

    .line 453
    invoke-static/range {v21 .. v24}, Lsafiap/framework/SafFrameworkManager;->access$15(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lsafiap/framework/SafFrameworkManager;->access$17(Lsafiap/framework/SafFrameworkManager;Z)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lsafiap/framework/SafFrameworkManager;->stopProcess()V

    goto/16 :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    .line 462
    invoke-virtual {p0}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mInfo:Lsafiap/framework/data/PluginInfo;

    invoke-virtual {v2}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is cancelled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    array-length v0, p1

    if-le v0, v4, :cond_0

    .line 466
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->this$0:Lsafiap/framework/SafFrameworkManager;

    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mCallbackList:Ljava/util/List;

    iget-object v2, p0, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->mActionName:Ljava/lang/String;

    .line 467
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 466
    invoke-static {v0, v1, v2, v3, v4}, Lsafiap/framework/SafFrameworkManager;->access$19(Lsafiap/framework/SafFrameworkManager;Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsafiap/framework/SafFrameworkManager$PluginDownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
