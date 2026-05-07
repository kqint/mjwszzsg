.class Lcn/cmgame/billing/ui/c$3$1;
.super Lcn/cmgame/billing/b/e$a;
.source "GameDetailDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/c$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dV:Lcn/cmgame/billing/ui/c$3;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/c$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/c$3$1;->dV:Lcn/cmgame/billing/ui/c$3;

    .line 232
    invoke-direct {p0}, Lcn/cmgame/billing/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcn/cmgame/billing/ui/c$3$1;->dV:Lcn/cmgame/billing/ui/c$3;

    invoke-static {v0}, Lcn/cmgame/billing/ui/c$3;->a(Lcn/cmgame/billing/ui/c$3;)Lcn/cmgame/billing/ui/c;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method
