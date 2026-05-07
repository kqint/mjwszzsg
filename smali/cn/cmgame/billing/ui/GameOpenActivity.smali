.class public Lcn/cmgame/billing/ui/GameOpenActivity;
.super Landroid/app/Activity;
.source "GameOpenActivity.java"


# instance fields
.field private dW:Lcn/cmgame/billing/ui/OpeningAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cA()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/GameOpenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 70
    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/GameOpenActivity;->setRequestedOrientation(I)V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/GameOpenActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/GameOpenActivity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/GameOpenActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcn/cmgame/billing/ui/GameOpenActivity;->cA()V

    .line 31
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/GameOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->t(Landroid/content/Context;)V

    .line 44
    const-string v1, "gc_billing_is_no_sound"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 50
    :cond_1
    new-instance v1, Lcn/cmgame/billing/ui/OpeningAnimation;

    invoke-static {}, Lcn/cmgame/sdk/e/j;->dN()Z

    move-result v2

    .line 51
    new-instance v3, Lcn/cmgame/billing/ui/GameOpenActivity$1;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/GameOpenActivity$1;-><init>(Lcn/cmgame/billing/ui/GameOpenActivity;)V

    invoke-direct {v1, p0, v0, v2, v3}, Lcn/cmgame/billing/ui/OpeningAnimation;-><init>(Landroid/app/Activity;ZZLcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;)V

    .line 50
    iput-object v1, p0, Lcn/cmgame/billing/ui/GameOpenActivity;->dW:Lcn/cmgame/billing/ui/OpeningAnimation;

    .line 62
    iget-object v0, p0, Lcn/cmgame/billing/ui/GameOpenActivity;->dW:Lcn/cmgame/billing/ui/OpeningAnimation;

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/GameOpenActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcn/cmgame/billing/ui/GameOpenActivity;->dW:Lcn/cmgame/billing/ui/OpeningAnimation;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/cmgame/billing/ui/GameOpenActivity;->dW:Lcn/cmgame/billing/ui/OpeningAnimation;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/OpeningAnimation;->destroySplash()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/GameOpenActivity;->dW:Lcn/cmgame/billing/ui/OpeningAnimation;

    .line 86
    :cond_0
    return-void
.end method
