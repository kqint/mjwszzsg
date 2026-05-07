.class Lmm/purchasesdk/core/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/b;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
