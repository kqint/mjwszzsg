.class public Lmm/purchasesdk/core/c/a;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/c/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Landroid/os/Bundle;Lmm/purchasesdk/core/h/d;)I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x6e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lmm/purchasesdk/core/g/e;

    invoke-direct {v3, p0}, Lmm/purchasesdk/core/g/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lmm/purchasesdk/core/c/b;

    invoke-direct {v3}, Lmm/purchasesdk/core/c/b;-><init>()V

    if-eqz p2, :cond_0

    const-string v4, "dyMark"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->A(Ljava/lang/String;)V

    const-string v4, "CheckAnswer"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->B(Ljava/lang/String;)V

    const-string v4, "CheckId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->s(Ljava/lang/String;)V

    const-string v4, "Password"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->C(Ljava/lang/String;)V

    const-string v4, "RandomPwd"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->z(Ljava/lang/String;)V

    const-string v4, "SessionId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->q(Ljava/lang/String;)V

    const-string v4, "OrderCount"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->d(I)V

    const-string v4, "multiSubs"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->a(Z)V

    const-string v4, "NeedPasswd"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->b(Z)V

    const-string v4, "NeedInput"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lmm/purchasesdk/core/c/b;->c(Z)V

    :cond_0
    new-instance v4, Lmm/purchasesdk/core/c/c;

    invoke-direct {v4}, Lmm/purchasesdk/core/c/c;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/g/c;

    :try_start_0
    invoke-interface {v0, v3, v4, p3}, Lmm/purchasesdk/core/g/c;->a(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;
    :try_end_0
    .catch Lmm/purchasesdk/core/h/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->J()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lmm/purchasesdk/core/c/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "billing code:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    :cond_2
    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, 0x79

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v1}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-static {v1}, Lmm/purchasesdk/core/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    sget-object v0, Lmm/purchasesdk/core/c/a;->TAG:Ljava/lang/String;

    const-string v1, "no license file"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->S()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1a6

    goto :goto_1

    :cond_6
    const/16 v0, 0xf1

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Lmm/purchasesdk/core/h/d;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p3}, Lmm/purchasesdk/core/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_3

    const-string v1, "OrderId"

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LeftDay"

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmm/purchasesdk/core/h/d;->k(Ljava/lang/String;)V

    const-string v1, "OrderType"

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lmm/purchasesdk/core/c/c;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmm/purchasesdk/core/h/d;->D(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x193

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x194

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/ccit/mmwlan/phone/MMClientSDK_ForPhone;->DestorySecCert(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/16 v0, 0x198

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :sswitch_4
    const/16 v0, 0x1a5

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x195

    goto/16 :goto_1

    :sswitch_6
    const/16 v0, 0x196

    goto/16 :goto_1

    :sswitch_7
    const/16 v0, 0x199

    goto/16 :goto_1

    :sswitch_8
    const/16 v0, 0x19a

    goto/16 :goto_1

    :sswitch_9
    const/16 v0, 0x19c

    goto/16 :goto_1

    :sswitch_a
    const/16 v0, 0x19e

    goto/16 :goto_1

    :sswitch_b
    const/16 v0, 0x19f

    goto/16 :goto_1

    :sswitch_c
    const/16 v0, 0x1a3

    goto/16 :goto_1

    :sswitch_d
    const/16 v0, 0x19b

    goto/16 :goto_1

    :sswitch_e
    const/16 v0, 0x1a4

    goto/16 :goto_1

    :sswitch_f
    const/16 v0, 0x1a7

    goto/16 :goto_1

    :sswitch_10
    const/16 v0, 0x1a8

    goto/16 :goto_1

    :sswitch_11
    const/16 v0, 0x1ad

    goto/16 :goto_1

    :sswitch_12
    const/16 v0, 0x1ab

    goto/16 :goto_1

    :sswitch_13
    const/16 v0, 0x1aa

    goto/16 :goto_1

    :sswitch_14
    const/16 v0, 0x1ac

    goto/16 :goto_1

    :sswitch_15
    const/16 v0, 0x1ae

    goto/16 :goto_1

    :sswitch_16
    const/16 v0, 0x1af

    goto/16 :goto_1

    :sswitch_17
    const/16 v0, 0x1b0

    goto/16 :goto_1

    :sswitch_18
    const/16 v0, 0x1b1

    goto/16 :goto_1

    :sswitch_19
    const/16 v0, 0x1b2

    goto/16 :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_7
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x14 -> :sswitch_15
        0x16 -> :sswitch_16
        0x19 -> :sswitch_17
        0x24 -> :sswitch_2
        0x26 -> :sswitch_e
        0x2a -> :sswitch_d
        0x63 -> :sswitch_11
        0x65 -> :sswitch_c
        0x6a -> :sswitch_19
        0x6b -> :sswitch_18
        0xb6 -> :sswitch_12
        0xc9 -> :sswitch_f
        0xca -> :sswitch_10
        0x7d8 -> :sswitch_14
        0x233b -> :sswitch_13
    .end sparse-switch
.end method
