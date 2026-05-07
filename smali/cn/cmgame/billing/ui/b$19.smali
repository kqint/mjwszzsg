.class Lcn/cmgame/billing/ui/b$19;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->a(IIILandroid/view/View$OnClickListener;)Landroid/widget/Button;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$19;->dh:Lcn/cmgame/billing/ui/b;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$19;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 722
    invoke-static {}, Lcn/cmgame/billing/api/a;->exitApp()V

    .line 723
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$19;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->j(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$19;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->j(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/cmgame/billing/api/GameInterface$GameExitCallback;->onConfirmExit()V

    .line 726
    :cond_0
    return-void
.end method
