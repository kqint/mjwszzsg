.class public Lmm/purchasesdk/core/j/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lmm/purchasesdk/core/j/c;

.field private b:Landroid/os/Message;

.field private b:Lmm/purchasesdk/core/h/d;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Message;Lmm/purchasesdk/core/j/c;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmm/purchasesdk/core/j/e;->b:Landroid/os/Message;

    iput-object p3, p0, Lmm/purchasesdk/core/j/e;->a:Lmm/purchasesdk/core/j/c;

    iput-object p4, p0, Lmm/purchasesdk/core/j/e;->b:Lmm/purchasesdk/core/h/d;

    iput-object p1, p0, Lmm/purchasesdk/core/j/e;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Lmm/purchasesdk/core/j/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/j/d;-><init>()V

    new-instance v0, Lmm/purchasesdk/core/g/e;

    iget-object v2, p0, Lmm/purchasesdk/core/j/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmm/purchasesdk/core/g/e;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v2, p0, Lmm/purchasesdk/core/j/e;->a:Lmm/purchasesdk/core/j/c;

    iget-object v3, p0, Lmm/purchasesdk/core/j/e;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v2, v1, v3}, Lmm/purchasesdk/core/g/e;->c(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    :try_end_0
    .catch Lmm/purchasesdk/core/h/e; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/core/j/e;->b:Landroid/os/Message;

    invoke-virtual {v1}, Lmm/purchasesdk/core/j/d;->d()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmm/purchasesdk/core/j/e;->b:Landroid/os/Message;

    invoke-virtual {v1}, Lmm/purchasesdk/core/j/d;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lmm/purchasesdk/core/j/e;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/e;->printStackTrace()V

    goto :goto_0
.end method
