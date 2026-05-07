.class Lcn/cmgame/sdk/d/a$2;
.super Lcn/cmgame/sdk/a/j;
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
    .line 47
    invoke-direct {p0}, Lcn/cmgame/sdk/a/j;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;J)V
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lcn/cmgame/sdk/d/a;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/cmgame/sdk/d/a;->a(Lcn/cmgame/sdk/d/a;Ljava/lang/Long;)V

    .line 51
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;)J
    .locals 2

    .prologue
    .line 55
    check-cast p1, Lcn/cmgame/sdk/d/a;

    invoke-static {p1}, Lcn/cmgame/sdk/d/a;->a(Lcn/cmgame/sdk/d/a;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
