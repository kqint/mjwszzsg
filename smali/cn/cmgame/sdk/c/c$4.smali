.class Lcn/cmgame/sdk/c/c$4;
.super Lcn/cmgame/sdk/a/c;
.source "ServerException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/c/c;->av()Lcn/cmgame/sdk/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcn/cmgame/sdk/a/c;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;Z)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcn/cmgame/sdk/c/c;

    invoke-static {p1, p2}, Lcn/cmgame/sdk/c/c;->a(Lcn/cmgame/sdk/c/c;Z)V

    .line 98
    return-void
.end method

.method public d(Lcn/cmgame/sdk/c/a;)Z
    .locals 1

    .prologue
    .line 102
    check-cast p1, Lcn/cmgame/sdk/c/c;

    invoke-static {p1}, Lcn/cmgame/sdk/c/c;->c(Lcn/cmgame/sdk/c/c;)Z

    move-result v0

    return v0
.end method
