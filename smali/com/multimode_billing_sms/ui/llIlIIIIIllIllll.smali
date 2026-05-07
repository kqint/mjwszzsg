.class Lcom/multimode_billing_sms/ui/llIlIIIIIllIllll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/SmsEnSureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/llIlIIIIIllIllll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/llIlIIIIIllIllll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;->_$1(Lcom/multimode_billing_sms/ui/SmsEnSureDialog;)Lcom/multimode_billing_sms/ui/SmsEnSureDialog$SmsEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog$SmsEnSureResultListener;->SmsResult(I)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/llIlIIIIIllIllll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnSureDialog;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/SmsEnSureDialog;->dismiss()V

    return-void
.end method
