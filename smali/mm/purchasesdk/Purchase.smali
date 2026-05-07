.class public Lmm/purchasesdk/Purchase;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lmm/purchasesdk/Purchase;

.field public static b:Ljava/lang/Boolean;

.field private static mPackageName:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private a:Landroid/os/Messenger;

.field private a:Ljava/lang/Boolean;

.field private a:Lmm/purchasesdk/OnPurchaseListener;

.field private a:Lmm/purchasesdk/core/ui/ag;

.field private a:Lmm/purchasesdk/e;

.field private a:Lsafiap/framework/sdk/SAFFramework;

.field private b:Lmm/purchasesdk/core/h/d;

.field private g:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMessengerFS:Landroid/os/Messenger;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    const-string v0, "ipa.ability"

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->k:Ljava/lang/String;

    const-string v0, "com.aspire.purchaseservice.BIND"

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->l:Ljava/lang/String;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->m:Ljava/lang/String;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->n:Ljava/lang/String;

    new-instance v0, Lmm/purchasesdk/c;

    invoke-direct {v0, p0}, Lmm/purchasesdk/c;-><init>(Lmm/purchasesdk/Purchase;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmm/purchasesdk/d;

    invoke-direct {v0, p0}, Lmm/purchasesdk/d;-><init>(Lmm/purchasesdk/Purchase;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;)I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/Purchase;->g:I

    return v0
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mMessengerFS:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/OnPurchaseListener;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/OnPurchaseListener;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;)Lmm/purchasesdk/core/h/d;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    return-object v0
.end method

