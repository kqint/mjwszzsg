.class public Lmm/purchasesdk/b;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lmm/purchasesdk/Purchase;

.field private a:Lmm/purchasesdk/core/h/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/Purchase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmm/purchasesdk/Purchase;Lmm/purchasesdk/core/h/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/core/h/d;

    iput-object p1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;I)V
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/core/h/d;

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/core/h/d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->setTimeStamp(Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    iget-object v1, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/core/h/d;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4, v2}, Lmm/purchasesdk/fingerprint/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmm/purchasesdk/fingerprint/c;->getStatus()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xf3

    sget-object v2, Lmm/purchasesdk/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create static mark failed.code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v0}, Lmm/purchasesdk/core/h/d;->g(I)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;I)V

    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmm/purchasesdk/Purchase;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/h/d;->setTimeStamp(Ljava/lang/String;)V

    sget-object v2, Lmm/purchasesdk/b;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Static Mark->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lmm/purchasesdk/core/h/d;->V(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lmm/purchasesdk/b;->a:Lmm/purchasesdk/Purchase;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->a(Lmm/purchasesdk/core/h/d;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
