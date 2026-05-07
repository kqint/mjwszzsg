.class public Lcom/multimode_billing_sms/ui/MultiModePay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;,
        Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;,
        Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;,
        Lcom/multimode_billing_sms/ui/lIllIlllIIllIlII;,
        Lcom/multimode_billing_sms/ui/IIlIlIIIlIIlIIll;,
        Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;,
        Lcom/multimode_billing_sms/ui/lllIIlIIIlIlIlIl;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x4

.field public static final FAILD:I = 0x2

.field public static final OTHERPAY:I = 0x5

.field public static final SUCCESS:I = 0x1

.field public static final TIMEOUT:I = 0x3

.field private static _$19:Lcom/multimode_billing_sms/ui/MultiModePay; = null

.field private static final _$20:I = 0xa

.field private static final _$21:I = 0x4d2


# instance fields
.field private _$1:Ljava/lang/String;

.field private _$10:Z

.field private _$11:Z

.field private _$12:Ljava/lang/String;

.field private _$13:Landroid/app/ProgressDialog;

.field private _$14:Landroid/os/Message;

.field private _$15:Ljava/lang/String;

.field private _$16:Ljava/lang/String;

.field private _$17:Ljava/lang/String;

.field private _$18:Landroid/content/Context;

.field private _$2:Ljava/lang/String;

.field private _$3:Ljava/lang/String;

.field private _$4:Ljava/lang/String;

.field private _$5:Ljava/lang/String;

.field private _$6:Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

.field private _$7:Landroid/content/IntentFilter;

.field private _$8:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

.field private _$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$17:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$16:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$15:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$11:Z

    iput-boolean v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$10:Z

    return-void
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/MultiModePay;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$7:Landroid/content/IntentFilter;

    return-object p1
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/MultiModePay;Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$8:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    return-object p1
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/MultiModePay;Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    return-object p1
.end method

