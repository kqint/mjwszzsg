.class Lcn/cmgame/billing/b/e$8;
.super Lcn/cmgame/billing/a/b;
.source "GameDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic T:Lcn/cmgame/sdk/b/b;

.field private final synthetic bm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/b/e$8;->bm:Ljava/lang/String;

    iput-object p2, p0, Lcn/cmgame/billing/b/e$8;->T:Lcn/cmgame/sdk/b/b;

    .line 429
    invoke-direct {p0}, Lcn/cmgame/billing/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-string v0, ""

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcn/cmgame/billing/b/e$8;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcn/cmgame/billing/b/e$8;->T:Lcn/cmgame/sdk/b/b;

    invoke-interface {v0, p1}, Lcn/cmgame/sdk/b/b;->a(Ljava/lang/Object;)V

    .line 442
    :cond_0
    return-void
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcn/cmgame/billing/b/e$8;->bm:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcn/cmgame/billing/b/e$8;->T:Lcn/cmgame/sdk/b/b;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcn/cmgame/billing/b/e$8;->T:Lcn/cmgame/sdk/b/b;

    invoke-interface {v0, p1}, Lcn/cmgame/sdk/b/b;->m(Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method
