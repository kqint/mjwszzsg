.class public final Lcn/cmgame/billing/api/GameInterface;
.super Ljava/lang/Object;
.source "GameInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;,
        Lcn/cmgame/billing/api/GameInterface$BillingCallback;,
        Lcn/cmgame/billing/api/GameInterface$BillingViewCallBack;,
        Lcn/cmgame/billing/api/GameInterface$GameExitCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBilling(Landroid/content/Context;ZZLjava/lang/String;Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lcn/cmgame/billing/api/a;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V

    .line 52
    return-void
.end method

.method public static doBillingForUnity(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-static/range {p0 .. p5}, Lcn/cmgame/billing/api/a;->doBillingForUnity(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static exit(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 139
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->exit(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method public static exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V
    .locals 0

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcn/cmgame/billing/api/a;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    .line 133
    return-void
.end method

.method public static exitApp()V
    .locals 0

    .prologue
    .line 146
    invoke-static {}, Lcn/cmgame/billing/api/a;->exitApp()V

    .line 147
    return-void
.end method

.method public static getActivateFlag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->getActivateFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getBillingResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->getBillingResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeApp(Landroid/app/Activity;)V
    .locals 1

    .prologue
    return-void
.end method

.method public static initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Lcn/cmgame/billing/api/a;->initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static isMusicEnabled()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcn/cmgame/billing/api/a;->isMusicEnabled()Z

    move-result v0

    return v0
.end method

.method public static setActivateFlag(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcn/cmgame/billing/api/a;->setActivateFlag(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public static viewMoreGames(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0}, Lcn/cmgame/billing/api/a;->viewMoreGames(Landroid/content/Context;)V

    .line 114
    return-void
.end method
