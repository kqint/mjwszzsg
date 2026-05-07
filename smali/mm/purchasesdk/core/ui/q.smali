.class Lmm/purchasesdk/core/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic b:Lmm/purchasesdk/core/ui/m;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/m;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/q;->b:Lmm/purchasesdk/core/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "clear"

    iget-object v1, p0, Lmm/purchasesdk/core/ui/q;->b:Lmm/purchasesdk/core/ui/m;

    invoke-static {v1, v0}, Lmm/purchasesdk/core/ui/m;->a(Lmm/purchasesdk/core/ui/m;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmm/purchasesdk/core/ui/r;

    invoke-direct {v2, p0, v0}, Lmm/purchasesdk/core/ui/r;-><init>(Lmm/purchasesdk/core/ui/q;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return v3
.end method
