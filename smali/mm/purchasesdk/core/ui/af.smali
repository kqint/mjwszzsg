.class Lmm/purchasesdk/core/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/u;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/u;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lmm/purchasesdk/core/l/d;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lmm/purchasesdk/core/j/a;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    iget-object v3, v3, Lmm/purchasesdk/core/ui/u;->b:Lmm/purchasesdk/core/h/d;

    invoke-direct {v0, v1, v2, v3}, Lmm/purchasesdk/core/j/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    iget-object v2, v2, Lmm/purchasesdk/core/ui/u;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/core/j/a;->b(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->d(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->m()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/af;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0, p1}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;Landroid/view/View;)V

    return-void
.end method
