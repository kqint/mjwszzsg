.class Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/multimode_billing_sms/ui/SmsEnSureDialog$SmsEnSureResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/multimode_billing_sms/ui/MultiModePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMSReusltListener"
.end annotation


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MultiModePay;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SmsResult(I)V
    .locals 8

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->ButtonCLick(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    new-instance v0, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v0 .. v5}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;-><init>(Lcom/multimode_billing_sms/ui/MultiModePay;JJ)V

    invoke-static {v6, v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->start()Landroid/os/CountDownTimer;

    const-string v0, "S31:\u7528\u6237\u786e\u8ba4\u9009\u62e9\uff0c\u51c6\u5907\u53d1\u9001\u77ed\u4fe1"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    new-instance v1, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    iget-object v2, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {v1, v2}, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;-><init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    invoke-static {v0, v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.infinit.multimodebilling.sms"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$4(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    move-result-object v1

    iget-object v2, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v2}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$3(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    const-string v1, "\u6b63\u5728\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->cancel()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\u53d1\u9001\u77ed\u4fe1\u4ea7\u751f\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xyf"

    const-string v3, "smsSdkLog"

    invoke-static {v1, v2, v3}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-virtual {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->DismissProgressDialog()V

    :try_start_1
    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v2}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$4(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\u77ed\u4fe1\u53d1\u9001\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    if-ne p1, v7, :cond_0

    :try_start_2
    const-string v0, "S32:\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
