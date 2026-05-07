.class public Lcom/gamedo/v360/IAPListener;
.super Ljava/lang/Object;
.source "IAPListener.java"

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Lcom/gamedo/v360/sanguoAndroid360;

.field private iapHandler:Lcom/gamedo/v360/IAPHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gamedo/v360/IAPHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iapHandler"    # Lcom/gamedo/v360/IAPHandler;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "IAPListener"

    iput-object v0, p0, Lcom/gamedo/v360/IAPListener;->TAG:Ljava/lang/String;

    .line 20
    check-cast p1, Lcom/gamedo/v360/sanguoAndroid360;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/gamedo/v360/IAPListener;->context:Lcom/gamedo/v360/sanguoAndroid360;

    .line 21
    iput-object p2, p0, Lcom/gamedo/v360/IAPListener;->iapHandler:Lcom/gamedo/v360/IAPHandler;

    .line 22
    return-void
.end method


# virtual methods
.method public onAfterApply()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onAfterDownload()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onBeforeApply()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onBeforeDownload()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onBillingFinish(ILjava/util/HashMap;)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 55
    const-string v7, "IAPListener"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "billing finish, status code = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v5, "\u8ba2\u8d2d\u7ed3\u679c\uff1a\u8ba2\u8d2d\u6210\u529f"

    .line 57
    .local v5, "result":Ljava/lang/String;
    iget-object v7, p0, Lcom/gamedo/v360/IAPListener;->iapHandler:Lcom/gamedo/v360/IAPHandler;

    const/16 v8, 0x2711

    invoke-virtual {v7, v8}, Lcom/gamedo/v360/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 59
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x0

    .line 61
    .local v2, "orderID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 63
    .local v4, "paycode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 65
    .local v0, "leftday":Ljava/lang/String;
    const/4 v6, 0x0

    .line 67
    .local v6, "tradeID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, "ordertype":Ljava/lang/String;
    const/16 v7, 0x66

    if-eq p1, v7, :cond_0

    const/16 v7, 0x68

    if-ne p1, v7, :cond_6

    .line 72
    :cond_0
    if-eqz p2, :cond_5

    .line 73
    const-string v7, "LeftDay"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "leftday":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 74
    .restart local v0    # "leftday":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    :cond_1
    const-string v7, "OrderId"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "orderID":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 78
    .restart local v2    # "orderID":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",OrderID \uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    :cond_2
    const-string v7, "Paycode"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "paycode":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 82
    .restart local v4    # "paycode":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",Paycode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    :cond_3
    const-string v7, "TradeID"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tradeID":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 86
    .restart local v6    # "tradeID":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",tradeID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    :cond_4
    const-string v7, "OrderType"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ordertype":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 90
    .restart local v3    # "ordertype":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ",ORDERTYPE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    :cond_5
    sget-object v7, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    const/4 v8, 0x0

    sget-object v9, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    iget v9, v9, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v7, v8, v9}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 106
    :goto_0
    iget-object v7, p0, Lcom/gamedo/v360/IAPListener;->context:Lcom/gamedo/v360/sanguoAndroid360;

    invoke-virtual {v7}, Lcom/gamedo/v360/sanguoAndroid360;->dismissProgressDialog()V

    .line 107
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    return-void

    .line 101
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u8ba2\u8d2d\u7ed3\u679c\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    sget-object v7, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    const/4 v8, 0x1

    sget-object v9, Lcom/gamedo/v360/SmsSdk;->instance:Lcom/gamedo/v360/SmsSdk;

    iget v9, v9, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v7, v8, v9}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    goto :goto_0
.end method

.method public onInitFinish(I)V
    .locals 5
    .param p1, "code"    # I

    .prologue
    .line 46
    const-string v2, "IAPListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Init finish, status code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/gamedo/v360/IAPListener;->iapHandler:Lcom/gamedo/v360/IAPHandler;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Lcom/gamedo/v360/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "result":Ljava/lang/String;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method

.method public onQueryFinish(ILjava/util/HashMap;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "arg1"    # Ljava/util/HashMap;

    .prologue
    .line 113
    const-string v5, "IAPListener"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "license finish, status code = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v5, p0, Lcom/gamedo/v360/IAPListener;->iapHandler:Lcom/gamedo/v360/IAPHandler;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Lcom/gamedo/v360/IAPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "message":Landroid/os/Message;
    const-string v4, "\u67e5\u8be2\u6210\u529f,\u8be5\u5546\u54c1\u5df2\u8d2d\u4e70"

    .line 117
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "orderID":Ljava/lang/String;
    const/4 v3, 0x0

    .line 121
    .local v3, "paycode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 122
    .local v0, "leftday":Ljava/lang/String;
    const/16 v5, 0x65

    if-eq p1, v5, :cond_1

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u67e5\u8be2\u7ed3\u679c\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_0
    :goto_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/gamedo/v360/IAPListener;->context:Lcom/gamedo/v360/sanguoAndroid360;

    invoke-virtual {v5}, Lcom/gamedo/v360/sanguoAndroid360;->dismissProgressDialog()V

    .line 147
    return-void

    .line 132
    :cond_1
    const-string v5, "LeftDay"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "leftday":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 133
    .restart local v0    # "leftday":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ",\u5269\u4f59\u65f6\u95f4 \uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    :cond_2
    const-string v5, "OrderId"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "orderID":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 137
    .restart local v2    # "orderID":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ",OrderID \uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    :cond_3
    const-string v5, "Paycode"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "paycode":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 141
    .restart local v3    # "paycode":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ",Paycode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public onUnsubscribeFinish(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9000\u8ba2\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/gamedo/v360/IAPListener;->context:Lcom/gamedo/v360/sanguoAndroid360;

    invoke-virtual {v1}, Lcom/gamedo/v360/sanguoAndroid360;->dismissProgressDialog()V

    .line 157
    return-void
.end method
