.class public Lcn/cmgame/billing/api/b;
.super Ljava/lang/Object;
.source "GameLogin.java"


# static fields
.field private static final J:I = 0x3

.field private static final K:I = 0x1f40

.field private static L:Ljava/lang/String; = null

.field private static final N:I = 0x2


# instance fields
.field private M:I

.field private O:I

.field private P:Lcn/cmgame/billing/b/k;

.field private Q:Lcn/cmgame/sdk/e/i;

.field private R:Lcn/cmgame/sdk/e/i;

.field private k:Lcn/cmgame/billing/b/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcn/cmgame/billing/api/b;->M:I

    .line 52
    iput v0, p0, Lcn/cmgame/billing/api/b;->O:I

    .line 63
    iput-object p1, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    .line 65
    return-void
.end method

.method private J()V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    new-instance v0, Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    const-string v2, "Theme_billing_dialog"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/ui/b;-><init>(Landroid/content/Context;I)V

    .line 91
    iget-object v1, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/b;->e(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private K()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcn/cmgame/billing/api/b$1;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/b$1;-><init>(Lcn/cmgame/billing/api/b;)V

    invoke-direct {p0, v0}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/sdk/b/b;)V

    .line 117
    return-void
.end method

.method private M()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcn/cmgame/billing/api/b$3;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/b$3;-><init>(Lcn/cmgame/billing/api/b;)V

    invoke-direct {p0, v0}, Lcn/cmgame/billing/api/b;->b(Lcn/cmgame/sdk/b/b;)V

    .line 198
    return-void
.end method

.method private O()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 370
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    invoke-direct {p0, v1}, Lcn/cmgame/billing/api/b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-direct {p0, v0}, Lcn/cmgame/billing/api/b;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 376
    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/cmgame/billing/api/b;->c(I)Z

    move-result v0

    goto :goto_0
.end method

.method private P()V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcn/cmgame/billing/api/b$6;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/b$6;-><init>(Lcn/cmgame/billing/api/b;)V

    invoke-static {v0}, Lcn/cmgame/billing/b/l;->a(Lcn/cmgame/billing/b/l$a;)V

    .line 440
    return-void
.end method

.method private U()V
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Lcn/cmgame/billing/api/a;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lcn/cmgame/billing/api/a;->a()Lcn/cmgame/billing/util/f;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v0}, Lcn/cmgame/billing/util/f;->dc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/api/a;->j(Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/cmgame/billing/api/b;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcn/cmgame/billing/api/b;->O:I

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/b/k;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcn/cmgame/billing/api/b;->P:Lcn/cmgame/billing/b/k;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/b/l;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/billing/b/l;)V

    return-void
.end method

.method private a(Lcn/cmgame/billing/b/l;)V
    .locals 4

    .prologue
    .line 447
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcn/cmgame/billing/b/l;->bw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcn/cmgame/billing/b/l;->bv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->V()Lcn/cmgame/sdk/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i;->dL()Lcn/cmgame/sdk/e/i$a;

    move-result-object v0

    .line 451
    invoke-virtual {p1}, Lcn/cmgame/billing/b/l;->bw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcn/cmgame/sdk/e/e;->h([B)Ljava/lang/String;

    move-result-object v1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_TOKEN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcn/cmgame/sdk/e/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_IMSI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/sdk/e/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i$a;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcn/cmgame/sdk/b/b;)V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 127
    const-string v1, "loginType"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "gameId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "contentId"

    iget-object v2, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "channelId"

    iget-object v2, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "globalAuth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "gamePlayerAuth"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcn/cmgame/billing/api/b$2;

    invoke-direct {v1, p0, v0, p1}, Lcn/cmgame/billing/api/b$2;-><init>(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;)V

    .line 168
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 169
    return-void
.end method

