.class public Lcom/k99k/tools/encrypter/SKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k99k/tools/encrypter/SKey;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/k99k/tools/encrypter/SKey;->c:[B

    iput-object p2, p0, Lcom/k99k/tools/encrypter/SKey;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k99k/tools/encrypter/SKey;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnc()[B
    .locals 1

    iget-object v0, p0, Lcom/k99k/tools/encrypter/SKey;->c:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lcom/k99k/tools/encrypter/SKey;->c:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k99k/tools/encrypter/SKey;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/k99k/tools/encrypter/SKey;->b:Ljava/lang/String;

    return-void
.end method

.method public final setEnc([B)V
    .locals 0

    iput-object p1, p0, Lcom/k99k/tools/encrypter/SKey;->c:[B

    return-void
.end method

.method public final setFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/k99k/tools/encrypter/SKey;->d:Ljava/lang/String;

    return-void
.end method
