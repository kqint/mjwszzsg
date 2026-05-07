.class public Lmm/purchasesdk/iapservice/BillingLayoutActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/iapservice/BillingLayoutActivity$a;
    }
.end annotation


# static fields
.field public static a:Lmm/purchasesdk/iapservice/BillingLayoutActivity;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private a:Landroid/os/Messenger;

.field private a:Ljava/lang/Boolean;

.field private a:Lmm/purchasesdk/core/ui/ag;

.field private b:Lmm/purchasesdk/core/h/d;

.field private l:Ljava/lang/String;

.field private mMessengerFS:Landroid/os/Messenger;

.field private mPurchase:Lmm/purchasesdk/core/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "com.aspire.purchaseservice.BIND"

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->l:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Ljava/lang/Boolean;

    new-instance v0, Lmm/purchasesdk/iapservice/a;

    invoke-direct {v0, p0}, Lmm/purchasesdk/iapservice/a;-><init>(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerFS:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)Lmm/purchasesdk/core/d;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchase:Lmm/purchasesdk/core/d;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Lmm/purchasesdk/core/d;)Lmm/purchasesdk/core/d;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchase:Lmm/purchasesdk/core/d;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/iapservice/BillingLayoutActivity;)V
    .locals 0

    invoke-direct {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->t()V

    return-void
.end method

.method static synthetic b(Lmm/purchasesdk/iapservice/BillingLayoutActivity;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Landroid/os/Messenger;

    return-object p1
.end method

.method private t()V
    .locals 10

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchase:Lmm/purchasesdk/core/d;

    if-nez v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/d;

    invoke-direct {v0}, Lmm/purchasesdk/core/d;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchase:Lmm/purchasesdk/core/d;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mPurchase:Lmm/purchasesdk/core/d;

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->b()I

    move-result v3

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->z()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->d()Z

    move-result v5

    iget-object v6, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    iget-object v7, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->mMessengerFS:Landroid/os/Messenger;

    iget-object v8, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Landroid/os/Messenger;

    iget-object v9, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Lmm/purchasesdk/core/ui/ag;

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lmm/purchasesdk/core/d;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/core/h/d;Landroid/os/Messenger;Landroid/os/Messenger;Lmm/purchasesdk/core/ui/ag;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "BillingLayoutActivity"

    const-string v1, "activity has unbinded!!!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Ljava/lang/Boolean;

    throw v0
.end method


# virtual methods
.method public g(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmm/purchasesdk/iapservice/PurchaseService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Lmm/purchasesdk/core/ui/ag;

    invoke-virtual {v0, p0}, Lmm/purchasesdk/core/ui/ag;->k(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v2, -0x78000000

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->setContentView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Lmm/purchasesdk/iapservice/BillingLayoutActivity;

    invoke-virtual {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/core/h/d;

    invoke-direct {v1}, Lmm/purchasesdk/core/h/d;-><init>()V

    iput-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    iget-object v1, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->b(Landroid/os/Bundle;)V

    invoke-static {p0}, Lmm/purchasesdk/core/l/d;->l(Landroid/content/Context;)V

    new-instance v0, Lmm/purchasesdk/core/ui/ag;

    invoke-direct {v0}, Lmm/purchasesdk/core/ui/ag;-><init>()V

    iput-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Lmm/purchasesdk/core/ui/ag;

    iget-object v0, p0, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->a:Lmm/purchasesdk/core/ui/ag;

    invoke-virtual {v0, p0}, Lmm/purchasesdk/core/ui/ag;->i(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->g(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lmm/purchasesdk/iapservice/BillingLayoutActivity;->u()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
