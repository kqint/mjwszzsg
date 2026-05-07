.class Lmm/purchasesdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic b:Lmm/purchasesdk/Purchase;


# direct methods
.method constructor <init>(Lmm/purchasesdk/Purchase;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lmm/purchasesdk/b/a;

    iget-object v3, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v3}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/OnPurchaseListener;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-static {v4}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmm/purchasesdk/b/a;-><init>(Lmm/purchasesdk/OnPurchaseListener;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->b(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Lmm/purchasesdk/Purchase;->b()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/d;->b:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/Purchase;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    sget-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const-string v1, "Service disconnected!!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
