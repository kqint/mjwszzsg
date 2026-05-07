.class Lcn/cmgame/billing/ui/b$3;
.super Lcn/cmgame/billing/c/e$a;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->co()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dh:Lcn/cmgame/billing/ui/b;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$3;->dh:Lcn/cmgame/billing/ui/b;

    .line 1438
    invoke-direct {p0}, Lcn/cmgame/billing/c/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$3;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0, p1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$3;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->c(Lcn/cmgame/billing/ui/b;)V

    .line 1448
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1441
    return-void
.end method
