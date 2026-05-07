.class Lcn/cmgame/billing/b/f$2;
.super Lcn/cmgame/sdk/a/a;
.source "GameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/f;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 40
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
    .line 45
    check-cast p1, Lcn/cmgame/billing/b/f;

    iput-object p2, p1, Lcn/cmgame/billing/b/f;->l:Ljava/util/List;

    .line 46
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
    .line 50
    check-cast p1, Lcn/cmgame/billing/b/f;

    iget-object v0, p1, Lcn/cmgame/billing/b/f;->l:Ljava/util/List;

    return-object v0
.end method
