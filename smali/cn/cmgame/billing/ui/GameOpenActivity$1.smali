.class Lcn/cmgame/billing/ui/GameOpenActivity$1;
.super Ljava/lang/Object;
.source "GameOpenActivity.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$AnimationCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/GameOpenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dX:Lcn/cmgame/billing/ui/GameOpenActivity;


# direct methods
.method constructor <init>(Lcn/cmgame/billing/ui/GameOpenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/billing/ui/GameOpenActivity$1;->dX:Lcn/cmgame/billing/ui/GameOpenActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted(Z)V
    .locals 3

    .prologue
    .line 54
    invoke-static {p1}, Lcn/cmgame/billing/api/a;->c(Z)V

    .line 55
    const-string v0, "g_class_name"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    iget-object v2, p0, Lcn/cmgame/billing/ui/GameOpenActivity$1;->dX:Lcn/cmgame/billing/ui/GameOpenActivity;

    invoke-virtual {v2}, Lcn/cmgame/billing/ui/GameOpenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcn/cmgame/billing/ui/GameOpenActivity$1;->dX:Lcn/cmgame/billing/ui/GameOpenActivity;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/GameOpenActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcn/cmgame/billing/ui/GameOpenActivity$1;->dX:Lcn/cmgame/billing/ui/GameOpenActivity;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/GameOpenActivity;->finish()V

    .line 60
    return-void
.end method
