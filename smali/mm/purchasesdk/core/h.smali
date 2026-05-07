.class public Lmm/purchasesdk/core/h;
.super Landroid/os/HandlerThread;


# instance fields
.field a:Landroid/os/Handler;

.field private a:Lmm/purchasesdk/core/h/a;

.field b:Landroid/os/Handler;

.field b:Lmm/purchasesdk/core/h/d;

.field private h:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lmm/purchasesdk/core/b;)I
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/a;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/a;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/a;->b(Landroid/os/Handler;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/a;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/a;->f(I)V

    invoke-static {}, Lmm/purchasesdk/core/f/a;->c()V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/core/b/b;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "TaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthManager checkAuth ret = null.code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v0

    const/16 v1, 0xfe

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    const/16 v0, 0x68

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TaskThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthManager checkAuth ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xf0

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h/a;)V

    goto :goto_0
.end method

.method private a(Lmm/purchasesdk/core/b;)V
    .locals 5

    const/16 v1, 0x64

    const/4 v4, 0x2

    const-string v0, "TaskThread"

    const-string v2, "init() called"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lmm/purchasesdk/core/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/f/a;->c()V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, p1, v2}, Lmm/purchasesdk/core/d/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/b;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    if-eq v0, v1, :cond_0

    sget v1, Lmm/purchasesdk/core/l/d;->V:I

    if-eqz v1, :cond_0

    sget v1, Lmm/purchasesdk/core/l/d;->V:I

    if-ne v1, v4, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->f(Lmm/purchasesdk/core/b;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lmm/purchasesdk/core/f/a;->d()V

    iget-object v1, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v1, v2}, Lmm/purchasesdk/core/f/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    :goto_1
    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/b;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/core/f/a;->d()V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, v2}, Lmm/purchasesdk/core/f/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    sget v0, Lmm/purchasesdk/core/l/d;->V:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->f(Lmm/purchasesdk/core/b;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lmm/purchasesdk/core/b;I)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Lmm/purchasesdk/core/b;Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x66

    const/4 v4, 0x2

    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, v1, p2, v2}, Lmm/purchasesdk/core/c/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Landroid/os/Bundle;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    const-string v1, "TaskThread order result"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Order result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    invoke-static {v5}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    const-string v0, "OrderId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeftDay"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OrderType"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3, v0}, Lmm/purchasesdk/core/h/d;->P(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v2}, Lmm/purchasesdk/core/h/d;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iput v5, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " order fail ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/b;)V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/b;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/core/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/h;->h:Z

    return p1
.end method

.method private b(Lmm/purchasesdk/core/b;)V
    .locals 5

    const/16 v4, 0x65

    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, v1}, Lmm/purchasesdk/core/i/a;->c(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    const-string v1, "TaskThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmm/purchasesdk/core/h;->b(Lmm/purchasesdk/core/b;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v4}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    invoke-direct {p0, p1, v4}, Lmm/purchasesdk/core/h;->b(Lmm/purchasesdk/core/b;I)V

    goto :goto_0
.end method

.method private b(Lmm/purchasesdk/core/b;I)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    sget v1, Lmm/purchasesdk/core/l/d;->V:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->b(Lmm/purchasesdk/core/b;)V

    return-void
.end method

.method private c(Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->a(Lmm/purchasesdk/core/b;)I

    return-void
.end method

.method static synthetic c(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->c(Lmm/purchasesdk/core/b;)V

    return-void
.end method

.method private d(Lmm/purchasesdk/core/b;)V
    .locals 5

    new-instance v0, Lmm/purchasesdk/core/k/a;

    invoke-direct {v0}, Lmm/purchasesdk/core/k/a;-><init>()V

    iget-object v1, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmm/purchasesdk/core/k/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    iget-object v1, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic d(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->d(Lmm/purchasesdk/core/b;)V

    return-void
.end method

.method private e(Lmm/purchasesdk/core/b;)V
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/a;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/a;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/core/b/b;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xf0

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic e(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->e(Lmm/purchasesdk/core/b;)V

    return-void
.end method

.method private f(Lmm/purchasesdk/core/b;)V
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/a;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/a;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    iget-object v2, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v0, v1, v2}, Lmm/purchasesdk/core/a/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lmm/purchasesdk/core/f;->getStatusCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic f(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/h;->f(Lmm/purchasesdk/core/b;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/core/h;->init()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a()Lmm/purchasesdk/core/h/a;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h;->a:Lmm/purchasesdk/core/h/a;

    return-object v0
.end method

.method public a()Lmm/purchasesdk/core/h/d;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h;->b:Landroid/os/Handler;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/h;->h:Z

    return v0
.end method

.method public c(Lmm/purchasesdk/core/h/d;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h;->b:Lmm/purchasesdk/core/h/d;

    return-void
.end method

.method public init()V
    .locals 2

    new-instance v0, Lmm/purchasesdk/core/i;

    invoke-virtual {p0}, Lmm/purchasesdk/core/h;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/purchasesdk/core/i;-><init>(Lmm/purchasesdk/core/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/purchasesdk/core/h;->a:Landroid/os/Handler;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h;->mContext:Landroid/content/Context;

    return-void
.end method
