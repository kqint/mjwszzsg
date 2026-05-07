.class Lcn/cmgame/billing/ui/e$8;
.super Ljava/lang/Object;
.source "PackageDialog.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/e;->a(Landroid/widget/Button;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcn/cmgame/billing/ui/e;

.field private final synthetic fh:Lcn/cmgame/billing/b/k;

.field private final synthetic fi:Landroid/widget/Button;

.field private final synthetic fj:Z


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/b/k;Landroid/widget/Button;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iput-object p2, p0, Lcn/cmgame/billing/ui/e$8;->fh:Lcn/cmgame/billing/b/k;

    iput-object p3, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    iput-boolean p4, p0, Lcn/cmgame/billing/ui/e$8;->fj:Z

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 575
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->b(Lcn/cmgame/billing/ui/e;)V

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/h;->bg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 579
    iget-object v1, p0, Lcn/cmgame/billing/ui/e$8;->fh:Lcn/cmgame/billing/b/k;

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 580
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1, v3, v4}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;ILjava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/a;->b(Landroid/view/View;)V

    .line 585
    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 587
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/e$8;->fj:Z

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    const-string v1, "gc_billing_member_join"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    :goto_1
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v2, v3, v4}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;ILjava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/e;->a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V

    goto :goto_0

    .line 592
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public m(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 599
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->b(Lcn/cmgame/billing/ui/e;)V

    .line 600
    const-string v0, "gc_billing_order_fail_tip_4"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/h;->bg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcn/cmgame/billing/api/a;->b(I)V

    .line 604
    iget-object v1, p0, Lcn/cmgame/billing/ui/e$8;->fh:Lcn/cmgame/billing/b/k;

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1, v4, p1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;ILjava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/a;->b(Landroid/view/View;)V

    .line 612
    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 613
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 614
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/e$8;->fj:Z

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fi:Landroid/widget/Button;

    const-string v1, "gc_billing_member_join"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 622
    :goto_1
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v2, v4, p1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;ILjava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/e;->a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V

    goto :goto_0

    .line 619
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$8;->fc:Lcn/cmgame/billing/ui/e;

    iget-object v0, v0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
