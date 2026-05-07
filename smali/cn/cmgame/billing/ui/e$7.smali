.class Lcn/cmgame/billing/ui/e$7;
.super Ljava/lang/Object;
.source "PackageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/e;->b(ILjava/lang/String;)Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fc:Lcn/cmgame/billing/ui/e;

.field private final synthetic fe:I


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/e;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    iput p2, p0, Lcn/cmgame/billing/ui/e$7;->fe:I

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcn/cmgame/billing/ui/e$7;->fe:I

    packed-switch v0, :pswitch_data_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 518
    :pswitch_0
    iget v0, p0, Lcn/cmgame/billing/ui/e$7;->fe:I

    if-eqz v0, :cond_1

    const-string v0, "000"

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e;->e(Lcn/cmgame/billing/ui/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    check-cast p1, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/cmgame/billing/ui/e;->a(Lcn/cmgame/billing/ui/e;Landroid/widget/Button;Z)V

    goto :goto_0

    .line 521
    :cond_2
    const-string v0, "201005"

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e;->e(Lcn/cmgame/billing/ui/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 522
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 523
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e;->f(Lcn/cmgame/billing/ui/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingSuccess(Ljava/lang/String;)V

    .line 525
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/e;->dismiss()V

    .line 526
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 527
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    .line 529
    :cond_4
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    goto :goto_0

    .line 534
    :cond_5
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/e;->dismiss()V

    .line 535
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    goto :goto_0

    .line 541
    :pswitch_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 542
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v1}, Lcn/cmgame/billing/ui/e;->f(Lcn/cmgame/billing/ui/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingSuccess(Ljava/lang/String;)V

    .line 544
    :cond_6
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/e;->dismiss()V

    .line 545
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 546
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    .line 548
    :cond_7
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcn/cmgame/billing/ui/e$7;->fc:Lcn/cmgame/billing/ui/e;

    invoke-static {v0}, Lcn/cmgame/billing/ui/e;->d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/a;->dismiss()V

    goto/16 :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
