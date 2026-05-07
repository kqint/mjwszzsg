.class Lcn/cmgame/billing/b/e$10;
.super Lcn/cmgame/sdk/a/m;
.source "GameDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/e;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcn/cmgame/sdk/a/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    check-cast p1, Lcn/cmgame/billing/b/e;

    iget-object v0, p1, Lcn/cmgame/billing/b/e;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcn/cmgame/sdk/c/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Lcn/cmgame/billing/b/e;

    iput-object p2, p1, Lcn/cmgame/billing/b/e;->aZ:Ljava/lang/String;

    .line 158
    return-void
.end method
