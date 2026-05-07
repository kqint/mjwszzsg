.class Lcn/cmgame/billing/ui/b$16;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->j(Z)Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    .line 2163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b$16;)Lcn/cmgame/billing/ui/b;
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2166
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2167
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_error_network"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2170
    :cond_1
    const/4 v2, 0x0

    .line 2171
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->v(Lcn/cmgame/billing/ui/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2172
    if-eqz v0, :cond_0

    .line 2174
    iget-object v1, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->w(Lcn/cmgame/billing/ui/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    .line 2180
    :goto_1
    iget-object v2, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b$16;->dh:Lcn/cmgame/billing/ui/b;

    const-string v4, "gc_loading"

    invoke-static {v4}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/cmgame/billing/ui/b;->ax(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/cmgame/billing/ui/b;->c(Landroid/view/View;)V

    .line 2181
    const-string v2, "GH_DEFAULT"

    const-string v3, "03"

    new-instance v4, Lcn/cmgame/billing/ui/b$16$1;

    invoke-direct {v4, p0, v0}, Lcn/cmgame/billing/ui/b$16$1;-><init>(Lcn/cmgame/billing/ui/b$16;Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2, v3, v4}, Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/e$b;)V

    goto :goto_0

    .line 2174
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_2

    .line 2176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method
