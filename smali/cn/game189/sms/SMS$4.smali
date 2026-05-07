.class Lcn/game189/sms/SMS$4;
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

    invoke-static {}, Lcn/game189/sms/SMS;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/game189/sms/SMS$SHandler;

    invoke-static {}, Lcn/game189/sms/SMS;->c()Lcn/game189/sms/SMS;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcn/game189/sms/SMS;->t()I

    move-result v2

    invoke-direct {v1, v2}, Lcn/game189/sms/SMS$SHandler;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
