.class public abstract Lcn/cmgame/billing/a/d;
.super Lcn/cmgame/billing/a/a;
.source "DownloadRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcn/cmgame/billing/a/a;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcn/cmgame/billing/a/h;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/a;-><init>(Lcn/cmgame/billing/a/h;)V

    .line 17
    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "GET"

    return-object v0
.end method

.method public a(I[B)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "gc_unknown_server_error"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const/16 v1, 0xc8

    if-gt v1, p1, :cond_0

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0, p2}, Lcn/cmgame/billing/a/d;->a([B)V

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    const/16 v1, 0x194

    if-ne v1, p1, :cond_1

    .line 42
    const-string v0, "gc_file_not_found"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_1
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/a/d;->m(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract a([B)V
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ServerException"

    invoke-static {v0, p1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
