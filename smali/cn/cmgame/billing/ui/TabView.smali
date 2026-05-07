.class public Lcn/cmgame/billing/ui/TabView;
.super Landroid/widget/LinearLayout;
.source "TabView.java"


# static fields
.field private static final cr:I = 0x10

.field private static final ct:I = 0x5

.field private static final fk:I

.field private static final fl:I

.field private static final fm:I

.field private static final fn:I


# instance fields
.field private cu:I

.field private fo:[Landroid/view/View$OnClickListener;

.field private fp:I

.field private fq:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "#E5E5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/cmgame/billing/ui/TabView;->fk:I

    .line 23
    const-string v0, "#CCCCCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/cmgame/billing/ui/TabView;->fl:I

    .line 25
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/cmgame/billing/ui/TabView;->fm:I

    .line 27
    const-string v0, "#4996C8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/cmgame/billing/ui/TabView;->fn:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    .line 42
    const/16 v0, 0x3c

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->fp:I

    .line 45
    const/16 v0, 0x10

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->fq:I

    .line 57
    iput-object p1, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcn/cmgame/billing/ui/TabView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    .line 42
    const/16 v0, 0x3c

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->fp:I

    .line 45
    const/16 v0, 0x10

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->fq:I

    .line 52
    iput-object p1, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private a(ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    sget v1, Lcn/cmgame/billing/ui/TabView;->fl:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/TabView;I)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/TabView;->g(I)V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/TabView;)[Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private g(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    move v1, v2

    :goto_0
    const/4 v0, 0x2

    if-lt v1, v0, :cond_0

    .line 172
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 164
    if-ne p1, v1, :cond_1

    .line 165
    sget v3, Lcn/cmgame/billing/ui/TabView;->fk:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcn/cmgame/billing/ui/TabView;->fm:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_1
    sget v3, Lcn/cmgame/billing/ui/TabView;->fl:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 169
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcn/cmgame/billing/ui/TabView;->fn:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v0

    .line 63
    iget v1, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    .line 64
    iget v1, p0, Lcn/cmgame/billing/ui/TabView;->fp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/cmgame/billing/ui/TabView;->fp:I

    .line 65
    iget v1, p0, Lcn/cmgame/billing/ui/TabView;->fq:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/cmgame/billing/ui/TabView;->fq:I

    .line 66
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/TabView;->setGravity(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public a([I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    iget v1, p0, Lcn/cmgame/billing/ui/TabView;->fp:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 72
    iget v1, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    iget v3, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0, v5}, Lcn/cmgame/billing/ui/TabView;->setGravity(I)V

    .line 75
    invoke-virtual {p0, v8}, Lcn/cmgame/billing/ui/TabView;->setOrientation(I)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 80
    iget v2, p0, Lcn/cmgame/billing/ui/TabView;->fq:I

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 83
    sget v2, Lcn/cmgame/billing/ui/TabView;->fk:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 84
    aget v2, p1, v4

    new-instance v3, Lcn/cmgame/billing/ui/TabView$1;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/TabView$1;-><init>(Lcn/cmgame/billing/ui/TabView;)V

    invoke-direct {p0, v2, v3}, Lcn/cmgame/billing/ui/TabView;->a(ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    iget v3, p0, Lcn/cmgame/billing/ui/TabView;->fq:I

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 96
    sget v1, Lcn/cmgame/billing/ui/TabView;->fl:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 97
    aget v1, p1, v8

    new-instance v3, Lcn/cmgame/billing/ui/TabView$2;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/TabView$2;-><init>(Lcn/cmgame/billing/ui/TabView;)V

    invoke-direct {p0, v1, v3}, Lcn/cmgame/billing/ui/TabView;->a(ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/TabView;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0, v2}, Lcn/cmgame/billing/ui/TabView;->addView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public b([I)V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 125
    invoke-virtual {p0, v5}, Lcn/cmgame/billing/ui/TabView;->setOrientation(I)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 130
    iget v2, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    iget v3, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget v2, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    iget v3, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    sget v2, Lcn/cmgame/billing/ui/TabView;->fk:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 135
    aget v2, p1, v5

    new-instance v3, Lcn/cmgame/billing/ui/TabView$3;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/TabView$3;-><init>(Lcn/cmgame/billing/ui/TabView;)V

    invoke-direct {p0, v2, v3}, Lcn/cmgame/billing/ui/TabView;->a(ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/TabView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    iget v3, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    iget v4, p0, Lcn/cmgame/billing/ui/TabView;->cu:I

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 145
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    sget v1, Lcn/cmgame/billing/ui/TabView;->fl:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 148
    const/4 v1, 0x1

    aget v1, p1, v1

    new-instance v3, Lcn/cmgame/billing/ui/TabView$4;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/TabView$4;-><init>(Lcn/cmgame/billing/ui/TabView;)V

    invoke-direct {p0, v1, v3}, Lcn/cmgame/billing/ui/TabView;->a(ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/TabView;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {p0, v2}, Lcn/cmgame/billing/ui/TabView;->addView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method public cT()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/TabView;->removeAllViews()V

    .line 204
    return-void
.end method

.method public h(I)V
    .locals 2

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/TabView;->g(I)V

    .line 196
    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method public setListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/cmgame/billing/ui/TabView;->fo:[Landroid/view/View$OnClickListener;

    aput-object p2, v0, p1

    .line 186
    :cond_0
    return-void
.end method
