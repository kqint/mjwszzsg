.class public Lcn/cmgame/billing/b/i;
.super Lcn/cmgame/sdk/c/a;
.source "PromotionInfo.java"


# instance fields
.field private bD:Ljava/lang/String;

.field private bE:Ljava/lang/String;

.field private bF:Ljava/lang/String;

.field private bG:Ljava/lang/String;

.field private bH:Ljava/lang/String;

.field private bI:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/b/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bD:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/i;Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcn/cmgame/billing/b/i;->bI:Z

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lcn/cmgame/billing/b/i$1;

    const-class v1, Lcn/cmgame/billing/b/i;

    const-string v2, "promotioninfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/i$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "promotionid"

    new-instance v3, Lcn/cmgame/billing/b/i$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/i$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "promotiontype"

    new-instance v3, Lcn/cmgame/billing/b/i$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/i$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "promotionname"

    new-instance v3, Lcn/cmgame/billing/b/i$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/i$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "starttime"

    new-instance v3, Lcn/cmgame/billing/b/i$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/i$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "endtime"

    new-instance v3, Lcn/cmgame/billing/b/i$6;

    invoke-direct {v3}, Lcn/cmgame/billing/b/i$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "isdoublediscount"

    new-instance v3, Lcn/cmgame/billing/b/i$7;

    invoke-direct {v3}, Lcn/cmgame/billing/b/i$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bF:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bE:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/b/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/b/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bG:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcn/cmgame/billing/b/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/cmgame/billing/b/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bH:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcn/cmgame/billing/b/i;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcn/cmgame/billing/b/i;->bI:Z

    return v0
.end method


# virtual methods
.method public ad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bD:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public ae(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bE:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public af(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bF:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public ag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bH:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public bj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bD:Ljava/lang/String;

    return-object v0
.end method

.method public bk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bE:Ljava/lang/String;

    return-object v0
.end method

.method public bl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bF:Ljava/lang/String;

    return-object v0
.end method

.method public bm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bG:Ljava/lang/String;

    return-object v0
.end method

.method public bn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/cmgame/billing/b/i;->bH:Ljava/lang/String;

    return-object v0
.end method

.method public bo()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcn/cmgame/billing/b/i;->bI:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcn/cmgame/billing/b/i;->bI:Z

    .line 145
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcn/cmgame/billing/b/i;->bG:Ljava/lang/String;

    .line 129
    return-void
.end method
