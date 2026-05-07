.class Lcn/cmgame/sdk/sms/SmsSendCallback$1;
.super Ljava/util/TimerTask;
.source "SmsSendCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/sms/SmsSendCallback;->dt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field protected iG:J

.field final synthetic iH:Lcn/cmgame/sdk/sms/SmsSendCallback;


# direct methods
.method constructor <init>(Lcn/cmgame/sdk/sms/SmsSendCallback;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iH:Lcn/cmgame/sdk/sms/SmsSendCallback;

    .line 84
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iG:J

    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/sms/SmsSendCallback$1;)Lcn/cmgame/sdk/sms/SmsSendCallback;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iH:Lcn/cmgame/sdk/sms/SmsSendCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iG:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iG:J

    .line 89
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iH:Lcn/cmgame/sdk/sms/SmsSendCallback;

    iget-boolean v0, v0, Lcn/cmgame/sdk/sms/SmsSendCallback;->iE:Z

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->cancel()Z

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-wide v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iG:J

    iget-object v2, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iH:Lcn/cmgame/sdk/sms/SmsSendCallback;

    iget v2, v2, Lcn/cmgame/sdk/sms/SmsSendCallback;->iD:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->cancel()Z

    .line 93
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iH:Lcn/cmgame/sdk/sms/SmsSendCallback;

    invoke-virtual {v0}, Lcn/cmgame/sdk/sms/SmsSendCallback;->du()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->iH:Lcn/cmgame/sdk/sms/SmsSendCallback;

    iget-object v0, v0, Lcn/cmgame/sdk/sms/SmsSendCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcn/cmgame/sdk/sms/SmsSendCallback$1$1;

    invoke-direct {v1, p0}, Lcn/cmgame/sdk/sms/SmsSendCallback$1$1;-><init>(Lcn/cmgame/sdk/sms/SmsSendCallback$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
