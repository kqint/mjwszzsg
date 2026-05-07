.class Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/multimode_billing_sms/ui/MultiModePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCount"
.end annotation


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MultiModePay;


# direct methods
.method public constructor <init>(Lcom/multimode_billing_sms/ui/MultiModePay;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$4(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "S62:\u8d85\u65f6\u672a\u6536\u5230\u56de\u8c03\uff0c\u8fd4\u56de\u6210\u529f\u6d88\u606f"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S62:\u8d85\u65f6\u53d1\u9001\u9053\u5177"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "\u8d85\u65f6\u672a\u6536\u5230\u56de\u8c03"

    invoke-interface {v0, v1, v2}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
