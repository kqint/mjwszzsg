.class Lcn/cmgame/billing/b/h$6;
.super Lcn/cmgame/billing/a/g;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bC:Lcn/cmgame/billing/b/h$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/h$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/h$6;->bC:Lcn/cmgame/billing/b/h$a;

    .line 137
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    check-cast p1, Lcn/cmgame/billing/c/i;

    .line 156
    iget-object v0, p0, Lcn/cmgame/billing/b/h$6;->bC:Lcn/cmgame/billing/b/h$a;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/cmgame/billing/b/h$6;->bC:Lcn/cmgame/billing/b/h$a;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/i;->bG()Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcn/cmgame/billing/c/i;->bH()Ljava/util/List;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/b/h$a;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/b/h$6;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "http://gmc.g188.net/egsb/game/subscribeAuth"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/cmgame/billing/b/h$6;->bC:Lcn/cmgame/billing/b/h$a;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcn/cmgame/billing/b/h$6;->bC:Lcn/cmgame/billing/b/h$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/h$a;->m(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method
