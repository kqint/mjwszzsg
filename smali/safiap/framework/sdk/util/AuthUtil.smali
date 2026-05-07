.class public Lsafiap/framework/sdk/util/AuthUtil;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthUtil"

.field private static sKey:Ljava/lang/String;

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "AuthUtil"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/util/AuthUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 28
    const-string v0, "SAF2ol2"

    sput-object v0, Lsafiap/framework/sdk/util/AuthUtil;->sKey:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sSrc"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 117
    if-nez p0, :cond_0

    .line 118
    sget-object v8, Lsafiap/framework/sdk/util/AuthUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v9, "Input string for Base64AES decrption is null!"

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move-object v4, v7

    .line 136
    :goto_0
    return-object v4

    .line 124
    :cond_0
    :try_start_0
    invoke-static {p0}, Lsafiap/framework/sdk/util/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 125
    .local v1, "encrypted1":[B
    sget-object v8, Lsafiap/framework/sdk/util/AuthUtil;->sKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lsafiap/framework/sdk/util/AuthUtil;->getMD5([B)[B

    move-result-object v5

    .line 126
    .local v5, "raw":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .local v6, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "AES/ECB/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 128
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 129
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 130
    .local v3, "original":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v4, "originalString":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "encrypted1":[B
    .end local v3    # "original":[B
    .end local v4    # "originalString":Ljava/lang/String;
    .end local v5    # "raw":[B
    .end local v6    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "ex":Ljava/lang/Exception;
    const-string v8, "AuthUtil"

    const-string v9, "SAF-A Exception:514003"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v7

    .line 136
    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sSrc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 90
    sget-object v6, Lsafiap/framework/sdk/util/AuthUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v7, "Input string for Base64AES encryption is null!"

    invoke-virtual {v6, v7}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object v3

    .line 96
    :cond_0
    :try_start_0
    sget-object v6, Lsafiap/framework/sdk/util/AuthUtil;->sKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lsafiap/framework/sdk/util/AuthUtil;->getMD5([B)[B

    move-result-object v4

    .line 97
    .local v4, "raw":[B
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {v5, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 98
    .local v5, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES/ECB/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 99
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 101
    .local v1, "encrypted":[B
    invoke-static {v1}, Lsafiap/framework/sdk/util/Base64Util;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 103
    .local v3, "originalString":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "encrypted":[B
    .end local v3    # "originalString":Ljava/lang/String;
    .end local v4    # "raw":[B
    .end local v5    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "AuthUtil"

    const-string v7, "SAF-A Exception:514002"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBase64MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "regCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    sget-object v2, Lsafiap/framework/sdk/util/AuthUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v3, "Input string for Base64MD5 is null!"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v1

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lsafiap/framework/sdk/util/AuthUtil;->getMD5([B)[B

    move-result-object v0

    .line 45
    .local v0, "md5":[B
    if-nez v0, :cond_1

    .line 46
    sget-object v2, Lsafiap/framework/sdk/util/AuthUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v3, "Error occurred while calculating the digest!"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v0}, Lsafiap/framework/sdk/util/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lsafiap/framework/sdk/util/AuthUtil;->sKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getMD5([B)[B
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 68
    if-nez p0, :cond_0

    .line 69
    sget-object v3, Lsafiap/framework/sdk/util/AuthUtil;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v4, "Input byte array for MD5 is null!"

    invoke-virtual {v3, v4}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-object v2

    .line 73
    :cond_0
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 74
    .local v0, "algorithm":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 75
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 76
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "AuthUtil"

    const-string v4, "SAF-A Exception:514001"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRandom()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "uuid":Ljava/lang/String;
    return-object v0
.end method
