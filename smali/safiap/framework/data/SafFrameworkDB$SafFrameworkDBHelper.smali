.class Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SafFrameworkDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/data/SafFrameworkDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafFrameworkDBHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "SafFramework.db"

.field private static final DATABASE_VERSION:I = 0x9


# instance fields
.field private final mStartDbLock:Ljava/lang/Object;

.field final synthetic this$0:Lsafiap/framework/data/SafFrameworkDB;


# direct methods
.method public constructor <init>(Lsafiap/framework/data/SafFrameworkDB;)V
    .locals 4

    .prologue
    .line 1242
    iput-object p1, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->this$0:Lsafiap/framework/data/SafFrameworkDB;

    .line 1243
    invoke-static {p1}, Lsafiap/framework/data/SafFrameworkDB;->access$0(Lsafiap/framework/data/SafFrameworkDB;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SafFramework.db"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    .line 1245
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v0

    const-string v1, "get writable database"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1247
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1246
    monitor-exit v1

    .line 1249
    return-void

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$0(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1408
    invoke-direct {p0, p1, p2, p3, p4}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1489
    invoke-direct/range {p0 .. p7}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-direct {p0, p1, p2, p3}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-direct {p0, p1, p2, p3}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1441
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delete...where: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1442
    iget-object v4, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1443
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1444
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, -0x1

    .line 1445
    .local v1, "id":J
    if-eqz v0, :cond_0

    .line 1446
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v3

    const-string v5, "exec delete"

    invoke-virtual {v3, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 1449
    :cond_0
    monitor-exit v4

    return-wide v1

    .line 1442
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "id":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private executeSQL(Ljava/lang/String;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1346
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "executeSQL....sql: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1347
    iget-object v2, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1348
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1349
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 1350
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v3, "exec sql"

    invoke-virtual {v1, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1347
    :cond_0
    monitor-exit v2

    .line 1354
    return-void

    .line 1347
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert....table: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1379
    iget-object v4, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1380
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1381
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, -0x1

    .line 1382
    .local v1, "id":J
    if-eqz v0, :cond_0

    .line 1383
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v3

    const-string v5, "exec insert"

    invoke-virtual {v3, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1386
    :cond_0
    monitor-exit v4

    return-wide v1

    .line 1379
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "id":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1279
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v6

    const-string v7, "create table = PluginInfo"

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1281
    const-string v5, "CREATE table PluginInfo (cnname text,action_name text primary key,package_name text,version INTEGER,description text,needsafe INTEGER,version_latest INTEGER default -1,update_option INTEGER,isdownloading INTEGER,lastupdateVERSION text,UpdateURL text,downloadedfile_name text,downloadedfile_version INTEGER,digest text,app_size text,app_update_type text);"

    .line 1298
    .local v5, "table1":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    if-eqz p1, :cond_0

    .line 1300
    :try_start_1
    const-string v6, "CREATE table PluginInfo (cnname text,action_name text primary key,package_name text,version INTEGER,description text,needsafe INTEGER,version_latest INTEGER default -1,update_option INTEGER,isdownloading INTEGER,lastupdateVERSION text,UpdateURL text,downloadedfile_name text,downloadedfile_version INTEGER,digest text,app_size text,app_update_type text);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    :try_start_2
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v6

    const-string v7, "create Table Success!"

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1307
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1309
    .local v1, "cv":Landroid/content/ContentValues;
    iget-object v6, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->this$0:Lsafiap/framework/data/SafFrameworkDB;

    invoke-static {v6}, Lsafiap/framework/data/SafFrameworkDB;->access$0(Lsafiap/framework/data/SafFrameworkDB;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lsafiap/framework/sdk/util/PackageUtil;->getFrameworkVersion(Landroid/content/Context;)I

    move-result v0

    .line 1310
    .local v0, "Frameworkversion":I
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1311
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "cnname"

    const-string v7, "SAF\u80fd\u529b\u7ba1\u7406\u6846\u67b6"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v6, "action_name"

    sget-object v7, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v6, "package_name"

    const-string v7, "safiap.framework"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v6, "version"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1315
    const-string v6, "description"

    .line 1316
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "New version for Create Table and version is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1316
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1315
    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v6, "version_latest"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    const-string v6, "update_option"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    const-string v6, "isdownloading"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    const-wide/16 v3, -0x1

    .line 1324
    .local v3, "id":J
    iget-object v7, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1325
    if-eqz p1, :cond_1

    .line 1326
    :try_start_3
    const-string v6, "PluginInfo"

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1324
    :cond_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1329
    :try_start_4
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "insert framework info result: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1334
    .end local v0    # "Frameworkversion":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "id":J
    :goto_0
    return-void

    .line 1298
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1330
    :catch_0
    move-exception v2

    .line 1331
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SafFrameworkDB"

    const-string v7, "SAF-A Exception:550001"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1324
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "Frameworkversion":I
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "id":J
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query...where: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1493
    iget-object v9, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1494
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1495
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 1496
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 1497
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1499
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "query().exec.count:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1500
    if-nez v8, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    invoke-virtual {v2, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1502
    :cond_0
    monitor-exit v9

    return-object v8

    .line 1500
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .line 1493
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1410
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update...where: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1411
    iget-object v4, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1412
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1413
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, -0x1

    .line 1414
    .local v1, "id":J
    if-eqz v0, :cond_0

    .line 1415
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v3

    const-string v5, "exec update"

    invoke-virtual {v3, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 1418
    :cond_0
    monitor-exit v4

    return-wide v1

    .line 1411
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "id":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1256
    invoke-direct {p0, p1}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1257
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1261
    const-string v0, "drop table if exists PluginInfo"

    .line 1263
    .local v0, "sql":Ljava/lang/String;
    iget-object v2, p0, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->mStartDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1264
    if-eqz p1, :cond_0

    .line 1265
    :try_start_0
    const-string v1, "drop table if exists PluginInfo"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    invoke-static {}, Lsafiap/framework/data/SafFrameworkDB;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v1

    const-string v2, "onUpgrade()"

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 1270
    invoke-direct {p0, p1}, Lsafiap/framework/data/SafFrameworkDB$SafFrameworkDBHelper;->onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1271
    return-void

    .line 1263
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
