.class Lmm/purchasesdk/core/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    const-string v1, ""

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    iget-boolean v1, v1, Lmm/purchasesdk/core/ui/a;->r:Z

    iput-boolean v1, v0, Lmm/purchasesdk/core/ui/a;->s:Z

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmm/purchasesdk/core/ui/a;->r:Z

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->c(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->d(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->e(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->f(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/a;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v3}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/view/View$OnClickListener;

    move-result-object v3

    const-string v4, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {v1, v2, v3, v4}, Lmm/purchasesdk/core/ui/a;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "\u6b22\u8fce\u60a8\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\u529f\u80fd\uff0c\u652f\u4ed8\u6210\u529f\u540e\u7cfb\u7edf\u4f1a\u5411\u60a8\u53d1\u9001\u63d0\u793a\u77ed\u4fe1\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536."

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ab(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/h/a;

    move-result-object v1

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/core/l/d;->ac(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/h;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
