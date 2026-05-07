.class public abstract Lcn/cmgame/billing/a/a;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field protected static TAG:Ljava/lang/String;

.field private static W:I

.field private static X:J

.field private static af:Ljava/lang/String;


# instance fields
.field private Y:Lcn/cmgame/billing/a/h;

.field private Z:Lorg/apache/http/client/methods/HttpUriRequest;

.field private aa:[B

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:I

.field private ag:J

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:I

.field private ak:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private al:Lorg/apache/http/params/HttpParams;

.field private am:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x2

    sput v0, Lcn/cmgame/billing/a/a;->W:I

    .line 39
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcn/cmgame/billing/a/a;->X:J

    .line 41
    const-string v0, "Request"

    sput-object v0, Lcn/cmgame/billing/a/a;->TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcn/cmgame/billing/a/a;->af:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcn/cmgame/billing/a/a;->ab:Z

    .line 51
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ac:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ad:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ah:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ai:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcn/cmgame/billing/a/a;->aj:I

    .line 83
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ak:Ljava/util/concurrent/Future;

    .line 85
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    .line 130
    return-void
.end method

.method public constructor <init>(Lcn/cmgame/billing/a/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcn/cmgame/billing/a/a;->ab:Z

    .line 51
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ac:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ad:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ah:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ai:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcn/cmgame/billing/a/a;->aj:I

    .line 83
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ak:Ljava/util/concurrent/Future;

    .line 85
    iput-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    .line 134
    invoke-virtual {p0, p1}, Lcn/cmgame/billing/a/a;->a(Lcn/cmgame/billing/a/h;)V

    .line 135
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/a/a;I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcn/cmgame/billing/a/a;->ae:I

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/cmgame/billing/a/a;->ac:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/a/a;Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcn/cmgame/billing/a/a;->am:Lorg/apache/http/HttpResponse;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/a/a;[B)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcn/cmgame/billing/a/a;->aa:[B

    return-void
.end method

.method private b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/cmgame/billing/a/a;->ad:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/a/a;)[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->aa:[B

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/a/a;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcn/cmgame/sdk/c/c;

    invoke-direct {v0}, Lcn/cmgame/sdk/c/c;-><init>()V

    .line 254
    invoke-virtual {v0, p1}, Lcn/cmgame/sdk/c/c;->aP(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p2}, Lcn/cmgame/sdk/c/c;->setMessage(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/c;->dk()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->aa:[B

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcn/cmgame/billing/a/a;->ae:I

    .line 259
    return-void
.end method


# virtual methods
.method public abstract Y()Ljava/lang/String;
.end method

.method public abstract Z()Ljava/lang/String;
.end method

.method public abstract a(I[B)V
.end method

.method public final a(Lcn/cmgame/billing/a/h;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    .line 162
    return-void
.end method

.method public final a(Lcn/cmgame/billing/a/j;)V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->ai()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcn/cmgame/billing/a/a;->ag:J

    .line 155
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->Y()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcn/cmgame/billing/a/a;->ag:J

    iget-object v5, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcn/cmgame/billing/a/j;->a(Ljava/lang/String;Ljava/lang/String;JLcn/cmgame/billing/a/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ah:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcn/cmgame/billing/a/j;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->ai:Ljava/lang/String;

    .line 158
    :cond_1
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcn/cmgame/billing/a/a;->ak:Ljava/util/concurrent/Future;

    .line 89
    return-void
.end method

.method protected final a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 231
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcn/cmgame/billing/a/a;->af:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->Z()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/cmgame/billing/a/a;->af:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->ac:Ljava/lang/String;

    return-object v0
.end method

.method protected ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public ad()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcn/cmgame/billing/a/a;->W:I

    return v0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 80
    sget-wide v0, Lcn/cmgame/billing/a/a;->X:J

    return-wide v0
.end method

.method public af()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->ak:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method protected ag()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->al:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public ah()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public ai()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public aj()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->ai()Z

    move-result v0

    return v0
.end method

.method public final ak()Lcn/cmgame/billing/a/h;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    return-object v0
.end method

.method protected al()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->Y()Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DELETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->aa()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v3, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    invoke-virtual {v3}, Lcn/cmgame/billing/a/h;->at()Ljava/lang/String;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_1

    .line 176
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_1
    :goto_0
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 210
    :goto_1
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->ai()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/cmgame/billing/a/a;->ah:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/cmgame/billing/a/a;->ai:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 211
    const-string v1, "X-OF-Signature"

    iget-object v2, p0, Lcn/cmgame/billing/a/a;->ah:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "X-OF-Key"

    iget-object v2, p0, Lcn/cmgame/billing/a/a;->ai:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_2
    const-string v1, "OS_TYPE"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "apiVersion"

    const-string v2, "1.1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "imei"

    sget-object v2, Lcn/cmgame/sdk/e/b;->jn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "imsi"

    sget-object v2, Lcn/cmgame/sdk/e/b;->jm:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "signer"

    iget-object v2, p0, Lcn/cmgame/billing/a/a;->ah:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 224
    return-object v0

    .line 179
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_4
    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 185
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 190
    :cond_5
    const-string v0, "POST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 198
    :goto_2
    :try_start_0
    const-string v1, "UTF-8"

    .line 199
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v3, p0, Lcn/cmgame/billing/a/a;->Y:Lcn/cmgame/billing/a/h;

    invoke-virtual {v3}, Lcn/cmgame/billing/a/h;->ar()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "application/x-www-form-urlencoded; charset="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 202
    :catch_0
    move-exception v1

    .line 203
    sget-object v2, Lcn/cmgame/billing/a/a;->TAG:Ljava/lang/String;

    const-string v3, "Unable to encode request."

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_1

    .line 192
    :cond_6
    const-string v0, "PUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported HTTP method: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final am()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->al()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 263
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->ad()I

    move-result v0

    iput v0, p0, Lcn/cmgame/billing/a/a;->aj:I

    .line 264
    iput-object v1, p0, Lcn/cmgame/billing/a/a;->aa:[B

    .line 265
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->aa:[B

    if-nez v0, :cond_1

    iget v0, p0, Lcn/cmgame/billing/a/a;->aj:I

    if-gtz v0, :cond_3

    .line 317
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->aa:[B

    if-nez v0, :cond_2

    .line 318
    const-class v0, Lcn/cmgame/billing/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gc_billing_unknown_server_error"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/cmgame/billing/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_2
    return-void

    .line 267
    :cond_3
    :try_start_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->q()Lcn/cmgame/billing/a/c;

    move-result-object v0

    .line 268
    sget-object v1, Lcn/cmgame/billing/a/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "useProxy="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/sdk/e/f;->dF()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcn/cmgame/sdk/e/f;->dF()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    const-string v4, "http"

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 275
    :goto_2
    iget-object v1, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v1}, Lcn/cmgame/billing/a/a;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 276
    sget-object v2, Lcn/cmgame/billing/a/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v3, Lcn/cmgame/billing/a/a$1;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/a/a$1;-><init>(Lcn/cmgame/billing/a/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 308
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 309
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    iget v0, p0, Lcn/cmgame/billing/a/a;->aj:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/cmgame/billing/a/a;->aj:I

    if-gez v0, :cond_0

    .line 311
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gc_billing_unknown_server_error"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcn/cmgame/billing/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 311
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final an()V
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcn/cmgame/billing/a/a;->ab:Z

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/cmgame/billing/a/a;->ab:Z

    .line 334
    iget v0, p0, Lcn/cmgame/billing/a/a;->ae:I

    iget-object v1, p0, Lcn/cmgame/billing/a/a;->aa:[B

    invoke-virtual {p0, v0, v1}, Lcn/cmgame/billing/a/a;->a(I[B)V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->am:Lorg/apache/http/HttpResponse;

    .line 337
    :cond_0
    return-void
.end method

.method public ao()V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/a/a;)V

    .line 353
    :cond_0
    return-void
.end method

.method public ap()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/cmgame/billing/a/a;->Z:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 358
    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    :goto_0
    new-instance v0, Lcn/cmgame/sdk/c/c;

    invoke-direct {v0}, Lcn/cmgame/sdk/c/c;-><init>()V

    .line 367
    const-string v1, "Timeout"

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/c/c;->aP(Ljava/lang/String;)V

    .line 368
    const-string v1, "gc_billing_timeout"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/c/c;->setMessage(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/c;->dk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->aa:[B

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcn/cmgame/billing/a/a;->ae:I

    .line 371
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcn/cmgame/billing/a/a;->am:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcn/cmgame/billing/a/a;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lcn/cmgame/billing/a/a;->ab:Z

    if-nez v0, :cond_1

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/cmgame/billing/a/a;->ab:Z

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gc_billing_unknown_server_error"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    :cond_0
    const-class v0, Lcn/cmgame/billing/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/cmgame/billing/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget v0, p0, Lcn/cmgame/billing/a/a;->ae:I

    iget-object v1, p0, Lcn/cmgame/billing/a/a;->aa:[B

    invoke-virtual {p0, v0, v1}, Lcn/cmgame/billing/a/a;->a(I[B)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/a/a;->am:Lorg/apache/http/HttpResponse;

    .line 347
    :cond_1
    return-void
.end method
