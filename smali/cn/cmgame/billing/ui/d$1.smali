.class Lcn/cmgame/billing/ui/d$1;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/d$1;->dZ:Lcn/cmgame/billing/ui/d;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcn/cmgame/billing/ui/d$1;->dZ:Lcn/cmgame/billing/ui/d;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/d;->dismiss()V

    .line 70
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/d$1;->dZ:Lcn/cmgame/billing/ui/d;

    invoke-static {v0}, Lcn/cmgame/billing/ui/d;->a(Lcn/cmgame/billing/ui/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcn/cmgame/billing/api/a;->r()Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/d$1;->dZ:Lcn/cmgame/billing/ui/d;

    invoke-static {v1}, Lcn/cmgame/billing/ui/d;->a(Lcn/cmgame/billing/ui/d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onUserOperCancel(Ljava/lang/String;)V

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcn/cmgame/billing/ui/d$1;->dZ:Lcn/cmgame/billing/ui/d;

    iget-object v0, v0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/d$1;->dZ:Lcn/cmgame/billing/ui/d;

    iget-object v0, v0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
