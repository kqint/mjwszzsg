.class Lmm/purchasesdk/core/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/o;

.field final synthetic t:I


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/o;I)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/p;->a:Lmm/purchasesdk/core/ui/o;

    iput p2, p0, Lmm/purchasesdk/core/ui/p;->t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget v1, p0, Lmm/purchasesdk/core/ui/p;->t:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method
