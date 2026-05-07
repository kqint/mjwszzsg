.class Lcn/cmgame/billing/api/b$6;
.super Lcn/cmgame/billing/b/l$a;
.source "GameLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/b;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcn/cmgame/billing/api/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/api/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    .line 411
    invoke-direct {p0}, Lcn/cmgame/billing/b/l$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/api/b$6;)Lcn/cmgame/billing/api/b;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    return-object v0
.end method


# virtual methods
.method public b(Lcn/cmgame/billing/b/l;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/b;->b(Lcn/cmgame/billing/api/b;I)V

    .line 432
    invoke-virtual {p1}, Lcn/cmgame/billing/b/l;->bw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Lcn/cmgame/billing/util/Const;->jm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/cmgame/billing/b/l;->an(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcn/cmgame/billing/b/l;->bw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->p(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0, p1}, Lcn/cmgame/billing/api/b;->a(Lcn/cmgame/billing/api/b;Lcn/cmgame/billing/b/l;)V

    .line 436
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->i(Lcn/cmgame/billing/api/b;)V

    .line 438
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->g(Lcn/cmgame/billing/api/b;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/cmgame/billing/api/b;->b(Lcn/cmgame/billing/api/b;I)V

    .line 415
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->g(Lcn/cmgame/billing/api/b;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcn/cmgame/billing/api/b$6;->S:Lcn/cmgame/billing/api/b;

    invoke-static {v0}, Lcn/cmgame/billing/api/b;->e(Lcn/cmgame/billing/api/b;)V

    .line 427
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/cmgame/billing/api/b$6$1;

    invoke-direct {v1, p0}, Lcn/cmgame/billing/api/b$6$1;-><init>(Lcn/cmgame/billing/api/b$6;)V

    .line 424
    const-wide/16 v2, 0x1f40

    .line 418
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
