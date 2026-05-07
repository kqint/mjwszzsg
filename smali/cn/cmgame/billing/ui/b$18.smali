.class Lcn/cmgame/billing/ui/b$18;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/b;->setTabIndex(I)V

    .line 450
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    iget-boolean v0, v0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->i(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/ui/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/ui/e;->cO()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$18;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->i(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/ui/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/ui/e;->cN()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;

    goto :goto_0
.end method
