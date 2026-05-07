.class Lcn/cmgame/billing/ui/b$11$1;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dp:Lcn/cmgame/billing/ui/b$11;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2023
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$11;->a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$11;->a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2026
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$11;->a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 2027
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$11;->a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2032
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$11;->a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2034
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$11$1;->dp:Lcn/cmgame/billing/ui/b$11;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$11;->a(Lcn/cmgame/billing/ui/b$11;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/cmgame/sdk/e/j;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 2036
    return-void
.end method
