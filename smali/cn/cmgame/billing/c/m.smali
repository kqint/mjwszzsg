.class public Lcn/cmgame/billing/c/m;
.super Lcn/cmgame/sdk/d/b;
.source "UserTokenResponse.java"


# instance fields
.field private cm:Ljava/lang/String;

.field private cn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/cmgame/billing/c/m;->cm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/c/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcn/cmgame/billing/c/m;->cm:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcn/cmgame/billing/c/m$1;

    const-class v1, Lcn/cmgame/billing/c/m;

    .line 35
    const-string v2, "usertokenresponse"

    .line 34
    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/m$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usertoken"

    new-instance v3, Lcn/cmgame/billing/c/m$2;

    invoke-direct {v3}, Lcn/cmgame/billing/c/m$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "tokenexpiredtime"

    new-instance v3, Lcn/cmgame/billing/c/m$3;

    invoke-direct {v3}, Lcn/cmgame/billing/c/m$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/cmgame/billing/c/m;->cn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/cmgame/billing/c/m;->cn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public au(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcn/cmgame/billing/c/m;->cm:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public av(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcn/cmgame/billing/c/m;->cn:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public bL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/cmgame/billing/c/m;->cm:Ljava/lang/String;

    return-object v0
.end method

.method public bM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/cmgame/billing/c/m;->cn:Ljava/lang/String;

    return-object v0
.end method
