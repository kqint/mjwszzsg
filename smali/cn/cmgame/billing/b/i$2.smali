.class Lcn/cmgame/billing/b/i$2;
.super Lcn/cmgame/sdk/a/m;
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
    .line 24
    invoke-direct {p0}, Lcn/cmgame/sdk/a/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcn/cmgame/billing/b/i;

    invoke-static {p1}, Lcn/cmgame/billing/b/i;->a(Lcn/cmgame/billing/b/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcn/cmgame/billing/b/i;

    invoke-static {p1, p2}, Lcn/cmgame/billing/b/i;->a(Lcn/cmgame/billing/b/i;Ljava/lang/String;)V

    .line 29
    return-void
.end method
