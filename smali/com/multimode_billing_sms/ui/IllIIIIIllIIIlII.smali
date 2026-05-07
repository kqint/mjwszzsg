.class Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/multimode_billing_sms/ui/MultiModePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsOneListener"
.end annotation


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MultiModePay;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OneSure(I)V
    .locals 9

    const/4 v1, 0x5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "S21:\u5c55\u793a\u7b2c\u4e8c\u6b21\u652f\u4ed8\u786e\u8ba4\u754c\u9762"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v2}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$11(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v3}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$10(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v4}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v5}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$8(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v6}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$7(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;

    iget-object v8, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {v7, v8}, Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;-><init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    invoke-direct/range {v0 .. v7}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/SmsEnSureDialog$SmsEnSureResultListener;)V

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :try_start_0
    const-string v0, "S22:\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "\u7528\u6237\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_0

    :try_start_1
    const-string v0, "S22:\u7b2c\u4e09\u65b9\u652f\u4ed8"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "\u7b2c\u4e09\u65b9\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
