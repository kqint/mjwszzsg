.class Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/multimode_billing_sms/ui/MultiModePay$SMSCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/multimode_billing_sms/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgCallBack"
.end annotation


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ButtonCLick(I)V
    .locals 0

    return-void
.end method

.method public SmsResult(ILjava/lang/String;)V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->DismissProgressDialog()V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lIIIIIllllllIlll;->_$1:Lcom/multimode_billing_sms/ui/MainActivity;

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
