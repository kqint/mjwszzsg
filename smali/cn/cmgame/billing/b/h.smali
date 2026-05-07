.class public Lcn/cmgame/billing/b/h;
.super Lcn/cmgame/sdk/c/a;
.source "PackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/b/h$a;
    }
.end annotation


# instance fields
.field private bA:Ljava/lang/String;

.field private bB:Ljava/lang/String;

.field private by:Ljava/lang/String;

.field private bz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->by:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
    .locals 2

    .prologue
    .line 178
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 179
    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "ub"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "packageId"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "gameId"

    invoke-virtual {v0, v1, p4}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lcn/cmgame/billing/b/h$7;

    invoke-direct {v1, v0, p5}, Lcn/cmgame/billing/b/h$7;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/sdk/b/b;)V

    .line 217
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 218
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/h$a;)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 125
    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "ub"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "authType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "pkgIDs"

    invoke-virtual {v0, v1, p4}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    const-string v1, "contentId"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "gameId"

    invoke-virtual {v0, v1, p5}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcn/cmgame/billing/b/h$6;

    invoke-direct {v1, v0, p6}, Lcn/cmgame/billing/b/h$6;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/h$a;)V

    .line 174
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 175
    return-void

    .line 132
    :cond_0
    const-string v1, "authType"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcn/cmgame/billing/b/h$1;

    const-class v1, Lcn/cmgame/billing/b/h;

    const-string v2, "packageinfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/h$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "packageid"

    new-instance v3, Lcn/cmgame/billing/b/h$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/h$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "packagename"

    new-instance v3, Lcn/cmgame/billing/b/h$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/h$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "packagedesc"

    new-instance v3, Lcn/cmgame/billing/b/h$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/h$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "packageprice"

    new-instance v3, Lcn/cmgame/billing/b/h$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/h$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->by:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->bz:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->bz:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->bA:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->bA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/b/h;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->bB:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcn/cmgame/billing/b/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->bB:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public aa(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->by:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public ab(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->bA:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->bB:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public bg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->by:Ljava/lang/String;

    return-object v0
.end method

.method public bh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->bA:Ljava/lang/String;

    return-object v0
.end method

.method public bi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->bB:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/cmgame/billing/b/h;->bz:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/cmgame/billing/b/h;->bz:Ljava/lang/String;

    .line 39
    return-void
.end method
