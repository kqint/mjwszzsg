.class Lcn/game189/sms/SMS$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcn/game189/sms/SMS;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/game189/sms/SMS;->a(Z)V

    invoke-static {}, Lcn/game189/sms/SMS;->p()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcn/game189/sms/SMS;->q()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcn/game189/sms/SMS;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcn/game189/sms/SMS;->s()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcn/game189/sms/SMS$SendThread;

    invoke-static {}, Lcn/game189/sms/SMS;->c()Lcn/game189/sms/SMS;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/game189/sms/SMS$SendThread;-><init>(Lcn/game189/sms/SMS;B)V

    invoke-virtual {v0}, Lcn/game189/sms/SMS$SendThread;->start()V

    :cond_0
    return-void
.end method
