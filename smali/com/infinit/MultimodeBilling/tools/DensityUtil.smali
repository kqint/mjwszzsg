.class public Lcom/infinit/MultimodeBilling/tools/DensityUtil;
.super Ljava/lang/Object;


# static fields
.field private static _$1:F

.field private static _$2:Landroid/util/DisplayMetrics;

.field private static _$3:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$3:F

    sput v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$1:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$2:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$2:Landroid/util/DisplayMetrics;

    sget-object v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$2:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->setDmDensityDpi(F)V

    invoke-static {}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->getDmDensityDpi()F

    move-result v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    sput v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$1:F

    return-void
.end method

.method public static dip2px(F)I
    .locals 2

    sget v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$1:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDmDensityDpi()F
    .locals 1

    sget v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$3:F

    return v0
.end method

.method public static setDmDensityDpi(F)V
    .locals 0

    sput p0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$3:F

    return-void
.end method


# virtual methods
.method public px2dip(F)I
    .locals 2

    sget v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$1:F

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " dmDensityDpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->_$3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
