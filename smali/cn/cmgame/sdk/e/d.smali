.class public Lcn/cmgame/sdk/e/d;
.super Ljava/lang/Object;
.source "DESEncode.java"


# instance fields
.field private jA:Ljavax/crypto/Cipher;

.field private jB:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/cmgame/sdk/e/d;->f([B)Ljava/security/Key;

    move-result-object v0

    .line 39
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcn/cmgame/sdk/e/d;->jA:Ljavax/crypto/Cipher;

    .line 40
    iget-object v1, p0, Lcn/cmgame/sdk/e/d;->jA:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 42
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcn/cmgame/sdk/e/d;->jB:Ljavax/crypto/Cipher;

    .line 43
    iget-object v1, p0, Lcn/cmgame/sdk/e/d;->jB:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 44
    return-void
.end method

.method private f([B)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 69
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 72
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    return-object v0

    .line 70
    :cond_1
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public e([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcn/cmgame/sdk/e/d;->jA:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
