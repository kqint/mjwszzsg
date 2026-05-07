.class Lcn/cmgame/billing/c/i$5;
.super Lcn/cmgame/sdk/a/a;
.source "SubscribeAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/i;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/a/a;-><init>(Ljava/lang/Class;)V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/cmgame/sdk/c/a;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 88
    check-cast p1, Lcn/cmgame/billing/c/i;

    invoke-static {p1, p2}, Lcn/cmgame/billing/c/i;->b(Lcn/cmgame/billing/c/i;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public c(Lcn/cmgame/sdk/c/a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/cmgame/sdk/c/a;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcn/cmgame/sdk/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    check-cast p1, Lcn/cmgame/billing/c/i;

    invoke-static {p1}, Lcn/cmgame/billing/c/i;->d(Lcn/cmgame/billing/c/i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
