.class Lcn/cmgame/billing/c/e$4;
.super Lcn/cmgame/sdk/a/m;
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/cmgame/sdk/a/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcn/cmgame/billing/c/e;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/e;->bC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcn/cmgame/billing/c/e;

    invoke-virtual {p1, p2}, Lcn/cmgame/billing/c/e;->ar(Ljava/lang/String;)V

    .line 61
    return-void
.end method
