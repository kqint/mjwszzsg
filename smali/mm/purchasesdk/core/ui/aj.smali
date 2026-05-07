.class Lmm/purchasesdk/core/ui/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/core/ui/ah;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/ah;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ResultDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ah;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ag;->n()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)Lmm/purchasesdk/core/b;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/b;->b(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)Lmm/purchasesdk/core/b;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/b;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ah;->b(Lmm/purchasesdk/core/ui/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)Lmm/purchasesdk/core/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aj;->b:Lmm/purchasesdk/core/ui/ah;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ah;->a(Lmm/purchasesdk/core/ui/ah;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
