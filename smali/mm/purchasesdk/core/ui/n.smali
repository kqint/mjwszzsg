.class Lmm/purchasesdk/core/ui/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/core/ui/m;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/m;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/m;->a(Lmm/purchasesdk/core/ui/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/Button;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/m;->b(Lmm/purchasesdk/core/ui/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/m;->c(Lmm/purchasesdk/core/ui/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/m;->d(Lmm/purchasesdk/core/ui/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/widget/Button;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/m;->e(Lmm/purchasesdk/core/ui/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/core/ui/n;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/m;->f(Lmm/purchasesdk/core/ui/m;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
