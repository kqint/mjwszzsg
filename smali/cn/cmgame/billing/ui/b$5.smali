.class Lcn/cmgame/billing/ui/b$5;
.super Lcn/cmgame/billing/b/a$a;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bm:Ljava/lang/String;

.field final synthetic dh:Lcn/cmgame/billing/ui/b;

.field private final synthetic dk:Ljava/lang/String;

.field private final synthetic dl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$5;->dk:Ljava/lang/String;

    iput-object p3, p0, Lcn/cmgame/billing/ui/b$5;->bm:Ljava/lang/String;

    iput-object p4, p0, Lcn/cmgame/billing/ui/b$5;->dl:Ljava/lang/String;

    .line 1676
    invoke-direct {p0}, Lcn/cmgame/billing/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public aE()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1693
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1694
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->b(Lcn/cmgame/billing/ui/b;I)V

    .line 1695
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dk:Ljava/lang/String;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->f(Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingSuccess(Ljava/lang/String;)V

    .line 1697
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1679
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0, v3}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1680
    const-string v0, "BaseDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CMWAP billing fail and reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dk:Ljava/lang/String;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->f(Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->r(Lcn/cmgame/billing/ui/b;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1683
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0, v3}, Lcn/cmgame/billing/ui/b;->b(Lcn/cmgame/billing/ui/b;I)V

    .line 1689
    :goto_0
    return-void

    .line 1687
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$5;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$5;->bm:Ljava/lang/String;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b$5;->dl:Ljava/lang/String;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b$5;->dk:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
