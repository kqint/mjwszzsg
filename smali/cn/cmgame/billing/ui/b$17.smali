.class Lcn/cmgame/billing/ui/b$17;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->bV()Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/b;->setTabIndex(I)V

    .line 431
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->d(Lcn/cmgame/billing/ui/b;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->d(Lcn/cmgame/billing/ui/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 432
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    iget-boolean v0, v0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->e(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->f(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;

    goto :goto_0

    .line 437
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->d(Lcn/cmgame/billing/ui/b;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 438
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    iget-boolean v0, v0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->g(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;

    goto :goto_0

    .line 441
    :cond_4
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$17;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->h(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;

    goto :goto_0
.end method
