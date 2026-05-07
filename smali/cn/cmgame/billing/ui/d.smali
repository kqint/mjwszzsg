.class public Lcn/cmgame/billing/ui/d;
.super Lcn/cmgame/billing/ui/a;
.source "NetConnectionDialog.java"


# instance fields
.field private dY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/cmgame/billing/ui/d;->dY:Ljava/lang/String;

    return-object v0
.end method

.method private cB()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 32
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    const-string v1, "gc_net_bg"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 39
    return-object v0
.end method

.method private cC()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget v0, p0, Lcn/cmgame/billing/ui/d;->cx:I

    invoke-virtual {v7, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47
    const/16 v0, 0x11

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48
    const-string v0, "gc_note"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/d;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    return-object v7
.end method

.method private cD()Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 54
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    iget v1, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v2, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v3, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/d;->cv:I

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v2, "gc_net_black"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    iget v0, p0, Lcn/cmgame/billing/ui/d;->cx:I

    iget v2, p0, Lcn/cmgame/billing/ui/d;->cx:I

    iget v3, p0, Lcn/cmgame/billing/ui/d;->cx:I

    iget v4, p0, Lcn/cmgame/billing/ui/d;->cx:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 61
    const-string v0, "gc_net_yes_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    const-string v2, "gc_yes"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v9, v8}, Lcn/cmgame/billing/ui/d;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 64
    iget v3, p0, Lcn/cmgame/billing/ui/d;->cx:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v2, Lcn/cmgame/billing/ui/d$1;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/d$1;-><init>(Lcn/cmgame/billing/ui/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    const-string v0, "gc_net_no_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    const-string v2, "gc_no"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v9, v8}, Lcn/cmgame/billing/ui/d;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    .line 83
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 85
    iget v3, p0, Lcn/cmgame/billing/ui/d;->cx:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v2, Lcn/cmgame/billing/ui/d$2;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/d$2;-><init>(Lcn/cmgame/billing/ui/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    return-object v1
.end method


# virtual methods
.method public aB(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcn/cmgame/billing/ui/d;->dY:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public cE()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/d;->cF()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/d;->setContentView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public cF()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 112
    invoke-direct {p0}, Lcn/cmgame/billing/ui/d;->cB()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 113
    invoke-direct {p0}, Lcn/cmgame/billing/ui/d;->cC()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    const-string v0, "gc_billing_no_network_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    iget v3, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/d;->cy:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/d;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 115
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->getScreenHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcn/cmgame/billing/ui/d;->cy:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 116
    const/4 v3, -0x2

    .line 115
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    iget v2, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v3, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/d;->cy:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const-string v0, "gc_billing_open_network_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    iget v3, p0, Lcn/cmgame/billing/ui/d;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/d;->cy:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/d;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    invoke-direct {p0}, Lcn/cmgame/billing/ui/d;->cD()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    return-object v7
.end method

.method public cG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcn/cmgame/billing/ui/d;->dY:Ljava/lang/String;

    return-object v0
.end method
