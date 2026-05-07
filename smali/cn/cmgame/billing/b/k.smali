.class public Lcn/cmgame/billing/b/k;
.super Lcn/cmgame/sdk/c/a;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/b/k$a;
    }
.end annotation


# instance fields
.field private bK:Ljava/lang/String;

.field private bL:Ljava/lang/String;

.field private bM:Ljava/lang/String;

.field private bN:Ljava/lang/String;

.field private bO:Ljava/lang/String;

.field private bP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcn/cmgame/sdk/c/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/b/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/b/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bM:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a;Lcn/cmgame/billing/b/k$a;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcn/cmgame/billing/a/h;

    invoke-direct {v0}, Lcn/cmgame/billing/a/h;-><init>()V

    .line 133
    const-string v1, "loginType"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "gameId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "contentId"

    invoke-virtual {p2}, Lcn/cmgame/billing/b/a;->aA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "channelId"

    invoke-virtual {p2}, Lcn/cmgame/billing/b/a;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcn/cmgame/billing/a/h;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v1, Lcn/cmgame/billing/b/k$7;

    invoke-direct {v1, v0, p3}, Lcn/cmgame/billing/b/k$7;-><init>(Lcn/cmgame/billing/a/h;Lcn/cmgame/billing/b/k$a;)V

    .line 178
    invoke-virtual {v1}, Lcn/cmgame/billing/a/g;->ao()V

    .line 179
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    const-string v1, "gc_alipay_login_account_or_password_null"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 205
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gt v1, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v2, :cond_3

    .line 198
    :cond_2
    const-string v1, "gc_alipay_login_need_avail_account"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gt v1, v2, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gt v1, v2, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v2, :cond_5

    .line 202
    :cond_4
    const-string v1, "gc_alipay_login_need_avail_password"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 205
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static av()Lcn/cmgame/sdk/c/b;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lcn/cmgame/billing/b/k$1;

    const-class v1, Lcn/cmgame/billing/b/k;

    const-string v2, "userinfo"

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/b/k$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "uid"

    new-instance v3, Lcn/cmgame/billing/b/k$2;

    invoke-direct {v3}, Lcn/cmgame/billing/b/k$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "ub"

    new-instance v3, Lcn/cmgame/billing/b/k$3;

    invoke-direct {v3}, Lcn/cmgame/billing/b/k$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "logintype"

    new-instance v3, Lcn/cmgame/billing/b/k$4;

    invoke-direct {v3}, Lcn/cmgame/billing/b/k$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "name"

    new-instance v3, Lcn/cmgame/billing/b/k$5;

    invoke-direct {v3}, Lcn/cmgame/billing/b/k$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Lcn/cmgame/sdk/c/b;->dl()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "gameplayer"

    new-instance v3, Lcn/cmgame/billing/b/k$6;

    invoke-direct {v3}, Lcn/cmgame/billing/b/k$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/b/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bK:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcn/cmgame/billing/b/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/b/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bL:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/b/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/cmgame/billing/b/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bN:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcn/cmgame/billing/b/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ah(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bK:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public ai(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bL:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public aj(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bM:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public ak(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bN:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bP:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public am(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcn/cmgame/billing/b/k;->bO:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public bp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bK:Ljava/lang/String;

    return-object v0
.end method

.method public bq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bL:Ljava/lang/String;

    return-object v0
.end method

.method public br()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bM:Ljava/lang/String;

    return-object v0
.end method

.method public bs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bN:Ljava/lang/String;

    return-object v0
.end method

.method public bt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bP:Ljava/lang/String;

    return-object v0
.end method

.method public bu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcn/cmgame/billing/b/k;->bO:Ljava/lang/String;

    return-object v0
.end method
