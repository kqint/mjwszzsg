.class Lmm/purchasesdk/core/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/purchasesdk/core/h;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/core/b;

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReqHandler Handler id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReqHandler Handler name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/h;Z)Z

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->b(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->c(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->b(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/h;Z)Z

    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0, v2}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->d(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->e(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lmm/purchasesdk/core/i;->b:Lmm/purchasesdk/core/h;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/h;->f(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
