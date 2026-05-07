.class Lcn/cmgame/billing/b/k$7;
.super Lcn/cmgame/billing/a/g;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/k;->a(Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a;Lcn/cmgame/billing/b/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bQ:Lcn/cmgame/billing/b/k$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/k$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/k$7;->bQ:Lcn/cmgame/billing/b/k$a;

    .line 139
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcn/cmgame/billing/b/k$7;->bQ:Lcn/cmgame/billing/b/k$a;

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    check-cast p1, Lcn/cmgame/billing/c/d;

    .line 160
    iget-object v0, p0, Lcn/cmgame/billing/b/k$7;->bQ:Lcn/cmgame/billing/b/k$a;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/d;->bz()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/k$a;->e(Lcn/cmgame/billing/b/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/b/k$7;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "http://gmc.g188.net/egsb/access/login"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/cmgame/billing/b/k$7;->bQ:Lcn/cmgame/billing/b/k$a;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/cmgame/billing/b/k$7;->bQ:Lcn/cmgame/billing/b/k$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/k$a;->m(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
