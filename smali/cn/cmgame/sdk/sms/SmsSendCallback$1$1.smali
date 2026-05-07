.class Lcn/cmgame/sdk/sms/SmsSendCallback$1$1;
.super Ljava/lang/Object;
.source "SmsSendCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/cmgame/sdk/sms/SmsSendCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iI:Lcn/cmgame/sdk/sms/SmsSendCallback$1;


# direct methods
.method constructor <init>(Lcn/cmgame/sdk/sms/SmsSendCallback$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1$1;->iI:Lcn/cmgame/sdk/sms/SmsSendCallback$1;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/cmgame/sdk/sms/SmsSendCallback$1$1;->iI:Lcn/cmgame/sdk/sms/SmsSendCallback$1;

    invoke-static {v0}, Lcn/cmgame/sdk/sms/SmsSendCallback$1;->a(Lcn/cmgame/sdk/sms/SmsSendCallback$1;)Lcn/cmgame/sdk/sms/SmsSendCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/sdk/sms/SmsSendCallback;->cw()V

    .line 98
    return-void
.end method
