.class public Lcn/cmgame/billing/b/a;
.super Lcn/cmgame/sdk/c/a;
.source "Charge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/b/a$a;,
        Lcn/cmgame/billing/b/a$b;
    }
.end annotation


# instance fields
.field private aF:Ljava/lang/String;

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aK:Ljava/lang/String;

.field private aL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aF:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const-string v1, "Pi"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, "uAccount"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    const-string v1, "VERICODE"

    invoke-virtual {v0, v1, p3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 153
    :cond_3
    const-string v1, "isP"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "dID"

    const/4 v2, 0x0

    invoke-static {v2}, Lcn/cmgame/billing/api/a;->b(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_4
    new-instance v1, Lcn/cmgame/billing/b/a$10;

    invoke-direct {v1, v0, p0, p4}, Lcn/cmgame/billing/b/a$10;-><init>(Lcn/cmgame/billing/a/h;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V

    .line 186
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 187
    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcn/cmgame/billing/b/a$1;

    const-class v1, Lcn/cmgame/billing/b/a;

    const-string v2, "resource"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/a$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usr-buy-url"

    new-instance v3, Lcn/cmgame/billing/b/a$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usr-buy-sms"

    new-instance v3, Lcn/cmgame/billing/b/a$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "sms-check-string"

    new-instance v3, Lcn/cmgame/billing/b/a$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usr-buy-smscode"

    new-instance v3, Lcn/cmgame/billing/b/a$6;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usr-tb-cid"

    new-instance v3, Lcn/cmgame/billing/b/a$7;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usr-tb-chid"

    new-instance v3, Lcn/cmgame/billing/b/a$8;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usr-tb-cpid"

    new-instance v3, Lcn/cmgame/billing/b/a$9;

    invoke-direct {v3}, Lcn/cmgame/billing/b/a$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aG:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aI:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aH:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aJ:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aK:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcn/cmgame/billing/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/cmgame/billing/b/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aK:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aL:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public aA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aJ:Ljava/lang/String;

    return-object v0
.end method

.method public aB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aK:Ljava/lang/String;

    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aL:Ljava/lang/String;

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aF:Ljava/lang/String;

    return-object v0
.end method

.method public ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aG:Ljava/lang/String;

    return-object v0
.end method

.method public ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aH:Ljava/lang/String;

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcn/cmgame/billing/b/a;->aI:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 193
    new-instance v1, Lcn/cmgame/billing/a/h;

    invoke-direct {v1}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 195
    const-string v3, "type"

    if-eqz v2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v3, v0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "dId"

    const/4 v3, 0x0

    invoke-static {v3}, Lcn/cmgame/billing/api/a;->b(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "cpId"

    iget-object v3, p0, Lcn/cmgame/billing/b/a;->aL:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "contentId"

    iget-object v3, p0, Lcn/cmgame/billing/b/a;->aJ:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "channelId"

    iget-object v3, p0, Lcn/cmgame/billing/b/a;->aK:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-nez v2, :cond_0

    .line 201
    const-string v0, "pi"

    invoke-virtual {v1, v0, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    new-instance v0, Lcn/cmgame/billing/b/a$2;

    invoke-direct {v0, p0, v1, p1}, Lcn/cmgame/billing/b/a$2;-><init>(Lcn/cmgame/billing/b/a;Lcn/cmgame/billing/a/h;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcn/cmgame/billing/a/g;->ao()V

    .line 233
    return-void

    .line 195
    :cond_1
    const-string v0, "2"

    goto :goto_0
.end method

.method public u(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/cmgame/billing/b/a;->aL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/b/a;->aJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/b/a;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aF:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aG:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aH:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aI:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcn/cmgame/billing/b/a;->aJ:Ljava/lang/String;

    .line 273
    return-void
.end method
