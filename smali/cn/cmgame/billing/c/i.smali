.class public Lcn/cmgame/billing/c/i;
.super Lcn/cmgame/sdk/d/a;
.source "SubscribeAuthResponse.java"


# instance fields
.field private aZ:Ljava/lang/String;

.field private bM:Ljava/lang/String;

.field private cf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private cg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/cmgame/sdk/d/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->bM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/c/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->bM:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/i;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->cf:Ljava/util/List;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcn/cmgame/billing/c/i$1;

    const-class v1, Lcn/cmgame/billing/c/i;

    const-string v2, "subscribeauthresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/i$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "uid"

    new-instance v3, Lcn/cmgame/billing/c/i$2;

    invoke-direct {v3}, Lcn/cmgame/billing/c/i$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gameid"

    new-instance v3, Lcn/cmgame/billing/c/i$3;

    invoke-direct {v3}, Lcn/cmgame/billing/c/i$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "subscribepkglist"

    new-instance v3, Lcn/cmgame/billing/c/i$4;

    const-class v4, Lcn/cmgame/billing/b/h;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/i$4;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "subscribablepkglist"

    new-instance v3, Lcn/cmgame/billing/c/i$5;

    const-class v4, Lcn/cmgame/billing/b/h;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/i$5;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->aZ:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcn/cmgame/billing/c/i;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->cg:Ljava/util/List;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/c/i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->cf:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/c/i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->cg:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public M(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->aZ:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public aj(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->bM:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public bG()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->cf:Ljava/util/List;

    return-object v0
.end method

.method public bH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->cg:Ljava/util/List;

    return-object v0
.end method

.method public br()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/cmgame/billing/c/i;->bM:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->cf:Ljava/util/List;

    .line 105
    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcn/cmgame/billing/c/i;->cg:Ljava/util/List;

    .line 113
    return-void
.end method
