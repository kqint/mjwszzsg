.class Lcom/gamedo/v360/SmsSdk$MsgCallBack;
.super Ljava/lang/Object;
.source "SmsSdk.java"

# interfaces
.implements Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamedo/v360/SmsSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamedo/v360/SmsSdk;


# direct methods
.method constructor <init>(Lcom/gamedo/v360/SmsSdk;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$MsgCallBack;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ButtonCLick(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 511
    return-void
.end method

.method public SmsResult(ILjava/lang/String;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 514
    if-ne p1, v3, :cond_1

    .line 515
    invoke-static {}, Lcom/gamedo/v360/SmsSdk;->getInstance()Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$MsgCallBack;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v1, v1, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v2, v1}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 526
    :cond_0
    :goto_0
    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->DismissProgressDialog()V

    .line 527
    return-void

    .line 516
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 517
    invoke-static {}, Lcom/gamedo/v360/SmsSdk;->getInstance()Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$MsgCallBack;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v1, v1, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v3, v1}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    goto :goto_0

    .line 518
    :cond_2
    if-ne p1, v4, :cond_3

    .line 519
    invoke-static {}, Lcom/gamedo/v360/SmsSdk;->getInstance()Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$MsgCallBack;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v1, v1, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v2, v1}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    goto :goto_0

    .line 520
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 521
    invoke-static {}, Lcom/gamedo/v360/SmsSdk;->getInstance()Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$MsgCallBack;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v1, v1, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v4, v1}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    goto :goto_0
.end method
