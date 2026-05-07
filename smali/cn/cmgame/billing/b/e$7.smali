.class Lcn/cmgame/billing/b/e$7;
.super Ljava/lang/Object;
.source "GameDetail.java"

# interfaces
.implements Lcn/cmgame/sdk/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/b/e;->a(Landroid/content/Context;Lcn/cmgame/billing/util/c;Lcn/cmgame/billing/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bl:Lcn/cmgame/billing/b/e;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/b/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/b/e$7;->bl:Lcn/cmgame/billing/b/e;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 401
    check-cast p1, Landroid/graphics/Bitmap;

    .line 402
    iget-object v0, p0, Lcn/cmgame/billing/b/e$7;->bl:Lcn/cmgame/billing/b/e;

    invoke-static {p1}, Lcn/cmgame/sdk/e/j;->e(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/e;->b([B)V

    .line 403
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 407
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method
