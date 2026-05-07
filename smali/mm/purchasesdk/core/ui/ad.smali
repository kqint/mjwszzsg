.class Lmm/purchasesdk/core/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/u;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/u;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/ad;->a:Lmm/purchasesdk/core/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ad;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ad;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ad;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ad;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ad;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
