.class public Lsafiap/framework/sdk/util/ShellExecutor;
.super Ljava/lang/Object;
.source "ShellExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute([Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)I
    .locals 7
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "isSync"    # Z

    .prologue
    .line 10
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 11
    :cond_0
    const-string p2, "/"

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 15
    .local v0, "builder":Ljava/lang/ProcessBuilder;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 16
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 18
    const/high16 v2, -0x80000000

    .line 19
    .local v2, "exitValue":I
    const/4 v3, 0x0

    .line 21
    .local v3, "process":Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 22
    const v2, 0x7fffffff

    .line 36
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v4, "tmpResult":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lsafiap/framework/sdk/util/StreamReader;->read(Ljava/io/InputStream;Ljava/lang/StringBuffer;[B)V

    .line 38
    if-eqz p4, :cond_2

    .line 39
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 42
    :cond_2
    if-eqz p3, :cond_3

    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 57
    .end local v4    # "tmpResult":Ljava/lang/StringBuffer;
    :cond_4
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/InterruptedException;
    const/high16 v2, -0x80000000

    .line 48
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 49
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const/high16 v2, -0x80000000

    .line 52
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 54
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 55
    :cond_5
    throw v5
.end method

.method public execute([Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 9
    .param p1, "command"    # [Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuffer;

    .prologue
    .line 62
    const/high16 v1, -0x80000000

    .line 63
    .local v1, "exitValue":I
    const/4 v2, 0x0

    .line 65
    .local v2, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 66
    const v1, 0x7fffffff

    .line 68
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v3, "stderrContent":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v5, "stdoutContent":Ljava/lang/StringBuffer;
    new-instance v4, Lsafiap/framework/sdk/util/StreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v4, v7, v3, v8}, Lsafiap/framework/sdk/util/StreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V

    .line 71
    .local v4, "stderrReader":Lsafiap/framework/sdk/util/StreamReader;
    new-instance v6, Lsafiap/framework/sdk/util/StreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v3, v8}, Lsafiap/framework/sdk/util/StreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V

    .line 72
    .local v6, "stdoutReader":Lsafiap/framework/sdk/util/StreamReader;
    invoke-virtual {v4}, Lsafiap/framework/sdk/util/StreamReader;->start()V

    .line 73
    invoke-virtual {v6}, Lsafiap/framework/sdk/util/StreamReader;->start()V

    .line 75
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :goto_0
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 99
    .end local v3    # "stderrContent":Ljava/lang/StringBuffer;
    .end local v4    # "stderrReader":Lsafiap/framework/sdk/util/StreamReader;
    .end local v5    # "stdoutContent":Ljava/lang/StringBuffer;
    .end local v6    # "stdoutReader":Lsafiap/framework/sdk/util/StreamReader;
    :cond_0
    :goto_1
    return v1

    .line 83
    .restart local v3    # "stderrContent":Ljava/lang/StringBuffer;
    .restart local v4    # "stderrReader":Lsafiap/framework/sdk/util/StreamReader;
    .restart local v5    # "stdoutContent":Ljava/lang/StringBuffer;
    .restart local v6    # "stdoutReader":Lsafiap/framework/sdk/util/StreamReader;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    .end local v3    # "stderrContent":Ljava/lang/StringBuffer;
    .end local v4    # "stderrReader":Lsafiap/framework/sdk/util/StreamReader;
    .end local v5    # "stdoutContent":Ljava/lang/StringBuffer;
    .end local v6    # "stdoutReader":Lsafiap/framework/sdk/util/StreamReader;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    const/high16 v1, -0x80000000

    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 91
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    const/high16 v1, -0x80000000

    .line 94
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 96
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 97
    :cond_2
    throw v7
.end method
