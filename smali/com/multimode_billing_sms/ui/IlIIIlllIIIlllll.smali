.class Lcom/multimode_billing_sms/ui/IlIIIlllIIIlllll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _$1:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;


# direct methods
.method constructor <init>(Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;)V
    .locals 0

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/IlIIIlllIIIlllll;->_$1:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/IlIIIlllIIIlllll;->_$1:Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;->_$1(Lcom/multimode_billing_sms/ui/IIIIIIlllllIllII;)Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v0

    invoke-static {v0}, Lcom/multimode_billing_sms/ui/MultiModePay;->_$12(Lcom/multimode_billing_sms/ui/MultiModePay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u786e\u4fdd\u60a8\u7684\u8054\u901a\u5361\u63d2\u5165\u5361\u69fd1\u4e2d"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
