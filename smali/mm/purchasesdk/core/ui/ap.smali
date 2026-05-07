.class Lmm/purchasesdk/core/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/core/ui/ao;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/ao;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebViewLayout"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/ui/ag;->i(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Lmm/purchasesdk/core/b;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmm/purchasesdk/core/b;->b(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Lmm/purchasesdk/core/b;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmm/purchasesdk/core/b;->a(Ljava/util/HashMap;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Ljava/lang/Boolean;)V

    iput v3, v1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Lmm/purchasesdk/core/b;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_0
    const-string v0, "WebViewLayout"

    const-string v2, "onClick KAlipayBackButtonType"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Lmm/purchasesdk/core/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmm/purchasesdk/core/b;->c(I)V

    goto :goto_1

    :pswitch_1
    const-string v0, "WebViewLayout"

    const-string v2, "onClick KAlipayFinishButtonType"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ap;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Lmm/purchasesdk/core/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmm/purchasesdk/core/b;->c(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
