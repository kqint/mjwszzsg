.class public Lmm/purchasesdk/iapservice/PurchaseService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/iapservice/PurchaseService$a;
    }
.end annotation


# static fields
.field private static mListFA:Ljava/util/HashMap;

.field private static mListFC:Ljava/util/HashMap;


# instance fields
.field private LastPackageName:Ljava/lang/String;

.field private mMessengerFA:Landroid/os/Messenger;

.field private mMessengerFC:Landroid/os/Messenger;

.field private final mMessengerFS:Landroid/os/Messenger;

.field private mPackageName:Ljava/lang/String;

.field private mPurchase:Lmm/purchasesdk/core/d;

.field private mResult:Ljava/util/HashMap;

.field private mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->mListFC:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->mListFA:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lmm/purchasesdk/iapservice/PurchaseService$a;

    invoke-direct {v1, p0}, Lmm/purchasesdk/iapservice/PurchaseService$a;-><init>(Lmm/purchasesdk/iapservice/PurchaseService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFS:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->mListFC:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFS:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFA:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->mListFA:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->init(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method static synthetic access$400(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->auth(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method static synthetic access$500(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->bill(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method static synthetic access$600(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->query(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method static synthetic access$700(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmm/purchasesdk/iapservice/PurchaseService;->unsub(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V

    return-void
.end method

.method static synthetic access$800(Lmm/purchasesdk/iapservice/PurchaseService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lmm/purchasesdk/iapservice/PurchaseService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lmm/purchasesdk/iapservice/PurchaseService;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFC:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$902(Lmm/purchasesdk/iapservice/PurchaseService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFC:Landroid/os/Messenger;

    return-object p1
.end method

.method private auth(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 1

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private bill(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->mListFA:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFA:Landroid/os/Messenger;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFS:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFA:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v0, Lmm/purchasesdk/iapservice/PurchaseService;->mListFA:Ljava/util/HashMap;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->LastPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchase:Lmm/purchasesdk/core/d;

    invoke-virtual {v0, p0, p1, p2}, Lmm/purchasesdk/core/d;->a(Landroid/content/Context;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private query(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchase:Lmm/purchasesdk/core/d;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->j()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/core/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unsub(Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchase:Lmm/purchasesdk/core/d;

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1, p2}, Lmm/purchasesdk/core/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;Lmm/purchasesdk/core/h/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "Client Service"

    const-string v1, "Client Service bind"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/purchasesdk/core/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mPurchase:Lmm/purchasesdk/core/d;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFS:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/PurchaseService;->mMessengerFS:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
