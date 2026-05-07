.class Lcn/cmgame/billing/api/b$5;
.super Lcn/cmgame/billing/a/g;
.source "GameLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/b;->a(Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcn/cmgame/billing/api/b;

.field private final synthetic T:Lcn/cmgame/sdk/b/b;

.field private final synthetic U:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/b$5;->S:Lcn/cmgame/billing/api/b;

    iput-object p3, p0, Lcn/cmgame/billing/api/b$5;->T:Lcn/cmgame/sdk/b/b;

    iput-object p4, p0, Lcn/cmgame/billing/api/b$5;->U:Ljava/lang/String;

    .line 258
    invoke-direct {p0, p2}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string v0, "POST"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_1

    .line 278
    :try_start_0
    check-cast p1, Lcn/cmgame/billing/c/d;

    .line 279
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->S:Lcn/cmgame/billing/api/b;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/d;->bz()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/b/k;)V

    .line 280
    const-string v0, "true"

    iget-object v1, p0, Lcn/cmgame/billing/api/b$5;->S:Lcn/cmgame/billing/api/b;

    invoke-virtual {v1}, Lcn/cmgame/billing/api/b;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->S:Lcn/cmgame/billing/api/b;

    iget-object v1, p0, Lcn/cmgame/billing/api/b$5;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/b;->n(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->T:Lcn/cmgame/sdk/b/b;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/d;->bz()Lcn/cmgame/billing/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/sdk/b/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->b(Lcn/cmgame/billing/api/b;)V

    .line 290
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/api/b$5;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-string v0, "http://gmc.g188.net/egsb/access/login"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcn/cmgame/billing/api/b$5;->T:Lcn/cmgame/sdk/b/b;

    invoke-interface {v0, p1}, Lcn/cmgame/sdk/b/b;->m(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
