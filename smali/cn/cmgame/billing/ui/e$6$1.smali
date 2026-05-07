.class Lcn/cmgame/billing/ui/e$6$1;
.super Ljava/lang/Object;
.source "PackageDialog.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/e$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ff:Lcn/cmgame/billing/ui/e$6;

.field private final synthetic fg:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/e$6;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    iput-object p2, p0, Lcn/cmgame/billing/ui/e$6$1;->fg:Landroid/view/View;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 403
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->b(Lcn/cmgame/billing/ui/e;)V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    const-string v1, "500230544000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 408
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->fg:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->fg:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 412
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v1

    iget-object v2, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v2}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcn/cmgame/billing/ui/e;->a(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/e;->a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V

    .line 415
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 419
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->b(Lcn/cmgame/billing/ui/e;)V

    .line 420
    const-string v0, "gc_billing_order_fail_tip_4"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    const-string v1, "500230544000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 425
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->fg:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->fg:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 430
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v1

    iget-object v2, p0, Lcn/cmgame/billing/ui/e$6$1;->ff:Lcn/cmgame/billing/ui/e$6;

    invoke-static {v2}, Lcn/cmgame/billing/ui/e$6;->a(Lcn/cmgame/billing/ui/e$6;)Lcn/cmgame/billing/ui/e;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Lcn/cmgame/billing/ui/e;->a(ILjava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/e;->a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V

    .line 433
    return-void
.end method
