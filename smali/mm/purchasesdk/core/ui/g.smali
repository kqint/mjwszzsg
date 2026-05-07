.class Lmm/purchasesdk/core/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/a;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/g;->a:Lmm/purchasesdk/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/g;->a:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/a;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/g;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/b;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/g;->a:Lmm/purchasesdk/core/ui/a;

    iget-object v1, v1, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/d;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/g;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmm/purchasesdk/core/ui/g;->a:Lmm/purchasesdk/core/ui/a;

    invoke-static {v3}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    return-void
.end method
