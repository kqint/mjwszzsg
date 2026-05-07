.class Lcn/cmgame/billing/ui/b$6;
.super Lcn/cmgame/billing/b/a$a;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->cs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    .line 1724
    invoke-direct {p0}, Lcn/cmgame/billing/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public aE()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1740
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;I)V

    .line 1741
    iget-object v1, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    iget-boolean v0, v0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->t(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    .line 1742
    return-void

    .line 1741
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->u(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1727
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0, v3}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Z)V

    .line 1728
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_fail_vericode"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 1729
    const-string v0, "BaseDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetch verifycode fail and reason:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1731
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1732
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->s(Lcn/cmgame/billing/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "gc_billing_dialog_getverifycode_again"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->s(Lcn/cmgame/billing/ui/b;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1734
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$6;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->s(Lcn/cmgame/billing/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1735
    return-void
.end method
