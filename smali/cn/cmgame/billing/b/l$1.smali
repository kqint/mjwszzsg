.class Lcn/cmgame/billing/b/l$1;
.super Lcn/cmgame/billing/a/g;
.source "UserToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/l;->a(Lcn/cmgame/billing/b/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bT:Lcn/cmgame/billing/b/l$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/l$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/l$1;->bT:Lcn/cmgame/billing/b/l$a;

    .line 43
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcn/cmgame/billing/b/l$1;->bT:Lcn/cmgame/billing/b/l$a;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    check-cast p1, Lcn/cmgame/billing/c/m;

    .line 64
    new-instance v0, Lcn/cmgame/billing/b/l;

    invoke-direct {v0}, Lcn/cmgame/billing/b/l;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcn/cmgame/billing/c/m;->bL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/l;->ao(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcn/cmgame/billing/b/l$1;->bT:Lcn/cmgame/billing/b/l$a;

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/b/l$a;->b(Lcn/cmgame/billing/b/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "http://gmc.g188.net/egsb/authentication/getUserToken"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/cmgame/billing/b/l$1;->bT:Lcn/cmgame/billing/b/l$a;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/cmgame/billing/b/l$1;->bT:Lcn/cmgame/billing/b/l$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/l$a;->m(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
