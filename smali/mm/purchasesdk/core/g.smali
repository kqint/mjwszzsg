.class public Lmm/purchasesdk/core/g;
.super Ljava/lang/Object;


# static fields
.field private static f:Z

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lmm/purchasesdk/core/g;->f:Z

    sput-boolean v0, Lmm/purchasesdk/core/g;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/16 v2, 0x70

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "PurchaseInternal"

    const-string v1, "appid is null"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v0, "PurchaseInternal"

    const-string v1, "appkey is null"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v1, 0x6e

    goto :goto_0

    :cond_4
    invoke-static {}, Lmm/purchasesdk/core/l/c;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->c(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/core/l/d;->e(Ljava/lang/Boolean;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    :goto_1
    invoke-static {}, Lmm/purchasesdk/core/l/c;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmm/purchasesdk/core/l/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/l/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->e(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    :goto_0
    invoke-static {}, Lmm/purchasesdk/core/l/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lmm/purchasesdk/core/l/g;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    sget v0, Lmm/purchasesdk/core/l/e;->U:I

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/c;->c(Landroid/content/Context;I)V

    invoke-static {p0}, Lmm/purchasesdk/core/g;->d(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v0

    :goto_2
    return v2

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->f(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    sput-boolean v1, Lmm/purchasesdk/core/g;->f:Z

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/ui/ag;)V
    .locals 10

    const/16 v1, 0x66

    if-eq v1, p4, :cond_0

    const/16 v1, 0x68

    if-eq v1, p4, :cond_0

    const/16 v1, 0x65

    if-ne v1, p4, :cond_8

    :cond_0
    const/16 v1, 0x66

    if-ne v1, p4, :cond_1

    invoke-static {}, Lmm/purchasesdk/core/f/a;->d()V

    invoke-static {p0, p5}, Lmm/purchasesdk/core/f/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Paycode"

    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->B()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OrderId"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LeftDay"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "TradeID"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OrderType"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v1, 0x68

    if-eq p4, v1, :cond_6

    const/16 v1, 0x66

    if-ne p4, v1, :cond_7

    :cond_6
    move-object v1, p3

    move v2, p4

    move-object v4, p5

    move-object v5, p0

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lmm/purchasesdk/core/b;->a(ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    const/16 v1, 0xf0

    if-ne p4, v1, :cond_9

    invoke-static {}, Lmm/purchasesdk/core/f/a;->d()V

    invoke-static {p0, p5}, Lmm/purchasesdk/core/f/a;->a(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual/range {p6 .. p6}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/a;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v0, p0, v1, p5}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/app/Activity;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)V

    goto :goto_0

    :cond_9
    const/16 v1, 0x1a6

    if-ne p4, v1, :cond_a

    invoke-static {}, Lmm/purchasesdk/core/l/d;->P()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object/from16 v1, p7

    move-object v2, p0

    move v3, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Lmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/HashMap;Lmm/purchasesdk/core/h/d;)V

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    invoke-virtual/range {p6 .. p6}, Lmm/purchasesdk/core/h;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_b
    const-string v1, "PurchaseInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " order fail ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/f/a;->d()V

    invoke-virtual {p5}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lmm/purchasesdk/core/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p3

    move v2, p4

    move-object v4, p5

    move-object v5, p0

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lmm/purchasesdk/core/b;->a(ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h;Lmm/purchasesdk/core/ui/ag;)V
    .locals 8

    const/16 v0, 0x69

    if-eq v0, p4, :cond_0

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const/4 v0, 0x2

    if-ne v0, p4, :cond_1

    :cond_0
    invoke-virtual {p5}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/d;

    move-result-object v6

    invoke-virtual {p5}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/a;

    move-result-object v7

    move-object v0, p6

    move-object v1, p0

    move v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lmm/purchasesdk/core/ui/ag;->a(Landroid/content/Context;ILmm/purchasesdk/core/b;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/h/a;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p5}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/d;

    move-result-object v3

    move-object v0, p3

    move v1, p4

    move-object v4, p0

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/core/b;->a(ILjava/util/HashMap;Lmm/purchasesdk/core/h/d;Landroid/content/Context;Lmm/purchasesdk/core/ui/ag;)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h;)V
    .locals 3

    const/16 v2, 0x64

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    sget v1, Lmm/purchasesdk/core/l/d;->V:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2, v2}, Lmm/purchasesdk/core/b;->onInitFinish(I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    if-ne p3, v2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_3
    if-ne p3, v2, :cond_1

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4, p3}, Lmm/purchasesdk/core/b;->a(Lmm/purchasesdk/core/h;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lmm/purchasesdk/core/b;ILmm/purchasesdk/core/h/d;)V
    .locals 4

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Paycode"

    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OrderId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LeftDay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lmm/purchasesdk/core/h/d;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TradeID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/core/b;->onQueryFinish(ILjava/util/HashMap;)V

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmm/purchasesdk/core/b;->onQueryFinish(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public static a(Lmm/purchasesdk/core/h;Lmm/purchasesdk/core/ui/ag;)V
    .locals 1

    invoke-virtual {p0}, Lmm/purchasesdk/core/h;->a()Lmm/purchasesdk/core/h/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/ui/ag;->c(Lmm/purchasesdk/core/h/a;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lmm/purchasesdk/core/g;->g:Z

    if-nez v0, :cond_5

    :try_start_0
    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmm/purchasesdk/core/l/g;->a()Lcom/ccit/mmwlan/phone/IPDress_ForPhone;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/phone/IPDress_ForPhone;)I

    move-result v0

    :goto_0
    if-ne v0, v2, :cond_1

    const/16 v0, 0xd2

    :goto_1
    return v0

    :cond_0
    invoke-static {}, Lmm/purchasesdk/core/l/g;->a()Lcom/ccit/mmwlan/vo/IPDress_ForPad;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->initialMMSDK(Landroid/content/Context;Lcom/ccit/mmwlan/vo/IPDress_ForPad;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InitCASDK"

    const-string v2, "init mmclientsdk failure"

    invoke-static {v1, v2, v0}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v0, 0xd6

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0xd3

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v0, 0xd4

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/16 v0, 0xd5

    goto :goto_1

    :cond_4
    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ag(Ljava/lang/String;)V

    invoke-static {}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ah(Ljava/lang/String;)V

    :goto_2
    sput-boolean v2, Lmm/purchasesdk/core/g;->g:Z

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getIMSI_PAD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ag(Ljava/lang/String;)V

    invoke-static {}, Lcom/ccit/mmwlan/MMClientSDK_ForPad;->getDeviceID_PAD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ah(Ljava/lang/String;)V

    goto :goto_2
.end method
