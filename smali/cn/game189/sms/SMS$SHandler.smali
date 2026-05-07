.class Lcn/game189/sms/SMS$SHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private synthetic b:Lcn/game189/sms/SMS;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/game189/sms/SMS$SHandler;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcn/game189/sms/SMS$SHandler;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcn/game189/sms/SMS;->k()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcn/game189/sms/SMS;->l()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcn/game189/sms/SMS;->m()V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcn/game189/sms/SMS;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
