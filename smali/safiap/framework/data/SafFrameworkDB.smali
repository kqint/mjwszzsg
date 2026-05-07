.class public final Lsafiap/framework/data/SafFrameworkDB;
.super Ljava/lang/Object;
.source "SafFrameworkDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;
    }
.end annotation


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "action_name"

.field public static final APP_UPDATE_SIZE:Ljava/lang/String; = "app_size"

.field public static final APP_UPDATE_TYPE:Ljava/lang/String; = "app_update_type"

.field public static final CN_NAME:Ljava/lang/String; = "cnname"

.field public static final DIGEST:Ljava/lang/String; = "digest"

.field public static final DOWNLOADEDFILENAME:Ljava/lang/String; = "downloadedfile_name"

.field public static final DOWNLOADEDFILEVERSION:Ljava/lang/String; = "downloadedfile_version"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ISDOWNLOADING:Ljava/lang/String; = "isdownloading"

.field public static final ISDOWNLOADING_FALSE:I = 0x0

.field public static final ISDOWNLOADING_INVALID:I = -0x1

.field public static final ISDOWNLOADING_NOT_START:I = 0x2

.field public static final ISDOWNLOADING_TRUE:I = 0x1

.field public static final ISINSTALLING:Ljava/lang/String; = "isinstalling"

.field public static final LASTUPDATE:Ljava/lang/String; = "lastupdateVERSION"

.field public static final MANDATORY_UPDATE_FALSE:I = 0x0

.field public static final MANDATORY_UPDATE_TRUE:I = 0x1

.field public static final NEEDSAFE:Ljava/lang/String; = "needsafe"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TABLE_NAME_PLUGININFO:Ljava/lang/String; = "PluginInfo"

.field private static final TAG:Ljava/lang/String; = "SafFrameworkDB"

.field public static final UPDATE_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final UPDATE_OPTION:Ljava/lang/String; = "update_option"

.field public static final UPDATE_URL:Ljava/lang/String; = "UpdateURL"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final VERSION_LATEST:Ljava/lang/String; = "version_latest"

.field private static sLogger:Lsafiap/framework/util/MyLogger;

.field private static sSafFrameworkDb:Lsafiap/framework/data/SafFrameworkDB;

