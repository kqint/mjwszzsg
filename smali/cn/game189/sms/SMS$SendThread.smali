.class Lcn/game189/sms/SMS$SendThread;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcn/game189/sms/SMS;


# direct methods
.method private constructor <init>(Lcn/game189/sms/SMS;)V
    .locals 0

    iput-object p1, p0, Lcn/game189/sms/SMS$SendThread;->a:Lcn/game189/sms/SMS;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/game189/sms/SMS;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/game189/sms/SMS$SendThread;-><init>(Lcn/game189/sms/SMS;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x68

    iget-object v0, p0, Lcn/game189/sms/SMS$SendThread;->a:Lcn/game189/sms/SMS;

    invoke-static {}, Lcn/game189/sms/SMS;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/game189/sms/SMS;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcn/game189/sms/SMS;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "EGAME_SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Lcn/game189/sms/SMS;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/game189/sms/SMS;->g()Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "EGAME_SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcn/game189/sms/SMS;->h()V

    iget-object v0, p0, Lcn/game189/sms/SMS$SendThread;->a:Lcn/game189/sms/SMS;

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(Lcn/game189/sms/SMS;)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-static {}, Lcn/game189/sms/SMS;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcn/game189/sms/SMS;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(I)V

    invoke-static {}, Lcn/game189/sms/SMS;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/game189/sms/SMS$SHandler;

    invoke-static {}, Lcn/game189/sms/SMS;->c()Lcn/game189/sms/SMS;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v6}, Lcn/game189/sms/SMS$SHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/game189/sms/SMS;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/game189/sms/SMS$SHandler;

    invoke-static {}, Lcn/game189/sms/SMS;->c()Lcn/game189/sms/SMS;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v6}, Lcn/game189/sms/SMS$SHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
