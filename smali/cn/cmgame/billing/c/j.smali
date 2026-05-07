.class public Lcn/cmgame/billing/c/j;
.super Lcn/cmgame/sdk/d/b;
.source "SubscribeGamePlayerResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcn/cmgame/billing/c/j$1;

    const-class v1, Lcn/cmgame/billing/c/j;

    .line 11
    const-string v2, "subscribegameplayerresponse"

    .line 10
    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/j$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    return-object v0
.end method
