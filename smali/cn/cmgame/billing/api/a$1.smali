.class Lcn/cmgame/billing/api/a$1;
.super Landroid/os/Handler;
.source "GameBillingMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/billing/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 123
    if-nez v0, :cond_2

    .line 124
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/api/a;)Landroid/app/Activity;

    move-result-object v0

    .line 129
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 130
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/b;->N()V

    .line 131
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_3

    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/cmgame/billing/api/a;->c(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 135
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/b;->X()Z

    move-result v0

    if-nez v0, :cond_5

    .line 137
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/b;->I()V

    .line 140
    :cond_5
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->m()V

    goto :goto_0
.end method
