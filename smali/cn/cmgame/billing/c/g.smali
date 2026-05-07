.class public Lcn/cmgame/billing/c/g;
.super Lcn/cmgame/sdk/d/b;
.source "RecommendGameInfoResponse.java"


# instance fields
.field private cc:Lcn/cmgame/billing/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/g;)Lcn/cmgame/billing/b/e;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/cmgame/billing/c/g;->cc:Lcn/cmgame/billing/b/e;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/c/g;Lcn/cmgame/billing/b/e;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcn/cmgame/billing/c/g;->cc:Lcn/cmgame/billing/b/e;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 22
    new-instance v0, Lcn/cmgame/billing/c/g$1;

    const-class v1, Lcn/cmgame/billing/c/g;

    const-string v2, "recommendgameinforesponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/g$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gamedetail"

    new-instance v3, Lcn/cmgame/billing/c/g$2;

    const-class v4, Lcn/cmgame/billing/b/e;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/g$2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object v0
.end method


# virtual methods
.method public b(Lcn/cmgame/billing/b/e;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/cmgame/billing/c/g;->cc:Lcn/cmgame/billing/b/e;

    .line 15
    return-void
.end method

.method public bE()Lcn/cmgame/billing/b/e;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/cmgame/billing/c/g;->cc:Lcn/cmgame/billing/b/e;

    return-object v0
.end method
