.class public Lsafiap/framework/sdk/util/apkparser/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# static fields
.field private static final CHUNK_TYPE:I = 0x1c0001


# instance fields
.field private m_stringOffsets:[I

.field private m_strings:[I

.field private m_styleOffsets:[I

.field private m_styles:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private static final getShort([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "offset"    # I

    .prologue
    .line 139
    div-int/lit8 v1, p1, 0x4

    aget v0, p0, v1

    .line 140
    .local v0, "value":I
    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 141
    const v1, 0xffff

    and-int/2addr v1, v0

    .line 143
    :goto_0
    return v1

    :cond_0
    ushr-int/lit8 v1, v0, 0x10

    goto :goto_0
.end method

.method public static read(Lsafiap/framework/sdk/util/apkparser/IntReader;)Lsafiap/framework/sdk/util/apkparser/StringBlock;
    .locals 10
    .param p0, "reader"    # Lsafiap/framework/sdk/util/apkparser/IntReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const v7, 0x1c0001

    invoke-static {p0, v7}, Lsafiap/framework/sdk/util/apkparser/ChunkUtil;->readCheckType(Lsafiap/framework/sdk/util/apkparser/IntReader;I)V

    .line 37
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v1

    .line 38
    .local v1, "chunkSize":I
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v3

    .line 39
    .local v3, "stringCount":I
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v5

    .line 40
    .local v5, "styleOffsetCount":I
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    .line 41
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v4

    .line 42
    .local v4, "stringsOffset":I
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readInt()I

    move-result v6

    .line 44
    .local v6, "stylesOffset":I
    new-instance v0, Lsafiap/framework/sdk/util/apkparser/StringBlock;

    invoke-direct {v0}, Lsafiap/framework/sdk/util/apkparser/StringBlock;-><init>()V

    .line 45
    .local v0, "block":Lsafiap/framework/sdk/util/apkparser/StringBlock;
    invoke-virtual {p0, v3}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray(I)[I

    move-result-object v7

    iput-object v7, v0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    .line 46
    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {p0, v5}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray(I)[I

    move-result-object v7

    iput-object v7, v0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_styleOffsets:[I

    .line 50
    :cond_0
    if-nez v6, :cond_1

    move v7, v1

    :goto_0
    sub-int v2, v7, v4

    .line 51
    .local v2, "size":I
    rem-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_2

    .line 52
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "String data size is not multiple of 4 ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "size":I
    :cond_1
    move v7, v6

    .line 50
    goto :goto_0

    .line 54
    .restart local v2    # "size":I
    :cond_2
    div-int/lit8 v7, v2, 0x4

    invoke-virtual {p0, v7}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray(I)[I

    move-result-object v7

    iput-object v7, v0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_strings:[I

    .line 56
    if-eqz v6, :cond_4

    .line 57
    sub-int v2, v1, v6

    .line 58
    rem-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_3

    .line 59
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Style data size is not multiple of 4 ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    :cond_3
    div-int/lit8 v7, v2, 0x4

    invoke-virtual {p0, v7}, Lsafiap/framework/sdk/util/apkparser/IntReader;->readIntArray(I)[I

    move-result-object v7

    iput-object v7, v0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_styles:[I

    .line 64
    :cond_4
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)I
    .locals 7
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 110
    if-nez p1, :cond_0

    move v0, v4

    .line 130
    :goto_0
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    array-length v5, v5

    if-ne v0, v5, :cond_1

    move v0, v4

    .line 130
    goto :goto_0

    .line 114
    :cond_1
    iget-object v5, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    aget v3, v5, v0

    .line 115
    .local v3, "offset":I
    iget-object v5, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_strings:[I

    invoke-static {v5, v3}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getShort([II)I

    move-result v2

    .line 116
    .local v2, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_3
    const/4 v1, 0x0

    .line 120
    .local v1, "j":I
    :goto_2
    if-ne v1, v2, :cond_5

    .line 126
    :cond_4
    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 121
    :cond_5
    add-int/lit8 v3, v3, 0x2

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_strings:[I

    invoke-static {v6, v3}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getShort([II)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    .line 71
    :goto_0
    return v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 80
    if-ltz p1, :cond_0

    .line 81
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    array-length v3, v3

    if-lt p1, v3, :cond_1

    .line 84
    :cond_0
    const/4 v3, 0x0

    .line 93
    :goto_0
    return-object v3

    .line 86
    :cond_1
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_stringOffsets:[I

    aget v1, v3, p1

    .line 87
    .local v1, "offset":I
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_strings:[I

    invoke-static {v3, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getShort([II)I

    move-result v0

    .line 88
    .local v0, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_1
    if-nez v0, :cond_2

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 91
    iget-object v3, p0, Lsafiap/framework/sdk/util/apkparser/StringBlock;->m_strings:[I

    invoke-static {v3, v1}, Lsafiap/framework/sdk/util/apkparser/StringBlock;->getShort([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
