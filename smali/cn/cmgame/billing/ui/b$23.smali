.class Lcn/cmgame/billing/ui/b$23;
.super Ljava/lang/Object;
.source "BillingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    .line 1240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->o(Lcn/cmgame/billing/ui/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1277
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1246
    :pswitch_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    goto :goto_0

    .line 1251
    :pswitch_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v1}, Lcn/cmgame/billing/ui/b;->bY()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 1256
    :pswitch_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v1}, Lcn/cmgame/billing/ui/b;->bZ()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 1260
    :pswitch_4
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 1261
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->m(Lcn/cmgame/billing/ui/b;)V

    .line 1262
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v1}, Lcn/cmgame/billing/ui/b;->a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onUserOperCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 1269
    :pswitch_5
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-virtual {v0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 1270
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->j(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcn/cmgame/billing/ui/b$23;->dh:Lcn/cmgame/billing/ui/b;

    invoke-static {v0}, Lcn/cmgame/billing/ui/b;->j(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/cmgame/billing/api/GameInterface$GameExitCallback;->onCancelExit()V

    goto :goto_0

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
