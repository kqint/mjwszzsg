.class Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;

.field private final _$2:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;

    iput-object p2, p0, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;->_$2:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;->_$2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$1(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;)Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;->OneSure(I)V

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;->_$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
