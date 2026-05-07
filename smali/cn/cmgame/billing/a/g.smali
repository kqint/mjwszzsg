.class public abstract Lcn/cmgame/billing/a/g;
.super Lcn/cmgame/billing/a/f;
.source "NetRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/cmgame/billing/a/f;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcn/cmgame/billing/a/h;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/f;-><init>(Lcn/cmgame/billing/a/h;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_2

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_2

    .line 46
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcn/cmgame/sdk/c/c;

    if-nez v0, :cond_1

    move-object v0, p2

    .line 47
    check-cast v0, Lcn/cmgame/sdk/d/b;

    .line 48
    invoke-virtual {v0}, Lcn/cmgame/sdk/d/b;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Lcn/cmgame/billing/a/g;->a(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p2}, Lcn/cmgame/billing/a/g;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, p2}, Lcn/cmgame/billing/a/g;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, p2}, Lcn/cmgame/billing/a/g;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(I[B)V
    .locals 4

    .prologue
    .line 33
    invoke-static {p2}, Lcn/cmgame/sdk/e/j;->j([B)Ljava/lang/Object;

    move-result-object v0

    .line 34
    sget-object v1, Lcn/cmgame/billing/a/g;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "responseCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcn/cmgame/billing/a/g;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "responseBody="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, v0}, Lcn/cmgame/billing/a/g;->a(ILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 66
    const-string v0, "gc_billing_unknown_server_error"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcn/cmgame/sdk/d/b;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lcn/cmgame/sdk/d/b;

    .line 69
    new-instance v0, Lcn/cmgame/sdk/c/c;

    invoke-direct {v0}, Lcn/cmgame/sdk/c/c;-><init>()V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/cmgame/sdk/d/b;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/cmgame/sdk/c/c;->aQ(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcn/cmgame/sdk/d/b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/cmgame/sdk/c/c;->setMessage(Ljava/lang/String;)V

    .line 75
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcn/cmgame/sdk/c/c;

    if-eqz v2, :cond_0

    .line 76
    check-cast v0, Lcn/cmgame/sdk/c/c;

    .line 77
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/c/c;->aQ(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_1
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    .line 81
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
