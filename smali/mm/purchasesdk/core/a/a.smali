.class public Lmm/purchasesdk/core/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/a/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;)I
    .locals 7

    const/16 v3, 0x6e

    const/16 v2, 0x69

    const/16 v1, 0x2c5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lmm/purchasesdk/core/g/e;

    invoke-direct {v4, p0}, Lmm/purchasesdk/core/g/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lmm/purchasesdk/core/a/b;

    invoke-direct {v4}, Lmm/purchasesdk/core/a/b;-><init>()V

    new-instance v5, Lmm/purchasesdk/core/a/c;

    invoke-direct {v5}, Lmm/purchasesdk/core/a/c;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/g/c;

    :try_start_0
    invoke-interface {v0, v4, v5, p2}, Lmm/purchasesdk/core/g/c;->a(Lmm/purchasesdk/core/h/f;Lmm/purchasesdk/core/h/g;Lmm/purchasesdk/core/h/d;)I

    move-result v0

    if-eq v2, v0, :cond_0

    const/4 v4, 0x2

    if-eq v4, v0, :cond_0

    const/4 v4, 0x1

    if-ne v4, v0, :cond_3

    :cond_0
    invoke-virtual {v5}, Lmm/purchasesdk/core/a/c;->a()Lmm/purchasesdk/core/c/d;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x2c5

    invoke-static {v0}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1, v0}, Lmm/purchasesdk/core/h/a;->a(Lmm/purchasesdk/core/c/d;)V
    :try_end_0
    .catch Lmm/purchasesdk/core/h/e; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v3}, Lmm/purchasesdk/core/f;->setStatusCode(I)V

    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method