.method private _$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/infinit/MultimodeBilling/tools/Utilities;->getInstances()Lcom/infinit/MultimodeBilling/tools/Utilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infinit/MultimodeBilling/tools/Utilities;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/infinit/MultimodeBilling/tools/Utilities;->getInstances()Lcom/infinit/MultimodeBilling/tools/Utilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infinit/MultimodeBilling/tools/Utilities;->getFeetype()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getCpId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getFidsms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Lcom/infinit/MultimodeBilling/tools/Utilities;->getInstances()Lcom/infinit/MultimodeBilling/tools/Utilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infinit/MultimodeBilling/tools/Utilities;->getCpparam()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "105"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v3}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZTEos10"

    invoke-static {v0, v1}, Lcom/zte/appstore/common/tool/crypt/CryptUtil;->encryptBy3DesAndBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private _$1()V
    .locals 4

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogNet;->isNetWorkAvaible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogUtils;->getFirstUseSdk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xyf"

    const-string v1, "update usermessage now"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/infinit/multimode_billig/log/LogNet;->getInstance()Lcom/infinit/multimode_billig/log/LogNet;

    move-result-object v0

    const-string v1, "http://uniview.wostore.cn/log-app/sendLog"

    const-string v2, ""

    iget-object v3, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infinit/multimode_billig/log/LogNet;->UpdateHttpMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogUtils;->getUpdateLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogNet;->isNetWorkAvaible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "xyf"

    const-string v1, "upload lasttime log"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/infinit/multimode_billig/log/LogNet;->getInstance()Lcom/infinit/multimode_billig/log/LogNet;

    move-result-object v0

    const-string v1, "http://uniview.wostore.cn/log-app/sendLog"

    const-string v2, "smsSdkLog.txt"

    invoke-static {v2}, Lcom/infinit/multimode_billig/log/LogUtils;->GetTotalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infinit/multimode_billig/log/LogNet;->UpdateHttpLog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/MultiModePay;)V
    .locals 0

    invoke-direct {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2()V

    return-void
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/MultiModePay;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2(Ljava/lang/String;)V

    return-void
.end method

.method static _$10(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$3:Ljava/lang/String;

    return-object v0
.end method

.method static _$11(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5:Ljava/lang/String;

    return-object v0
.end method

.method static _$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    return-object v0
.end method

.method static _$2(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12:Ljava/lang/String;

    return-object v0
.end method

.method private _$2()V
    .locals 4

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/infinit/multimode_billig/log/LogUtils;->setUpdateLog(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogNet;->isNetWorkAvaible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xyf"

    const-string v1, "update log now"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/infinit/multimode_billig/log/LogNet;->getInstance()Lcom/infinit/multimode_billig/log/LogNet;

    move-result-object v0

    const-string v1, "http://uniview.wostore.cn/log-app/sendLog"

    const-string v2, "smsSdkLog.txt"

    invoke-static {v2}, Lcom/infinit/multimode_billig/log/LogUtils;->GetTotalFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/infinit/multimode_billig/log/LogNet;->UpdateHttpLog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private _$2(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.infinit.multimodebilling.sms"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "SMS_TOKEN"

    const/16 v4, 0x4d2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$11:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->isSimVaild(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$11:Z

    const-string v1, "S41:\u72b6\u6001\u68c0\u6d4b\u5b8c\u6bd5\uff0c\u6b63\u5728\u53d1\u9001\u77ed\u4fe1"

    const-string v5, "xyf"

    const-string v6, "smsSdkLog"

    invoke-static {v1, v5, v6}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "10655198000"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string v0, "S51:\u77ed\u4fe1\u53d1\u51fa,\u5f00\u59cb\u7b49\u5f85\u56de\u8c03"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->cancel()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$8:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/multimode_billing_sms/ui/lllIlIlIllIIIlll;

    invoke-direct {v1, p0}, Lcom/multimode_billing_sms/ui/lllIlIlIllIIIlll;-><init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "S42:\u72b6\u6001\u68c0\u6d4b\u5931\u8d25,\u5361\u4e0d\u53ef\u7528"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6:Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    const-string v1, "\u72b6\u6001\u68c0\u6d4b\u5931\u8d25"

    invoke-interface {v0, v6, v1}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->cancel()V

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$8:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v0, "S44:\u72b6\u6001\u68c0\u6d4b\u5931\u8d25,\u975eLT\u5361"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6:Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    const-string v1, "\u72b6\u6001\u68c0\u6d4b\u5931\u8d25"

    invoke-interface {v0, v6, v1}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;->cancel()V

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$8:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    const-string v0, "S45:\u72b6\u6001\u68c0\u6d4b\u5931\u8d25\uff0c\u914d\u7f6e\u6587\u4ef6\u9519\u8bef"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->DismissProgressDialog()V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6:Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    const-string v1, "\u72b6\u6001\u68c0\u6d4b\u5931\u8d25"

    invoke-interface {v0, v6, v1}, Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;->SmsResult(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static _$3(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$7:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static _$4(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$8:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    return-object v0
.end method

.method static _$5(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$9:Lcom/multimode_billing_sms/ui/IlIIIIllIlIIlIll;

    return-object v0
.end method

.method static _$6(Lcom/multimode_billing_sms/ui/MultiModePay;)Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6:Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    return-object v0
.end method

.method static _$7(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$4:Ljava/lang/String;

    return-object v0
.end method

.method static _$8(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2:Ljava/lang/String;

    return-object v0
.end method

.method static _$9(Lcom/multimode_billing_sms/ui/MultiModePay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;
    .locals 1

    sget-object v0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$19:Lcom/multimode_billing_sms/ui/MultiModePay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;-><init>()V

    sput-object v0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$19:Lcom/multimode_billing_sms/ui/MultiModePay;

    :cond_0
    sget-object v0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$19:Lcom/multimode_billing_sms/ui/MultiModePay;

    return-object v0
.end method


# virtual methods
.method public DismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public checkStatus()Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$14:Landroid/os/Message;

    :try_start_0
    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getAppid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->setAppId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getCpid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->setCpId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getFidSms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->setFidsms(Ljava/lang/String;)V

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getCpId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getCpId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getFidsms()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->getFidsms()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->setImsi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$14:Landroid/os/Message;

    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getScreenWidth(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public isEnableSend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$11:Z

    return v0
.end method

.method public isSupportOtherPay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$10:Z

    return v0
.end method

.method public setEnableSend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$11:Z

    return-void
.end method

.method public setSupportOtherPay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$10:Z

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$13:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;)V
    .locals 6

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    iput-object p7, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12:Ljava/lang/String;

    iput-object p8, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$6:Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;

    iput-object p2, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$5:Ljava/lang/String;

    iput-object p3, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1:Ljava/lang/String;

    iput-object p5, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$2:Ljava/lang/String;

    iput-object p6, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$4:Ljava/lang/String;

    invoke-static {}, Lcom/infinit/multimode_billing5/net/MultimodeConfig;->initMessage()V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogNet;->initParams(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$1()V

    :try_start_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogUtils;->setCounts(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0}, Lcom/infinit/multimode_billig/log/LogUtils;->getCounts(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string v0, "smsSdkLog"

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/infinit/multimode_billig/log/LogUtils;->deleteFile(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/infinit/multimode_billig/log/LogUtils;->setUpdateLog(Landroid/content/Context;Z)V

    :cond_0
    const-string v0, "--------------------"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getFidSms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getAppid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    invoke-static {v1}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->getCpid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "S11:\u5c55\u793a\u7b2c\u4e00\u6b21\u786e\u8ba4\u754c\u9762"

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    new-instance v5, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;

    invoke-direct {v5, p0}, Lcom/multimode_billing_sms/ui/IllIIIIIllIIIlII;-><init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    move-object v2, p5

    move-object v3, p6

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;)V

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->show()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "S73\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xyf"

    const-string v2, "smsSdkLog"

    invoke-static {v0, v1, v2}, Lcom/infinit/multimode_billig/log/LogUtils;->myLog_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/MultiModePay;->_$18:Landroid/content/Context;

    new-instance v5, Lcom/multimode_billing_sms/ui/lllIIlIIIlIlIlIl;

    invoke-direct {v5, p0}, Lcom/multimode_billing_sms/ui/lllIIlIIIlIlIlIl;-><init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V

    move-object v2, p5

    move-object v3, p6

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog$PSmsOneSureListener;)V

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/PSmsEnsureOneDialog;->show()V

    goto :goto_1
.end method
