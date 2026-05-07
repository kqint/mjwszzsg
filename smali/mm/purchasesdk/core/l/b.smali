.class public Lmm/purchasesdk/core/l/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static U:I

.field public static bm:Ljava/lang/String;

.field public static bn:Ljava/lang/String;

.field private static u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lmm/purchasesdk/core/l/b;->U:I

    const/4 v0, 0x1

    sput-boolean v0, Lmm/purchasesdk/core/l/b;->u:Z

    const-string v0, "0"

    sput-object v0, Lmm/purchasesdk/core/l/b;->bm:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lmm/purchasesdk/core/l/b;->bn:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lmm/purchasesdk/core/l/b;->U:I

    if-ge p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget v0, Lmm/purchasesdk/core/l/b;->U:I

    if-ge p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, p2}, Lmm/purchasesdk/core/l/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
