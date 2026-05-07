.class public Lcn/cmgame/billing/c/b;
.super Lcn/cmgame/sdk/d/a;
.source "ChargePointListResponse.java"


# instance fields
.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/cmgame/sdk/d/a;-><init>()V

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lcn/cmgame/billing/c/b$1;

    const-class v1, Lcn/cmgame/billing/c/b;

    const-string v2, "consumercodelist"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/b$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "consumercodelist"

    new-instance v3, Lcn/cmgame/billing/c/b$2;

    const-class v4, Lcn/cmgame/billing/b/b;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/b$2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object v0
.end method


# virtual methods
.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcn/cmgame/billing/c/b;->l:Ljava/util/List;

    .line 26
    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcn/cmgame/billing/c/b;->l:Ljava/util/List;

    return-object v0
.end method
