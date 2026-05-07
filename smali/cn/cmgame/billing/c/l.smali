.class public Lcn/cmgame/billing/c/l;
.super Lcn/cmgame/sdk/d/b;
.source "UpdateVersionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/c/l$a;,
        Lcn/cmgame/billing/c/l$b;
    }
.end annotation


# instance fields
.field private ch:I

.field private ci:Ljava/lang/String;

.field private cj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/cmgame/sdk/d/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/l;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcn/cmgame/billing/c/l;->ch:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/l$b;)V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 104
    const-string v1, "contentId"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->H(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 107
    const-string v2, "versionCode"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "packageName"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "ua"

    const-string v2, "HTC_Desire"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "clientType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcn/cmgame/billing/c/l$5;

    invoke-direct {v1, v0, p3}, Lcn/cmgame/billing/c/l$5;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/c/l$b;)V

    .line 144
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 145
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/c/l$a;)V
    .locals 3

    .prologue
    .line 148
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 149
    const-string v1, "contentId"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "channelId"

    invoke-virtual {v0, v1, p2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->H(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 152
    const-string v2, "currentVersionCode"

    invoke-virtual {v0, v2, p3}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "packageName"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "clientType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcn/cmgame/billing/c/l$6;

    invoke-direct {v1, v0, p4}, Lcn/cmgame/billing/c/l$6;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/c/l$a;)V

    .line 188
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 189
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/l;I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcn/cmgame/billing/c/l;->ch:I

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/c/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/cmgame/billing/c/l;->ci:Ljava/lang/String;

    return-void
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcn/cmgame/billing/c/l$1;

    const-class v1, Lcn/cmgame/billing/c/l;

    const-string v2, "updateversionresponse"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/c/l$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "updateflag"

    new-instance v3, Lcn/cmgame/billing/c/l$2;

    invoke-direct {v3}, Lcn/cmgame/billing/c/l$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "currentversioncode"

    new-instance v3, Lcn/cmgame/billing/c/l$3;

    invoke-direct {v3}, Lcn/cmgame/billing/c/l$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "updateurl"

    new-instance v3, Lcn/cmgame/billing/c/l$4;

    invoke-direct {v3}, Lcn/cmgame/billing/c/l$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/cmgame/billing/c/l;->ci:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/c/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcn/cmgame/billing/c/l;->cj:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/c/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/cmgame/billing/c/l;->cj:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public as(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/cmgame/billing/c/l;->ci:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public at(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/cmgame/billing/c/l;->cj:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public bI()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcn/cmgame/billing/c/l;->ch:I

    return v0
.end method

.method public bJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/cmgame/billing/c/l;->ci:Ljava/lang/String;

    return-object v0
.end method

.method public bK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/cmgame/billing/c/l;->cj:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcn/cmgame/billing/c/l;->ch:I

    .line 24
    return-void
.end method
