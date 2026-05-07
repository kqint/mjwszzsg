.class Lsafiap/framework/data/ShareDataServerSocket$1;
.super Ljava/lang/Object;
.source "ShareDataServerSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsafiap/framework/data/ShareDataServerSocket;->beginListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/data/ShareDataServerSocket;

.field private final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lsafiap/framework/data/ShareDataServerSocket;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->this$0:Lsafiap/framework/data/ShareDataServerSocket;

    iput-object p2, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->val$socket:Ljava/net/Socket;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 56
    invoke-static {}, Lsafiap/framework/data/ShareDataServerSocket;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    const-string v6, "socket thread start..."

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 61
    iget-object v6, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 60
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/PrintWriter;

    .line 63
    iget-object v5, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 62
    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v3, "out":Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    iget-object v5, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    :cond_1
    iget-object v5, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->val$socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 90
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v3    # "out":Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 66
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "str":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/data/ShareDataServerSocket;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "got message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 69
    const-string v5, "ok"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 72
    if-eqz v4, :cond_1

    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->this$0:Lsafiap/framework/data/ShareDataServerSocket;

    invoke-static {v5}, Lsafiap/framework/data/ShareDataServerSocket;->access$1(Lsafiap/framework/data/ShareDataServerSocket;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 77
    const-string v5, "\\n"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 79
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0x4e21

    iput v5, v2, Landroid/os/Message;->what:I

    .line 80
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v5, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->this$0:Lsafiap/framework/data/ShareDataServerSocket;

    iget-object v5, v5, Lsafiap/framework/data/ShareDataServerSocket;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 82
    iget-object v5, p0, Lsafiap/framework/data/ShareDataServerSocket$1;->this$0:Lsafiap/framework/data/ShareDataServerSocket;

    invoke-static {v5}, Lsafiap/framework/data/ShareDataServerSocket;->access$1(Lsafiap/framework/data/ShareDataServerSocket;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "ShareDataServerSocket"

    const-string v6, "SAF-A Exception:580002"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
