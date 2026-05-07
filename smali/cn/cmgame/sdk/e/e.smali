.class public Lcn/cmgame/sdk/e/e;
.super Ljava/lang/Object;
.source "DESUtils.java"


# static fields
.field private static jC:[B = null

.field private static final jD:Ljava/lang/String; = "lcmcLCMC"

.field private static final jE:Ljava/lang/String; = "cmgcCMGC"

.field private static final jF:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcn/cmgame/sdk/e/e;->jC:[B

    .line 19
    return-void

    .line 20
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 3

    .prologue
    .line 129
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    return-void
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 38
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 39
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 42
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 45
    const-string v2, "DES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 47
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 48
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aX(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcn/cmgame/sdk/e/e;->jC:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 89
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "lcmcLCMC"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    const-string v2, "DES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->g([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aY(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0}, Lcn/cmgame/sdk/e/e;->aZ(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcn/cmgame/sdk/e/e;->jC:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 100
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "lcmcLCMC"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "DES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 101
    const-string v3, "DES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 102
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aZ(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 134
    new-array v2, v1, [B

    .line 135
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 138
    return-object v2

    .line 136
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 4

    .prologue
    .line 65
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 69
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 70
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 73
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 76
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 78
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 79
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    const-string v0, ""

    .line 122
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 118
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/e;->a(Ljava/lang/StringBuffer;B)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static h([B)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 180
    if-nez p0, :cond_0

    .line 189
    :goto_0
    return-object v0

    .line 184
    :cond_0
    :try_start_0
    const-string v1, "cmgcCMGC"

    invoke-static {p0, v1}, Lcn/cmgame/sdk/e/e;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcn/cmgame/sdk/e/e;->g([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    :try_start_0
    const-string v1, "cmgcCMGC"

    invoke-static {p0, v1}, Lcn/cmgame/sdk/e/e;->b([BLjava/lang/String;)[B

    move-result-object v2

    .line 206
    if-eqz v2, :cond_0

    .line 207
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcn/cmgame/sdk/e/e;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcn/cmgame/sdk/e/e;->a([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method