.field private static sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lsafiap/framework/data/SafFrameworkDB;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDb:Lsafiap/framework/data/SafFrameworkDB;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v1, "Get in SafFrameworkDB..."

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/data/SafFrameworkDB;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-class v1, Lsafiap/framework/data/SafFrameworkDB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get in SafFrameworkDB instance ...mSafFrameworkDB: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDb:Lsafiap/framework/data/SafFrameworkDB;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 47
    :goto_0
    monitor-exit v1

    return-object v0

    .line 43
    :cond_0
    :try_start_1
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDb:Lsafiap/framework/data/SafFrameworkDB;

    if-nez v0, :cond_1

    .line 44
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "make a new SafFrameworkDB object..."

    invoke-virtual {v0, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDb:Lsafiap/framework/data/SafFrameworkDB;

    .line 47
    :cond_1
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDb:Lsafiap/framework/data/SafFrameworkDB;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private selectAll(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 946
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 951
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectAll(actionName):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 952
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 953
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 954
    const/4 v7, 0x0

    .line 952
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 959
    :goto_0
    return-object v8

    .line 956
    :catch_0
    move-exception v9

    .line 957
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550011"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePluginVersion(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "latestVersion"    # I
    .param p4, "updateOption"    # I
    .param p5, "appSize"    # Ljava/lang/String;
    .param p6, "updateType"    # Ljava/lang/String;

    .prologue
    .line 403
    sget-object v5, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v5, :cond_0

    .line 404
    new-instance v5, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v5, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v5, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 407
    :cond_0
    :try_start_0
    sget-object v5, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updatePluginVersion().actionName:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 408
    const-string v7, ",version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 407
    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    if-lez p3, :cond_3

    .line 412
    const-string v5, "version_latest"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    if-ltz p4, :cond_1

    .line 415
    const-string v5, "update_option"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    :cond_1
    if-eqz p5, :cond_2

    .line 418
    const-string v5, "app_size"

    invoke-virtual {v0, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_2
    if-eqz p6, :cond_3

    .line 421
    const-string v5, "app_update_type"

    invoke-virtual {v0, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action_name =\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "where":Ljava/lang/String;
    sget-object v5, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v6, "PluginInfo"

    .line 425
    const/4 v7, 0x0

    .line 424
    invoke-static {v5, v6, v0, v4, v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 430
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SafFrameworkDB"

    const-string v6, "SAF-A Exception:550003"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public checkDownloadedApk(Ljava/lang/String;)I
    .locals 21
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/16 v18, -0x1

    .line 238
    :goto_0
    return v18

    .line 165
    :cond_0
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v1, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 168
    :cond_1
    const/16 v18, -0x1

    .line 170
    .local v18, "result":I
    :try_start_0
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v2, "PluginInfo"

    .line 171
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action_name = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 172
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 170
    invoke-static/range {v1 .. v8}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 173
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    const-string v1, "downloadedfile_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 175
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, "fileName":Ljava/lang/String;
    const-string v1, "version"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 179
    .local v19, "version":I
    const-string v1, "version_latest"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 178
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 181
    .local v17, "latestVersion":I
    const-string v1, "downloadedfile_version"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 180
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 184
    .local v11, "downloadedFileVersion":I
    const-string v1, "isdownloading"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 185
    .local v15, "isDownloading":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    .line 186
    const/4 v2, 0x1

    .line 185
    invoke-static {v1, v14, v2}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v13

    .line 187
    .local v13, "file":Ljava/io/File;
    if-nez v15, :cond_5

    if-eqz v13, :cond_5

    .line 188
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v16, 0x1

    .line 189
    .local v16, "isFileReady":Z
    :goto_1
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkDownloadedApk().actionName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 190
    const-string v3, ",downlowdedFileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isDownloading:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 193
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",latestVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",downloadedFileVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 196
    move/from16 v0, v17

    if-le v0, v11, :cond_2

    .line 198
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "checkDownloadedApk(1).clear downloadFileVersion & downlaodFileName info"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 200
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v1, "downloadedfile_name"

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "downloadedfile_version"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action_name =\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 205
    .local v20, "where":Ljava/lang/String;
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v2, "PluginInfo"

    .line 206
    const/4 v3, 0x0

    .line 205
    move-object/from16 v0, v20

    invoke-static {v1, v2, v10, v0, v3}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    .line 207
    const/16 v18, -0x1

    .line 209
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v20    # "where":Ljava/lang/String;
    :cond_2
    move/from16 v0, v17

    if-ne v0, v11, :cond_3

    .line 210
    move/from16 v0, v19

    if-le v11, v0, :cond_3

    .line 211
    if-eqz v16, :cond_6

    .line 212
    move/from16 v18, v11

    .line 228
    .end local v11    # "downloadedFileVersion":I
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "isDownloading":I
    .end local v16    # "isFileReady":Z
    .end local v17    # "latestVersion":I
    .end local v19    # "version":I
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_4
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkDownloadedApk().return:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 234
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v12

    .line 235
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "SafFrameworkDB"

    const-string v2, "SAF-A Exception:550013"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 188
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "downloadedFileVersion":I
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "fileName":Ljava/lang/String;
    .restart local v15    # "isDownloading":I
    .restart local v17    # "latestVersion":I
    .restart local v19    # "version":I
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 215
    .restart local v16    # "isFileReady":Z
    :cond_6
    :try_start_1
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v2, "checkDownloadedApk(2).clear downloadFileVersion & downlaodFileName info"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 217
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .restart local v10    # "cv":Landroid/content/ContentValues;
    const-string v1, "downloadedfile_name"

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "downloadedfile_version"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action_name =\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 222
    .restart local v20    # "where":Ljava/lang/String;
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v2, "PluginInfo"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v1, v2, v10, v0, v3}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    const/16 v18, -0x1

    goto :goto_2
.end method

.method public checkMandatoryUpdate(Ljava/lang/String;)Z
    .locals 14
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 1040
    const/4 v13, 0x0

    .line 1041
    .local v13, "versionLatest":I
    const/4 v12, 0x0

    .line 1042
    .local v12, "version":I
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 1043
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 1045
    :cond_0
    const/4 v10, 0x0

    .line 1047
    .local v10, "result":Z
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 1048
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1049
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1047
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1050
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isHasUpdate().name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1052
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1053
    const-string v0, "version_latest"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1054
    const-string v0, "version"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1055
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "versionLatest is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1056
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1059
    const-string v0, "update_option"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1058
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1060
    .local v11, "updateOption":I
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginMandatoryUpdateCheck(). result :("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1061
    if-le v13, v12, :cond_1

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    .line 1062
    const/4 v10, 0x1

    .line 1066
    .end local v11    # "updateOption":I
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1067
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v10

    .line 1073
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 1070
    :catch_0
    move-exception v9

    .line 1071
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550013"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1073
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkMandatoryUpdate(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 1085
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 1088
    :cond_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginMandatoryUpdateCheck(). actionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1090
    const/4 v10, 0x0

    .line 1092
    .local v10, "result":Z
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 1093
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1094
    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1095
    const-string v4, "version_latest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1096
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1092
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1097
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    const-string v0, "update_option"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1099
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1102
    .local v11, "updateOption":I
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginMandatoryUpdateCheck(). result :("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1103
    const/4 v0, 0x1

    if-ne v0, v11, :cond_1

    .line 1104
    const/4 v10, 0x1

    .line 1108
    .end local v11    # "updateOption":I
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1109
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v10

    .line 1111
    :catch_0
    move-exception v9

    .line 1112
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550014"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1115
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public deletePluginsInfo(Ljava/lang/String;)J
    .locals 7
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    .line 1163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-wide v1

    .line 1167
    :cond_1
    sget-object v3, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v3, :cond_2

    .line 1168
    new-instance v3, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v3, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v3, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 1171
    :cond_2
    sget-object v3, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1176
    :try_start_0
    sget-object v3, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v4, "PluginInfo"

    .line 1177
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action_name=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1176
    invoke-static {v3, v4, v5, v6}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$3(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1178
    .local v1, "result":J
    goto :goto_0

    .line 1179
    .end local v1    # "result":J
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SafFrameworkDB"

    const-string v4, "SAF-A Exception:550017"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public frameworkHasUpdate()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 837
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 838
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 840
    :cond_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 841
    const-string v1, "PluginInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    sget-object v4, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 843
    const-string v7, "version_latest desc"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 840
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 846
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    const-string v0, "version_latest"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 847
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 849
    .local v9, "latestVersion":I
    const-string v0, "version"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 850
    .local v10, "version":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 851
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Framework has update version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    const-string v2, " and latest version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 853
    if-le v9, v10, :cond_1

    :goto_0
    return v11

    :cond_1
    move v11, v12

    goto :goto_0

    .line 855
    .end local v9    # "latestVersion":I
    .end local v10    # "version":I
    :cond_2
    if-eqz v8, :cond_4

    move v0, v11

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    and-int/2addr v0, v12

    if-eqz v0, :cond_3

    .line 856
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 859
    const-string v1, "Framework info table is not correctly initiated"

    .line 858
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v12

    .line 855
    goto :goto_1

    :cond_5
    move v12, v11

    goto :goto_2
.end method

.method public frameworkHasUpdate(I)Z
    .locals 10
    .param p1, "currentVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 812
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 815
    :cond_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 816
    const-string v1, "PluginInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    sget-object v4, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 818
    const-string v7, "version_latest desc"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 815
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 821
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    const-string v0, "version_latest"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 822
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 824
    .local v9, "latestVersion":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 825
    if-le v9, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 827
    .end local v9    # "latestVersion":I
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 828
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_3
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550008"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Framework info table is not correctly initiated"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 622
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 630
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 629
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 631
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    const-string v0, "digest"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 632
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "encryptDigest":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 635
    invoke-static {v10}, Lsafiap/framework/sdk/util/AuthUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "encryptDigest":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 637
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 638
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v11

    .line 640
    goto :goto_0

    .line 642
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 643
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 647
    goto :goto_0
.end method

.method public getAppSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 658
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 666
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "app_size"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 665
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 668
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 669
    .local v8, "appSizeResult":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    const-string v0, "app_size"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 676
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 685
    .end local v8    # "appSizeResult":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v8

    .line 672
    .restart local v8    # "appSizeResult":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 680
    .end local v8    # "appSizeResult":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 681
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v11

    .line 685
    goto :goto_1
.end method

.method public getAppUpdateType(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 734
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 741
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 740
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 743
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 744
    .local v8, "appUpdateType":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    const-string v0, "app_update_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 745
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 753
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 763
    .end local v8    # "appUpdateType":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v8

    .line 748
    .restart local v8    # "appUpdateType":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v8    # "appUpdateType":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 759
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v11

    .line 763
    goto :goto_1
.end method

.method public getDownloadAPKname(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 249
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get downloaded apk file path for actionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-object v10

    .line 254
    :cond_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 257
    :cond_1
    const/4 v10, 0x0

    .line 259
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 260
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 261
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 259
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 262
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDownloadAPKname().("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    const-string v2, ") and fileName is:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    const-string v2, "downloadedfile_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 266
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string v2, " )."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 269
    const-string v0, "downloadedfile_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 272
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDownloadAPKname().result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v9

    .line 276
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550013"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getFrameworkInfoV2()Landroid/database/Cursor;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 868
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 871
    :cond_0
    const/4 v9, 0x0

    .line 873
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 875
    sget-object v4, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 874
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 876
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 873
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 877
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v9

    .line 915
    :goto_0
    return-object v0

    .line 882
    :cond_1
    iget-object v0, p0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsafiap/framework/sdk/util/PackageUtil;->getFrameworkVersion(Landroid/content/Context;)I

    move-result v8

    .line 883
    .local v8, "Frameworkversion":I
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check name and inseart ..and Frameworkversion : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 885
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "cnname"

    const-string v1, "SAF\u80fd\u529b\u7ba1\u7406\u6846\u67b6"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v0, "action_name"

    sget-object v1, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v0, "version"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v0, "description"

    const-string v1, "Latest version for test"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v0, "version_latest"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v0, "update_option"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v10}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$2(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 899
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    sget-object v4, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 900
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 899
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 903
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 904
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v9

    .line 905
    goto/16 :goto_0

    .line 909
    .end local v8    # "Frameworkversion":I
    .end local v10    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 910
    .local v11, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550009"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v12

    .line 913
    goto/16 :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "Frameworkversion":I
    .restart local v10    # "cv":Landroid/content/ContentValues;
    :cond_2
    move-object v0, v9

    .line 915
    goto/16 :goto_0
.end method

.method public getPluginLatestVersion(Ljava/lang/String;)I
    .locals 11
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 696
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action_name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "where":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 704
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "version_latest"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 703
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 706
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 707
    .local v8, "appLatestVersion":I
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    const-string v0, "version_latest"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 714
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 723
    .end local v8    # "appLatestVersion":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 710
    .restart local v8    # "appLatestVersion":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    .end local v8    # "appLatestVersion":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 719
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550007(query)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public hasPlugininfo(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 969
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 976
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 977
    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 979
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 980
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 977
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 981
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 982
    .local v10, "result":Z
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 983
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur.getcout() :("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 984
    const/4 v10, 0x1

    .line 987
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 988
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "result":Z
    :cond_2
    :goto_0
    return v10

    .line 992
    :catch_0
    move-exception v9

    .line 993
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550012"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 995
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public insertPluginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)J
    .locals 18
    .param p1, "cnname"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "needsafe"    # I
    .param p6, "lastupdate"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v15, :cond_0

    .line 296
    new-instance v15, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v15, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 299
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lsafiap/framework/data/SafFrameworkDB;->selectAll(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 300
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-lez v15, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 302
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "insertPluginInfo().update plugin:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 303
    const-string v17, ",version:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". and return..."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 302
    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 304
    const-wide/16 v10, 0x0

    .line 306
    .local v10, "updateResult":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v15, "version"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v0, p4

    if-eq v15, v0, :cond_1

    .line 311
    const-string v15, "version"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    :cond_1
    invoke-static/range {p2 .. p2}, Lsafiap/framework/sdk/util/PackageUtil;->getApkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "downloadedFileName":Ljava/lang/String;
    const-string v15, "version_latest"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 317
    .local v13, "versionLatest":I
    const-string v15, "downloadedfile_version"

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 319
    .local v4, "downloadFileVersion":I
    invoke-static {v6}, Lsafiap/framework/sdk/util/PackageUtil;->isValidFile(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v6, v0}, Lsafiap/framework/sdk/util/PackageUtil;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    .line 321
    .local v5, "downloadedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Lsafiap/framework/sdk/util/PackageUtil;->parsePriority(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 323
    .local v12, "versionFromFile":I
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "after parsepriority, downloaded version: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", currentVersion: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 325
    if-lez v12, :cond_3

    move/from16 v0, p4

    if-le v12, v0, :cond_3

    if-lt v12, v13, :cond_3

    .line 326
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v16, "start to update database"

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 328
    if-le v12, v13, :cond_2

    .line 329
    const-string v15, "version_latest"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    :cond_2
    if-le v12, v4, :cond_3

    .line 334
    const-string v15, "downloadedfile_version"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v15, "downloadedfile_name"

    invoke-virtual {v3, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    if-ge v12, v13, :cond_4

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v15, v6, v0}, Lsafiap/framework/sdk/util/PackageUtil;->deleteDownloadFile(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 346
    .end local v5    # "downloadedFile":Ljava/io/File;
    .end local v12    # "versionFromFile":I
    :cond_4
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 347
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "action_name=\'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "where":Ljava/lang/String;
    :try_start_0
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v16, "PluginInfo"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v3, v14, v1}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v14    # "where":Ljava/lang/String;
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_6

    .line 356
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 384
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "downloadFileVersion":I
    .end local v6    # "downloadedFileName":Ljava/lang/String;
    .end local v10    # "updateResult":J
    .end local v13    # "versionLatest":I
    :cond_6
    :goto_1
    return-wide v10

    .line 350
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "downloadFileVersion":I
    .restart local v6    # "downloadedFileName":Ljava/lang/String;
    .restart local v10    # "updateResult":J
    .restart local v13    # "versionLatest":I
    .restart local v14    # "where":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 351
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 361
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "downloadFileVersion":I
    .end local v6    # "downloadedFileName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "updateResult":J
    .end local v13    # "versionLatest":I
    .end local v14    # "where":Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_8

    .line 362
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_8
    :try_start_1
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v16, "insertPluginInfo().check name and inseart ..FOR framework..."

    invoke-virtual/range {v15 .. v16}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 368
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string v15, "cnname"

    move-object/from16 v0, p1

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v15, "action_name"

    move-object/from16 v0, p2

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v15, "package_name"

    move-object/from16 v0, p3

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v15, "version"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v15, "needsafe"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v15, "lastupdateVERSION"

    move-object/from16 v0, p6

    invoke-virtual {v3, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v15, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v16, "PluginInfo"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v3}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$2(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .local v8, "result":J
    move-wide v10, v8

    .line 379
    goto :goto_1

    .line 381
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v8    # "result":J
    :catch_1
    move-exception v7

    .line 382
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v15, "SafFrameworkDB"

    const-string v16, "SAF-A Exception:550002"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const-wide/16 v10, -0x1

    goto :goto_1
.end method

.method public isHasUpdate(Ljava/lang/String;)Z
    .locals 13
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 1006
    const/4 v12, 0x0

    .line 1007
    .local v12, "versionLatest":I
    const/4 v11, 0x0

    .line 1008
    .local v11, "version":I
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 1011
    :cond_0
    const/4 v10, 0x0

    .line 1013
    .local v10, "result":Z
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 1014
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1015
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1013
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1016
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isHasUpdate().name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1018
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1017
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1019
    const-string v0, "version_latest"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1020
    const-string v0, "version"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1021
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "versionLatest is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1022
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1023
    if-le v12, v11, :cond_1

    iget-object v0, p0, Lsafiap/framework/data/SafFrameworkDB;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v12}, Lsafiap/framework/data/LocalRecord;->isUpdateIgnored(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    const/4 v10, 0x1

    .line 1028
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1029
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v10

    .line 1035
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 1032
    :catch_0
    move-exception v9

    .line 1033
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550013"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1035
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPluginDownloading(Ljava/lang/String;)Z
    .locals 11
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 776
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 779
    :cond_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    const-string v7, "version_latest desc"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 779
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 782
    .local v8, "cursor":Landroid/database/Cursor;
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPluginDownloading : actionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 784
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 786
    const-string v0, "isdownloading"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 785
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 787
    .local v9, "isDownloading":I
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPluginDownloading : isDownloading:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 789
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_1
    if-ne v9, v10, :cond_2

    move v0, v10

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 796
    .end local v9    # "isDownloading":I
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 797
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such plugin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectAll()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 924
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 928
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 929
    const-string v1, "PluginInfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 928
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 930
    .local v8, "cur":Landroid/database/Cursor;
    sget-object v1, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "selectAll().cursor counts:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    if-nez v8, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-virtual {v1, v0}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 936
    .end local v8    # "cur":Landroid/database/Cursor;
    :goto_1
    return-object v8

    .line 931
    .restart local v8    # "cur":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 933
    .end local v8    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 934
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550010"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v10

    .line 936
    goto :goto_1
.end method

.method public selectToUpadtePlugins()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1192
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 1193
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 1197
    :cond_0
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 1198
    const/4 v2, 0x0

    const-string v3, "version<>version_latest"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1199
    const/4 v7, 0x0

    .line 1197
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1205
    :goto_0
    return-object v8

    .line 1201
    :catch_0
    move-exception v9

    .line 1202
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550016"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public selectUpdateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1126
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v0, :cond_0

    .line 1127
    new-instance v0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v0, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 1129
    :cond_0
    const/4 v10, 0x0

    .line 1131
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v1, "PluginInfo"

    .line 1132
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1133
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1131
    invoke-static/range {v0 .. v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1135
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1136
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1137
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    const-string v0, "version_latest"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1139
    const-string v1, "version"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1140
    sget-object v0, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Plugin info selectUpdateUrl() :("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1141
    const-string v0, "UpdateURL"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1144
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v10

    .line 1153
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 1148
    :catch_0
    move-exception v9

    .line 1149
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SafFrameworkDB"

    const-string v1, "SAF-A Exception:550015"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    .line 1151
    goto :goto_0
.end method

.method public updateAppDigest(Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/lang/String;

    .prologue
    .line 593
    sget-object v6, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v6, :cond_0

    .line 594
    new-instance v6, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v6, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v6, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 597
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Lsafiap/framework/sdk/util/AuthUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "encryptDigest":Ljava/lang/String;
    const-string v6, "digest"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "package_name=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "where":Ljava/lang/String;
    sget-object v6, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v7, "PluginInfo"

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v5, v8}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 610
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "encryptDigest":Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SafFrameworkDB"

    const-string v7, "SAF-A Exception:550007"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 610
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public updateDownloadFileInfo(Ljava/lang/String;Ljava/lang/String;II)J
    .locals 10
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileversion"    # I
    .param p4, "isDownloading"    # I

    .prologue
    const-wide/16 v5, -0x1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-wide v2, v5

    .line 139
    :goto_0
    return-wide v2

    .line 110
    :cond_0
    sget-object v7, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v7, :cond_1

    .line 111
    new-instance v7, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v7, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v7, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 115
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    const-string v7, "downloadedfile_name"

    invoke-virtual {v0, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_2
    if-lez p3, :cond_3

    .line 122
    const-string v7, "downloadedfile_version"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    :cond_3
    if-ltz p4, :cond_4

    .line 126
    const-string v7, "isdownloading"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "action_name =\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "where":Ljava/lang/String;
    sget-object v7, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v8, "PluginInfo"

    const/4 v9, 0x0

    invoke-static {v7, v8, v0, v4, v9}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 132
    .local v2, "result":J
    sget-object v7, Lsafiap/framework/data/SafFrameworkDB;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateDownloadFileInfo().actionName:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 133
    const-string v9, ",fileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",fileversion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 134
    const-string v9, ",isDownloading:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 136
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "result":J
    .end local v4    # "where":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "SafFrameworkDB"

    const-string v8, "SAF-A Exception:550003"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v2, v5

    .line 139
    goto/16 :goto_0
.end method

.method public updateFrameworkUpdateStatus(II)J
    .locals 8
    .param p1, "versionLatest"    # I
    .param p2, "updateOption"    # I

    .prologue
    .line 532
    sget-object v5, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v5, :cond_0

    .line 533
    new-instance v5, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v5, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v5, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 536
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v0, "cv":Landroid/content/ContentValues;
    if-lez p1, :cond_1

    .line 539
    const-string v5, "version_latest"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    :cond_1
    const-string v5, "update_option"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action_name= \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, "where":Ljava/lang/String;
    sget-object v5, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 547
    const-string v6, "PluginInfo"

    const/4 v7, 0x0

    .line 546
    invoke-static {v5, v6, v0, v4, v7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 553
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "where":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SafFrameworkDB"

    const-string v6, "SAF-A Exception:550005"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 553
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public updatePluginUpdateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "cnname"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "versionLatest"    # I
    .param p6, "updateOption"    # I
    .param p7, "updateDescription"    # Ljava/lang/String;
    .param p8, "updateUrl"    # Ljava/lang/String;
    .param p9, "digest"    # Ljava/lang/String;
    .param p10, "appSize"    # Ljava/lang/String;
    .param p11, "updateType"    # Ljava/lang/String;

    .prologue
    .line 454
    sget-object v6, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    if-nez v6, :cond_0

    .line 455
    new-instance v6, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    invoke-direct {v6, p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;-><init>(Lsafiap/framework/data/SafFrameworkDB;)V

    sput-object v6, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    .line 458
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 461
    const-string v6, "cnname"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 466
    const-string v6, "package_name"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_2
    if-lez p4, :cond_3

    .line 472
    const-string v6, "version"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    :cond_3
    if-lez p5, :cond_4

    .line 477
    const-string v6, "version_latest"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    :cond_4
    if-ltz p6, :cond_5

    .line 483
    const-string v6, "update_option"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    :cond_5
    if-eqz p7, :cond_6

    .line 490
    const-string v6, "description"

    move-object/from16 v0, p7

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_6
    if-eqz p10, :cond_7

    .line 494
    const-string v6, "app_size"

    move-object/from16 v0, p10

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_7
    if-eqz p11, :cond_8

    .line 498
    const-string v6, "app_update_type"

    move-object/from16 v0, p11

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_8
    if-eqz p8, :cond_9

    .line 502
    const-string v6, "UpdateURL"

    move-object/from16 v0, p8

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_9
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 506
    const-string v6, "digest"

    move-object/from16 v0, p9

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "action_name=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 511
    .local v5, "where":Ljava/lang/String;
    sget-object v6, Lsafiap/framework/data/SafFrameworkDB;->sSafFrameworkDbHelper:Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;

    const-string v7, "PluginInfo"

    .line 512
    const/4 v8, 0x0

    .line 511
    invoke-static {v6, v7, v1, v5, v8}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 518
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "where":Ljava/lang/String;
    :goto_0
    return-wide v3

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SafFrameworkDB"

    const-string v7, "SAF-A Exception:550004"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    const-wide/16 v3, -0x1

    goto :goto_0
.end method
