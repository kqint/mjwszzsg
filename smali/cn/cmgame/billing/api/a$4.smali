.class Lcn/cmgame/billing/api/a$4;
.super Ljava/lang/Object;
.source "GameBillingMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Landroid/content/Context;

.field private final synthetic C:Z

.field private final synthetic D:Z

.field private final synthetic E:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/a$4;->B:Landroid/content/Context;

    iput-boolean p2, p0, Lcn/cmgame/billing/api/a$4;->C:Z

    iput-boolean p3, p0, Lcn/cmgame/billing/api/a$4;->D:Z

    iput-object p4, p0, Lcn/cmgame/billing/api/a$4;->E:Ljava/lang/String;

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 578
    :try_start_0
    new-instance v1, Lcn/cmgame/billing/ui/b;

    iget-object v0, p0, Lcn/cmgame/billing/api/a$4;->B:Landroid/content/Context;

    const-string v2, "Theme_billing_dialog"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcn/cmgame/billing/ui/b;-><init>(Landroid/content/Context;I)V

    .line 579
    iget-object v2, p0, Lcn/cmgame/billing/api/a$4;->B:Landroid/content/Context;

    iget-boolean v0, p0, Lcn/cmgame/billing/api/a$4;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lcn/cmgame/billing/api/a$4;->D:Z

    iget-object v4, p0, Lcn/cmgame/billing/api/a$4;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/cmgame/billing/ui/b;->a(Landroid/content/Context;IZLjava/lang/String;)V

    .line 581
    invoke-virtual {v1}, Lcn/cmgame/billing/ui/b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_1
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
