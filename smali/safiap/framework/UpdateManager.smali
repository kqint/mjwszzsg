.class public Lsafiap/framework/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/UpdateManager$CheckApkUpdateTask;,
        Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
    }
.end annotation


# static fields
.field static final FLAG_INSTALL_FAILED:I = 0x7d1

.field static final FLAG_INSTALL_SUCCESSFUL:I = 0x7d0

.field static final MAX_INSTALL_TIME_MILLIS:J = 0xea60L

.field public static final MSG_FINISH_DOWNLOAD:I = 0x3ea

.field public static final MSG_FINISH_INSTALL:I = 0x3ed

.field public static final MSG_START_DOWNLOAD:I = 0x3e9

.field public static final MSG_START_INSTALL:I = 0x3eb

.field public static final MSG_UPDATE_PROGRESS:I = 0x3ee

.field private static TAG:Ljava/lang/String;

.field public static TYPE_ALL:Ljava/lang/String;

.field public static TYPE_AUTH_APK:Ljava/lang/String;

.field public static TYPE_AUTH_FRAMEWORK:Ljava/lang/String;

.field public static TYPE_AUTH_PLUGINS:Ljava/lang/String;

.field public static TYPE_FRAMEWORK:Ljava/lang/String;

.field public static TYPE_PLUGINS:Ljava/lang/String;

