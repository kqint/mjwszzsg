.class Lcn/cmgame/billing/c/e$5;
.super Lcn/cmgame/sdk/a/k;
.source "LowestDiscountResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/e;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/a/k;-><init>(Ljava/lang/Class;)V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Lcn/cmgame/sdk/c/a;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcn/cmgame/billing/c/e;

    check-cast p2, Lcn/cmgame/billing/b/d;

    invoke-virtual {p1, p2}, Lcn/cmgame/billing/c/e;->e(Lcn/cmgame/billing/b/d;)V

    .line 74
    return-void
.end method

.method public e(Lcn/cmgame/sdk/c/a;)Lcn/cmgame/sdk/c/a;
    .locals 1

    .prologue
    .line 78
    check-cast p1, Lcn/cmgame/billing/c/e;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v0

    return-object v0
.end method
