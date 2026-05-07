.class Lmm/purchasesdk/core/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/u;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/u;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x191

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PurchaseDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmm/purchasesdk/core/b;->b(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    iget-object v0, v0, Lmm/purchasesdk/core/ui/u;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ab;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
