.class public interface abstract Lcn/cmgame/billing/api/GameInterface$BillingCallback;
.super Ljava/lang/Object;
.source "GameInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/cmgame/billing/api/GameInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingCallback"
.end annotation


# virtual methods
.method public abstract onBillingFail(Ljava/lang/String;)V
.end method

.method public abstract onBillingSuccess(Ljava/lang/String;)V
.end method

.method public abstract onUserOperCancel(Ljava/lang/String;)V
.end method
