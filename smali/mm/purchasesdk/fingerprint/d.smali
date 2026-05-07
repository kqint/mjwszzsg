.class public Lmm/purchasesdk/fingerprint/d;
.super Ljava/lang/Thread;


# instance fields
.field private b:Lmm/purchasesdk/core/h/d;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lmm/purchasesdk/core/h/d;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lmm/purchasesdk/fingerprint/d;->b:Lmm/purchasesdk/core/h/d;

    iput-object p2, p0, Lmm/purchasesdk/fingerprint/d;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->getStatus()I

    move-result v0

    :goto_0
    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/fingerprint/d;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/fingerprint/d;->b:Lmm/purchasesdk/core/h/d;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
