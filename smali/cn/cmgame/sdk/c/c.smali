.class public Lcn/cmgame/sdk/c/c;
.super Lcn/cmgame/sdk/c/a;
.source "ServerException.java"


# instance fields
.field private it:Ljava/lang/String;

.field private iu:Ljava/lang/String;

.field private iv:Ljava/lang/String;

.field private iw:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/cmgame/sdk/c/c;->iu:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcn/cmgame/sdk/c/c;->iv:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/cmgame/sdk/c/c;->iu:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/sdk/c/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/cmgame/sdk/c/c;->iu:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/c/c;Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcn/cmgame/sdk/c/c;->iw:Z

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcn/cmgame/sdk/c/c$1;

    const-class v1, Lcn/cmgame/sdk/c/c;

    const-string v2, "exception"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/sdk/c/c$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "class"

    new-instance v3, Lcn/cmgame/sdk/c/c$2;

    invoke-direct {v3}, Lcn/cmgame/sdk/c/c$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "message"

    new-instance v3, Lcn/cmgame/sdk/c/c$3;

    invoke-direct {v3}, Lcn/cmgame/sdk/c/c$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "needs_developer_attention"

    new-instance v3, Lcn/cmgame/sdk/c/c$4;

    invoke-direct {v3}, Lcn/cmgame/sdk/c/c$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/sdk/c/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/cmgame/sdk/c/c;->iv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/sdk/c/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/cmgame/sdk/c/c;->iv:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/sdk/c/c;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcn/cmgame/sdk/c/c;->iw:Z

    return v0
.end method


# virtual methods
.method public aP(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcn/cmgame/sdk/c/c;->iu:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public aQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcn/cmgame/sdk/c/c;->it:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public dn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/cmgame/sdk/c/c;->iu:Ljava/lang/String;

    return-object v0
.end method

.method public do()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcn/cmgame/sdk/c/c;->iw:Z

    return v0
.end method

.method public dp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/cmgame/sdk/c/c;->it:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/cmgame/sdk/c/c;->iv:Ljava/lang/String;

    return-object v0
.end method

.method public o(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcn/cmgame/sdk/c/c;->iw:Z

    .line 57
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/cmgame/sdk/c/c;->iv:Ljava/lang/String;

    .line 47
    return-void
.end method
