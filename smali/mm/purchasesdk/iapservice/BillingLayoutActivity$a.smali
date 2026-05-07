.class Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm/purchasesdk/iapservice/BillingLayoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;


# direct methods
.method constructor <init>(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->a(Landroid/os/Message;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    new-instance v0, Lmm/purchasesdk/core/h/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/d;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/core/l/d;->M(Ljava/lang/String;)V

    const-string v2, "PAYCODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "TIMESTAMP"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/d;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    new-instance v2, Lmm/purchasesdk/core/d;

    invoke-direct {v2}, Lmm/purchasesdk/core/d;-><init>()V

    invoke-static {v1, v2}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/d;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;->b:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-static {v1}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmm/purchasesdk/core/d;->a(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
