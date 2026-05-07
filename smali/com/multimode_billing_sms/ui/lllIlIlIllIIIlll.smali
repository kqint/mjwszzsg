.class Lcom/multimode_billing_sms/ui/lllIlIlIllIIIlll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/MultiModePay;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/MultiModePay;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/lllIlIlIllIIIlll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/lllIlIlIllIIIlll;->_$1:Lcom/multimode_billing_sms/ui/MultiModePay;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u5c06SIM\u5361\u653e\u5165\u5361\u69fd1\u540e\u91cd\u8bd5"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
