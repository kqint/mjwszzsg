.class Lcn/cmgame/sdk/sms/b$1;
.super Lcn/cmgame/sdk/sms/SmsSendCallback;
.source "SmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic iN:Lcn/cmgame/sdk/sms/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/cmgame/sdk/sms/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    .line 34
    invoke-direct {p0, p1}, Lcn/cmgame/sdk/sms/SmsSendCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cw()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    invoke-virtual {v0}, Lcn/cmgame/sdk/sms/a;->cw()V

    .line 59
    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    invoke-virtual {v0, p1, p2}, Lcn/cmgame/sdk/sms/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 37
    invoke-static {}, Lcn/cmgame/sdk/sms/b;->dv()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dw()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->gU:Landroid/content/Context;

    iget v4, p0, Lcn/cmgame/sdk/sms/b$1;->iD:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcn/cmgame/sdk/sms/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V

    .line 39
    invoke-static {}, Lcn/cmgame/sdk/sms/b;->dv()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcn/cmgame/sdk/sms/b;->o(I)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/cmgame/sdk/sms/b$1;->iN:Lcn/cmgame/sdk/sms/a;

    invoke-virtual {v0, p1, p2}, Lcn/cmgame/sdk/sms/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
