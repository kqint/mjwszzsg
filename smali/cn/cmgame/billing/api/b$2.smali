.class Lcn/cmgame/billing/api/b$2;
.super Lcn/cmgame/billing/a/g;
.source "GameLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/sdk/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcn/cmgame/billing/api/b;

.field private final synthetic T:Lcn/cmgame/sdk/b/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/b$2;->S:Lcn/cmgame/billing/api/b;

    iput-object p3, p0, Lcn/cmgame/billing/api/b$2;->T:Lcn/cmgame/sdk/b/b;

    .line 133
    invoke-direct {p0, p2}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "POST"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 152
    :try_start_0
    check-cast p1, Lcn/cmgame/billing/c/d;

    .line 153
    iget-object v0, p0, Lcn/cmgame/billing/api/b$2;->S:Lcn/cmgame/billing/api/b;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/d;->bz()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/b/k;)V

    .line 154
    iget-object v0, p0, Lcn/cmgame/billing/api/b$2;->T:Lcn/cmgame/sdk/b/b;

    iget-object v1, p0, Lcn/cmgame/billing/api/b$2;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v1}, Lcn/cmgame/billing/api/b;->f(Lcn/cmgame/billing/api/b;)Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/sdk/b/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/b$2;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "http://gmc.g188.net/egsb/access/login"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/cmgame/billing/api/b$2;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/cmgame/billing/api/b$2;->T:Lcn/cmgame/sdk/b/b;

    invoke-interface {v0, p1}, Lcn/cmgame/sdk/b/b;->m(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method
