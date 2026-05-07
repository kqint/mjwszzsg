.class public Lcn/cmgame/billing/c/e;
.super Lcn/cmgame/sdk/d/b;
.source "LowestDiscountResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/c/e$a;
    }
.end annotation


# instance fields
.field private aV:Ljava/lang/String;

.field private bD:Ljava/lang/String;

.field private bX:Lcn/cmgame/billing/b/d;

.field private bY:Lcn/cmgame/billing/b/i;

.field private bZ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/e$a;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 103
    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "ub"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "spId"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "contentId"

    invoke-virtual {v0, v1, p3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p4}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "consumeCode"

    invoke-virtual {v0, v1, p5}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "serviceId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "packageId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcn/cmgame/billing/c/e$7;

    invoke-direct {v1, v0, p6}, Lcn/cmgame/billing/c/e$7;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/c/e$a;)V

    .line 141
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 142
    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcn/cmgame/billing/c/e$1;

    const-class v1, Lcn/cmgame/billing/c/e;

    const-string v2, "lowestdiscountresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/e$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "discountid"

    new-instance v3, Lcn/cmgame/billing/c/e$2;

    invoke-direct {v3}, Lcn/cmgame/billing/c/e$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "promotionid"

    new-instance v3, Lcn/cmgame/billing/c/e$3;

    invoke-direct {v3}, Lcn/cmgame/billing/c/e$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "adviceprice"

    new-instance v3, Lcn/cmgame/billing/c/e$4;

    invoke-direct {v3}, Lcn/cmgame/billing/c/e$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "discountinfo"

    new-instance v3, Lcn/cmgame/billing/c/e$5;

    const-class v4, Lcn/cmgame/billing/b/d;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/e$5;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "promotioninfo"

    new-instance v3, Lcn/cmgame/billing/c/e$6;

    const-class v4, Lcn/cmgame/billing/b/i;

    invoke-direct {v3, v4}, Lcn/cmgame/billing/c/e$6;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-object v0
.end method


# virtual methods
.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcn/cmgame/billing/c/e;->aV:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public aL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcn/cmgame/billing/c/e;->aV:Ljava/lang/String;

    return-object v0
.end method

.method public ad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcn/cmgame/billing/c/e;->bD:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public ar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcn/cmgame/billing/c/e;->bZ:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public bA()Lcn/cmgame/billing/b/d;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/cmgame/billing/c/e;->bX:Lcn/cmgame/billing/b/d;

    return-object v0
.end method

.method public bB()Lcn/cmgame/billing/b/i;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcn/cmgame/billing/c/e;->bY:Lcn/cmgame/billing/b/i;

    return-object v0
.end method

.method public bC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcn/cmgame/billing/c/e;->bZ:Ljava/lang/String;

    return-object v0
.end method

.method public bj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcn/cmgame/billing/c/e;->bD:Ljava/lang/String;

    return-object v0
.end method

.method public e(Lcn/cmgame/billing/b/d;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcn/cmgame/billing/c/e;->bX:Lcn/cmgame/billing/b/d;

    .line 150
    return-void
.end method

.method public g(Lcn/cmgame/billing/b/i;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcn/cmgame/billing/c/e;->bY:Lcn/cmgame/billing/b/i;

    .line 165
    return-void
.end method
