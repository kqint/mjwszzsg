.class Lcn/cmgame/billing/ui/b$1;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$BillingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->bS()V
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingFail(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 301
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_fail"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 304
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public onBillingSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 272
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->d(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcn/cmgame/billing/api/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gc_billing_ok"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 277
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->b(Lcn/cmgame/billing/ui/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->setActivateFlag(Ljava/lang/String;Z)V

    .line 280
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingSuccess(Ljava/lang/String;)V

    .line 283
    :cond_1
    return-void
.end method

.method public onUserOperCancel(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 290
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$1;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onUserOperCancel(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method
