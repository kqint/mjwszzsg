.class Lcn/cmgame/billing/api/a$3;
.super Ljava/lang/Object;
.source "GameBillingMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 383
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    new-instance v1, Lcn/cmgame/billing/a/c;

    const-string v2, "Signature-OF-Key"

    const-string v3, "Signature-OF-Secret"

    invoke-static {}, Lcn/cmgame/billing/api/a;->dI()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/cmgame/billing/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/a/c;)V

    .line 384
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->dJ()Lcn/cmgame/sdk/network/NetworkChangeReceiver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/network/NetworkChangeReceiver;->n(Z)V

    .line 385
    new-instance v0, Lcn/cmgame/billing/api/a$3$1;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/api/a$3$1;-><init>(Lcn/cmgame/billing/api/a$3;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 396
    return-void
.end method
