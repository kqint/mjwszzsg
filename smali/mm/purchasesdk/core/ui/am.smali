.class public Lmm/purchasesdk/core/ui/am;
.super Ljava/lang/Object;


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:I

.field public static I:I

.field public static J:I

.field public static K:I

.field public static L:I

.field public static M:I

.field public static N:I

.field public static O:I

.field public static P:I

.field public static a:F

.field public static b:F

.field public static c:F

.field private static c:Ljava/util/ArrayList;

.field public static d:F

.field public static e:F

.field private static e:Ljava/util/HashMap;

.field public static f:F

.field public static f:Ljava/lang/Boolean;

.field public static g:F

.field public static h:F

.field public static i:F

.field public static j:F

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v5, 0x41800000    # 16.0f

    const/16 v4, 0x14

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    sput v4, Lmm/purchasesdk/core/ui/am;->z:I

    const/16 v0, 0x50

    sput v0, Lmm/purchasesdk/core/ui/am;->A:I

    const/16 v0, 0x37

    sput v0, Lmm/purchasesdk/core/ui/am;->B:I

    const/16 v0, 0x1e0

    sput v0, Lmm/purchasesdk/core/ui/am;->C:I

    const/16 v0, 0x320

    sput v0, Lmm/purchasesdk/core/ui/am;->D:I

    sput v2, Lmm/purchasesdk/core/ui/am;->E:I

    sput v2, Lmm/purchasesdk/core/ui/am;->F:I

    const/16 v0, 0x118

    sput v0, Lmm/purchasesdk/core/ui/am;->G:I

    sput v4, Lmm/purchasesdk/core/ui/am;->H:I

    const/4 v0, 0x5

    sput v0, Lmm/purchasesdk/core/ui/am;->I:I

    const/4 v0, 0x5

    sput v0, Lmm/purchasesdk/core/ui/am;->J:I

    const/16 v0, 0xf

    sput v0, Lmm/purchasesdk/core/ui/am;->K:I

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->a:F

    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->b:F

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    sput v1, Lmm/purchasesdk/core/ui/am;->c:F

    sput v1, Lmm/purchasesdk/core/ui/am;->d:F

    sput v1, Lmm/purchasesdk/core/ui/am;->e:F

    sput v3, Lmm/purchasesdk/core/ui/am;->L:I

    sput v1, Lmm/purchasesdk/core/ui/am;->f:F

    sput v5, Lmm/purchasesdk/core/ui/am;->g:F

    sput v4, Lmm/purchasesdk/core/ui/am;->N:I

    sput v3, Lmm/purchasesdk/core/ui/am;->O:I

    sput v3, Lmm/purchasesdk/core/ui/am;->P:I

    sput v5, Lmm/purchasesdk/core/ui/am;->h:F

    const/high16 v0, 0x41900000    # 18.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->i:F

    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lmm/purchasesdk/core/ui/am;->j:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v4, v6, :cond_1

    if-le v3, v6, :cond_1

    invoke-virtual {v5, p0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-gt v4, v6, :cond_2

    invoke-virtual {v5, p0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-gt v3, v6, :cond_0

    invoke-virtual {v5, v0, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lmm/purchasesdk/core/ui/am;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget v0, Lmm/purchasesdk/core/ui/am;->d:F

    :goto_0
    invoke-static {v0, v0, p0}, Lmm/purchasesdk/core/ui/am;->a(FFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lmm/purchasesdk/core/ui/am;->d:F

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lmm/purchasesdk/core/ui/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v1, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReadImageFile"

    const-string v2, "read image fail......."

    invoke-static {v1, v2}, Lmm/purchasesdk/core/l/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lmm/purchasesdk/core/ui/am;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "mmiap/image/vertical/logo2.png"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lmm/purchasesdk/core/ui/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lmm/purchasesdk/core/ui/am;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v1, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v0, Lmm/purchasesdk/core/ui/am;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public static p()V
    .locals 0

    return-void
.end method

.method public static q()V
    .locals 2

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/logo1.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/title1_bg.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/title2_bg.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_success.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_false.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_info.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/logo3.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/infoline.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/logo2.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/icon_chifubao.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_back_Press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_finishbilling.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/button_finishbilling_press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/top_button_back.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmm/purchasesdk/core/ui/am;->c:Ljava/util/ArrayList;

    const-string v1, "mmiap/image/vertical/top_button_back_press.png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
