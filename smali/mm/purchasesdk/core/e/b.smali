.class public Lmm/purchasesdk/core/e/b;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static b:Lmm/purchasesdk/core/e/a;

.field static b:Lmm/purchasesdk/core/h/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmm/purchasesdk/core/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/e/b;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/e/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/core/g/c;)I
    .locals 5

    const/16 v1, 0xe9

    const/16 v0, 0xe6

    :try_start_0
    invoke-static {p1}, Lmm/purchasesdk/core/e/a;->a(Ljava/lang/String;)Lmm/purchasesdk/core/e/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lmm/purchasesdk/core/e/b;->TAG:Ljava/lang/String;

    const-string v3, "copyright parse failed."

    invoke-static {v2, v3, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lmm/purchasesdk/core/e/a;->a(Ljava/lang/String;Lmm/purchasesdk/core/e/a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/core/e/b;->TAG:Ljava/lang/String;

    const-string v2, "copyright verify failed, code=233"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lmm/purchasesdk/core/e/b;->TAG:Ljava/lang/String;

    const-string v3, "Copyright validate success"

    invoke-static {v0, v3}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lmm/purchasesdk/core/e/a;->ag:Ljava/lang/String;

    sget-object v3, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v3}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Lmm/purchasesdk/core/e/a;->ag:Ljava/lang/String;

    const-string v3, "100000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lmm/purchasesdk/core/e/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appid not same: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v4}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lmm/purchasesdk/core/e/a;->ag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lmm/purchasesdk/core/g/b;

    if-nez v0, :cond_3

    invoke-static {}, Lmm/purchasesdk/core/l/d;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lmm/purchasesdk/core/g/b;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/g/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/d;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/purchasesdk/core/l/d;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v3}, Lmm/purchasesdk/core/g/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sput-object v2, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/e/a;

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static a()Lmm/purchasesdk/core/e/a;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/e/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/e/a;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sput-object p1, Lmm/purchasesdk/core/e/b;->b:Lmm/purchasesdk/core/h/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lmm/purchasesdk/core/g/b;

    invoke-direct {v2, p0}, Lmm/purchasesdk/core/g/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/core/g/d;

    invoke-direct {v2}, Lmm/purchasesdk/core/g/d;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lmm/purchasesdk/core/g/e;

    invoke-direct {v2, p0}, Lmm/purchasesdk/core/g/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/g/c;

    :try_start_0
    invoke-interface {v0, p0, p1}, Lmm/purchasesdk/core/g/c;->c(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p0, v3, v0}, Lmm/purchasesdk/core/e/b;->a(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/core/g/c;)I
    :try_end_0
    .catch Lmm/purchasesdk/core/h/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lmm/purchasesdk/core/e/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load copyright failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lmm/purchasesdk/core/h/e;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v0, Lmm/purchasesdk/core/h/e;->q:I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
