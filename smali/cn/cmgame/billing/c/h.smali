.class public Lcn/cmgame/billing/c/h;
.super Lcn/cmgame/sdk/d/a;
.source "RecommendGameListResponse.java"


# instance fields
.field private cd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private ce:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/cmgame/sdk/d/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/h;)Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/cmgame/billing/c/h;->cd:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/c/h;I)V
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcn/cmgame/billing/c/h;->ce:I

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/h;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/cmgame/billing/c/h;->cd:Ljava/util/List;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcn/cmgame/billing/c/h$1;

    const-class v1, Lcn/cmgame/billing/c/h;

    const-string v2, "recommendgamelistresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/h$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gamelist"

    new-instance v3, Lcn/cmgame/billing/c/h$2;

    const-class v4, Lcn/cmgame/billing/b/e;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/h$2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "total"

    new-instance v3, Lcn/cmgame/billing/c/h$3;

    invoke-direct {v3}, Lcn/cmgame/billing/c/h$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/h;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcn/cmgame/billing/c/h;->ce:I

    return v0
.end method


# virtual methods
.method public bF()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcn/cmgame/billing/c/h;->cd:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lcn/cmgame/billing/c/h;->cd:Ljava/util/List;

    .line 27
    return-void
.end method
