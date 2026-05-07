.class public Lmm/purchasesdk/core/b;
.super Ljava/lang/Object;


# static fields
.field private static i:I


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/os/Message;

.field private a:Ljava/util/HashMap;

.field private b:Landroid/os/Handler;

.field private b:Landroid/os/Messenger;

.field private b:Lmm/purchasesdk/core/h/d;

.field private h:I

.field private mMessengerFS:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/core/b;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmm/purchasesdk/core/b;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/purchasesdk/core/b;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lmm/purchasesdk/core/b;->a:Landroid/os/Handler;

    iput-object p2, p0, Lmm/purchasesdk/core/b;->b:Landroid/os/Handler;

    iput-object p3, p0, Lmm/purchasesdk/core/b;->a:Landroid/os/Message;

    iput-object p4, p0, Lmm/purchasesdk/core/b;->b:Lmm/purchasesdk/core/h/d;

    return-void
.end method

.method private a(ILandroid/os/Messenger;Lmm/purchasesdk/core/h/d;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V
    .locals 9

    const/16 v2, 0x66

    const-string v0, "onDialogShow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/core/l/d;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v2, :cond_0

    invoke-static {}, Lmm/purchasesdk/core/l/d;->S()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/core/l/d;->P()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lmm/purchasesdk/core/b;->a:Landroid/os/Handler;

    iget-object v6, p0, Lmm/purchasesdk/core/b;->b:Landroid/os/Handler;

    move-object v0, p5

    move-object v1, p4

    move v2, p1

    move-object v4, p0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Lmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;Lmm/purchasesdk/core/h/d;)V

    :goto_0
    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->h(I)V

    return-void

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :goto_1
    iget-object v4, p0, Lmm/purchasesdk/core/b;->a:Landroid/os/Handler;

    iget-object v5, p0, Lmm/purchasesdk/core/b;->b:Landroid/os/Handler;

    move-object v0, p5

    move-object v1, p4

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;Lmm/purchasesdk/core/h/d;)V

    move p1, v2

    goto :goto_0

    :cond_1
    move v2, p1

    goto :goto_1
.end method

.method public a(Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/b;->b:Landroid/os/Messenger;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public a(Lmm/purchasesdk/core/h/a;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/core/b;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {p1}, Lmm/purchasesdk/core/h/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->N(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lmm/purchasesdk/core/b;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/core/b;->b:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lmm/purchasesdk/core/b;->mMessengerFS:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V
    .locals 3

    const-string v0, "onBillingfinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmm/purchasesdk/core/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmm/purchasesdk/core/b;->h:I

    invoke-static {v2}, Lmm/purchasesdk/core/f;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lmm/purchasesdk/core/b;->h:I

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/d;->g(I)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->unlock()V

    invoke-static {}, Lmm/purchasesdk/core/ui/am;->p()V

    const/4 v0, 0x7

    iget-object v1, p0, Lmm/purchasesdk/core/b;->mMessengerFS:Landroid/os/Messenger;

    invoke-direct {p0, v0, v1, p1}, Lmm/purchasesdk/core/b;->a(ILandroid/os/Messenger;Lmm/purchasesdk/core/h/d;)V

    invoke-virtual {p3, p2}, Lmm/purchasesdk/core/ui/ag;->j(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lmm/purchasesdk/core/h;I)V
    .locals 3

    const-string v0, "onInitFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lmm/purchasesdk/core/f;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->unlock()V

    iget v0, p0, Lmm/purchasesdk/core/b;->h:I

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->h(I)V

    invoke-virtual {p1}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/a;

    iget-object v0, p0, Lmm/purchasesdk/core/b;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2}, Lmm/purchasesdk/core/h/d;->g(I)V

    const/4 v0, 0x5

    invoke-static {}, Lmm/purchasesdk/core/l/d;->a()Landroid/os/Messenger;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lmm/purchasesdk/core/b;->a(ILandroid/os/Messenger;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/b;->h:I

    return-void
.end method

.method public b(Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/b;->mMessengerFS:Landroid/os/Messenger;

    return-void
.end method

.method public c(I)V
    .locals 0

    sput p1, Lmm/purchasesdk/core/b;->i:I

    return-void
.end method

.method public onInitFinish(I)V
    .locals 3

    const-string v0, "onInitFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/core/f;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->unlock()V

    iget-object v0, p0, Lmm/purchasesdk/core/b;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1}, Lmm/purchasesdk/core/h/d;->g(I)V

    const/4 v0, 0x1

    invoke-static {}, Lmm/purchasesdk/core/l/d;->a()Landroid/os/Messenger;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lmm/purchasesdk/core/b;->a(ILandroid/os/Messenger;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method public onQueryFinish(ILjava/util/HashMap;)V
    .locals 3

    const-string v0, "onQueryFinish"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/core/f;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->unlock()V

    const/4 v0, 0x0

    sput v0, Lmm/purchasesdk/core/b;->i:I

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    if-eqz p2, :cond_0

    const-string v0, "OrderId"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->P(Ljava/lang/String;)V

    const-string v0, "LeftDay"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->k(Ljava/lang/String;)V

    const-string v0, "Paycode"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->I(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p1}, Lmm/purchasesdk/core/h/d;->g(I)V

    const/4 v0, 0x4

    invoke-static {}, Lmm/purchasesdk/core/l/d;->a()Landroid/os/Messenger;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lmm/purchasesdk/core/b;->a(ILandroid/os/Messenger;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method
