.class public Lcn/cmgame/billing/b/g;
.super Lcn/cmgame/sdk/c/a;
.source "MessageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/b/g$a;
    }
.end annotation


# instance fields
.field private bh:[B

.field private bs:Ljava/lang/String;

.field private bt:Ljava/lang/String;

.field private bu:Ljava/lang/String;

.field private bv:Ljava/lang/String;

.field private bw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcn/cmgame/billing/b/g$a;)V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 104
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/b;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v1

    .line 108
    const-string v2, "uid"

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "ub"

    invoke-virtual {v1}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_1
    const-string v1, "clientType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcn/cmgame/billing/b/g$7;

    invoke-direct {v1, v0, p1}, Lcn/cmgame/billing/b/g$7;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/g$a;)V

    .line 156
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "ub"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcn/cmgame/billing/b/g$1;

    const-class v1, Lcn/cmgame/billing/b/g;

    const-string v2, "messageinfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/g$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "id"

    new-instance v3, Lcn/cmgame/billing/b/g$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/g$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "title"

    new-instance v3, Lcn/cmgame/billing/b/g$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/g$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "imgurl"

    new-instance v3, Lcn/cmgame/billing/b/g$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/g$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "content"

    new-instance v3, Lcn/cmgame/billing/b/g$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/g$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "link"

    new-instance v3, Lcn/cmgame/billing/b/g$6;

    invoke-direct {v3}, Lcn/cmgame/billing/b/g$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object v0
.end method


# virtual methods
.method public W(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcn/cmgame/billing/b/g;->bs:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcn/cmgame/billing/b/g;->bt:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcn/cmgame/billing/b/g;->bu:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcn/cmgame/billing/b/g;->bw:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public aW()[B
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcn/cmgame/billing/b/g;->bh:[B

    return-object v0
.end method

.method public b([B)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcn/cmgame/billing/b/g;->bh:[B

    .line 213
    return-void
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/cmgame/billing/b/g;->bs:Ljava/lang/String;

    return-object v0
.end method

.method public bd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/cmgame/billing/b/g;->bt:Ljava/lang/String;

    return-object v0
.end method

.method public be()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/cmgame/billing/b/g;->bu:Ljava/lang/String;

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcn/cmgame/billing/b/g;->bw:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcn/cmgame/billing/b/g;->bv:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcn/cmgame/billing/b/g;->bv:Ljava/lang/String;

    .line 229
    return-void
.end method
