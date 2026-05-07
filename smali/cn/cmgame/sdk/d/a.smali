.class public Lcn/cmgame/sdk/d/a;
.super Lcn/cmgame/sdk/d/b;
.source "ListResponse.java"


# instance fields
.field private ix:Ljava/lang/Long;

.field private iy:Ljava/lang/Integer;

.field private iz:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/d/a;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->ix:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/sdk/d/a;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/cmgame/sdk/d/a;->iy:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/d/a;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcn/cmgame/sdk/d/a;->ix:Ljava/lang/Long;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcn/cmgame/sdk/d/a$1;

    const-class v1, Lcn/cmgame/sdk/d/a;

    const-string v2, "ListResponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/sdk/d/a$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "totalRows"

    new-instance v3, Lcn/cmgame/sdk/d/a$2;

    invoke-direct {v3}, Lcn/cmgame/sdk/d/a$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "pagecount"

    new-instance v3, Lcn/cmgame/sdk/d/a$3;

    invoke-direct {v3}, Lcn/cmgame/sdk/d/a$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "currentPage"

    new-instance v3, Lcn/cmgame/sdk/d/a$4;

    invoke-direct {v3}, Lcn/cmgame/sdk/d/a$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/sdk/d/a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->iy:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/sdk/d/a;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcn/cmgame/sdk/d/a;->iz:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/sdk/d/a;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->iz:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcn/cmgame/sdk/d/a;->iy:Ljava/lang/Integer;

    .line 24
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcn/cmgame/sdk/d/a;->ix:Ljava/lang/Long;

    .line 14
    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcn/cmgame/sdk/d/a;->iz:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method public dq()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->ix:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->ix:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public dr()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->iy:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->iy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public ds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->iz:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/cmgame/sdk/d/a;->iz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
