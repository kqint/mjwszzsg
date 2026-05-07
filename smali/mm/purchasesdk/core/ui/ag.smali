.class public Lmm/purchasesdk/core/ui/ag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/core/ui/ag$1;,
        Lmm/purchasesdk/core/ui/ag$a;,
        Lmm/purchasesdk/core/ui/ag$c;,
        Lmm/purchasesdk/core/ui/ag$b;
    }
.end annotation


# instance fields
.field private a:Lmm/purchasesdk/core/ui/ag$a;

.field private a:Lmm/purchasesdk/core/ui/ag$b;

.field private a:Lmm/purchasesdk/core/ui/ag$c;

.field private a:Lmm/purchasesdk/core/ui/ah;

.field private a:Lmm/purchasesdk/core/ui/ak;

.field private a:Lmm/purchasesdk/core/ui/ao;

.field private a:Lmm/purchasesdk/core/ui/s;

.field private b:Lmm/purchasesdk/core/ui/a;

.field private b:Lmm/purchasesdk/core/ui/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)V
    .locals 2

    new-instance v0, Lmm/purchasesdk/core/ui/ag$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmm/purchasesdk/core/ui/ag$b;-><init>(Lmm/purchasesdk/core/ui/ag;Lmm/purchasesdk/core/ui/ag$1;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$b;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$b;

    iput-object p2, v0, Lmm/purchasesdk/core/ui/ag$b;->c:Lmm/purchasesdk/core/h/a;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$b;

    iput-object p1, v0, Lmm/purchasesdk/core/ui/ag$b;->context:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$b;

    iput-object p3, v0, Lmm/purchasesdk/core/ui/ag$b;->d:Lmm/purchasesdk/core/h/d;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Lmm/purchasesdk/core/ui/u;

    invoke-direct {v0, p1, p2, p3, p0}, Lmm/purchasesdk/core/ui/u;-><init>(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/ui/ag;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->show()V

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/ag;->n()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/h/a;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Lmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;Lmm/purchasesdk/core/h/d;)V
    .locals 10

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x193

    if-eq p2, v0, :cond_1

    const/16 v0, 0x194

    if-eq p2, v0, :cond_1

    const/16 v0, 0x73

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->dismiss()V

    :cond_1
    new-instance v0, Lmm/purchasesdk/core/ui/ao;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p3

    move v6, p2

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lmm/purchasesdk/core/ui/ao;-><init>(Landroid/content/Context;Lmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/ui/ag;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ao;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ao;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ao;->show()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;Lmm/purchasesdk/core/h/d;)V
    .locals 10

    new-instance v1, Lmm/purchasesdk/core/ui/ag$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmm/purchasesdk/core/ui/ag$c;-><init>(Lmm/purchasesdk/core/ui/ag;Lmm/purchasesdk/core/ui/ag$1;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iput p2, v1, Lmm/purchasesdk/core/ui/ag$c;->v:I

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iput-object p1, v1, Lmm/purchasesdk/core/ui/ag$c;->d:Landroid/content/Context;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    move-object/from16 v0, p7

    iput-object v0, v1, Lmm/purchasesdk/core/ui/ag$c;->d:Lmm/purchasesdk/core/h/d;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iput-object p3, v1, Lmm/purchasesdk/core/ui/ag$c;->b:Lmm/purchasesdk/core/b;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iput-object p4, v1, Lmm/purchasesdk/core/ui/ag$c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iput-object p5, v1, Lmm/purchasesdk/core/ui/ag$c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    move-object/from16 v0, p6

    iput-object v0, v1, Lmm/purchasesdk/core/ui/ag$c;->d:Ljava/util/HashMap;

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x193

    if-eq p2, v1, :cond_1

    const/16 v1, 0x194

    if-eq p2, v1, :cond_1

    const/16 v1, 0x73

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/s;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/s;->dismiss()V

    :cond_1
    new-instance v1, Lmm/purchasesdk/core/ui/ah;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lmm/purchasesdk/core/ui/ah;-><init>(Landroid/content/Context;Lmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/ui/ag;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/ah;->show()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/h/a;)V
    .locals 8

    new-instance v0, Lmm/purchasesdk/core/ui/ag$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmm/purchasesdk/core/ui/ag$a;-><init>(Lmm/purchasesdk/core/ui/ag;Lmm/purchasesdk/core/ui/ag$1;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput-object p7, v0, Lmm/purchasesdk/core/ui/ag$a;->c:Lmm/purchasesdk/core/h/a;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput p2, v0, Lmm/purchasesdk/core/ui/ag$a;->v:I

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput-object p1, v0, Lmm/purchasesdk/core/ui/ag$a;->d:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput-object p6, v0, Lmm/purchasesdk/core/ui/ag$a;->d:Lmm/purchasesdk/core/h/d;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput-object p3, v0, Lmm/purchasesdk/core/ui/ag$a;->b:Lmm/purchasesdk/core/b;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput-object p4, v0, Lmm/purchasesdk/core/ui/ag$a;->c:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iput-object p5, v0, Lmm/purchasesdk/core/ui/ag$a;->d:Landroid/os/Handler;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x193

    if-eq p2, v0, :cond_1

    const/16 v0, 0x194

    if-eq p2, v0, :cond_1

    const/16 v0, 0x73

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->dismiss()V

    :cond_1
    new-instance v0, Lmm/purchasesdk/core/ui/a;

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p7

    move-object v6, p6

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lmm/purchasesdk/core/ui/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/ui/ag;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmm/purchasesdk/core/ui/a;->r:Z

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/a;->show()V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ak;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ak;

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/ak;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p1, :cond_3

    :cond_2
    new-instance v1, Lmm/purchasesdk/core/ui/ak;

    invoke-direct {v1, v0, p2}, Lmm/purchasesdk/core/ui/ak;-><init>(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ak;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ak;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ak;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ak;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ak;->show()V

    goto :goto_0
.end method

.method public c(Lmm/purchasesdk/core/h/a;)V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/ui/u;->c(Lmm/purchasesdk/core/h/a;)V

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_3

    :cond_2
    new-instance v0, Lmm/purchasesdk/core/ui/s;

    invoke-direct {v0, p1}, Lmm/purchasesdk/core/ui/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->show()V

    goto :goto_0
.end method

.method public j(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PurchaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destoryDialogs context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->dismiss()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->dismiss()V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ah;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ah;->dismiss()V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ao;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ao;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ao;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ao;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ao;->dismiss()V

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/a;->dismiss()V

    :cond_4
    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string v0, "PurchaseUI"

    const-string v1, "Activity is finish"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput-object v3, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    iput-object v3, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    iput-object v3, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    iput-object v3, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ao;

    iput-object v3, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "PurchaseUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destoryDialogs context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->dismiss()V

    iput-object v8, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {p0, p1}, Lmm/purchasesdk/core/ui/ag;->i(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->dismiss()V

    iput-object v8, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$b;

    iget-object v0, v0, Lmm/purchasesdk/core/ui/ag$b;->c:Lmm/purchasesdk/core/h/a;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$b;

    iget-object v1, v1, Lmm/purchasesdk/core/ui/ag$b;->d:Lmm/purchasesdk/core/h/d;

    invoke-virtual {p0, p1, v0, v1}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/app/Activity;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)V

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ah;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ah;->dismiss()V

    iput-object v8, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ah;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v1, v0, Lmm/purchasesdk/core/ui/ag$c;->d:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget v2, v0, Lmm/purchasesdk/core/ui/ag$c;->v:I

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v3, v0, Lmm/purchasesdk/core/ui/ag$c;->b:Lmm/purchasesdk/core/b;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v4, v0, Lmm/purchasesdk/core/ui/ag$c;->c:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v5, v0, Lmm/purchasesdk/core/ui/ag$c;->d:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v6, v0, Lmm/purchasesdk/core/ui/ag$c;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$c;

    iget-object v7, v0, Lmm/purchasesdk/core/ui/ag$c;->d:Lmm/purchasesdk/core/h/d;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;Lmm/purchasesdk/core/h/d;)V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/a;->dismiss()V

    iput-object v8, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/a;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v1, v0, Lmm/purchasesdk/core/ui/ag$a;->d:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget v2, v0, Lmm/purchasesdk/core/ui/ag$a;->v:I

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v3, v0, Lmm/purchasesdk/core/ui/ag$a;->b:Lmm/purchasesdk/core/b;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v4, v0, Lmm/purchasesdk/core/ui/ag$a;->c:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v5, v0, Lmm/purchasesdk/core/ui/ag$a;->d:Landroid/os/Handler;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v6, v0, Lmm/purchasesdk/core/ui/ag$a;->d:Lmm/purchasesdk/core/h/d;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/ag$a;

    iget-object v7, v0, Lmm/purchasesdk/core/ui/ag$a;->c:Lmm/purchasesdk/core/h/a;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/h/a;)V

    :cond_3
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->a:Lmm/purchasesdk/core/ui/s;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/s;->dismiss()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ag;->b:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->dismiss()V

    :cond_0
    return-void
.end method
