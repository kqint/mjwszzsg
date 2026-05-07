.class Lcn/cmgame/billing/c/l$2;
.super Lcn/cmgame/sdk/a/i;
.source "UpdateVersionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/l;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/cmgame/sdk/a/i;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;I)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcn/cmgame/billing/c/l;

    invoke-static {p1, p2}, Lcn/cmgame/billing/c/l;->a(Lcn/cmgame/billing/c/l;I)V

    .line 55
    return-void
.end method

.method public f(Lcn/cmgame/sdk/c/a;)I
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lcn/cmgame/billing/c/l;

    invoke-static {p1}, Lcn/cmgame/billing/c/l;->a(Lcn/cmgame/billing/c/l;)I

    move-result v0

    return v0
.end method
