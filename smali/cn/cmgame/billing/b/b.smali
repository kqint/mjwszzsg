.class public Lcn/cmgame/billing/b/b;
.super Lcn/cmgame/sdk/c/a;
.source "ChargePoint.java"


# instance fields
.field private aQ:Ljava/lang/String;

.field private aR:Ljava/lang/String;

.field private aS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/b/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcn/cmgame/billing/b/b;->aQ:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcn/cmgame/billing/b/b$1;

    const-class v1, Lcn/cmgame/billing/b/b;

    const-string v2, "consumercodeinfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/b$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "consumercode"

    new-instance v3, Lcn/cmgame/billing/b/b$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/b$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "consumername"

    new-instance v3, Lcn/cmgame/billing/b/b$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/b$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "price"

    new-instance v3, Lcn/cmgame/billing/b/b$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/b$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcn/cmgame/billing/b/b;->aR:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcn/cmgame/billing/b/b;->aS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/cmgame/billing/b/b;->aQ:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcn/cmgame/billing/b/b;->aR:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcn/cmgame/billing/b/b;->aS:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public aF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method public aG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aR:Ljava/lang/String;

    return-object v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aS:Ljava/lang/String;

    return-object v0
.end method

.method public aI()I
    .locals 1

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcn/cmgame/billing/b/b;->aS:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method
