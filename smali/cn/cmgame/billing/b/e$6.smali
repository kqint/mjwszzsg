.class Lcn/cmgame/billing/b/e$6;
.super Lcn/cmgame/billing/a/g;
.source "GameDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bk:Lcn/cmgame/billing/b/e$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/e$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/e$6;->bk:Lcn/cmgame/billing/b/e$a;

    .line 359
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcn/cmgame/billing/b/e$6;->bk:Lcn/cmgame/billing/b/e$a;

    if-eqz v0, :cond_0

    .line 377
    check-cast p1, Lcn/cmgame/billing/c/c;

    .line 378
    iget-object v0, p0, Lcn/cmgame/billing/b/e$6;->bk:Lcn/cmgame/billing/b/e$a;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/c;->by()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/e$a;->C(Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/b/e$6;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const-string v0, "http://gmc.g188.net/egsb/recommendGame/getDownloadUrl"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcn/cmgame/billing/b/e$6;->bk:Lcn/cmgame/billing/b/e$a;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcn/cmgame/billing/b/e$6;->bk:Lcn/cmgame/billing/b/e$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/e$a;->m(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
