.class Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/multimode_billing_sms/ui/MultiModePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MultiModePay;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;)Lcom/multimode_billing_sms/ui/MultiModePay;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const-string v0, "SMS_TOKEN"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x4d2

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.infinit.multimodebilling.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->cancel()V

    :cond_0
    const-string v0, "S61:\u63a5\u6536\u5230\u7cfb\u7edf\u7cfb\u7edf\u53d1\u9001\u77ed\u4fe1\u7ed3\u679c\u56de\u8c03"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->getResultCode()I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v0, "S71:\u7ed9\u6e38\u620f\u53d1\u9001\u652f\u4ed8\u6210\u529f\u56de\u8c03\u7ed3\u679c"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S71:\u6210\u529f\u53d1\u9001\u9053\u5177"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u53d1\u9001\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    :goto_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$4(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/multimode_billing_sms/ui/IlIIIlllIIIlllll;

    invoke-direct {v1, p0}, Lcom/multimode_billing_sms/ui/IlIIIlllIIIlllll;-><init>(Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "S72:\u7ed9\u6e38\u620f\u53d1\u9001\u652f\u4ed8\u5931\u8d25\u56de\u8c03\u7ed3\u679c:getResultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S72:\u5931\u8d25\u4e0d\u9001\u9053\u5177"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "\u53d1\u9001\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "S73\u5f02\u5e38:"

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

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    goto :goto_1
.end method
