.class public Lmm/purchasesdk/core/ui/k;
.super Landroid/app/Dialog;


# instance fields
.field public b:Lmm/purchasesdk/core/h/d;

.field protected c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field protected e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field protected k:Landroid/graphics/drawable/Drawable;

.field protected l:Landroid/graphics/drawable/Drawable;

.field protected m:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private n:Landroid/graphics/drawable/Drawable;

.field protected s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    iput v0, p0, Lmm/purchasesdk/core/ui/k;->s:I

    iput-object p1, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/k;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILmm/purchasesdk/core/h/d;)V
    .locals 3

    const/16 v2, 0x14

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput v2, p0, Lmm/purchasesdk/core/ui/k;->s:I

    iput-object p1, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v2, p0, Lmm/purchasesdk/core/ui/k;->s:I

    :goto_0
    invoke-direct {p0}, Lmm/purchasesdk/core/ui/k;->g()V

    iput-object p3, p0, Lmm/purchasesdk/core/ui/k;->b:Lmm/purchasesdk/core/h/d;

    return-void

    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lmm/purchasesdk/core/ui/k;->s:I

    goto :goto_0
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lmm/purchasesdk/core/ui/k;->s:I

    int-to-float v1, v0

    iget v0, p0, Lmm/purchasesdk/core/ui/k;->s:I

    int-to-float v2, v0

    const v5, -0xffa354

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/core/ui/k;->a(FFFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/k;->k:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/button1_Confirm.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/k;->l:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/button1_Confirm_Press.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/k;->m:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/title2_bg.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/k;->n:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/top_button_back.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/k;->c:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/button_back_Press.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/k;->d:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/button_finishbilling.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/k;->e:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const-string v0, "mmiap/image/vertical/logo2.png"

    invoke-static {v0}, Lmm/purchasesdk/core/ui/am;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/k;->g:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/top_button_back.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/k;->f:Landroid/graphics/Bitmap;

    :cond_7
    return-void
.end method

.method private i()Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/k;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lmm/purchasesdk/core/ui/k;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lmm/purchasesdk/core/ui/k;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {v2}, Lmm/purchasesdk/core/h/d;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, "100000000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u624b\u673a\u8bdd\u8d39\u652f\u4ed8(\u81ea\u6d4b\u8bd5)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v2, Lmm/purchasesdk/core/ui/am;->j:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    const-string v2, "\u624b\u673a\u8bdd\u8d39\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(FFFFI)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p2, v1, v2

    const/4 v2, 0x3

    aput p2, v1, v2

    const/4 v2, 0x4

    aput p3, v1, v2

    const/4 v2, 0x5

    aput p3, v1, v2

    const/4 v2, 0x6

    aput p4, v1, v2

    const/4 v2, 0x7

    aput p4, v1, v2

    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v1, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v2, "mmiap/image/vertical/logo1.png"

    invoke-static {v1, v2}, Lmm/purchasesdk/core/ui/am;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/k;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    const-string v3, "mmiap/image/vertical/logo1.png"

    invoke-static {v2, v3}, Lmm/purchasesdk/core/ui/am;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lmm/purchasesdk/core/ui/k;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, p0, Lmm/purchasesdk/core/ui/k;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;
    .locals 9

    const/4 v8, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    const/4 v6, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0xa

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sget v2, Lmm/purchasesdk/core/ui/am;->N:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setGravity(I)V

    new-instance v0, Lmm/purchasesdk/core/ui/l;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/l;-><init>(Lmm/purchasesdk/core/ui/k;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setGravity(I)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lmm/purchasesdk/core/ui/am;->H:I

    int-to-float v2, v2

    invoke-virtual {p1, v7, v2}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x28

    invoke-direct {v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_3
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x50

    invoke-direct {v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_5
    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x82

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x82

    invoke-direct {v0, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x5

    const/16 v7, 0x11

    const/4 v3, 0x0

    const/4 v6, -0x2

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "mmiap/image/vertical/logo3.png"

    invoke-static {p1, v3}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lmm/purchasesdk/core/ui/am;->h:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "\u7248\u6743\u6240\u6709 \u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    const v4, -0x7e7e7f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lmm/purchasesdk/core/ui/am;->h:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, " MM-IAP v2.3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7

    const/4 v3, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x1e

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    sget v2, Lmm/purchasesdk/core/ui/am;->O:I

    sget v3, Lmm/purchasesdk/core/ui/am;->P:I

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "mmiap/image/vertical/title2_bg.png"

    invoke-static {p1, v0}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/k;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, p0, Lmm/purchasesdk/core/ui/k;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/k;->i()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected j()V
    .locals 6

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/k;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fedc28f5c28f5c3L    # 0.93

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method
