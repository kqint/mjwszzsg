.class public abstract Lcn/cmgame/sdk/sms/SmsSendCallback;
.super Landroid/content/BroadcastReceiver;
.source "SmsSendCallback.java"


# static fields
.field public static final iA:I = 0x0

.field public static final iB:I = 0x1


# instance fields
.field protected gU:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field protected iC:[I

.field protected iD:I

.field protected iE:Z

.field protected iF:Z

.field protected token:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->gU:Landroid/content/Context;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->handler:Landroid/os/Handler;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->token:I

    .line 23
    new-array v0, v2, [I

    iput-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iC:[I

    .line 24
    iput v2, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iD:I

    .line 25
    iput-boolean v2, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iE:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iF:Z

    .line 29
    iput-object p1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->gU:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iC:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 31
    return-void
.end method


# virtual methods
.method public c([I)V
    .locals 1

    .prologue
    .line 120
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 122
    iput-object p1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iC:[I

    .line 123
    return-void
.end method

.method public cw()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public dt()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    const-string v1, "cn.emagsoftware.telephony.SMS_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "cn.emagsoftware.telephony.SMS_DELIVERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iput-boolean v4, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iE:Z

    .line 81
    iput-boolean v4, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iF:Z

    .line 82
    iget-object v1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->gU:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iD:I

    if-lez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcn/cmgame/sdk/sms/SmsSendCallback$1;

    invoke-direct {v1, p0}, Lcn/cmgame/sdk/sms/SmsSendCallback$1;-><init>(Lcn/cmgame/sdk/sms/SmsSendCallback;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 105
    :cond_0
    return-void
.end method

.method public du()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iE:Z

    .line 109
    iput-boolean v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iF:Z

    .line 111
    :try_start_0
    iget-object v1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->gU:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v1, "SmsSendCallback"

    const-string v2, "unregister receiver failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public n(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->token:I

    .line 35
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 39
    iget-boolean v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iF:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcn/cmgame/sdk/sms/SmsSendCallback;->getResultCode()I

    move-result v1

    .line 42
    const-string v2, "SMS_TOKEN"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 43
    const-string v3, "SMS_TO"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v4, "SMS_TEXT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    iget v5, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->token:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->token:I

    if-ne v5, v2, :cond_0

    .line 46
    :cond_2
    const-string v2, "cn.emagsoftware.telephony.SMS_SENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iC:[I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-le v0, v6, :cond_3

    .line 48
    iput-boolean v7, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iE:Z

    .line 49
    invoke-virtual {p0}, Lcn/cmgame/sdk/sms/SmsSendCallback;->du()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :cond_3
    if-ne v1, v6, :cond_4

    .line 52
    invoke-virtual {p0, v3, v4}, Lcn/cmgame/sdk/sms/SmsSendCallback;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcn/cmgame/sdk/sms/SmsSendCallback;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_5
    const-string v2, "cn.emagsoftware.telephony.SMS_DELIVERED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iC:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-le v0, v6, :cond_6

    .line 58
    iput-boolean v7, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iE:Z

    .line 59
    invoke-virtual {p0}, Lcn/cmgame/sdk/sms/SmsSendCallback;->du()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :cond_6
    if-ne v1, v6, :cond_7

    .line 62
    invoke-virtual {p0, v3, v4}, Lcn/cmgame/sdk/sms/SmsSendCallback;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_7
    invoke-virtual {p0, v3, v4}, Lcn/cmgame/sdk/sms/SmsSendCallback;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 2

    .prologue
    .line 126
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout could not be below zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput p1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iD:I

    .line 128
    return-void
.end method
