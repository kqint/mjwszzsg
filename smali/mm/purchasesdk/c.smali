.class Lmm/purchasesdk/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic b:Lmm/purchasesdk/Purchase;


# direct methods
.method constructor <init>(Lmm/purchasesdk/Purchase;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->getStatus()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->O(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v1, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->g(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->a()V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->r()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->a()V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->r()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->a()V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->r()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->a()V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->r()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/Purchase;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->setPackageName(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lmm/purchasesdk/b;

    iget-object v1, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    iget-object v2, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V

    iget-object v1, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v1}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/b;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/c;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/Purchase;->c(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
