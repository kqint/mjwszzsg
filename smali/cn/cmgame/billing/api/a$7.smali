.class Lcn/cmgame/billing/api/a$7;
.super Ljava/lang/Object;
.source "GameBillingMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/api/a;->b(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Landroid/content/Context;

.field private final synthetic E:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/api/a$7;->B:Landroid/content/Context;

    iput-object p2, p0, Lcn/cmgame/billing/api/a$7;->E:Ljava/lang/String;

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1039
    :try_start_0
    new-instance v0, Lcn/cmgame/billing/ui/d;

    iget-object v1, p0, Lcn/cmgame/billing/api/a$7;->B:Landroid/content/Context;

    const-string v2, "Theme_billing_dialog"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/cmgame/billing/ui/d;-><init>(Landroid/content/Context;I)V

    .line 1040
    iget-object v1, p0, Lcn/cmgame/billing/api/a$7;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/d;->aB(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v0}, Lcn/cmgame/billing/ui/d;->cE()V

    .line 1042
    invoke-virtual {v0}, Lcn/cmgame/billing/ui/d;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
