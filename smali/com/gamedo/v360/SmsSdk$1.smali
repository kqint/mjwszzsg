.class Lcom/gamedo/v360/SmsSdk$1;
.super Landroid/os/Handler;
.source "SmsSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamedo/v360/SmsSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamedo/v360/SmsSdk;


# direct methods
.method constructor <init>(Lcom/gamedo/v360/SmsSdk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 139
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-static {v1}, Lcom/gamedo/v360/SmsSdk;->access$0(Lcom/gamedo/v360/SmsSdk;)Landroid/app/Activity;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/gamedo/v360/SmsSdk;->smsYdData:[Ljava/lang/String;

    iget-object v3, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v3, v3, Lcom/gamedo/v360/SmsSdk;->PayId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget-object v3, v3, Lcom/gamedo/v360/SmsSdk;->billingCallback:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    .line 142
    invoke-static {v1, v7, v7, v2, v3}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Lcn/cmgame/billing/api/GameInterface$BillingCallback;)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 147
    .local v12, "sendId":I
    sget-object v1, Lcom/gamedo/v360/SmsSdk;->smsDxData:[[Ljava/lang/String;

    aget-object v10, v1, v12

    .line 148
    .local v10, "_data":[Ljava/lang/String;
    aget-object v0, v10, v8

    .line 169
    .local v0, "feeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-static {v1}, Lcom/gamedo/v360/SmsSdk;->access$0(Lcom/gamedo/v360/SmsSdk;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/gamedo/v360/SmsSdk$1$1;

    invoke-direct {v2, p0}, Lcom/gamedo/v360/SmsSdk$1$1;-><init>(Lcom/gamedo/v360/SmsSdk$1;)V

    .line 184
    aget-object v3, v10, v7

    aget-object v4, v10, v9

    const/4 v5, 0x3

    aget-object v5, v10, v5

    const-string v6, "0"

    const/4 v7, 0x4

    aget-object v7, v10, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 169
    invoke-static/range {v0 .. v6}, Lcn/game189/sms/SMS;->checkFee(Ljava/lang/String;Landroid/app/Activity;Lcn/game189/sms/SMSListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-static {v1, v8}, Lcom/gamedo/v360/SmsSdk;->access$1(Lcom/gamedo/v360/SmsSdk;Z)V

    goto :goto_0

    .line 189
    .end local v0    # "feeName":Ljava/lang/String;
    .end local v10    # "_data":[Ljava/lang/String;
    .end local v12    # "sendId":I
    :pswitch_3
    const-string v1, "handleMessage"

    const-string v2, "\u8054\u901a\u77ed\u4fe1\u53d1\u9001"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 191
    .restart local v12    # "sendId":I
    sget-object v1, Lcom/gamedo/v360/SmsSdk;->smsLtDate:[[Ljava/lang/String;

    aget-object v10, v1, v12

    .line 192
    .restart local v10    # "_data":[Ljava/lang/String;
    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v1

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-static {v2}, Lcom/gamedo/v360/SmsSdk;->access$0(Lcom/gamedo/v360/SmsSdk;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/gamedo/v360/SmsSdk;->cpName:Ljava/lang/String;

    sget-object v4, Lcom/gamedo/v360/SmsSdk;->cpPhone:Ljava/lang/String;

    .line 193
    sget-object v5, Lcom/gamedo/v360/SmsSdk;->gameName:Ljava/lang/String;

    aget-object v6, v10, v8

    aget-object v7, v10, v7

    aget-object v8, v10, v9

    .line 194
    new-instance v9, Lcom/gamedo/v360/SmsSdk$MsgCallBack;

    iget-object v13, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-direct {v9, v13}, Lcom/gamedo/v360/SmsSdk$MsgCallBack;-><init>(Lcom/gamedo/v360/SmsSdk;)V

    .line 192
    invoke-virtual/range {v1 .. v9}, Lcom/multimode_billing_sms/ui/MultiModePay;->sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;)V

    goto :goto_0

    .line 198
    .end local v10    # "_data":[Ljava/lang/String;
    .end local v12    # "sendId":I
    :pswitch_4
    :try_start_0
    sget-object v1, Lcom/gamedo/v360/SmsSdk;->purchase:Lmm/purchasesdk/Purchase;

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    invoke-static {v2}, Lcom/gamedo/v360/SmsSdk;->access$0(Lcom/gamedo/v360/SmsSdk;)Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/gamedo/v360/SmsSdk;->mmjifeidaima:[Ljava/lang/String;

    iget-object v4, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v4, v4, Lcom/gamedo/v360/SmsSdk;->PayId:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/gamedo/v360/SmsSdk$1;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget-object v6, v6, Lcom/gamedo/v360/SmsSdk;->mListener:Lcom/gamedo/v360/IAPListener;

    invoke-virtual/range {v1 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 199
    :catch_0
    move-exception v11

    .line 200
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
