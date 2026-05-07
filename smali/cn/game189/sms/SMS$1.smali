.class Lcn/game189/sms/SMS$1;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcn/game189/sms/SMS$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(I)V

    const-string v0, "EGAME_SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS send err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/game189/sms/SMS$1;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcn/game189/sms/SMS;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/game189/sms/SMS$SHandler;

    invoke-static {}, Lcn/game189/sms/SMS;->c()Lcn/game189/sms/SMS;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x68

    invoke-direct {v1, v2}, Lcn/game189/sms/SMS$SHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(I)V

    const-string v0, "EGAME_SMS"

    const-string v1, "SMS send ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcn/game189/sms/SMS;->a()V

    invoke-static {}, Lcn/game189/sms/SMS;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/game189/sms/SMS$SHandler;

    invoke-static {}, Lcn/game189/sms/SMS;->c()Lcn/game189/sms/SMS;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x67

    invoke-direct {v1, v2}, Lcn/game189/sms/SMS$SHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
