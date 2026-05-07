.class Lmm/purchasesdk/core/j/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/j/a;

.field final synthetic c:Landroid/content/Context;

.field final synthetic c:Lmm/purchasesdk/core/h/d;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/j/a;Landroid/os/Looper;Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/j/b;->a:Lmm/purchasesdk/core/j/a;

    iput-object p3, p0, Lmm/purchasesdk/core/j/b;->c:Landroid/content/Context;

    iput-object p4, p0, Lmm/purchasesdk/core/j/b;->c:Lmm/purchasesdk/core/h/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/core/j/b;->a:Lmm/purchasesdk/core/j/a;

    iget-object v1, p0, Lmm/purchasesdk/core/j/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/j/b;->c:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/core/j/a;->a(Lmm/purchasesdk/core/j/a;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
