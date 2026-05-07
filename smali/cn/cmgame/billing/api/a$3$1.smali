.class Lcn/cmgame/billing/api/a$3$1;
.super Ljava/lang/Thread;
.source "GameBillingMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic A:Lcn/cmgame/billing/api/a$3;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/a$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/a$3$1;->A:Lcn/cmgame/billing/api/a$3;

    .line 385
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->dC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
