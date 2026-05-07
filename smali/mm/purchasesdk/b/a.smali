.class public Lmm/purchasesdk/b/a;
.super Landroid/os/Handler;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Bundle;

.field private a:Lmm/purchasesdk/OnPurchaseListener;

.field private b:Lmm/purchasesdk/core/h/d;

.field private f:Ljava/util/HashMap;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IABClientHandler"

    sput-object v0, Lmm/purchasesdk/b/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lmm/purchasesdk/b/a;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmm/purchasesdk/core/h/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object p1, p0, Lmm/purchasesdk/b/a;->a:Lmm/purchasesdk/OnPurchaseListener;

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lmm/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dyQuestion-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/fingerprint/c;->q:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3}, Lmm/purchasesdk/fingerprint/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/fingerprint/c;->q:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lmm/purchasesdk/b/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    if-nez v1, :cond_0

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Paycode"

    iget-object v3, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->B()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OrderId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "LeftDay"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "TradeID"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->s()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OrderType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v3, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->c()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lmm/purchasesdk/OnPurchaseListener;->onBillingFinish(ILjava/util/HashMap;)V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    if-nez v1, :cond_5

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lmm/purchasesdk/b/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/fingerprint/d;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lmm/purchasesdk/fingerprint/d;-><init>(Lmm/purchasesdk/core/h/d;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lmm/purchasesdk/fingerprint/d;->start()V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    if-nez v1, :cond_7

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->a:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->c()I

    move-result v2

    invoke-interface {v1, v2}, Lmm/purchasesdk/OnPurchaseListener;->onInitFinish(I)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    if-nez v1, :cond_8

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->f:Ljava/util/HashMap;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->f:Ljava/util/HashMap;

    :cond_9
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->f:Ljava/util/HashMap;

    const-string v2, "LeftDay"

    iget-object v3, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->f:Ljava/util/HashMap;

    const-string v2, "OrderId"

    iget-object v3, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->f:Ljava/util/HashMap;

    const-string v2, "Paycode"

    iget-object v3, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->a:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->c()I

    move-result v2

    iget-object v3, p0, Lmm/purchasesdk/b/a;->f:Ljava/util/HashMap;

    invoke-interface {v1, v2, v3}, Lmm/purchasesdk/OnPurchaseListener;->onQueryFinish(ILjava/util/HashMap;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    if-nez v1, :cond_a

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    :cond_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->a:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->c()I

    move-result v2

    invoke-interface {v1, v2}, Lmm/purchasesdk/OnPurchaseListener;->onUnsubscribeFinish(I)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    if-nez v1, :cond_b

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/b/a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/PurchaseCode;->setMessage(Ljava/lang/String;)V

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/b/a;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