.field private static logger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mSafFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "UpdateManager"

    sput-object v0, Lsafiap/framework/UpdateManager;->TAG:Ljava/lang/String;

    .line 94
    const-string v0, "framework"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_FRAMEWORK:Ljava/lang/String;

    .line 95
    const-string v0, "plugins"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    .line 96
    const-string v0, "all"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_ALL:Ljava/lang/String;

    .line 97
    const-string v0, "auth_framework"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_AUTH_FRAMEWORK:Ljava/lang/String;

    .line 98
    const-string v0, "auth_plugins"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_AUTH_PLUGINS:Ljava/lang/String;

    .line 99
    const-string v0, "auth_apk"

    sput-object v0, Lsafiap/framework/UpdateManager;->TYPE_AUTH_APK:Ljava/lang/String;

    .line 418
    const-class v0, Lsafiap/framework/UpdateManager;

    .line 419
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v1, "UpdateManager() ----------------"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lsafiap/framework/UpdateManager;->mAppContext:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/UpdateManager;->mSafFrameworkDB:Lsafiap/framework/data/SafFrameworkDB;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lsafiap/framework/UpdateManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lsafiap/framework/UpdateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static downloadPlugin(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "safiap.framework.ACTION_START_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v1, "pluginname"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 395
    return-void
.end method

.method public static pickPluginUpdateItems(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsafiap/framework/data/PluginInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "localInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lsafiap/framework/data/PluginInfo;>;"
    .local p2, "remoteInfoList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    sget-object v3, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v4, "pickPluginsUpdate...start"

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 228
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v18, "resultList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    new-instance v19, Lsafiap/framework/sdk/SAFFramework;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    .line 232
    .local v19, "safFramework":Lsafiap/framework/sdk/SAFFramework;
    const/16 v20, 0x4e20

    .line 234
    .local v20, "shouldDlPlugin":I
    invoke-static/range {p0 .. p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v2

    .line 236
    .local v2, "db":Lsafiap/framework/data/SafFrameworkDB;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    return-object v18

    .line 236
    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lsafiap/framework/data/PluginInfo;

    .line 237
    .local v17, "remoteInfo":Lsafiap/framework/data/PluginInfo;
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lsafiap/framework/data/PluginInfo;

    .line 238
    .local v16, "localInfo":Lsafiap/framework/data/PluginInfo;
    if-eqz v16, :cond_0

    .line 239
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 242
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v6

    .line 244
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->isMandatoryUpdate()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    .line 245
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getDigest()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppUpdateType()Ljava/lang/String;

    move-result-object v13

    .line 242
    invoke-virtual/range {v2 .. v13}, Lsafiap/framework/data/SafFrameworkDB;->updatePluginUpdateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    .line 247
    .local v14, "id":J
    sget-object v3, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "after update database, affected rows:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",ActionName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 248
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-lez v3, :cond_0

    .line 250
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lsafiap/framework/data/PluginInfo;->getLatestVersion()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 252
    const/16 v3, 0x4e20

    move/from16 v0, v20

    if-ne v3, v0, :cond_2

    .line 253
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lsafiap/framework/UpdateManager;->downloadPlugin(Landroid/content/Context;ILjava/lang/String;)V

    .line 255
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lsafiap/framework/data/PluginInfo;->setLatestVersion(I)V

    .line 256
    sget-object v3, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "localInfo setlatest version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 268
    :cond_3
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 244
    .end local v14    # "id":J
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 259
    .restart local v14    # "id":J
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lsafiap/framework/data/PluginInfo;->getDownloading()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    const/16 v3, 0x4e20

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 263
    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lsafiap/framework/data/PluginInfo;->getAppAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lsafiap/framework/UpdateManager;->downloadPlugin(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public static pickPluginsFromDB(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "installedList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    .local p2, "updateList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 290
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 292
    invoke-static/range {p0 .. p0}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    .line 293
    .local v1, "frameworkDB":Lsafiap/framework/data/SafFrameworkDB;
    invoke-static/range {p0 .. p0}, Lsafiap/framework/SafFrameworkManager;->getFrameworkInfo(Landroid/content/Context;)Lsafiap/framework/data/PluginInfo;

    move-result-object v11

    .line 296
    .local v11, "frameworkInfo":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v1}, Lsafiap/framework/data/SafFrameworkDB;->selectAll()Landroid/database/Cursor;

    move-result-object v9

    .line 298
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 301
    :cond_2
    const-string v6, "cnname"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 300
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "cnname":Ljava/lang/String;
    const-string v6, "action_name"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 302
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "actionName":Ljava/lang/String;
    const-string v6, "package_name"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 304
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "pkgName":Ljava/lang/String;
    const-string v6, "version"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 306
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 309
    .local v16, "version":I
    const-string v6, "version_latest"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 308
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 311
    .local v15, "latestVersion":I
    const-string v6, "isdownloading"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 310
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 314
    .local v13, "isDownloading":I
    const-string v6, "update_option"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 313
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 316
    .local v14, "isMandatory":I
    const-string v6, "description"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 315
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 318
    .local v10, "description":Ljava/lang/String;
    new-instance v12, Lsafiap/framework/data/PluginInfo;

    invoke-direct {v12}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 319
    .local v12, "info":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v12, v8}, Lsafiap/framework/data/PluginInfo;->setAppName(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v12, v3}, Lsafiap/framework/data/PluginInfo;->setAppAction(Ljava/lang/String;)V

    .line 321
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 322
    invoke-virtual {v12, v15}, Lsafiap/framework/data/PluginInfo;->setLatestVersion(I)V

    .line 323
    const/4 v6, 0x1

    if-ne v13, v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v12, v6}, Lsafiap/framework/data/PluginInfo;->setDownloading(Z)V

    .line 324
    const/4 v6, 0x1

    if-ne v14, v6, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v12, v6}, Lsafiap/framework/data/PluginInfo;->setMandatoryUpdate(Z)V

    .line 325
    if-eqz v10, :cond_3

    .line 326
    invoke-virtual {v12, v10}, Lsafiap/framework/data/PluginInfo;->setDescription(Ljava/lang/String;)V

    .line 329
    :cond_3
    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 331
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v12}, Lsafiap/framework/data/PluginInfo;->getLatestVersion()I

    move-result v6

    invoke-virtual {v12}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v7

    if-le v6, v7, :cond_4

    .line 334
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_4
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 299
    if-nez v6, :cond_2

    .line 369
    .end local v3    # "actionName":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v8    # "cnname":Ljava/lang/String;
    .end local v10    # "description":Ljava/lang/String;
    .end local v12    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v13    # "isDownloading":I
    .end local v14    # "isMandatory":I
    .end local v15    # "latestVersion":I
    .end local v16    # "version":I
    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 370
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_6
    sget-object v6, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v7, "finish fetch data from database"

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .restart local v3    # "actionName":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v8    # "cnname":Ljava/lang/String;
    .restart local v10    # "description":Ljava/lang/String;
    .restart local v12    # "info":Lsafiap/framework/data/PluginInfo;
    .restart local v13    # "isDownloading":I
    .restart local v14    # "isMandatory":I
    .restart local v15    # "latestVersion":I
    .restart local v16    # "version":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 324
    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 338
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 340
    .local v5, "installedVersion":I
    if-nez v5, :cond_a

    .line 342
    invoke-virtual {v1, v3}, Lsafiap/framework/data/SafFrameworkDB;->deletePluginsInfo(Ljava/lang/String;)J

    goto :goto_3

    .line 345
    :cond_a
    invoke-virtual {v12}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v6

    if-eq v5, v6, :cond_b

    .line 349
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentCnName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "cnname2":Ljava/lang/String;
    const/4 v6, 0x0

    .line 353
    invoke-static {}, Lsafiap/framework/data/TimeManager;->getNowDate()Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-virtual/range {v1 .. v7}, Lsafiap/framework/data/SafFrameworkDB;->insertPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J

    .line 355
    invoke-virtual {v12, v5}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 358
    .end local v2    # "cnname2":Ljava/lang/String;
    :cond_b
    invoke-virtual {v12}, Lsafiap/framework/data/PluginInfo;->getLatestVersion()I

    move-result v6

    invoke-virtual {v12}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v7

    if-le v6, v7, :cond_c

    .line 359
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_c
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public startQueryApkAuthTask(Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .prologue
    .line 73
    sget-object v1, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startQueryApkAuthTask...start, pkgName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;

    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_AUTH_APK:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1, p2}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;-><init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 80
    .local v0, "task":Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lsafiap/framework/util/Constants;->URL_CHECK_AUTH:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public startQueryAuthTask(Ljava/lang/String;Ljava/util/List;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;",
            "Lsafiap/framework/UpdateManager$OnGotUpdateListListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    sget-object v1, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "startQueryAuthTask...start"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;-><init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Ljava/util/List;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 69
    .local v0, "task":Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lsafiap/framework/util/Constants;->URL_CHECK_AUTH:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public startQueryFrameworkUpdateTask(Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 4
    .param p1, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .prologue
    .line 54
    sget-object v1, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "startQueryFrameworkUpdateTask...start"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;

    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_FRAMEWORK:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;-><init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 57
    .local v0, "task":Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lsafiap/framework/util/Constants;->URL_CHECK_UPDATE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method public startQueryPluginUpdateTask(Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 4
    .param p1, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .prologue
    .line 47
    sget-object v1, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "startQueryPluginUpdateTask...start"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;

    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;-><init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 50
    .local v0, "task":Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lsafiap/framework/util/Constants;->URL_CHECK_UPDATE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method public startQueryUpdateTask(Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 4
    .param p1, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .prologue
    .line 40
    sget-object v1, Lsafiap/framework/UpdateManager;->logger:Lsafiap/framework/util/MyLogger;

    const-string v2, "startQueryAllUpdateTask...start"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;

    sget-object v1, Lsafiap/framework/UpdateManager;->TYPE_ALL:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;-><init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V

    .line 43
    .local v0, "task":Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lsafiap/framework/util/Constants;->URL_CHECK_UPDATE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method
