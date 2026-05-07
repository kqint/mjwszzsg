.class Lmm/purchasesdk/core/ui/ak$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm/purchasesdk/core/ui/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lmm/purchasesdk/core/ui/ak;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/ak;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/ak$a;->b:Lmm/purchasesdk/core/ui/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak$a;->b:Lmm/purchasesdk/core/ui/ak;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/ak;->dismiss()V

    return-void
.end method
