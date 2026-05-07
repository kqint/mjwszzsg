.class Lcn/cmgame/billing/ui/b$4;
.super Lcn/cmgame/sdk/sms/a;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->cq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;

.field private final synthetic di:Ljava/lang/String;

.field private final synthetic dj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$4;->di:Ljava/lang/String;

    iput-object p3, p0, Lcn/cmgame/billing/ui/b$4;->dj:Ljava/lang/String;

    .line 1601
    invoke-direct {p0}, Lcn/cmgame/sdk/sms/a;-><init>()V

    return-void
.end method


# virtual methods
.method public cw()V
    .locals 2

    .prologue
    .line 1630
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->di:Ljava/lang/String;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$4;->dj:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/cmgame/billing/ui/b$4;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1604
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1605
    invoke-static {p2}, Lcn/cmgame/billing/api/a;->f(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingSuccess(Ljava/lang/String;)V

    .line 1607
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1612
    invoke-static {p2}, Lcn/cmgame/billing/api/a;->f(Ljava/lang/String;)V

    .line 1617
    invoke-static {}, Lcn/cmgame/billing/api/a;->dH()Lcn/cmgame/sdk/e/b$a;

    move-result-object v0

    .line 1618
    sget-object v1, Lcn/cmgame/sdk/e/b$a;->jr:Lcn/cmgame/sdk/e/b$a;

    if-ne v1, v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    .line 1626
    :goto_0
    return-void

    .line 1620
    :cond_0
    sget-object v1, Lcn/cmgame/sdk/e/b$a;->jt:Lcn/cmgame/sdk/e/b$a;

    if-ne v1, v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->q(Lcn/cmgame/billing/ui/b;)V

    goto :goto_0

    .line 1623
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;I)V

    .line 1624
    iget-object v1, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    iget-boolean v0, v0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->g(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$4;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->h(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_1
.end method
