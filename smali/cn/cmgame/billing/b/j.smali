.class public Lcn/cmgame/billing/b/j;
.super Lcn/cmgame/sdk/c/a;
.source "ScreenShot.java"


# instance fields
.field private bJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcn/cmgame/billing/b/j;->bJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/b/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcn/cmgame/billing/b/j;->bJ:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lcn/cmgame/billing/b/j$1;

    const-class v1, Lcn/cmgame/billing/b/j;

    const-string v2, "img"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/j$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "img"

    new-instance v3, Lcn/cmgame/billing/b/j$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/j$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/cmgame/billing/b/j;->bJ:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/cmgame/billing/b/j;->bJ:Ljava/lang/String;

    .line 39
    return-void
.end method
