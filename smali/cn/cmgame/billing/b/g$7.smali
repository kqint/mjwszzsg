.class Lcn/cmgame/billing/b/g$7;
.super Lcn/cmgame/billing/a/g;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/g;->a(Ljava/lang/String;Lcn/cmgame/billing/b/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bx:Lcn/cmgame/billing/b/g$a;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/g$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/billing/b/g$7;->bx:Lcn/cmgame/billing/b/g$a;

    .line 117
    invoke-direct {p0, p1}, Lcn/cmgame/billing/a/g;-><init>(Lcn/cmgame/billing/a/h;)V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "POST"

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcn/cmgame/billing/b/g$7;->bx:Lcn/cmgame/billing/b/g$a;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    check-cast p1, Lcn/cmgame/billing/c/f;

    .line 137
    iget-object v0, p0, Lcn/cmgame/billing/b/g$7;->bx:Lcn/cmgame/billing/b/g$a;

    invoke-virtual {p1}, Lcn/cmgame/billing/c/f;->bD()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/g$a;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const-string v0, "gc_unexpected_response_format"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/b/g$7;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "http://gmc.g188.net/egsb/message/queryPushMessages"

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcn/cmgame/billing/b/g$7;->bx:Lcn/cmgame/billing/b/g$a;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/cmgame/billing/b/g$7;->bx:Lcn/cmgame/billing/b/g$a;

    invoke-virtual {v0, p1}, Lcn/cmgame/billing/b/g$a;->m(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcn/cmgame/billing/a/g;->m(Ljava/lang/String;)V

    goto :goto_0
.end method
