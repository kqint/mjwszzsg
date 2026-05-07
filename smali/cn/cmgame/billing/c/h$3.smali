.class Lcn/cmgame/billing/c/h$3;
.super Lcn/cmgame/sdk/a/i;
.source "RecommendGameListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/h;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcn/cmgame/sdk/a/i;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;I)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcn/cmgame/billing/c/h;

    invoke-static {p1, p2}, Lcn/cmgame/billing/c/h;->a(Lcn/cmgame/billing/c/h;I)V

    .line 58
    return-void
.end method

.method public f(Lcn/cmgame/sdk/c/a;)I
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcn/cmgame/billing/c/h;

    invoke-static {p1}, Lcn/cmgame/billing/c/h;->b(Lcn/cmgame/billing/c/h;)I

    move-result v0

    return v0
.end method
