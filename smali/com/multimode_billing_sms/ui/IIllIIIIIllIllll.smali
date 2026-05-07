.class Lcom/multimode_billing_sms/ui/IIllIIIIIllIllll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

.field private final _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/SmsEnSureDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/IIllIIIIIllIllll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    iput-object p2, p0, Lcom/multimode_billing_sms/ui/IIllIIIIIllIllll;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIllIIIIIllIllll;->_$2:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIllIIIIIllIllll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;->_$1(Lcom/multimode_billing_sms/ui/SmsEnSureDialog;)Lcom/multimode_billing_sms/ui/SmsEnSureDialog$SmsEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog$SmsEnSureResultListener;->SmsResult(I)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IIllIIIIIllIllll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;->dismiss()V

    return-void
.end method
