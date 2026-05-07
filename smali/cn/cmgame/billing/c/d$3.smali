.class Lcn/cmgame/billing/c/d$3;
.super Lcn/cmgame/sdk/a/k;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/d;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/a/k;-><init>(Ljava/lang/Class;)V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcn/cmgame/billing/c/d;

    check-cast p2, Lcn/cmgame/billing/b/k;

    invoke-static {p1, p2}, Lcn/cmgame/billing/c/d;->a(Lcn/cmgame/billing/c/d;Lcn/cmgame/billing/b/k;)V

    .line 51
    return-void
.end method

.method public e(Lcn/cmgame/sdk/c/a;)Lcn/cmgame/sdk/c/a;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcn/cmgame/billing/c/d;

    invoke-static {p1}, Lcn/cmgame/billing/c/d;->b(Lcn/cmgame/billing/c/d;)Lcn/cmgame/billing/b/k;

    move-result-object v0

    return-object v0
.end method
