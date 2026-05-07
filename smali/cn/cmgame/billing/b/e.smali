.class public Lcn/cmgame/billing/b/e;
.super Lcn/cmgame/sdk/c/a;
.source "GameDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/b/e$a;,
        Lcn/cmgame/billing/b/e$b;,
        Lcn/cmgame/billing/b/e$c;
    }
.end annotation


# instance fields
.field protected aS:Ljava/lang/String;

.field protected aZ:Ljava/lang/String;

.field protected ba:Ljava/lang/String;

.field protected bb:Ljava/lang/String;

.field protected bc:Ljava/lang/String;

.field protected bd:Ljava/lang/String;

.field protected be:Ljava/lang/String;

.field protected bf:Ljava/lang/String;

.field protected bg:J

.field private bh:[B

.field private bi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/j;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/cmgame/billing/util/c;Lcn/cmgame/billing/b/e;)V
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p2}, Lcn/cmgame/billing/b/e;->aQ()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/b/e$7;

    invoke-direct {v1, p2}, Lcn/cmgame/billing/b/e$7;-><init>(Lcn/cmgame/billing/b/e;)V

    invoke-static {v0, v1}, Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    .line 414
    return-void
.end method

.method public static a(Lcn/cmgame/billing/b/e$c;)V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 310
    const-string v1, "ua"

    const-string v2, "HTC_Desire"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "clientPlatform"

    const-string v2, "03"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "channelId"

    const-string v2, "GH_DEFAULT"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcn/cmgame/billing/b/e$5;

    invoke-direct {v1, v0, p0}, Lcn/cmgame/billing/b/e$5;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/e$c;)V

    .line 347
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 348
    return-void
.end method

.method public static a(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
    .locals 1

    .prologue
    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v0, Lcn/cmgame/billing/b/e$8;

    invoke-direct {v0, p0, p1}, Lcn/cmgame/billing/b/e$8;-><init>(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    .line 451
    invoke-virtual {v0}, Lcn/cmgame/billing/a/b;->ao()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/e$a;)V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 355
    const-string v1, "gameId"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "ua"

    const-string v2, "HTC_Desire"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "clientPlatform"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v1, Lcn/cmgame/billing/b/e$6;

    invoke-direct {v1, v0, p3}, Lcn/cmgame/billing/b/e$6;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/e$a;)V

    .line 393
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 394
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/e$b;)V
    .locals 3

    .prologue
    .line 459
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 460
    const-string v1, "gameId"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, "ua"

    const-string v2, "HTC_Desire"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "clientPlatform"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcn/cmgame/billing/b/e$9;

    invoke-direct {v1, v0, p3}, Lcn/cmgame/billing/b/e$9;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/e$b;)V

    .line 498
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 499
    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 148
    new-instance v0, Lcn/cmgame/billing/b/e$1;

    const-class v1, Lcn/cmgame/billing/b/e;

    const-string v2, "gamedetail"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/e$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gameid"

    new-instance v3, Lcn/cmgame/billing/b/e$10;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "name"

    new-instance v3, Lcn/cmgame/billing/b/e$11;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$11;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "logo"

    new-instance v3, Lcn/cmgame/billing/b/e$12;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$12;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "filesize"

    new-instance v3, Lcn/cmgame/billing/b/e$13;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$13;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "description"

    new-instance v3, Lcn/cmgame/billing/b/e$14;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$14;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cpname"

    new-instance v3, Lcn/cmgame/billing/b/e$15;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$15;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "downloadtimes"

    new-instance v3, Lcn/cmgame/billing/b/e$16;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$16;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "category"

    new-instance v3, Lcn/cmgame/billing/b/e$17;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$17;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "rank"

    new-instance v3, Lcn/cmgame/billing/b/e$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "price"

    new-instance v3, Lcn/cmgame/billing/b/e$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/e$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "screenshots"

    new-instance v3, Lcn/cmgame/billing/b/e$4;

    const-class v4, Lcn/cmgame/billing/b/j;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/b/e$4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-object v0
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->aS:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->aZ:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->ba:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->bc:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->bd:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->be:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->bf:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 126
    iput-wide p1, p0, Lcn/cmgame/billing/b/e;->bg:J

    .line 127
    return-void
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->aS:Ljava/lang/String;

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->ba:Ljava/lang/String;

    return-object v0
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->bc:Ljava/lang/String;

    return-object v0
.end method

.method public aS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->bd:Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->be:Ljava/lang/String;

    return-object v0
.end method

.method public aU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->bf:Ljava/lang/String;

    return-object v0
.end method

.method public aV()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcn/cmgame/billing/b/e;->bg:J

    return-wide v0
.end method

.method public aW()[B
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->bh:[B

    return-object v0
.end method

.method public aX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->bi:Ljava/util/List;

    return-object v0
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->bh:[B

    .line 143
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->bi:Ljava/util/List;

    .line 503
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->bb:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/cmgame/billing/b/e;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->bb:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/cmgame/billing/b/e;->mName:Ljava/lang/String;

    .line 71
    return-void
.end method
