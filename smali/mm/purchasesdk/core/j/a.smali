.class public Lmm/purchasesdk/core/j/a;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bf:Ljava/lang/String;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SMSReqFactory"

    iput-object v0, p0, Lmm/purchasesdk/core/j/a;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lmm/purchasesdk/core/j/a;->bf:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mm-requestSMS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lmm/purchasesdk/core/j/b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1, p3}, Lmm/purchasesdk/core/j/b;-><init>(Lmm/purchasesdk/core/j/a;Landroid/os/Looper;Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    iput-object v1, p0, Lmm/purchasesdk/core/j/a;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/core/j/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/core/j/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V
    .locals 5

    new-instance v0, Lmm/purchasesdk/core/j/c;

    invoke-direct {v0}, Lmm/purchasesdk/core/j/c;-><init>()V

    iget-object v1, p0, Lmm/purchasesdk/core/j/a;->bf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/j/c;->X(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "SMSReqFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsrequest-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lmm/purchasesdk/core/j/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmm/purchasesdk/core/l/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/core/j/a;->handler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v2, Lmm/purchasesdk/core/j/e;

    invoke-direct {v2, p1, v1, v0, p2}, Lmm/purchasesdk/core/j/e;-><init>(Landroid/content/Context;Landroid/os/Message;Lmm/purchasesdk/core/j/c;Lmm/purchasesdk/core/h/d;)V

    iget-object v0, p0, Lmm/purchasesdk/core/j/a;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
