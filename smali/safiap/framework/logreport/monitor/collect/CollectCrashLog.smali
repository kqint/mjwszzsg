.class public abstract Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;
.super Ljava/lang/Object;
.source "CollectCrashLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private dh:Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;

.field public m_DownLimit:I

.field public m_UpLimit:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "CollectCrashLog"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_UpLimit:I

    .line 24
    iput v1, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_DownLimit:I

    .line 39
    new-instance v0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;

    invoke-direct {v0, p0}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;-><init>(Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;)V

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->dh:Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;

    .line 40
    iget-object v0, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->dh:Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;

    invoke-direct {p0, v0, p1}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->fillDateHolder(Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private fillDateHolder(Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;Ljava/lang/String;)V
    .locals 6
    .param p1, "dh"    # Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;
    .param p2, "dateTime"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xd

    .line 45
    invoke-static {p2}, Lsafiap/framework/logreport/monitor/MonitorUtils;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 47
    .local v1, "d":Ljava/util/Date;
    sget-object v2, Lsafiap/framework/logreport/monitor/MonitorUtils;->SECOND_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->center:Ljava/lang/String;

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 55
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 57
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 59
    sget-object v2, Lsafiap/framework/logreport/monitor/MonitorUtils;->SECOND_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->up:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpLimit : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->up:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v2, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->up:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TransferStringFormat(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_UpLimit:I

    .line 64
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "m_UpLimit : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_UpLimit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, -0x4

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 74
    sget-object v2, Lsafiap/framework/logreport/monitor/MonitorUtils;->SECOND_SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->down:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DownLimit : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->down:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p1, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;->down:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TransferStringFormat(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_DownLimit:I

    .line 79
    iget-object v2, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "m_DownLimit : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_DownLimit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method


# virtual methods
.method public IsAvaiable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 126
    .local v1, "t_Byte":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 132
    const/4 v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    aget-byte v3, v1, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    aget-byte v3, v1, v0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public TransferStringFormat(Ljava/lang/String;)I
    .locals 11
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 90
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v5

    .line 96
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x2

    :try_start_0
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "month":Ljava/lang/String;
    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "day":Ljava/lang/String;
    const/4 v9, 0x6

    const/16 v10, 0x8

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "hour":Ljava/lang/String;
    const/16 v9, 0x9

    const/16 v10, 0xb

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "minute":Ljava/lang/String;
    const/16 v9, 0xc

    const/16 v10, 0xe

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "second":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "transfer":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->IsAvaiable(Ljava/lang/String;)Z

    move-result v7

    .line 105
    .local v7, "t_Flag":Z
    if-eqz v7, :cond_0

    .line 108
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 112
    .local v5, "out":I
    goto :goto_0

    .line 113
    .end local v0    # "day":Ljava/lang/String;
    .end local v2    # "hour":Ljava/lang/String;
    .end local v3    # "minute":Ljava/lang/String;
    .end local v4    # "month":Ljava/lang/String;
    .end local v5    # "out":I
    .end local v6    # "second":Ljava/lang/String;
    .end local v7    # "t_Flag":Z
    .end local v8    # "transfer":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method

.method public abstract onPost(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 13

    .prologue
    .line 139
    const/4 v4, 0x0

    .line 141
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "logcat -d -v time"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 142
    .local v7, "p":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 143
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 144
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 145
    .local v6, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const-string v10, "yy-MM HH:mm:ss.SSS"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v5, v10, -0x4

    .line 148
    .local v5, "len":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "result":Ljava/lang/String;
    iget-object v10, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "The length of the crash log is : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0, v8}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->onPost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    if-eqz v4, :cond_1

    .line 177
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 181
    const/4 v4, 0x0

    .line 186
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 150
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "len":I
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "p":Ljava/lang/Process;
    :cond_2
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v6, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "date":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->TransferStringFormat(Ljava/lang/String;)I

    move-result v9

    .line 154
    .local v9, "t_Date":I
    if-eqz v2, :cond_0

    iget-object v10, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->dh:Lsafiap/framework/logreport/monitor/collect/CollectCrashLog$DateHolder;

    if-eqz v10, :cond_0

    .line 157
    iget v10, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_UpLimit:I

    if-gt v9, v10, :cond_0

    iget v10, p0, Lsafiap/framework/logreport/monitor/collect/CollectCrashLog;->m_DownLimit:I

    if-lt v9, v10, :cond_0

    .line 159
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 172
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "date":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "p":Ljava/lang/Process;
    .end local v9    # "t_Date":I
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    if-eqz v4, :cond_1

    .line 177
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    const/4 v4, 0x0

    .line 182
    goto :goto_1

    .line 178
    :catch_1
    move-exception v3

    .line 179
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    const/4 v4, 0x0

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v10

    .line 181
    const/4 v4, 0x0

    .line 182
    throw v10

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 175
    if-eqz v4, :cond_3

    .line 177
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 181
    const/4 v4, 0x0

    .line 184
    :cond_3
    :goto_2
    throw v10

    .line 178
    :catch_2
    move-exception v3

    .line 179
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 181
    const/4 v4, 0x0

    goto :goto_2

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v10

    .line 181
    const/4 v4, 0x0

    .line 182
    throw v10

    .line 178
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "len":I
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "p":Ljava/lang/Process;
    .restart local v8    # "result":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 179
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 181
    const/4 v4, 0x0

    goto :goto_1

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v10

    .line 181
    const/4 v4, 0x0

    .line 182
    throw v10
.end method
