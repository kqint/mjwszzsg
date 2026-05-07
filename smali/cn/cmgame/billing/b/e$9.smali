.class Lcn/cmgame/billing/b/e$9;
.super Lcn/cmgame/billing/a/g;
.source "GameDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bn:Lcn/cmgame/billing/b/e$b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/e$b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/e$9;->bn:Lcn/cmgame/billing/b/e$b;

    .line 464
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcn/cmgame/billing/b/e$9;->bn:Lcn/cmgame/billing/b/e$b;

    if-eqz v0, :cond_0

    .line 482
    check-cast p1, Lcn/cmgame/billing/c/g;

    .line 483
    iget-object v0, p0, Lcn/cmgame/billing/b/e$9;->bn:Lcn/cmgame/billing/b/e$b;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/g;->bE()Lcn/cmgame/billing/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/e$b;->a(Lcn/cmgame/billing/b/e;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/b/e$9;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    const-string v0, "http://gmc.g188.net/egsb/recommendGame/gameInfo"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcn/cmgame/billing/b/e$9;->bn:Lcn/cmgame/billing/b/e$b;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcn/cmgame/billing/b/e$9;->bn:Lcn/cmgame/billing/b/e$b;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/e$b;->m(Ljava/lang/String;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
