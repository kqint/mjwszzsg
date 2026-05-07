.class Lcn/cmgame/billing/ui/d$2;
.super Ljava/lang/Object;
.source "NetConnectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/d;->cD()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dZ:Lcn/cmgame/billing/ui/d;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/d$2;->dZ:Lcn/cmgame/billing/ui/d;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcn/cmgame/billing/ui/d$2;->dZ:Lcn/cmgame/billing/ui/d;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/d;->dismiss()V

    .line 91
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/d$2;->dZ:Lcn/cmgame/billing/ui/d;

    invoke-static {v0}, Lcn/cmgame/billing/ui/d;->a(Lcn/cmgame/billing/ui/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/d$2;->dZ:Lcn/cmgame/billing/ui/d;

    invoke-static {v1}, Lcn/cmgame/billing/ui/d;->a(Lcn/cmgame/billing/ui/d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onUserOperCancel(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method
