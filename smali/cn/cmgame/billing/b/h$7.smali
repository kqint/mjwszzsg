.class Lcn/cmgame/billing/b/h$7;
.super Lcn/cmgame/billing/a/g;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic T:Lcn/cmgame/sdk/b/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/h$7;->T:Lcn/cmgame/sdk/b/b;

    .line 184
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "GET"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcn/cmgame/billing/b/h$7;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcn/cmgame/billing/b/h$7;->T:Lcn/cmgame/sdk/b/b;

    invoke-interface {v0, p1}, Lcn/cmgame/sdk/b/b;->a(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "http://gmc.g188.net/egsb/game/subscribe"

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 209
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcn/cmgame/sdk/d/b;

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Lcn/cmgame/sdk/d/b;

    .line 211
    iget-object v0, p0, Lcn/cmgame/billing/b/h$7;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/cmgame/billing/b/h$7;->T:Lcn/cmgame/sdk/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/cmgame/sdk/d/b;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/sdk/b/b;->m(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method
