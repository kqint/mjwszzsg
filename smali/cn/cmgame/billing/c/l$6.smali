.class Lcn/cmgame/billing/c/l$6;
.super Lcn/cmgame/billing/a/g;
.source "UpdateVersionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cl:Lcn/cmgame/billing/c/l$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/c/l$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/c/l$6;->cl:Lcn/cmgame/billing/c/l$a;

    .line 155
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcn/cmgame/billing/c/l$6;->cl:Lcn/cmgame/billing/c/l$a;

    if-eqz v0, :cond_0

    .line 175
    check-cast p1, Lcn/cmgame/billing/c/l;

    .line 176
    iget-object v0, p0, Lcn/cmgame/billing/c/l$6;->cl:Lcn/cmgame/billing/c/l$a;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/l;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/c/l$a;->C(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "http://gmc.g188.net/egsb/verification/getUpdateUrl"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/cmgame/billing/c/l$6;->cl:Lcn/cmgame/billing/c/l$a;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/cmgame/billing/c/l$6;->cl:Lcn/cmgame/billing/c/l$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/c/l$a;->m(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method
