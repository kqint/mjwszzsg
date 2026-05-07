.class Lcn/cmgame/billing/ui/b$21;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->cd()Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$21;->dh:Lcn/cmgame/billing/ui/b;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$21;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 793
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$21;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$21;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$21;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onUserOperCancel(Ljava/lang/String;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$21;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->m(Lcn/cmgame/billing/ui/b;)V

    .line 797
    return-void
.end method
