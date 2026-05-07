.class Lcn/cmgame/sdk/d/a$3;
.super Lcn/cmgame/sdk/a/i;
.source "ListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/d/a;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/cmgame/sdk/a/i;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;I)V
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcn/cmgame/sdk/d/a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/cmgame/sdk/d/a;->a(Lcn/cmgame/sdk/d/a;Ljava/lang/Integer;)V

    .line 63
    return-void
.end method

.method public f(Lcn/cmgame/sdk/c/a;)I
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcn/cmgame/sdk/d/a;

    invoke-static {p1}, Lcn/cmgame/sdk/d/a;->b(Lcn/cmgame/sdk/d/a;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
