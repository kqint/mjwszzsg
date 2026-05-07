.class public Lcn/cmgame/billing/b/d;
.super Lcn/cmgame/sdk/c/a;
.source "DiscountInfo.java"


# instance fields
.field private aV:Ljava/lang/String;

.field private aW:Ljava/lang/String;

.field private aX:Ljava/lang/String;

.field private aY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aV:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcn/cmgame/billing/b/d$1;

    const-class v1, Lcn/cmgame/billing/b/d;

    const-string v2, "discountinfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/d$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "discountid"

    new-instance v3, Lcn/cmgame/billing/b/d$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/d$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "discounttype"

    new-instance v3, Lcn/cmgame/billing/b/d$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/d$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "discountperiod"

    new-instance v3, Lcn/cmgame/billing/b/d$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/d$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "discountrate"

    new-instance v3, Lcn/cmgame/billing/b/d$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/d$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aW:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aX:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/b/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/b/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aV:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aW:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aX:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/cmgame/billing/b/d;->aY:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aV:Ljava/lang/String;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aW:Ljava/lang/String;

    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public aO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/cmgame/billing/b/d;->aY:Ljava/lang/String;

    return-object v0
.end method
