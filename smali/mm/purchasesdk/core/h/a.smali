.class public Lmm/purchasesdk/core/h/a;
.super Ljava/lang/Object;


# instance fields
.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private a:Landroid/graphics/Bitmap;

.field private a:Landroid/os/Handler;

.field private aq:Ljava/lang/String;

.field private ar:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private b:Lmm/purchasesdk/core/c/d;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private k:Z

.field private l:Z

.field private m:I

.field public m:Z

.field private n:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmm/purchasesdk/core/h/a;->k:Z

    iput v2, p0, Lmm/purchasesdk/core/h/a;->m:I

    iput-boolean v1, p0, Lmm/purchasesdk/core/h/a;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->c:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lmm/purchasesdk/core/h/a;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->d:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->e:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->P:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->Q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/h/a;->R:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->E:Ljava/lang/String;

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->aq:Ljava/lang/String;

    return-void
.end method

.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lmm/purchasesdk/core/c/d;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->b:Lmm/purchasesdk/core/c/d;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/core/h/a;->m:I

    return v0
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public b()Lmm/purchasesdk/core/c/d;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->b:Lmm/purchasesdk/core/c/d;

    return-object v0
.end method

.method public b(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/h/a;->l:Z

    return v0
.end method

.method public c(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/h/a;->k:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/h/a;->n:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lmm/purchasesdk/core/h/a;->l:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lmm/purchasesdk/core/h/a;->m:I

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->R:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->F:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->Q:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->R:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->F:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/h/a;->H:Ljava/lang/String;

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/h/a;->ar:Ljava/lang/String;

    return-object v0
.end method
