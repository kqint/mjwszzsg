.class Lcn/cmgame/billing/ui/b$16$1;
.super Lcn/cmgame/billing/b/e$b;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b$16;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcn/cmgame/billing/ui/b$16;

.field private final synthetic dr:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b$16;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$16$1;->dq:Lcn/cmgame/billing/ui/b$16;

    iput-object p2, p0, Lcn/cmgame/billing/ui/b$16$1;->dr:Landroid/graphics/Bitmap;

    .line 2181
    invoke-direct {p0}, Lcn/cmgame/billing/b/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/cmgame/billing/b/e;)V
    .locals 3

    .prologue
    .line 2191
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16$1;->dq:Lcn/cmgame/billing/ui/b$16;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$16;->a(Lcn/cmgame/billing/ui/b$16;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16$1;->dq:Lcn/cmgame/billing/ui/b$16;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$16;->a(Lcn/cmgame/billing/ui/b$16;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2194
    :cond_0
    if-eqz p1, :cond_1

    .line 2195
    new-instance v0, Lcn/cmgame/billing/ui/c;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$16$1;->dq:Lcn/cmgame/billing/ui/b$16;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b$16;->a(Lcn/cmgame/billing/ui/b$16;)Lcn/cmgame/billing/ui/b;

    move-result-object v1

    iget-object v1, v1, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b$16$1;->dr:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p1, v2}, Lcn/cmgame/billing/ui/c;-><init>(Landroid/content/Context;Lcn/cmgame/billing/b/e;Landroid/graphics/Bitmap;)V

    .line 2196
    invoke-virtual {v0}, Lcn/cmgame/billing/ui/c;->show()V

    .line 2198
    :cond_1
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16$1;->dq:Lcn/cmgame/billing/ui/b$16;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$16;->a(Lcn/cmgame/billing/ui/b$16;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$16$1;->dq:Lcn/cmgame/billing/ui/b$16;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b$16;->a(Lcn/cmgame/billing/ui/b$16;)Lcn/cmgame/billing/ui/b;

    move-result-object v0

    iget-object v0, v0, Lcn/cmgame/billing/ui/b;->cC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2187
    :cond_0
    return-void
.end method
