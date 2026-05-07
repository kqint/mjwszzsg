.class public Lmm/purchasesdk/core/d;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Landroid/os/HandlerThread;

.field private a:Lmm/purchasesdk/core/h;

.field private a:Lmm/purchasesdk/core/ui/ag;

.field private b:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmm/purchasesdk/core/h;

    const-string v1, "purchase-task"

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h;->start()V

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h;->init()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Response-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lmm/purchasesdk/core/e;

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmm/purchasesdk/core/e;-><init>(Lmm/purchasesdk/core/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    iget-object v1, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h;->a()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/core/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/d;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/h;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/ui/ag;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/ui/ag;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/core/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/core/h/d;Landroid/os/Messenger;Landroid/os/Messenger;Lmm/purchasesdk/core/ui/ag;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmm/purchasesdk/core/d;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/h;->setContext(Landroid/content/Context;)V

    iput-object p9, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/ui/ag;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p3, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "orderCount must be greater than 0 "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p4}, Lmm/purchasesdk/core/l/d;->aa(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x2

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p6, p2}, Lmm/purchasesdk/core/h/d;->I(Ljava/lang/String;)V

    invoke-virtual {p6, p3}, Lmm/purchasesdk/core/h/d;->f(I)V

    invoke-virtual {p6, p5}, Lmm/purchasesdk/core/h/d;->g(Z)V

    new-instance v0, Lmm/purchasesdk/core/b;

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p6}, Lmm/purchasesdk/core/b;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    invoke-virtual {v0, p7}, Lmm/purchasesdk/core/b;->b(Landroid/os/Messenger;)V

    invoke-virtual {v0, p8}, Lmm/purchasesdk/core/b;->a(Landroid/os/Messenger;)V

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Lmm/purchasesdk/core/b;)V

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->l(Landroid/content/Context;)V

    invoke-virtual {p6}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lmm/purchasesdk/core/g/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/16 v1, 0x70

    const/4 v2, 0x0

    iget-object v5, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/ui/ag;

    move-object v3, p6

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/core/b;->a(ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    :goto_0
    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v1, p6}, Lmm/purchasesdk/core/h;->c(Lmm/purchasesdk/core/h/d;)V

    const/4 v1, 0x2

    sput v1, Lmm/purchasesdk/core/f/a;->l:I

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p6}, Lmm/purchasesdk/core/h/d;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Lmm/purchasesdk/core/h/d;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmm/purchasesdk/core/d;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/h;->setContext(Landroid/content/Context;)V

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->l(Landroid/content/Context;)V

    invoke-static {v4}, Lmm/purchasesdk/core/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lmm/purchasesdk/core/b;

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p2, v3}, Lmm/purchasesdk/core/b;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Lmm/purchasesdk/core/b;)V

    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/b;->onInitFinish(I)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/b;->onInitFinish(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lmm/purchasesdk/core/g/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h;I)V

    :goto_1
    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v1, p3}, Lmm/purchasesdk/core/h;->c(Lmm/purchasesdk/core/h/d;)V

    const/4 v1, 0x1

    sput v1, Lmm/purchasesdk/core/f/a;->l:I

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmm/purchasesdk/core/h/d;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmm/purchasesdk/core/d;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/h;->setContext(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p4, p2}, Lmm/purchasesdk/core/h/d;->I(Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/core/b;

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p3, v3}, Lmm/purchasesdk/core/b;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Lmm/purchasesdk/core/b;)V

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->l(Landroid/content/Context;)V

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0, v2, v1}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h;I)V

    :goto_0
    return-void

    :cond_4
    invoke-static {p1}, Lmm/purchasesdk/core/g/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h;I)V

    :goto_1
    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v1, p4}, Lmm/purchasesdk/core/h;->c(Lmm/purchasesdk/core/h/d;)V

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lmm/purchasesdk/core/h/d;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Constext Objext is not instanse of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmm/purchasesdk/core/d;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/h;->setContext(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error! Paycode is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lmm/purchasesdk/core/l/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Another request is processing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Ljava/lang/Boolean;)V

    :goto_0
    new-instance v0, Lmm/purchasesdk/core/b;

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    iget-object v2, p0, Lmm/purchasesdk/core/d;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p4, v4}, Lmm/purchasesdk/core/b;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Lmm/purchasesdk/core/b;)V

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->l(Landroid/content/Context;)V

    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1, v4}, Lmm/purchasesdk/core/b;->onQueryFinish(ILjava/util/HashMap;)V

    :goto_1
    return-void

    :cond_4
    const-string v0, ""

    invoke-virtual {p5, v0}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->g(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lmm/purchasesdk/core/g/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v4}, Lmm/purchasesdk/core/b;->onQueryFinish(ILjava/util/HashMap;)V

    :goto_2
    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v1, p5}, Lmm/purchasesdk/core/h;->c(Lmm/purchasesdk/core/h/d;)V

    iget-object v1, p0, Lmm/purchasesdk/core/d;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lmm/purchasesdk/core/h/d;->i(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const-string v1, "Error! Message is null"

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Lmm/purchasesdk/core/h/e;

    const-string v1, "Error! MessengerInfo is null"

    invoke-direct {v0, v1}, Lmm/purchasesdk/core/h/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/h;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/a;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/d;->a:Lmm/purchasesdk/core/ui/ag;

    iget-object v0, p0, Lmm/purchasesdk/core/d;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0, v1, p2}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/app/Activity;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method
