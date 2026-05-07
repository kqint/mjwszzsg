.class Lcn/cmgame/billing/c/g$2;
.super Lcn/cmgame/sdk/a/k;
.source "RecommendGameInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/g;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/a/k;-><init>(Ljava/lang/Class;)V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcn/cmgame/billing/c/g;

    check-cast p2, Lcn/cmgame/billing/b/e;

    invoke-static {p1, p2}, Lcn/cmgame/billing/c/g;->a(Lcn/cmgame/billing/c/g;Lcn/cmgame/billing/b/e;)V

    .line 35
    return-void
.end method

.method public e(Lcn/cmgame/sdk/c/a;)Lcn/cmgame/sdk/c/a;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcn/cmgame/billing/c/g;

    invoke-static {p1}, Lcn/cmgame/billing/c/g;->a(Lcn/cmgame/billing/c/g;)Lcn/cmgame/billing/b/e;

    move-result-object v0

    return-object v0
.end method
