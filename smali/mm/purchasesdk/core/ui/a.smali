.class public Lmm/purchasesdk/core/ui/a;
.super Lmm/purchasesdk/core/ui/k;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View$OnFocusChangeListener;

.field public a:Landroid/view/View$OnKeyListener;

.field private a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ScrollView;

.field private a:Landroid/widget/TextView;

.field private a:Lmm/purchasesdk/core/b;

.field private a:Lmm/purchasesdk/core/ui/ag;

.field private a:Lmm/purchasesdk/core/ui/m;

.field private b:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/os/Handler;

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/EditText;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private b:Lmm/purchasesdk/core/h/a;

.field private bg:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/widget/LinearLayout;

.field private f:Ljava/lang/Boolean;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lmm/purchasesdk/core/b;Lmm/purchasesdk/core/h/a;Lmm/purchasesdk/core/h/d;Lmm/purchasesdk/core/ui/ag;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x103000f

    invoke-direct {p0, p1, v0, p6}, Lmm/purchasesdk/core/ui/k;-><init>(Landroid/content/Context;ILmm/purchasesdk/core/h/d;)V

    const-string v0, "PurchaseDialog"

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Ljava/lang/Boolean;

    iput-boolean v3, p0, Lmm/purchasesdk/core/ui/a;->q:Z

    iput-boolean v2, p0, Lmm/purchasesdk/core/ui/a;->r:Z

    iput-boolean v2, p0, Lmm/purchasesdk/core/ui/a;->s:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->f:Ljava/lang/Boolean;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/ui/m;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/Bitmap;

    new-instance v0, Lmm/purchasesdk/core/ui/b;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/b;-><init>(Lmm/purchasesdk/core/ui/a;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lmm/purchasesdk/core/ui/c;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/c;-><init>(Lmm/purchasesdk/core/ui/a;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnTouchListener;

    new-instance v0, Lmm/purchasesdk/core/ui/d;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/d;-><init>(Lmm/purchasesdk/core/ui/a;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnKeyListener;

    new-instance v0, Lmm/purchasesdk/core/ui/e;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/e;-><init>(Lmm/purchasesdk/core/ui/a;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lmm/purchasesdk/core/ui/g;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/g;-><init>(Lmm/purchasesdk/core/ui/a;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/view/View$OnClickListener;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/ui/a;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    iput-object p4, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/b;

    iput-object p3, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/os/Handler;

    iput-object p2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/os/Handler;

    new-instance v0, Lmm/purchasesdk/core/g/b;

    invoke-direct {v0, p1}, Lmm/purchasesdk/core/g/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmm/purchasesdk/core/g/b;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    iput-object p1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/d;

    invoke-virtual {p0, p5}, Lmm/purchasesdk/core/ui/a;->b(Lmm/purchasesdk/core/h/a;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/Button;

    iput-object p7, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/ui/ag;

    return-void
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 1

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->f:Ljava/lang/Boolean;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/a;->c()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/16 v3, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v3, v3}, Lmm/purchasesdk/core/ui/j;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lmm/purchasesdk/core/l/d;->O()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<a href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v4}, Lmm/purchasesdk/core/h/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lmm/purchasesdk/core/ui/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Lmm/purchasesdk/core/ui/an;)Landroid/view/View;
    .locals 7

    const/16 v6, 0xa

    const/4 v3, 0x5

    const/4 v5, -0x1

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6, v3, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p1, Lmm/purchasesdk/core/ui/an;->Q:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmm/purchasesdk/core/ui/ProductItemView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/ProductItemView;->setSingleLine()V

    const-string v2, "MARQUEE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v5}, Lmm/purchasesdk/core/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget v2, p1, Lmm/purchasesdk/core/ui/an;->R:I

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p1, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p1, Lmm/purchasesdk/core/ui/an;->Q:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget v4, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lmm/purchasesdk/core/ui/ProductItemView;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lmm/purchasesdk/core/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v4, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextSize(F)V

    invoke-virtual {v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setSingleLine()V

    const-string v4, "MARQUEE"

    invoke-static {v4}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v7}, Lmm/purchasesdk/core/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget-object v4, p1, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p1, Lmm/purchasesdk/core/ui/an;->R:I

    invoke-virtual {v2, v4}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p2, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lmm/purchasesdk/core/ui/an;->Q:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lmm/purchasesdk/core/ui/ProductItemView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextSize(F)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;->setSingleLine(Z)V

    invoke-virtual {v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setSingleLine()V

    const-string v3, "MARQUEE"

    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v7}, Lmm/purchasesdk/core/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget-object v3, p2, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lmm/purchasesdk/core/ui/an;->R:I

    invoke-virtual {v2, v3}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;)Landroid/view/View;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p2, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p3, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->j:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->j:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Lmm/purchasesdk/core/ui/an;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lmm/purchasesdk/core/ui/an;->bj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p1, Lmm/purchasesdk/core/ui/an;->Q:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lmm/purchasesdk/core/ui/ProductItemView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextSize(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setSingleLine(Z)V

    iget-object v2, p1, Lmm/purchasesdk/core/ui/an;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lmm/purchasesdk/core/ui/ProductItemView;->setSingleLine()V

    const-string v2, "MARQUEE"

    invoke-static {v2}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setMarqueeRepeatLimit(I)V

    iget v2, p1, Lmm/purchasesdk/core/ui/an;->R:I

    invoke-virtual {v1, v2}, Lmm/purchasesdk/core/ui/ProductItemView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/b;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/b;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/h/a;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/ui/ag;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/ui/ag;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;)Lmm/purchasesdk/core/ui/m;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/ui/m;

    return-object v0
.end method

.method static synthetic a(Lmm/purchasesdk/core/ui/a;Lmm/purchasesdk/core/ui/m;)Lmm/purchasesdk/core/ui/m;
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/a;->a:Lmm/purchasesdk/core/ui/m;

    return-object p1
.end method

.method static synthetic b(Lmm/purchasesdk/core/ui/a;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/core/ui/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lmm/purchasesdk/core/ui/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/core/ui/a;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lmm/purchasesdk/core/ui/a;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/view/View$OnClickListener;

    const-string v3, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/core/ui/a;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "\u6b22\u8fce\u60a8\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\u529f\u80fd\uff0c\u652f\u4ed8\u6210\u529f\u540e\u7cfb\u7edf\u4f1a\u5411\u60a8\u53d1\u9001\u63d0\u793a\u77ed\u4fe1\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536."

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ab(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/core/ui/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/a;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lmm/purchasesdk/core/ui/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x5

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/core/ui/am;->L:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v2, "mmiap/image/vertical/infoline.png"

    invoke-static {v0, v2}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/a;->b()Lmm/purchasesdk/core/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/c/d;->a()Ljava/util/HashMap;

    move-result-object v5

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/a;->b()Lmm/purchasesdk/core/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/c/d;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    :goto_0
    if-ge v1, v7, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/ui/an;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v7, -0x1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v4}, Lmm/purchasesdk/core/ui/a;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v7, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v7, -0x2

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/core/ui/an;

    invoke-direct {p0, v0, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method static synthetic d(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lmm/purchasesdk/core/l/d;->R()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "101"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private e()Landroid/view/View;
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide v7, 0x3fd3333333333333L    # 0.3

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/core/ui/am;->L:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u624b\u673a\u53f7\u7801:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x7e7e7f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    const-string v2, "<u>\u66f4\u6539</u>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->h()V

    new-instance v0, Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->bg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-object v1

    :cond_0
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic e(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private f()Landroid/view/View;
    .locals 6

    const/4 v5, 0x5

    const/4 v3, -0x2

    const/16 v4, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lmm/purchasesdk/core/ui/am;->L:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "\u8be5\u624b\u673a\u53f7\u5df2\u8d2d\u4e70\u8fc7\u6b64\u5546\u54c1,\u53ef\u4ee5\u7ee7\u7eed\u4f7f\u7528,\u5982\u679c\u8fd9\u4e0d\u662f\u4f60\u7684\u624b\u673a\u53f7,\u8bf7\u66f4\u6539."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x7e7e7f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lmm/purchasesdk/core/ui/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/editbg.9.png"

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

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/editbg_a.9.png"

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

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->e:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->f:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget v0, p0, Lmm/purchasesdk/core/ui/a;->s:I

    int-to-float v1, v0

    iget v0, p0, Lmm/purchasesdk/core/ui/a;->s:I

    int-to-float v2, v0

    iget v0, p0, Lmm/purchasesdk/core/ui/a;->s:I

    int-to-float v3, v0

    iget v0, p0, Lmm/purchasesdk/core/ui/a;->s:I

    int-to-float v4, v0

    const v5, -0x2b2a28

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmm/purchasesdk/core/ui/a;->a(FFFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/infobg.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->g:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/get_verificationcode_press.9.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v0, v1, v3, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/a;->h:Landroid/graphics/drawable/Drawable;

    :cond_7
    return-void
.end method

.method private h()Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x5

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lmm/purchasesdk/core/ui/am;->L:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/infoline.png"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/a;->b()Lmm/purchasesdk/core/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/c/d;->a()Ljava/util/HashMap;

    move-result-object v6

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v0}, Lmm/purchasesdk/core/h/a;->b()Lmm/purchasesdk/core/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lmm/purchasesdk/core/c/d;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    :goto_0
    if-ge v2, v8, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/ui/an;

    const/4 v1, 0x0

    if-nez v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/core/ui/an;

    invoke-direct {p0, v0, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v8, -0x1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v5}, Lmm/purchasesdk/core/ui/a;->a(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v8, -0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_2
    sub-int v3, v8, v2

    if-lt v3, v9, :cond_4

    sub-int v1, v8, v2

    add-int/lit8 v1, v1, -0x1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/core/ui/an;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmm/purchasesdk/core/ui/an;

    invoke-direct {p0, v0, v1, v2}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    move v1, v3

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmm/purchasesdk/core/ui/an;

    invoke-direct {p0, v0, v1}, Lmm/purchasesdk/core/ui/a;->a(Lmm/purchasesdk/core/ui/an;Lmm/purchasesdk/core/ui/an;)Landroid/view/View;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    move-object v0, v1

    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/TextView;

    new-instance v1, Lmm/purchasesdk/core/ui/h;

    invoke-direct {v1, p0}, Lmm/purchasesdk/core/ui/h;-><init>(Lmm/purchasesdk/core/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    new-instance v1, Lmm/purchasesdk/core/ui/i;

    invoke-direct {v1, p0}, Lmm/purchasesdk/core/ui/i;-><init>(Lmm/purchasesdk/core/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;
    .locals 11

    const/4 v10, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide v7, 0x3fe3333333333333L    # 0.6

    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->d:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0xa

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sget v2, Lmm/purchasesdk/core/ui/am;->N:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setGravity(I)V

    const/4 v0, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lmm/purchasesdk/core/ui/am;->H:I

    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget-boolean v0, p0, Lmm/purchasesdk/core/ui/a;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u7ee7\u7eed\u4f7f\u7528"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lmm/purchasesdk/core/ui/am;->H:I

    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :goto_0
    iget-boolean v0, p0, Lmm/purchasesdk/core/ui/a;->r:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmm/purchasesdk/core/ui/f;

    invoke-direct {v0, p0}, Lmm/purchasesdk/core/ui/f;-><init>(Lmm/purchasesdk/core/ui/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_3

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    const/16 v3, 0x28

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x28

    invoke-direct {v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_3
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_5

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    invoke-direct {v0, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_5
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_7

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x50

    invoke-direct {v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_7
    sget-object v0, Lmm/purchasesdk/core/ui/am;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    const/16 v3, 0x82

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x82

    invoke-direct {v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1
.end method

.method public b(Lmm/purchasesdk/core/h/a;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->e()I

    move-result v0

    if-eq v5, v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lmm/purchasesdk/core/ui/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/core/ui/a;->b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->h()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lmm/purchasesdk/core/ui/a;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/Button;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/view/View$OnClickListener;

    const-string v3, "\u786e \u8ba4 \u652f \u4ed8"

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/core/ui/a;->a(Landroid/widget/Button;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v0, "\u6b22\u8fce\u60a8\u4f7f\u7528\u4e2d\u56fd\u79fb\u52a8\u624b\u673a\u8bdd\u8d39\u652f\u4ed8\u529f\u80fd\uff0c\u652f\u4ed8\u6210\u529f\u540e\u7cfb\u7edf\u4f1a\u5411\u60a8\u53d1\u9001\u63d0\u793a\u77ed\u4fe1\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536."

    invoke-static {v0}, Lmm/purchasesdk/core/l/d;->ab(Ljava/lang/String;)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmm/purchasesdk/core/l/d;->ac(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->b:Lmm/purchasesdk/core/h/a;

    invoke-virtual {v1}, Lmm/purchasesdk/core/h/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmm/purchasesdk/core/ui/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ScrollView;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lmm/purchasesdk/core/ui/a;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/a;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lmm/purchasesdk/core/ui/k;->dismiss()V

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 11

    const/16 v10, 0x10

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/4 v9, 0x1

    const/4 v8, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/a;->f:Landroid/widget/LinearLayout;

    sget v2, Lmm/purchasesdk/core/ui/am;->L:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v4, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801:"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x6

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, -0x7e7e7f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/EditText;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    double-to-int v4, v4

    const/16 v5, 0x1e

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    iget-object v4, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    sget v4, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setId(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    const-string v4, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    const-string v3, "<u>\u83b7\u53d6</u>"

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    sget v3, Lmm/purchasesdk/core/ui/am;->i:F

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->i()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/a;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    sget v0, Lmm/purchasesdk/core/l/d;->k:F

    const/high16 v4, 0x3fc00000    # 1.5f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lmm/purchasesdk/core/l/d;->X:I

    int-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v0, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmm/purchasesdk/core/ui/k;->onStop()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/a;->j()V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->g()V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/ui/a;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/ui/a;->setCancelable(Z)V

    invoke-super {p0}, Lmm/purchasesdk/core/ui/k;->show()V

    return-void
.end method
