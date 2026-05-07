.class Lmm/purchasesdk/core/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/u;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/u;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v3}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v4}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v5}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    iget-object v6, v6, Lmm/purchasesdk/core/ui/u;->b:Lmm/purchasesdk/core/h/d;

    iget-object v7, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v7}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/h/a;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/w;->a:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->dismiss()V

    return-void
.end method
