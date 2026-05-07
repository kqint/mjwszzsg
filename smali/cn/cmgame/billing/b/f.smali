.class public Lcn/cmgame/billing/b/f;
.super Lcn/cmgame/sdk/c/a;
.source "GameInfo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "gameinfo"


# instance fields
.field private bc:Ljava/lang/String;

.field private bo:Ljava/lang/String;

.field private bp:Ljava/lang/String;

.field private bq:Ljava/lang/String;

.field private br:Ljava/lang/String;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bo:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcn/cmgame/billing/b/f$1;

    const-class v1, Lcn/cmgame/billing/b/f;

    const-string v2, "gameinfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/f$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "consumercodelist"

    new-instance v3, Lcn/cmgame/billing/b/f$2;

    const-class v4, Lcn/cmgame/billing/b/b;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/b/f$2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gamename"

    new-instance v3, Lcn/cmgame/billing/b/f$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/f$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "cpname"

    new-instance v3, Lcn/cmgame/billing/b/f$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/f$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gamecpname"

    new-instance v3, Lcn/cmgame/billing/b/f$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/f$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gametype"

    new-instance v3, Lcn/cmgame/billing/b/f$6;

    invoke-direct {v3}, Lcn/cmgame/billing/b/f$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "customerservicetel"

    new-instance v3, Lcn/cmgame/billing/b/f$7;

    invoke-direct {v3}, Lcn/cmgame/billing/b/f$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bp:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bc:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/b/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/b/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->br:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcn/cmgame/billing/b/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->br:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/cmgame/billing/b/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bq:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcn/cmgame/billing/b/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bq:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public O(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bc:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bo:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bq:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->br:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcn/cmgame/billing/b/f;->bp:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public aR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bc:Ljava/lang/String;

    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bo:Ljava/lang/String;

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bq:Ljava/lang/String;

    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->br:Ljava/lang/String;

    return-object v0
.end method

.method public bb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->bp:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/cmgame/billing/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcn/cmgame/billing/b/f;->l:Ljava/util/List;

    return-object v0
.end method
