.class Lcn/cmgame/billing/api/a$9;
.super Lcn/cmgame/billing/b/e$c;
.source "GameBillingMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->u()V
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
    iput-object p1, p0, Lcn/cmgame/billing/api/a$9;->G:Lcn/cmgame/billing/api/a;

    .line 1429
    invoke-direct {p0}, Lcn/cmgame/billing/b/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 5
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
    const/16 v1, 0x8

    .line 1434
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1436
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 1438
    :cond_0
    const-string v1, ""

    .line 1439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1458
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->c(Lcn/cmgame/billing/api/a;)V

    .line 1459
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/a;Ljava/lang/String;)V

    .line 1461
    :cond_1
    return-void

    .line 1439
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/e;

    .line 1440
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1441
    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aP()Ljava/lang/String;

    move-result-object v1

    .line 1446
    :goto_1
    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aQ()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/cmgame/billing/api/a$9$1;

    invoke-direct {v4, p0, v0}, Lcn/cmgame/billing/api/a$9$1;-><init>(Lcn/cmgame/billing/api/a$9;Lcn/cmgame/billing/b/e;)V

    invoke-static {v3, v4}, Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    goto :goto_0

    .line 1443
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1431
    return-void
.end method
