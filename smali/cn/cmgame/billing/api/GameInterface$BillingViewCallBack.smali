.class public interface abstract Lcn/cmgame/billing/api/GameInterface$BillingViewCallBack;
.super Ljava/lang/Object;
.source "GameInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/billing/api/GameInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingViewCallBack"
.end annotation


# virtual methods
.method public abstract onBillingFinish()V
.end method

.method public abstract onBillingSuccess()V
.end method

.method public abstract onUserOperCancel()V
.end method

.method public abstract onUserOperError(I)V
.end method