.method private a(Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/h/d;
    .locals 5

    invoke-virtual {p1}, Lmm/purchasesdk/core/h/d;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    invoke-static {v3}, Lmm/purchasesdk/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/d;->setResult(I)V

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/d;->Q(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lmm/purchasesdk/core/h/d;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lmm/purchasesdk/core/h/d;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5

    :cond_3
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-static {v3, v1}, Lmm/purchasesdk/core/e/b;->b(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lmm/purchasesdk/core/h/d;->setResult(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lmm/purchasesdk/core/e/b;->a()Lmm/purchasesdk/core/e/a;

    move-result-object v1

    iget-object v1, v1, Lmm/purchasesdk/core/e/a;->a:Lmm/purchasesdk/core/e/a$a;

    iget-object v2, v1, Lmm/purchasesdk/core/e/a$a;->ai:Ljava/lang/String;

    invoke-static {}, Lmm/purchasesdk/core/e/b;->a()Lmm/purchasesdk/core/e/a;

    move-result-object v1

    iget-object v1, v1, Lmm/purchasesdk/core/e/a;->a:Lmm/purchasesdk/core/e/a$a;

    iget-object v1, v1, Lmm/purchasesdk/core/e/a$a;->al:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lmm/purchasesdk/core/h/d;->U(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lmm/purchasesdk/core/h/d;->R(Ljava/lang/String;)V

    :cond_5
    invoke-static {v3}, Lmm/purchasesdk/core/l/c;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmm/purchasesdk/core/h/d;->M(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/d;->Q(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lmm/purchasesdk/core/h/d;->R(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lmm/purchasesdk/core/h/d;->U(Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/d;->L(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/os/Handler;Lmm/purchasesdk/core/h/d;)V
    .locals 2

    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->H()Ljava/lang/String;

    move-result-object v0

    const-string v1, "100000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmm/purchasesdk/c/a;

    invoke-direct {v0, p1, p2}, Lmm/purchasesdk/c/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lmm/purchasesdk/c/a;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->b(Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method private a(Lmm/purchasesdk/core/h/d;)V
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/d;->K(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/Purchase;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Messenger;

    return-object p1
.end method

.method private b(Lmm/purchasesdk/core/h/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;I)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/PurchaseCode;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmm/purchasesdk/Purchase;
    .locals 1

    sget-object v0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/Purchase;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/Purchase;

    invoke-direct {v0}, Lmm/purchasesdk/Purchase;-><init>()V

    sput-object v0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/Purchase;

    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/Purchase;

    return-object v0
.end method

.method public static getReason(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/PurchaseCode;->getReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmm/purchasesdk/Purchase;->g:I

    return v0
.end method

.method public a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_1
    sput-boolean v3, Lmm/purchasesdk/e;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Purchase"

    const-string v2, "unbind failed"

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_3
    sput-boolean v3, Lmm/purchasesdk/e;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v1}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_4
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_5
    sput-boolean v3, Lmm/purchasesdk/e;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    throw v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    invoke-virtual {v0}, Lsafiap/framework/sdk/SAFFramework;->cleanup()V

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    :cond_8
    sput-boolean v3, Lmm/purchasesdk/e;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Ljava/lang/Boolean;

    iput-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".com.mmiap.activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lmm/purchasesdk/core/h/d;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0, p2, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFS:Landroid/os/Messenger;

    if-nez v1, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/Purchase;->g(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFS:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFS:Landroid/os/Messenger;

    if-nez v1, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/Purchase;->g(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->mMessengerFS:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearCache(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public enableCache(Z)V
    .locals 0

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->enableCache(Z)V

    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lmm/purchasesdk/core/g/d;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-nez p2, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p2, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/OnPurchaseListener;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->n:Ljava/lang/String;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_0
    const-string v0, "iapSplash.txt"

    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput v3, p0, Lmm/purchasesdk/Purchase;->g:I

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)V

    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->g(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lmm/purchasesdk/core/l/d;->l(Landroid/content/Context;)V

    new-instance v0, Lmm/purchasesdk/core/ui/ag;

    invoke-direct {v0}, Lmm/purchasesdk/core/ui/ag;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/core/ui/ag;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/core/ui/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmm/purchasesdk/core/ui/ag;->c(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    const-string v0, "iapSplash.txt"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    sget-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    if-nez p6, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p6, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/OnPurchaseListener;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p4}, Lmm/purchasesdk/core/h/d;->L(Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error! Paycode is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/h/d;->I(Ljava/lang/String;)V

    if-gtz p3, :cond_7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "orderCout must be greater than 0 "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->n:Ljava/lang/String;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget v0, Lmm/purchasesdk/core/l/e;->U:I

    invoke-static {p1, v0}, Lmm/purchasesdk/fingerprint/c;->c(Landroid/content/Context;I)V

    const/4 v0, 0x3

    iput v0, p0, Lmm/purchasesdk/Purchase;->g:I

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lmm/purchasesdk/core/l/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v6}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p3}, Lmm/purchasesdk/core/h/d;->f(I)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p5}, Lmm/purchasesdk/core/h/d;->g(Z)V

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/h/d;

    move-result-object v7

    invoke-direct {p0, v7}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)V

    new-instance v5, Lmm/purchasesdk/b;

    invoke-direct {v5, p0, v7}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V

    new-instance v0, Lmm/purchasesdk/e;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/e;-><init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/b;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/e;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_9

    sget-boolean v0, Lmm/purchasesdk/e;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/e;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/sdk/SAFFramework;->init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, v0, v7}, Lmm/purchasesdk/Purchase;->a(Landroid/content/Context;Landroid/os/Handler;Lmm/purchasesdk/core/h/d;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->g(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/h/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null or Context Object is not instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p4, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/OnPurchaseListener;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error! Paycode is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/h/d;->I(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p3}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->f(Z)V

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->n:Ljava/lang/String;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, v2}, Lmm/purchasesdk/core/h/d;->f(Z)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Lmm/purchasesdk/Purchase;->g:I

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)V

    new-instance v5, Lmm/purchasesdk/b;

    invoke-direct {v5, p0, v0}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V

    new-instance v0, Lmm/purchasesdk/e;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/e;-><init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/b;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/e;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_8

    sget-boolean v0, Lmm/purchasesdk/e;->c:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/e;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/sdk/SAFFramework;->init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->g(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lmm/purchasesdk/Purchase;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid app parameter, pls check it"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lmm/purchasesdk/core/l/e;->s()V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    if-nez v0, :cond_2

    new-instance v0, Lmm/purchasesdk/core/h/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    :cond_2
    iput-object p1, p0, Lmm/purchasesdk/Purchase;->n:Ljava/lang/String;

    iput-object p2, p0, Lmm/purchasesdk/Purchase;->m:Ljava/lang/String;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p1}, Lmm/purchasesdk/core/h/d;->S(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/h/d;->T(Ljava/lang/String;)V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lmm/purchasesdk/Purchase;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(II)V
    .locals 0

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/g;->setTimeout(II)V

    return-void
.end method

.method public unsubscribe(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5c0a\u656c\u7684\u7528\u6237\uff0c\u5df2\u6709\u652f\u4ed8\u8bf7\u6c42\u6b63\u5728\u53d1\u9001"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    if-nez p3, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OnPurchaseListener Object is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p3, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/OnPurchaseListener;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Paycode is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->n:Ljava/lang/String;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lmm/purchasesdk/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/Purchase;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "appid or appkey is null!!!! "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0, p2}, Lmm/purchasesdk/core/h/d;->I(Ljava/lang/String;)V

    iput-object p1, p0, Lmm/purchasesdk/Purchase;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    iput v0, p0, Lmm/purchasesdk/Purchase;->g:I

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lmm/purchasesdk/core/l/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->n(Ljava/lang/String;)V

    new-instance v0, Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {v0, p1}, Lsafiap/framework/sdk/SAFFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->b:Lmm/purchasesdk/core/h/d;

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)Lmm/purchasesdk/core/h/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;)V

    new-instance v5, Lmm/purchasesdk/b;

    invoke-direct {v5, p0, v0}, Lmm/purchasesdk/b;-><init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V

    new-instance v0, Lmm/purchasesdk/e;

    iget-object v4, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lmm/purchasesdk/e;-><init>(Landroid/content/Context;Lmm/purchasesdk/Purchase;Lmm/purchasesdk/OnPurchaseListener;Lsafiap/framework/sdk/SAFFramework;Lmm/purchasesdk/b;)V

    iput-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/e;

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    if-eqz v0, :cond_7

    sget-boolean v0, Lmm/purchasesdk/e;->c:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/Purchase;->a:Lsafiap/framework/sdk/SAFFramework;

    iget-object v1, p0, Lmm/purchasesdk/Purchase;->a:Lmm/purchasesdk/e;

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lsafiap/framework/sdk/SAFFramework;->init(Lsafiap/framework/sdk/SAFFramework$SAFFrameworkListener;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lmm/purchasesdk/Purchase;->g(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
