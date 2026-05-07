.class Lcn/cmgame/billing/b/e$5;
.super Lcn/cmgame/billing/a/g;
.source "GameDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/e;->a(Lcn/cmgame/billing/b/e$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bj:Lcn/cmgame/billing/b/e$c;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/e$c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/e$5;->bj:Lcn/cmgame/billing/b/e$c;

    .line 313
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcn/cmgame/billing/b/e$5;->bj:Lcn/cmgame/billing/b/e$c;

    if-eqz v0, :cond_0

    .line 331
    check-cast p1, Lcn/cmgame/billing/c/h;

    .line 332
    iget-object v0, p0, Lcn/cmgame/billing/b/e$5;->bj:Lcn/cmgame/billing/b/e$c;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/h;->bF()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/e$c;->b(Ljava/util/List;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/b/e$5;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, "http://gmc.g188.net/egsb/recommendGame/gameList"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcn/cmgame/billing/b/e$5;->bj:Lcn/cmgame/billing/b/e$c;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcn/cmgame/billing/b/e$5;->bj:Lcn/cmgame/billing/b/e$c;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/e$c;->m(Ljava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
