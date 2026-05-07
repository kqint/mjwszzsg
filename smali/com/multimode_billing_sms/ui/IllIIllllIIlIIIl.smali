.class Lcom/multimode_billing_sms/ui/IllIIllllIIlIIIl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/IllIIllllIIlIIIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IllIIllllIIlIIIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;->_$1(Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;)Lcom/multimode_billing_sms/ui/PSmsEnSureDialog$PSmsEnSureResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/multimode_billing_sms/ui/PSmsEnSureDialog$PSmsEnSureResultListener;->SmsResult(I)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IllIIllllIIlIIIl;->_$1:Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/PSmsEnSureDialog;->dismiss()V

    return-void
.end method
