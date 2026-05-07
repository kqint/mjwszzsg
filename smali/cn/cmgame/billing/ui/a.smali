.class public Lcn/cmgame/billing/ui/a;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "BaseDialog"

.field protected static final co:I = 0x19

.field protected static final cp:I = 0x14

.field protected static final cq:I = 0x12

.field protected static final cr:I = 0x10

.field protected static final cs:I = 0xe

.field protected static final ct:I = 0x5

.field protected static cw:I


# instance fields
.field protected cA:Z

.field protected cB:I

.field protected cC:Landroid/app/Dialog;

.field private cD:Landroid/widget/LinearLayout;

.field protected cu:I

.field protected cv:I

.field protected cx:I

.field protected cy:I

.field protected cz:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x3

    sput v0, Lcn/cmgame/billing/ui/a;->cw:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cu:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cv:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cx:I

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cy:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/cmgame/billing/ui/a;->cA:Z

    .line 76
    const/16 v0, 0xf

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cB:I

    .line 90
    iput-object p1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/a;->bN()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cu:I

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cv:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cx:I

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cy:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/cmgame/billing/ui/a;->cA:Z

    .line 76
    const/16 v0, 0xf

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cB:I

    .line 102
    iput-object p1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/a;->bN()V

    .line 104
    return-void
.end method


# virtual methods
.method protected a(II)Landroid/widget/Button;
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/cmgame/billing/ui/a;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected a(IIIF)Landroid/widget/Button;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 313
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 317
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 318
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 319
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 320
    invoke-virtual {v1, p3, p4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 321
    return-object v1
.end method

.method protected a(ILandroid/text/Spanned;IF)Landroid/widget/Button;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 326
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 330
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 331
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 333
    invoke-virtual {v1, p3, p4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 334
    return-object v1
.end method

.method protected a(Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
    .locals 12

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v11, -0x2

    .line 262
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 263
    iget v1, p0, Lcn/cmgame/billing/ui/a;->cv:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcn/cmgame/billing/ui/a;->cB:I

    iget v3, p0, Lcn/cmgame/billing/ui/a;->cv:I

    mul-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcn/cmgame/billing/ui/a;->cx:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 264
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 266
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 269
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 271
    const-string v0, "gc_logo"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 276
    iget v0, p0, Lcn/cmgame/billing/ui/a;->cv:I

    iget v1, p0, Lcn/cmgame/billing/ui/a;->cy:I

    invoke-virtual {v10, v0, v5, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 277
    const-string v0, "gc_billing_title"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    iget v3, p0, Lcn/cmgame/billing/ui/a;->cx:I

    iget v4, p0, Lcn/cmgame/billing/ui/a;->cx:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/a;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 280
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    new-instance v1, Lcn/cmgame/billing/ui/a$5;

    invoke-direct {v1, p0, p1}, Lcn/cmgame/billing/ui/a$5;-><init>(Lcn/cmgame/billing/ui/a;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    return-object v7
.end method

.method protected a(Landroid/text/Spanned;II)Landroid/widget/TextView;
    .locals 7

    .prologue
    .line 390
    iget v3, p0, Lcn/cmgame/billing/ui/a;->cy:I

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/a;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 353
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 355
    if-eqz p5, :cond_0

    .line 356
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 358
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const/4 v0, 0x2

    int-to-float v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    invoke-virtual {v1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    return-object v1
.end method

.method public a(Landroid/view/View;)Lcn/cmgame/billing/ui/a;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/a;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/a;->a(Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/a;->setContentView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/a;->show()V

    .line 112
    return-object p0
.end method

.method protected aw(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 7

    .prologue
    .line 375
    const/16 v2, 0x12

    iget v3, p0, Lcn/cmgame/billing/ui/a;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/a;->cv:I

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/a;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected ax(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 411
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/a;->bR()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 412
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 414
    iget v1, p0, Lcn/cmgame/billing/ui/a;->cy:I

    iget v2, p0, Lcn/cmgame/billing/ui/a;->cy:I

    iget v3, p0, Lcn/cmgame/billing/ui/a;->cy:I

    iget v5, p0, Lcn/cmgame/billing/ui/a;->cy:I

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 417
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 419
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010288

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 420
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    const/16 v2, 0x12

    iget v3, p0, Lcn/cmgame/billing/ui/a;->cv:I

    const/high16 v6, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/a;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 426
    return-object v7
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 118
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/a;->setContentView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/a;->show()V

    .line 122
    :cond_0
    return-void
.end method

.method protected bN()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v0

    .line 129
    iget v2, p0, Lcn/cmgame/billing/ui/a;->cu:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/cmgame/billing/ui/a;->cu:I

    .line 130
    iget v2, p0, Lcn/cmgame/billing/ui/a;->cx:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/cmgame/billing/ui/a;->cx:I

    .line 131
    iget v2, p0, Lcn/cmgame/billing/ui/a;->cv:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/cmgame/billing/ui/a;->cv:I

    .line 132
    iget v2, p0, Lcn/cmgame/billing/ui/a;->cy:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcn/cmgame/billing/ui/a;->cy:I

    .line 133
    iget v2, p0, Lcn/cmgame/billing/ui/a;->cB:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcn/cmgame/billing/ui/a;->cB:I

    .line 135
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/cmgame/billing/ui/a;->cA:Z

    .line 138
    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/a;->setCancelable(Z)V

    .line 141
    new-instance v0, Lcn/cmgame/billing/ui/a$1;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/a$1;-><init>(Lcn/cmgame/billing/ui/a;)V

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 150
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method protected bO()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 156
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    const-string v1, "gc_bg_small"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 163
    return-object v0
.end method

.method protected bP()Landroid/widget/LinearLayout;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bQ()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    iget v2, p0, Lcn/cmgame/billing/ui/a;->cx:I

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 243
    const-string v2, "gc_cmgc_logo_s"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    new-instance v2, Lcn/cmgame/billing/ui/a$4;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/a$4;-><init>(Lcn/cmgame/billing/ui/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    return-object v0
.end method

.method protected bR()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 397
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 399
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 400
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 402
    const-string v1, "gc_pay_background"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 404
    return-object v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cC:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/cmgame/billing/ui/a;->mContext:Landroid/content/Context;

    const-string v2, "Theme_billing_dialog"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/a;->cC:Landroid/app/Dialog;

    .line 440
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cC:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cC:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 442
    iget-object v0, p0, Lcn/cmgame/billing/ui/a;->cC:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
