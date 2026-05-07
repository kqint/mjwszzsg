.class Lcn/cmgame/billing/c/b$2;
.super Lcn/cmgame/sdk/a/a;
.source "ChargePointListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/b;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 38
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
    .line 43
    check-cast p1, Lcn/cmgame/billing/c/b;

    iput-object p2, p1, Lcn/cmgame/billing/c/b;->l:Ljava/util/List;

    .line 44
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
    .line 48
    check-cast p1, Lcn/cmgame/billing/c/b;

    iget-object v0, p1, Lcn/cmgame/billing/c/b;->l:Ljava/util/List;

    return-object v0
.end method
