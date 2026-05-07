.class public Lsafiap/framework/logreport/monitor/db/MonitorDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MonitorDb.java"


# static fields
.field public static final CRASHLOG:Ljava/lang/String; = "CrashLog"

.field private static final DATABASE_NAME:Ljava/lang/String; = "saf_framework_logreport.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final ERRORCODE:Ljava/lang/String; = "errorCode"

.field public static final IS_POST:Ljava/lang/String; = "ispost"

.field public static final MUSICDOWNERROR_ID:Ljava/lang/String; = "_id"

.field public static final MUSICDOWNERROR_NOWDATE:Ljava/lang/String; = "MusicDownError_NowDate"

.field public static final PHONENUMBER:Ljava/lang/String; = "PhoneNumber"

.field private static monitorDb:Lsafiap/framework/logreport/monitor/db/MonitorDb;


# instance fields
.field private final TABLE_NAME_CRASH_ERROR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "saf_framework_logreport.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    const-string v0, "MonitorDb"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/db/MonitorDb;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "CrashError"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/db/MonitorDb;->TABLE_NAME_CRASH_ERROR:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static getMonitorDbInstance(Landroid/content/Context;)Lsafiap/framework/logreport/monitor/db/MonitorDb;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lsafiap/framework/logreport/monitor/db/MonitorDb;->monitorDb:Lsafiap/framework/logreport/monitor/db/MonitorDb;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lsafiap/framework/logreport/monitor/db/MonitorDb;

    invoke-direct {v0, p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsafiap/framework/logreport/monitor/db/MonitorDb;->monitorDb:Lsafiap/framework/logreport/monitor/db/MonitorDb;

    .line 44
    :cond_0
    sget-object v0, Lsafiap/framework/logreport/monitor/db/MonitorDb;->monitorDb:Lsafiap/framework/logreport/monitor/db/MonitorDb;

    return-object v0
.end method

.method private list(I)Ljava/util/List;
    .locals 12
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;>;"
    invoke-virtual {p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 139
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 141
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "select * from CrashError where ispost = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "sql":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 144
    if-eqz v2, :cond_0

    .line 145
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_2

    .line 171
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return-object v6

    .line 147
    :cond_2
    :try_start_1
    const-string v10, "errorCode"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "errorCode":Ljava/lang/String;
    const-string v10, "PhoneNumber"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "PhoneNumber":Ljava/lang/String;
    const-string v10, "CrashLog"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "CrashLog":Ljava/lang/String;
    const-string v10, "MusicDownError_NowDate"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "time":Ljava/lang/String;
    const-string v10, "_id"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 157
    .local v5, "id":I
    new-instance v7, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    invoke-direct {v7}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;-><init>()V

    .line 159
    .local v7, "meb":Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setId(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7, v4}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setErrorCode(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v7, v0}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setCrashLog(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v7, v1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setPhoneNumber(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v7, v9}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->setTimeStamp(Ljava/lang/String;)V

    .line 165
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    .end local v0    # "CrashLog":Ljava/lang/String;
    .end local v1    # "PhoneNumber":Ljava/lang/String;
    .end local v4    # "errorCode":Ljava/lang/String;
    .end local v5    # "id":I
    .end local v7    # "meb":Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;
    .end local v8    # "sql":Ljava/lang/String;
    .end local v9    # "time":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 171
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_3
    throw v10
.end method


# virtual methods
.method public varargs buildIn([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "ids"    # [Ljava/lang/Integer;

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v1, "perfix":Ljava/lang/StringBuffer;
    array-length v2, p1

    .line 180
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 181
    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dropTable()V
    .locals 5

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "CrashError"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const-string v2, "MonitorDb"

    const-string v3, "dropTable() error!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertMusicError(Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;)V
    .locals 5
    .param p1, "meb"    # Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 96
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "errorCode"

    invoke-virtual {p1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "MusicDownError_NowDate"

    invoke-virtual {p1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "PhoneNumber"

    invoke-virtual {p1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "CrashLog"

    invoke-virtual {p1}, Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;->getCrashLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "ispost"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v3, "CrashError"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    const-string v3, "MonitorDb"

    const-string v4, "DB inserting success"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    const-string v3, "MonitorDb"

    const-string v4, "insertMusicError() error!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public listUncommitted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/logreport/monitor/bean/LogreportErrorBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->list(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    const-string v1, "create table CrashError(_id INTEGER primary key autoincrement,errorCode varchar(10),PhoneNumber varchar(20),CrashLog text,MusicDownError_NowDate varchar(50),ispost int);"

    .line 61
    .local v1, "table3":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v2, "MonitorDb"

    const-string v3, "create Table Success!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MonitorDb"

    const-string v3, "create Table Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 73
    const-string v0, "drop table if exists CrashError"

    .line 74
    .local v0, "sql1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public varargs update(I[Ljava/lang/Integer;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "id"    # [Ljava/lang/Integer;

    .prologue
    .line 121
    invoke-virtual {p0}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 122
    .local v1, "sqliteDb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    invoke-virtual {p0, p2}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->buildIn([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "params":Ljava/lang/String;
    const-string v2, "MonitorDb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "params-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update CrashError set ispost = ? where _id in ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    return-void

    .line 130
    .end local v0    # "params":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 131
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    throw v2
.end method

.method public varargs updateTocommitted([Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # [Ljava/lang/Integer;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lsafiap/framework/logreport/monitor/db/MonitorDb;->update(I[Ljava/lang/Integer;)V

    .line 118
    return-void
.end method
