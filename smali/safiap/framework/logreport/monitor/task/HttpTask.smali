.class public Lsafiap/framework/logreport/monitor/task/HttpTask;
.super Ljava/lang/Object;
.source "HttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

.field private isGzipIs:Z

.field private isGzipOs:Z

.field private isUseProxy:Z

.field private port:I

.field private task:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipOs:Z

    .line 22
    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipIs:Z

    .line 23
    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isUseProxy:Z

    .line 25
    const-string v0, "HttpTask"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "proxy.cmcc"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->host:Ljava/lang/String;

    .line 28
    const/16 v0, 0x1f90

    iput v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->port:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "httpTaskListener"    # Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipOs:Z

    .line 22
    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipIs:Z

    .line 23
    iput-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isUseProxy:Z

    .line 25
    const-string v0, "HttpTask"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "proxy.cmcc"

    iput-object v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->host:Ljava/lang/String;

    .line 28
    const/16 v0, 0x1f90

    iput v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->port:I

    .line 72
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->url:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->task:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    .line 75
    return-void
.end method

.method private buildGzipInputStream(Ljava/io/InputStream;)Ljava/util/zip/GZIPInputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private post()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v12, 0xc350

    const/4 v11, 0x1

    .line 93
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 95
    .local v6, "url":Ljava/net/URL;
    const/4 v0, 0x0

    .line 98
    .local v0, "httpURLConnection":Ljava/net/HttpURLConnection;
    iget-boolean v7, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isUseProxy:Z

    if-eqz v7, :cond_2

    .line 99
    new-instance v5, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->host:Ljava/lang/String;

    iget v10, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->port:I

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 100
    .local v5, "proxy":Ljava/net/Proxy;
    invoke-virtual {v6, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 105
    .end local v5    # "proxy":Ljava/net/Proxy;
    .restart local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :goto_0
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 106
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 108
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 111
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v7, "Charset"

    const-string v8, "UTF-8"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 119
    .local v4, "os":Ljava/io/OutputStream;
    iget-object v7, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->task:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 120
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 121
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 124
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 126
    .local v2, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-boolean v8, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipIs:Z

    if-eqz v8, :cond_0

    invoke-direct {p0, v2}, Lsafiap/framework/logreport/monitor/task/HttpTask;->buildGzipInputStream(Ljava/io/InputStream;)Ljava/util/zip/GZIPInputStream;

    move-result-object v2

    .end local v2    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "line":Ljava/lang/String;
    iget-object v7, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "line:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    iget-object v7, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    invoke-interface {v7, v3}, Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;->onResponse(Ljava/lang/String;)V

    .line 135
    :cond_1
    return-void

    .line 102
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_2
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "httpURLConnection":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method public isGzipIs()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipIs:Z

    return v0
.end method

.method public isGzipOs()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipOs:Z

    return v0
.end method

.method public regiestHttpTaskListener(Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;)V
    .locals 0
    .param p1, "httpTaskListener"    # Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    .prologue
    .line 64
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    .line 65
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    invoke-direct {p0}, Lsafiap/framework/logreport/monitor/task/HttpTask;->post()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->httpTaskListener:Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lsafiap/framework/logreport/monitor/task/HttpTask$HttpTaskListener;->onError(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGzipIs(Z)V
    .locals 0
    .param p1, "isGzipIs"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipIs:Z

    .line 54
    return-void
.end method

.method public setGzipOs(Z)V
    .locals 0
    .param p1, "isGzipOs"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->isGzipOs:Z

    .line 46
    return-void
.end method

.method public setHost(Ljava/lang/String;)Lsafiap/framework/logreport/monitor/task/HttpTask;
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->host:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public setPort(I)Lsafiap/framework/logreport/monitor/task/HttpTask;
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 36
    iput p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->port:I

    .line 37
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lsafiap/framework/logreport/monitor/task/HttpTask;->url:Ljava/lang/String;

    .line 69
    return-void
.end method
