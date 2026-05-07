.class public Lcn/cmgame/billing/c/c;
.super Lcn/cmgame/sdk/d/b;
.source "GameDownloadResponse.java"


# instance fields
.field private bV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 13
    new-instance v0, Lcn/cmgame/billing/c/c$1;

    const-class v1, Lcn/cmgame/billing/c/c;

    const-string v2, "gamedownloadresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/c$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "downloadurl"

    new-instance v3, Lcn/cmgame/billing/c/c$2;

    invoke-direct {v3}, Lcn/cmgame/billing/c/c$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object v0
.end method


# virtual methods
.method public aq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcn/cmgame/billing/c/c;->bV:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public by()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/cmgame/billing/c/c;->bV:Ljava/lang/String;

    return-object v0
.end method
