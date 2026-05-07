.class Lcn/cmgame/billing/b/k$5;
.super Lcn/cmgame/sdk/a/m;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/k;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcn/cmgame/sdk/a/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    check-cast p1, Lcn/cmgame/billing/b/k;

    invoke-static {p1}, Lcn/cmgame/billing/b/k;->c(Lcn/cmgame/billing/b/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcn/cmgame/billing/b/k;

    invoke-static {p1, p2}, Lcn/cmgame/billing/b/k;->d(Lcn/cmgame/billing/b/k;Ljava/lang/String;)V

    .line 107
    return-void
.end method
