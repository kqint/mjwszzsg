.class public final Lsafiap/framework/sdk/util/apkparser/IntReader;
.super Ljava/lang/Object;
.source "IntReader.java"


# instance fields
.field private m_bigEndian:Z

.field private m_stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bigEndian"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1, p2}, Lsafiap/framework/sdk/util/apkparser/IntReader;->reset(Ljava/io/InputStream;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_stream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsafiap/framework/sdk/util/apkparser/IntReader;->reset(Ljava/io/InputStream;Z)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt(I)I

    move-result v0

    return v0
.end method

.method public final readInt(I)I
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 60
    if-ltz p1, :cond_0

    const/4 v3, 0x4

    if-le p1, v3, :cond_1

    .line 61
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    .local v2, "result":I
    iget-boolean v3, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_bigEndian:Z

    if-eqz v3, :cond_5

    .line 65
    add-int/lit8 v3, p1, -0x1

    mul-int/lit8 v1, v3, 0x8

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_3

    .line 82
    :cond_2
    return v2

    .line 66
    :cond_3
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 67
    .local v0, "b":I
    if-ne v0, v4, :cond_4

    .line 68
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 70
    :cond_4
    shl-int v3, v0, v1

    or-int/2addr v2, v3

    .line 65
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    .line 73
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_5
    mul-int/lit8 p1, p1, 0x8

    .line 74
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, p1, :cond_2

    .line 75
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 76
    .restart local v0    # "b":I
    if-ne v0, v4, :cond_6

    .line 77
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 79
    :cond_6
    shl-int v3, v0, v1

    or-int/2addr v2, v3

    .line 74
    add-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method public final readIntArray([III)V
    .locals 2
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    move v0, p2

    .end local p2    # "offset":I
    .local v0, "offset":I
    :goto_0
    if-gtz p3, :cond_0

    .line 95
    return-void

    .line 93
    :cond_0
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v1

    aput v1, p1, v0

    .line 92
    add-int/lit8 p3, p3, -0x1

    move v0, p2

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method public final readIntArray(I)[I
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-array v0, p1, [I

    .line 87
    .local v0, "array":[I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray([III)V

    .line 88
    return-object v0
.end method

.method public final reset(Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "bigEndian"    # Z

    .prologue
    .line 40
    iput-object p1, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_stream:Ljava/io/InputStream;

    .line 41
    iput-boolean p2, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_bigEndian:Z

    .line 42
    return-void
.end method

.method public final skip(I)V
    .locals 5
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    if-gtz p1, :cond_1

    .line 105
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lsafiap/framework/sdk/util/apkparser/IntReader;->m_stream:Ljava/io/InputStream;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 102
    .local v0, "skipped":J
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final skipInt()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->skip(I)V

    .line 109
    return-void
.end method
