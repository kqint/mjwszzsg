.class Lcn/cmgame/billing/ui/c$3;
.super Ljava/lang/Object;
.source "GameDetailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/c;->c(Landroid/graphics/Bitmap;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dU:Lcn/cmgame/billing/ui/c;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/c$3;->dU:Lcn/cmgame/billing/ui/c;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/c$3;)Lcn/cmgame/billing/ui/c;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$3;->dU:Lcn/cmgame/billing/ui/c;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Lcn/cmgame/sdk/e/j;->dR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$3;->dU:Lcn/cmgame/billing/ui/c;

    iget-object v0, v0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    const-string v1, "gc_no_sdcard"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$3;->dU:Lcn/cmgame/billing/ui/c;

    invoke-static {v0}, Lcn/cmgame/billing/ui/c;->d(Lcn/cmgame/billing/ui/c;)Lcn/cmgame/billing/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GH_DEFAULT"

    const-string v2, "03"

    new-instance v3, Lcn/cmgame/billing/ui/c$3$1;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/c$3$1;-><init>(Lcn/cmgame/billing/ui/c$3;)V

    invoke-static {v0, v1, v2, v3}, Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/e$a;)V

    goto :goto_0
.end method
