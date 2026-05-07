.class Lcn/cmgame/billing/b/i$7;
.super Lcn/cmgame/sdk/a/c;
.source "PromotionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/i;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcn/cmgame/sdk/a/c;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Z)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcn/cmgame/billing/b/i;

    invoke-static {p1, p2}, Lcn/cmgame/billing/b/i;->a(Lcn/cmgame/billing/b/i;Z)V

    .line 89
    return-void
.end method

.method public d(Lcn/cmgame/sdk/c/a;)Z
    .locals 1

    .prologue
    .line 93
    check-cast p1, Lcn/cmgame/billing/b/i;

    invoke-static {p1}, Lcn/cmgame/billing/b/i;->f(Lcn/cmgame/billing/b/i;)Z

    move-result v0

    return v0
.end method
