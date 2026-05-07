.class Lcn/cmgame/billing/b/e$2;
.super Lcn/cmgame/sdk/a/j;
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
    .line 255
    invoke-direct {p0}, Lcn/cmgame/sdk/a/j;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/sdk/c/a;J)V
    .locals 0

    .prologue
    .line 259
    check-cast p1, Lcn/cmgame/billing/b/e;

    iput-wide p2, p1, Lcn/cmgame/billing/b/e;->bg:J

    .line 260
    return-void
.end method

.method public b(Lcn/cmgame/sdk/c/a;)J
    .locals 2

    .prologue
    .line 264
    check-cast p1, Lcn/cmgame/billing/b/e;

    iget-wide v0, p1, Lcn/cmgame/billing/b/e;->bg:J

    return-wide v0
.end method