.method private a(Lcn/cmgame/sdk/e/i$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 542
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v1, "last_logged_in_account"

    invoke-virtual {p1, v1, v0}, Lcn/cmgame/sdk/e/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->U()V

    return-void
.end method

.method static synthetic b(Lcn/cmgame/billing/api/b;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcn/cmgame/billing/api/b;->M:I

    return-void
.end method

.method private b(Lcn/cmgame/sdk/b/b;)V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 202
    const-string v1, "loginType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "gameId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "contentId"

    iget-object v2, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "channelId"

    iget-object v2, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "userToken"

    sget-object v2, Lcn/cmgame/billing/api/b;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "globalAuth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "gamePlayerAuth"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Lcn/cmgame/billing/api/b$4;

    invoke-direct {v1, p0, v0, p1}, Lcn/cmgame/billing/api/b$4;-><init>(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;)V

    .line 245
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 246
    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/api/b;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcn/cmgame/billing/api/b;->O:I

    return v0
.end method

.method private c(I)Z
    .locals 5

    .prologue
    .line 384
    const-string v0, "GameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validate token["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] saved in local file..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_TOKEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_IMSI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->V()Lcn/cmgame/sdk/e/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/sdk/e/i;->dM()Lcn/cmgame/sdk/e/i$b;

    move-result-object v3

    .line 395
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v4}, Lcn/cmgame/sdk/e/i$b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcn/cmgame/sdk/e/i$b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {v1}, Lcn/cmgame/sdk/e/e;->aZ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->i([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/cmgame/billing/api/b;->L:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {v3}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 399
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    .line 401
    :catchall_0
    move-exception v0

    .line 402
    invoke-virtual {v3}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 403
    throw v0

    .line 402
    :cond_0
    invoke-virtual {v3}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 404
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->K()V

    return-void
.end method

.method static synthetic e(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->J()V

    return-void
.end method

.method static synthetic f(Lcn/cmgame/billing/api/b;)Lcn/cmgame/billing/b/k;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->P:Lcn/cmgame/billing/b/k;

    return-object v0
.end method

.method private static f(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 358
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcn/cmgame/billing/api/b;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcn/cmgame/billing/api/b;->M:I

    return v0
.end method

.method static synthetic h(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->P()V

    return-void
.end method

.method static synthetic i(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->M()V

    return-void
.end method

.method static synthetic p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcn/cmgame/billing/api/b;->L:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Lcn/cmgame/billing/b/k;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->P:Lcn/cmgame/billing/b/k;

    return-object v0
.end method

.method public I()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->J()V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->dF()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->K()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->L()V

    goto :goto_0
.end method

.method public L()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->M()V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/b;->e(Z)V

    goto :goto_0
.end method

.method public N()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "LAST_TIME"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/cmgame/billing/api/b;->f(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/b;->e(Z)V

    .line 353
    :cond_1
    return-void
.end method

.method public Q()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->V()Lcn/cmgame/sdk/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i;->dM()Lcn/cmgame/sdk/e/i$b;

    move-result-object v1

    .line 486
    :try_start_0
    const-string v2, "last_logged_in_account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/cmgame/sdk/e/i$b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 487
    if-nez v2, :cond_0

    .line 489
    :goto_0
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 487
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v2}, Lcn/cmgame/sdk/e/e;->aZ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->i([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    .line 489
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 490
    throw v0
.end method

.method public R()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->W()Lcn/cmgame/sdk/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i;->dM()Lcn/cmgame/sdk/e/i$b;

    move-result-object v1

    .line 502
    :try_start_0
    const-string v2, "is_remember_account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/cmgame/sdk/e/i$b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 503
    if-nez v2, :cond_0

    .line 505
    :goto_0
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 503
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v2}, Lcn/cmgame/sdk/e/e;->aZ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->i([B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    .line 505
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$b;->complete()V

    .line 506
    throw v0
.end method

.method public S()V
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->V()Lcn/cmgame/sdk/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i;->dL()Lcn/cmgame/sdk/e/i$a;

    move-result-object v1

    .line 579
    :try_start_0
    const-string v0, "last_logged_in_account"

    invoke-virtual {v1, v0}, Lcn/cmgame/sdk/e/i$a;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 583
    return-void

    .line 580
    :catchall_0
    move-exception v0

    .line 581
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 582
    throw v0
.end method

.method public T()V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->W()Lcn/cmgame/sdk/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i;->dL()Lcn/cmgame/sdk/e/i$a;

    move-result-object v1

    .line 591
    :try_start_0
    const-string v0, "is_remember_account"

    invoke-virtual {v1, v0}, Lcn/cmgame/sdk/e/i$a;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 595
    return-void

    .line 592
    :catchall_0
    move-exception v0

    .line 593
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 594
    throw v0
.end method

.method public V()Lcn/cmgame/sdk/e/i;
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->Q:Lcn/cmgame/sdk/e/i;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Lcn/cmgame/sdk/e/i;

    iget-object v1, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/cmgame/sdk/e/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/cmgame/billing/api/b;->Q:Lcn/cmgame/sdk/e/i;

    .line 617
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->Q:Lcn/cmgame/sdk/e/i;

    return-object v0
.end method

.method public W()Lcn/cmgame/sdk/e/i;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->R:Lcn/cmgame/sdk/e/i;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcn/cmgame/sdk/e/i;

    iget-object v1, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/cmgame/sdk/e/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/cmgame/billing/api/b;->R:Lcn/cmgame/sdk/e/i;

    .line 629
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->R:Lcn/cmgame/sdk/e/i;

    return-object v0
.end method

.method public X()Z
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 468
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 469
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 474
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 471
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 472
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 250
    const-string v1, "loginType"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "gameId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "contentId"

    iget-object v2, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "channelId"

    iget-object v2, p0, Lcn/cmgame/billing/api/b;->k:Lcn/cmgame/billing/b/a;

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "globalAuth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "gamePlayerAuth"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v1, Lcn/cmgame/billing/api/b$5;

    invoke-direct {v1, p0, v0, p3, p1}, Lcn/cmgame/billing/api/b$5;-><init>(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 304
    return-void
.end method

.method public e(Z)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 311
    iget-object v0, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-static {v11}, Lcn/cmgame/billing/api/a;->b(Z)Ljava/lang/String;

    move-result-object v1

    .line 315
    sget-object v2, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    .line 316
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iput v11, p0, Lcn/cmgame/billing/api/b;->M:I

    .line 323
    sput-object v3, Lcn/cmgame/billing/api/b;->L:Ljava/lang/String;

    .line 324
    if-eqz p1, :cond_2

    const-string v0, "BUB@T|"

    .line 325
    :goto_1
    invoke-virtual {p0, v13}, Lcn/cmgame/billing/api/b;->a(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/cmgame/billing/util/Const;->gk:Ljava/lang/String;

    .line 326
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 327
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/cmgame/billing/api/a;->dH()Lcn/cmgame/sdk/e/b$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v7

    .line 331
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v8

    .line 332
    const-string v9, "{0}@{1}@{2}@{3}@{4}@{5}@{6}@{7}@{8}"

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/String;

    aput-object v2, v10, v11

    sget-object v2, Lcn/cmgame/billing/util/Const;->gk:Ljava/lang/String;

    aput-object v2, v10, v12

    const/4 v2, 0x2

    aput-object v1, v10, v2

    const/4 v1, 0x3

    aput-object v5, v10, v1

    aput-object v7, v10, v13

    const/4 v1, 0x5

    aput-object v8, v10, v1

    const/4 v1, 0x6

    aput-object v3, v10, v1

    const/4 v1, 0x7

    aput-object v4, v10, v1

    const/16 v1, 0x8

    aput-object v6, v10, v1

    invoke-static {v9, v10}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    const-string v2, "GameSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start send message raw:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v1}, Lcn/cmgame/sdk/e/a;->aS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    const-string v1, "GameSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start send message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :try_start_0
    iget-object v1, p0, Lcn/cmgame/billing/api/b;->mContext:Landroid/content/Context;

    const-string v2, "10658422"

    const/4 v3, 0x0

    const/16 v4, 0x4e20

    invoke-static {v1, v2, v0, v3, v4}, Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/a;I)V

    .line 339
    const-string v0, "LAST_TIME"

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/cmgame/billing/api/b;->f(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-direct {p0}, Lcn/cmgame/billing/api/b;->P()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_0

    .line 324
    :cond_2
    const-string v0, "BUB@|"

    goto/16 :goto_1
.end method

.method public n(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->V()Lcn/cmgame/sdk/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i;->dL()Lcn/cmgame/sdk/e/i$a;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->Q()Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->S()V

    .line 525
    :cond_0
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/sdk/e/i$a;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 530
    return-void

    .line 526
    :catchall_0
    move-exception v1

    .line 527
    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 528
    throw v1
.end method

.method public o(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->W()Lcn/cmgame/sdk/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/sdk/e/i;->dL()Lcn/cmgame/sdk/e/i$a;

    move-result-object v1

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->R()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcn/cmgame/billing/api/b;->T()V

    .line 559
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/e;->h([B)Ljava/lang/String;

    move-result-object v0

    .line 560
    const-string v2, "is_remember_account"

    invoke-virtual {v1, v2, v0}, Lcn/cmgame/sdk/e/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 568
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    .line 566
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/i$a;->commit()V

    .line 567
    throw v0
.end method
