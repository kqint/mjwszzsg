.class Lcn/cmgame/billing/ui/b$9;
.super Lcn/cmgame/billing/b/a$a;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->ct()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;

.field private final synthetic dk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$9;->dk:Ljava/lang/String;

    .line 1870
    invoke-direct {p0}, Lcn/cmgame/billing/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public aE()V
    .locals 2

    .prologue
    .line 1880
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1881
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dk:Ljava/lang/String;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->f(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingSuccess(Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1874
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dk:Ljava/lang/String;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->f(Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$9;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    .line 1876
    return-void
.end method
