.class public Lcn/cmgame/billing/c/d;
.super Lcn/cmgame/sdk/d/b;
.source "LoginResponse.java"


# instance fields
.field private aZ:Ljava/lang/String;

.field private bW:Lcn/cmgame/billing/b/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/cmgame/billing/c/d;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/c/d;Lcn/cmgame/billing/b/k;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/cmgame/billing/c/d;->bW:Lcn/cmgame/billing/b/k;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/cmgame/billing/c/d;->aZ:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcn/cmgame/billing/c/d$1;

    const-class v1, Lcn/cmgame/billing/c/d;

    const-string v2, "loginresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/d$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gameid"

    new-instance v3, Lcn/cmgame/billing/c/d$2;

    invoke-direct {v3}, Lcn/cmgame/billing/c/d$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "userinfo"

    new-instance v3, Lcn/cmgame/billing/c/d$3;

    const-class v4, Lcn/cmgame/billing/b/k;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/d$3;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/d;)Lcn/cmgame/billing/b/k;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/cmgame/billing/c/d;->bW:Lcn/cmgame/billing/b/k;

    return-object v0
.end method


# virtual methods
.method public bz()Lcn/cmgame/billing/b/k;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/cmgame/billing/c/d;->bW:Lcn/cmgame/billing/b/k;

    return-object v0
.end method

.method public f(Lcn/cmgame/billing/b/k;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcn/cmgame/billing/c/d;->bW:Lcn/cmgame/billing/b/k;

    .line 22
    return-void
.end method
