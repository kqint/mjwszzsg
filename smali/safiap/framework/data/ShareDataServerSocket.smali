.class public Lsafiap/framework/data/ShareDataServerSocket;
.super Ljava/lang/Object;
.source "ShareDataServerSocket.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareDataServerSocket"

.field private static logger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mServer:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "ShareDataServerSocket"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/data/ShareDataServerSocket;->logger:Lsafiap/framework/util/MyLogger;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput-object v1, p0, Lsafiap/framework/data/ShareDataServerSocket;->mHandler:Landroid/os/Handler;

    .line 24
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    .line 25
    iput-object p1, p0, Lsafiap/framework/data/ShareDataServerSocket;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ShareDataServerSocket"

    const-string v2, "SAF-A Exception:580001"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0()Lsafiap/framework/util/MyLogger;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lsafiap/framework/data/ShareDataServerSocket;->logger:Lsafiap/framework/util/MyLogger;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/data/ShareDataServerSocket;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lsafiap/framework/data/ShareDataServerSocket;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public beginListen()V
    .locals 5

    .prologue
    .line 41
    sget-object v2, Lsafiap/framework/data/ShareDataServerSocket;->logger:Lsafiap/framework/util/MyLogger;

    const-string v3, "beginListen...start"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    if-nez v2, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    sget-object v2, Lsafiap/framework/data/ShareDataServerSocket;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "port: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 50
    :goto_0
    :try_start_0
    sget-object v2, Lsafiap/framework/data/ShareDataServerSocket;->logger:Lsafiap/framework/util/MyLogger;

    const-string v3, "start waiting..."

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 52
    .local v1, "socket":Ljava/net/Socket;
    sget-object v2, Lsafiap/framework/data/ShareDataServerSocket;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got request, socket: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lsafiap/framework/data/ShareDataServerSocket$1;

    invoke-direct {v3, p0, v1}, Lsafiap/framework/data/ShareDataServerSocket$1;-><init>(Lsafiap/framework/data/ShareDataServerSocket;Ljava/net/Socket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShareDataServerSocket"

    const-string v3, "SAF-A Exception:580003"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
