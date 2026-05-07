.class Lmm/purchasesdk/core/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmm/purchasesdk/core/ui/u;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/u;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u652f\u4ed8\u5bc6\u7801"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string v0, ""

    sget-object v1, Lmm/purchasesdk/fingerprint/c;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->getStatus()I

    move-result v1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6307\u7eb9\u6b63\u5728\u83b7\u53d6\u4e2d,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v0}, Lmm/purchasesdk/core/ui/u;->dismiss()V

    const-string v0, "PurchaseDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create fingerprint,error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v0

    const/16 v1, 0x190

    const/4 v2, 0x0

    iget-object v3, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    iget-object v3, v3, Lmm/purchasesdk/core/ui/u;->b:Lmm/purchasesdk/core/h/d;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v4}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v5}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/core/b;->a(ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PurchaseDialog"

    const-string v1, "Activity is finished!"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "3"

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->af(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/ui/ag;

    move-result-object v0

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmm/purchasesdk/core/ui/ag;->i(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dyMark"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CheckAnswer"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v2}, Lmm/purchasesdk/core/ui/u;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CheckId"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Password"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-virtual {v2}, Lmm/purchasesdk/core/ui/u;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SessionId"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OrderCount"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "multiSubs"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "NeedPasswd"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "NeedInput"

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/a;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/u;->b(Lmm/purchasesdk/core/ui/u;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lmm/purchasesdk/core/ui/y;->a:Lmm/purchasesdk/core/ui/u;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/u;->a(Lmm/purchasesdk/core/ui/u;)Lmm/purchasesdk/core/b;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
