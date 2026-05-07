.class Lsafiap/framework/sdk/util/apkparser/ChunkUtil;
.super Ljava/lang/Object;
.source "ChunkUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readCheckType(Lsafiap/framework/sdk/util/apkparser/IntReader;I)V
    .locals 4
    .param p0, "reader"    # Lsafiap/framework/sdk/util/apkparser/IntReader;
    .param p1, "expectedType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v0

    .line 28
    .local v0, "type":I
    if-eq v0, p1, :cond_0

    .line 29
    new-instance v1, Ljava/io/IOException;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected chunk of type 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    const-string v3, ", read 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    return-void
.end method
