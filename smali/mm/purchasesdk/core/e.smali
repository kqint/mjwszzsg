.class Lmm/purchasesdk/core/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/d;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lmm/purchasesdk/core/b;

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/b;->b(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v1}, Lmm/purchasesdk/core/d;->b(Lmm/purchasesdk/core/d;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v2}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v2

    invoke-static {v0, v1, v3, v4, v2}, Lmm/purchasesdk/core/g;->a(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lmm/purchasesdk/core/g;->a(Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h/d;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v1}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v2}, Lmm/purchasesdk/core/d;->b(Lmm/purchasesdk/core/d;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v5}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v5

    invoke-virtual {v5}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/d;

    move-result-object v5

    iget-object v6, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v6}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v6

    iget-object v7, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v7}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/ui/ag;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v1}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/g;->a(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/ui/ag;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/d;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v1}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v2}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v0}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v1}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v2}, Lmm/purchasesdk/core/d;->b(Lmm/purchasesdk/core/d;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v5}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;

    move-result-object v5

    iget-object v6, p0, Lmm/purchasesdk/core/e;->a:Lmm/purchasesdk/core/d;

    invoke-static {v6}, Lmm/purchasesdk/core/d;->a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h;Lmm/purchasesdk/core/ui/ag;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
