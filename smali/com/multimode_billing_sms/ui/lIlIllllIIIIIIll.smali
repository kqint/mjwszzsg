.class Lcom/multimode_billing_sms/ui/lIlIllllIIIIIIll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/lIlIllllIIIIIIll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v1, 0x1

    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->setEnableSend(Z)V

    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/multimode_billing_sms/ui/MultiModePay;->setSupportOtherPay(Z)V

    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v0

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/lIlIllllIIIIIIll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    const-string v2, "\u5317\u4eac\u89e6\u63a7"

    const-string v3, "4006000"

    const-string v4, "\u6355\u9c7c\u8fbe\u4eba2"

    const-string v5, "\u8d2d\u4e70120\u91d1\u5e01"

    const-string v6, "0.1"

    const-string v7, "130201102727"

    new-instance v8, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;

    iget-object v9, p0, Lcom/multimode_billing_sms/ui/lIlIllllIIIIIIll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    invoke-direct {v8, v9}, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;-><init>(Lcom/multimode_billing_sms/ui/MainActivity;)V

    invoke-virtual/range {v0 .. v8}, Lcom/multimode_billing_sms/ui/MultiModePay;->sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;)V

    return-void
.end method
