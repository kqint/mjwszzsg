.class Lcn/cmgame/sdk/d/b$2;
.super Lcn/cmgame/sdk/a/i;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/d/b;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcn/cmgame/sdk/a/i;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;I)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcn/cmgame/sdk/d/b;

    invoke-static {p1, p2}, Lcn/cmgame/sdk/d/b;->a(Lcn/cmgame/sdk/d/b;I)V

    .line 54
    return-void
.end method

.method public f(Lcn/cmgame/sdk/c/a;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lcn/cmgame/sdk/d/b;

    invoke-static {p1}, Lcn/cmgame/sdk/d/b;->a(Lcn/cmgame/sdk/d/b;)I

    move-result v0

    return v0
.end method
