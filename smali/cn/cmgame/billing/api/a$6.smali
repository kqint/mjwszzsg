.class Lcn/cmgame/billing/api/a$6;
.super Ljava/lang/Object;
.source "GameBillingMain.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->exit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancelExit()V
    .locals 0

    .prologue
    .line 1019
    return-void
.end method

.method public onConfirmExit()V
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->a(Z)V

    .line 1015
    return-void
.end method
