.class Lcn/cmgame/billing/api/a$8;
.super Lcn/cmgame/billing/b/h$a;
.source "GameBillingMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic G:Lcn/cmgame/billing/api/a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    .line 1381
    invoke-direct {p0}, Lcn/cmgame/billing/b/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1389
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1390
    iget-object v0, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    invoke-virtual {v0, v4}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 1391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1395
    iget-object v0, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1399
    :goto_1
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1400
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1407
    :goto_2
    iget-object v0, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    iget-object v1, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/h;

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/b/h;)V

    .line 1411
    :cond_1
    return-void

    .line 1392
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/h;

    .line 1393
    invoke-virtual {v0}, Lcn/cmgame/billing/b/h;->bg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1397
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->b(I)V

    goto :goto_1

    .line 1400
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/h;

    .line 1401
    const-string v2, "500230544000"

    invoke-virtual {v0}, Lcn/cmgame/billing/b/h;->bg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1402
    iget-object v1, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    invoke-virtual {v1, v4}, Lcn/cmgame/billing/api/a;->d(Z)V

    .line 1403
    iget-object v1, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/b/h;)V

    goto :goto_2
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcn/cmgame/billing/api/a$8;->G:Lcn/cmgame/billing/api/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 1385
    return-void
.end method
