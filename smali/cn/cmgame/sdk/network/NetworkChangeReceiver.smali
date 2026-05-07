.class public Lcn/cmgame/sdk/network/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# instance fields
.field private io:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/cmgame/sdk/network/NetworkChangeReceiver;->io:Z

    .line 16
    return-void
.end method


# virtual methods
.method public dj()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/cmgame/sdk/network/NetworkChangeReceiver;->io:Z

    return v0
.end method

.method public n(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcn/cmgame/sdk/network/NetworkChangeReceiver;->io:Z

    .line 38
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/cmgame/sdk/network/NetworkChangeReceiver;->io:Z

    if-nez v0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v0, "Network"

    const-string v1, "network has changed,waiting for checking..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    invoke-static {p1}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->r(Z)V

    .line 28
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->dC()Z

    goto :goto_0
.end method
