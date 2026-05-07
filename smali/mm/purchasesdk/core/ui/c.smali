.class Lmm/purchasesdk/core/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/ui/m;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    new-instance v1, Lmm/purchasesdk/core/ui/m;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v3}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmm/purchasesdk/core/ui/m;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Boolean;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;Lmm/purchasesdk/core/ui/m;)Lmm/purchasesdk/core/ui/m;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/ui/m;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/ui/m;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/c;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
