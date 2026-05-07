.class Lsafiap/framework/sdk/util/StreamReader;
.super Ljava/lang/Thread;
.source "StreamReader.java"


# static fields
.field public static final READ_BY_BYTE:I = 0x2

.field public static final READ_BY_STRING:I = 0x1


# instance fields
.field private mContent:Ljava/lang/StringBuffer;

.field private mInputStream:Ljava/io/InputStream;

.field private mReadType:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "content"    # Ljava/lang/StringBuffer;
    .param p3, "readType"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    iput-object p1, p0, Lsafiap/framework/sdk/util/StreamReader;->mInputStream:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lsafiap/framework/sdk/util/StreamReader;->mContent:Ljava/lang/StringBuffer;

    .line 17
    iput p3, p0, Lsafiap/framework/sdk/util/StreamReader;->mReadType:I

    .line 18
    return-void
.end method

.method public static final read(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "content"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v2, "streamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 42
    .local v1, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static final read(Ljava/io/InputStream;Ljava/lang/StringBuffer;[B)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "content"    # Ljava/lang/StringBuffer;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    if-nez p2, :cond_2

    const/16 v1, 0x400

    new-array p2, v1, [B

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "byteCount":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 55
    :cond_3
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 22
    :try_start_0
    iget v1, p0, Lsafiap/framework/sdk/util/StreamReader;->mReadType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 23
    iget-object v1, p0, Lsafiap/framework/sdk/util/StreamReader;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lsafiap/framework/sdk/util/StreamReader;->mContent:Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lsafiap/framework/sdk/util/StreamReader;->read(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget v1, p0, Lsafiap/framework/sdk/util/StreamReader;->mReadType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 25
    iget-object v1, p0, Lsafiap/framework/sdk/util/StreamReader;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lsafiap/framework/sdk/util/StreamReader;->mContent:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lsafiap/framework/sdk/util/StreamReader;->read(Ljava/io/InputStream;Ljava/lang/StringBuffer;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
