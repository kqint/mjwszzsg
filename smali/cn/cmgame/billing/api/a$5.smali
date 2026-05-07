.class Lcn/cmgame/billing/api/a$5;
.super Ljava/lang/Object;
.source "GameBillingMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Landroid/content/Context;

.field private final synthetic F:Lcn/cmgame/billing/api/GameInterface$GameExitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/a$5;->B:Landroid/content/Context;

    iput-object p2, p0, Lcn/cmgame/billing/api/a$5;->F:Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 997
    :try_start_0
    new-instance v0, Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/api/a$5;->B:Landroid/content/Context;

    const-string v2, "Theme_billing_dialog"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/ui/b;-><init>(Landroid/content/Context;I)V

    .line 998
    iget-object v1, p0, Lcn/cmgame/billing/api/a$5;->B:Landroid/content/Context;

    iget-object v2, p0, Lcn/cmgame/billing/api/a$5;->F:Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    invoke-virtual {v0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    .line 999
    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
