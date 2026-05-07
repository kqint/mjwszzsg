.class public Lcn/cmgame/billing/ui/b;
.super Lcn/cmgame/billing/ui/a;
.source "BillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/billing/ui/b$a;
    }
.end annotation


# static fields
.field private static final cG:Ljava/lang/String; = "sag.cmgame.com"

.field private static final cH:I = -0x3

.field private static final cI:I = 0xea60

.field private static final cJ:I = 0x3e8

.field private static final cK:I

.field public static dd:Lcn/cmgame/billing/util/c;


# instance fields
.field private bO:Ljava/lang/String;

.field private cD:Landroid/widget/LinearLayout;

.field private cL:Ljava/lang/String;

.field private cM:Z

.field private cN:I

.field private cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

.field private cP:Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

.field private cQ:Landroid/widget/Button;

.field private cR:Landroid/widget/EditText;

.field private cS:Landroid/widget/EditText;

.field private cT:I

.field private cU:I

.field private cV:I

.field private cW:I

.field private cX:I

.field private cY:I

.field private cZ:Landroid/os/CountDownTimer;

.field private da:Landroid/os/CountDownTimer;

.field private db:Landroid/widget/LinearLayout;

.field private dc:I

.field private de:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private df:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private dg:Lcn/cmgame/billing/ui/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0xf7

    const/16 v1, 0xa1

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/cmgame/billing/ui/b;->cK:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;)V

    .line 119
    iput v1, p0, Lcn/cmgame/billing/ui/b;->cT:I

    .line 129
    const/16 v0, 0x12c

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cV:I

    .line 134
    const/16 v0, 0xdc

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cW:I

    .line 137
    const/16 v0, 0x5a

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cX:I

    .line 140
    const/16 v0, 0x54

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cY:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    .line 152
    iput v1, p0, Lcn/cmgame/billing/ui/b;->dc:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    .line 170
    iput-object p1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->init()V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;I)V

    .line 119
    iput v1, p0, Lcn/cmgame/billing/ui/b;->cT:I

    .line 129
    const/16 v0, 0x12c

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cV:I

    .line 134
    const/16 v0, 0xdc

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cW:I

    .line 137
    const/16 v0, 0x5a

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cX:I

    .line 140
    const/16 v0, 0x54

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cY:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    .line 152
    iput v1, p0, Lcn/cmgame/billing/ui/b;->dc:I

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    .line 182
    iput-object p1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->init()V

    .line 184
    return-void
.end method

.method private a(IIILandroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 6

    .prologue
    .line 711
    const-string v0, "gc_billing_red_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v0

    .line 712
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 713
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 714
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cy:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cy:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 715
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    if-nez p4, :cond_0

    .line 718
    new-instance v1, Lcn/cmgame/billing/ui/b$19;

    invoke-direct {v1, p0}, Lcn/cmgame/billing/ui/b$19;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    :goto_0
    return-object v0

    .line 729
    :cond_0
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Lcn/cmgame/billing/b/g;)Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2067
    const/16 v0, 0xf

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 2068
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 2069
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2070
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2071
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2072
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2074
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2075
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2076
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2077
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v6, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v7, p0, Lcn/cmgame/billing/ui/b;->cy:I

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2078
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2079
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2080
    invoke-virtual {p1}, Lcn/cmgame/billing/b/g;->bd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 2081
    :goto_0
    invoke-virtual {p1}, Lcn/cmgame/billing/b/g;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 2082
    :goto_1
    const-string v5, "gc_billing_message_title"

    invoke-static {v5}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2083
    const-string v0, "gc_billing_message_content"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-static {v0, v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2084
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2085
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2086
    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v6, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v1, v8, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2087
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2088
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2089
    const-string v1, "gc_member_logo"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2090
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2091
    const-string v0, "gc_billing_red_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    const-string v1, "gc_close"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v0

    .line 2092
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cV:I

    iget v6, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2093
    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v6, p0, Lcn/cmgame/billing/ui/b;->cy:I

    invoke-virtual {v1, v8, v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2094
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2095
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2096
    new-instance v1, Lcn/cmgame/billing/ui/b$14;

    invoke-direct {v1, p0}, Lcn/cmgame/billing/ui/b$14;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2102
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2103
    new-instance v0, Lcn/cmgame/billing/ui/b$15;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/b$15;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2109
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2110
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2111
    return-object v2

    .line 2080
    :cond_0
    invoke-virtual {p1}, Lcn/cmgame/billing/b/g;->bd()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2081
    :cond_1
    invoke-virtual {p1}, Lcn/cmgame/billing/b/g;->getContent()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/b;->d(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/Button;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1794
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1795
    const-string v0, "gc_billing_unenabled"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1796
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 1797
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1798
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_unenabled"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1800
    :cond_0
    const-string v0, "gc_billing_dialog_handling"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    invoke-direct {p0, v2}, Lcn/cmgame/billing/ui/b;->i(Z)V

    .line 1802
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->da:Landroid/os/CountDownTimer;

    .line 1803
    new-instance v0, Lcn/cmgame/billing/ui/b$8;

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcn/cmgame/billing/ui/b$8;-><init>(Lcn/cmgame/billing/ui/b;JJLandroid/widget/Button;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->da:Landroid/os/CountDownTimer;

    .line 1822
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->da:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1823
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcn/cmgame/billing/ui/b;->cN:I

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcn/cmgame/billing/ui/b;->bO:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1673
    invoke-direct {p0, p1, p2, p3}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;Z)V
    .locals 0

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/b;->i(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1674
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cT:I

    .line 1675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->h(Z)V

    .line 1676
    new-instance v0, Lcn/cmgame/billing/ui/b$5;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/cmgame/billing/ui/b$5;-><init>(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v1, v1, v0}, Lcn/cmgame/billing/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V

    .line 1699
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/b;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1453
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/b;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1896
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1905
    :goto_0
    return-object v0

    .line 1899
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1905
    goto :goto_0

    .line 1899
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/b;

    .line 1900
    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v3

    .line 1901
    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method private ay(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private az(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1553
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/a;->ax()Ljava/lang/String;

    move-result-object v2

    .line 1554
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "28"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 1555
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This game is illegal, please confirm that it did not been cracked."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_1
    const-string v3, "28"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1559
    const-string v4, "27"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "28"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1562
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcn/cmgame/billing/api/a;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1564
    const-string v1, ""

    .line 1565
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v1

    .line 1566
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v1

    .line 1569
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1573
    :cond_2
    if-eqz v0, :cond_7

    .line 1577
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1578
    invoke-static {v1}, Lcn/cmgame/billing/api/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "28"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1584
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1588
    :cond_3
    :goto_3
    return-object v1

    :cond_4
    move v0, v1

    .line 1559
    goto/16 :goto_0

    .line 1566
    :cond_5
    const-string v1, ""

    goto :goto_1

    .line 1581
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "27"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto :goto_3
.end method

.method private b(II)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 1287
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1288
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1289
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1290
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1291
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1293
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1295
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cN:I

    packed-switch v1, :pswitch_data_0

    .line 1300
    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    const-string v2, "gc_billing_purchase"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    .line 1304
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1305
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    new-instance v2, Lcn/cmgame/billing/ui/b$2;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/b$2;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1316
    return-object v0

    .line 1297
    :pswitch_0
    const-string v1, "gc_billing_green_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    const-string v2, "gc_billing_get_vericode"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    goto :goto_0

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcn/cmgame/billing/ui/b;I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcn/cmgame/billing/ui/b;->cT:I

    return-void
.end method

.method static synthetic b(Lcn/cmgame/billing/ui/b;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    return v0
.end method

.method private bS()V
    .locals 3

    .prologue
    .line 252
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->getActivateFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_ok_history"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 254
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 313
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Lcn/cmgame/billing/ui/b$1;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/b$1;-><init>(Lcn/cmgame/billing/ui/b;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    .line 310
    new-instance v0, Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v2, "Theme_billing_dialog"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p0}, Lcn/cmgame/billing/ui/e;-><init>(Landroid/content/Context;ILcn/cmgame/billing/ui/a;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    .line 311
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/e;->aB(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bT()V

    goto :goto_0
.end method

.method private bT()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v0

    .line 340
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cN:I

    if-nez v1, :cond_0

    .line 341
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/b/a;->t(Ljava/lang/String;)V

    .line 344
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    new-instance v2, Lcn/cmgame/billing/ui/b$12;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/b$12;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v0, v2}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Lcn/cmgame/billing/c/e$a;)V

    .line 360
    :cond_1
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bU()V

    .line 361
    return-void
.end method

.method private bU()V
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cN:I

    packed-switch v1, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    .line 398
    :cond_0
    return-void

    .line 368
    :pswitch_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_1

    .line 369
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bV()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_1
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_2

    .line 371
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cf()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ce()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_3

    .line 378
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bV()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_3
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_4

    .line 380
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ch()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_4
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cg()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 386
    :pswitch_3
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_5

    .line 387
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cj()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_5
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ci()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bV()Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 405
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    .line 406
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    new-instance v1, Lcn/cmgame/billing/ui/TabView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcn/cmgame/billing/ui/TabView;-><init>(Landroid/content/Context;)V

    .line 408
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/ui/TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bW()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 411
    const-string v0, "gc_billing_monthly_orger"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 412
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    const-string v0, "gc_billing_member_right"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 415
    :cond_0
    new-array v3, v4, [I

    const-string v4, "gc_billing_gamepay"

    invoke-static {v4}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v5

    aput v0, v3, v6

    invoke-virtual {v1, v3}, Lcn/cmgame/billing/ui/TabView;->a([I)V

    .line 416
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    :goto_0
    new-instance v0, Lcn/cmgame/billing/ui/b$17;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/b$17;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v5, v0}, Lcn/cmgame/billing/ui/TabView;->setListener(ILandroid/view/View$OnClickListener;)V

    .line 446
    new-instance v0, Lcn/cmgame/billing/ui/b$18;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/b$18;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v6, v0}, Lcn/cmgame/billing/ui/TabView;->setListener(ILandroid/view/View$OnClickListener;)V

    .line 457
    iget v0, p0, Lcn/cmgame/billing/ui/b;->dc:I

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/ui/TabView;->h(I)V

    .line 458
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    return-object v0

    .line 419
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/ui/TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    const-string v0, "gc_billing_monthly_orger"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 421
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 422
    const-string v0, "gc_billing_member_right"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 424
    :cond_2
    new-array v2, v4, [I

    const-string v3, "gc_billing_gamepay"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    aput v0, v2, v6

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/ui/TabView;->b([I)V

    .line 425
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private bW()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    .line 468
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 469
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 470
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 472
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 473
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private bX()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 504
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 505
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 506
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 507
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 509
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 510
    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bU()V

    return-void
.end method

.method private cc()Landroid/widget/Button;
    .locals 4

    .prologue
    .line 738
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cV:I

    iget v1, p0, Lcn/cmgame/billing/ui/b;->cX:I

    const-string v2, "gc_billing_dialog_exit"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/cmgame/billing/ui/b;->a(IIILandroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private cd()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    .line 748
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 749
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 750
    iget-boolean v2, p0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v2, :cond_0

    .line 751
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 755
    :goto_0
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 756
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 759
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 764
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 765
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 766
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 767
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    const-string v3, "gc_billing_green_selector"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v3

    const-string v4, "gc_billing_dialog_cancel"

    invoke-static {v4}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v3

    .line 770
    new-instance v4, Lcn/cmgame/billing/ui/b$20;

    invoke-direct {v4, p0}, Lcn/cmgame/billing/ui/b$20;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 783
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 784
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 785
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    const-string v1, "gc_billing_red_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    const-string v4, "gc_billing_dialog_reject"

    invoke-static {v4}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v1

    .line 788
    new-instance v4, Lcn/cmgame/billing/ui/b$21;

    invoke-direct {v4, p0}, Lcn/cmgame/billing/ui/b$21;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 803
    return-object v0

    .line 753
    :cond_0
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cy:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private ce()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 810
    const/4 v0, 0x1

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 812
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_0

    .line 813
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bX()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 818
    :goto_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 820
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cl()Landroid/widget/ScrollView;

    move-result-object v1

    .line 821
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 822
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 823
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 825
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cV:I

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {p0, v1, v2}, Lcn/cmgame/billing/ui/b;->b(II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 826
    return-object v0

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 816
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cf()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 833
    const/4 v0, 0x2

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 835
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_0

    .line 836
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bX()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 842
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 843
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 844
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 850
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 851
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 852
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 853
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 855
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 856
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cl()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 861
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 862
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 863
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 865
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 866
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 867
    iget v4, p0, Lcn/cmgame/billing/ui/b;->cW:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {p0, v4, v5}, Lcn/cmgame/billing/ui/b;->b(II)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 869
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 870
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 871
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 872
    return-object v0

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 839
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cg()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 879
    const/4 v0, 0x3

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 881
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_0

    .line 882
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bX()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 888
    :goto_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 890
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cm()Landroid/widget/ScrollView;

    move-result-object v1

    .line 891
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 892
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 893
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 895
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cV:I

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {p0, v1, v2}, Lcn/cmgame/billing/ui/b;->b(II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 896
    return-object v0

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 885
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private ch()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 903
    const/4 v0, 0x4

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 905
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bX()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 912
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 913
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 914
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 920
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 921
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 922
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 923
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 924
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 925
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 926
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cm()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 931
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 932
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 933
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 935
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 936
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 937
    iget v4, p0, Lcn/cmgame/billing/ui/b;->cW:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {p0, v4, v5}, Lcn/cmgame/billing/ui/b;->b(II)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 939
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 941
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 942
    return-object v0

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 909
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private ci()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 949
    const/16 v0, 0x9

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 950
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 951
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 952
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 954
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ck()Landroid/widget/ScrollView;

    move-result-object v1

    .line 955
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 956
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 957
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 959
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cV:I

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {p0, v1, v2}, Lcn/cmgame/billing/ui/b;->b(II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 960
    return-object v0
.end method

.method private cj()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 967
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 968
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 969
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 970
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 971
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 972
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 978
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 979
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 980
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 981
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 983
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 984
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ck()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 989
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 990
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 991
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 992
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 993
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 994
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 995
    iget v4, p0, Lcn/cmgame/billing/ui/b;->cW:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cX:I

    invoke-direct {p0, v4, v5}, Lcn/cmgame/billing/ui/b;->b(II)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 997
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 998
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 999
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1000
    return-object v0
.end method

.method private ck()Landroid/widget/ScrollView;
    .locals 13

    .prologue
    const/16 v12, 0x10

    const v11, -0x777778

    const/4 v3, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    .line 1010
    new-instance v7, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1011
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1012
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1013
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1015
    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1017
    iget-boolean v1, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    .line 1018
    const-string v0, ""

    .line 1019
    if-eqz v1, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1022
    :cond_0
    const-string v1, "gc_billing_info_sms_1"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1024
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v9

    .line 1025
    if-nez v9, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 1027
    const/4 v0, 0x0

    .line 1052
    :goto_0
    return-object v0

    .line 1030
    :cond_1
    const-string v0, "gc_billing_info_sms_6"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v9}, Lcn/cmgame/billing/b/b;->aG()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    sget v6, Lcn/cmgame/billing/ui/b;->cK:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1031
    invoke-direct {p0, v9}, Lcn/cmgame/billing/ui/b;->e(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1032
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1033
    invoke-direct {p0, v9}, Lcn/cmgame/billing/ui/b;->d(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    :goto_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v0, v5}, Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1040
    :cond_2
    const-string v0, "gc_billing_net_verifycode"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cu:I

    move-object v0, p0

    move v2, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1042
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->cS:Landroid/widget/EditText;

    .line 1043
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1044
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1045
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cS:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cS:Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1048
    const-string v0, "gc_billing_net_verifycode_2"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cu:I

    move-object v0, p0

    move v2, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object v0, v7

    .line 1052
    goto/16 :goto_0

    .line 1035
    :cond_3
    const-string v0, "gc_discount_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private cl()Landroid/widget/ScrollView;
    .locals 13

    .prologue
    const/4 v1, -0x1

    const/16 v12, 0x10

    const v11, -0x777778

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1062
    new-instance v8, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1063
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1064
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1065
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1067
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1069
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 1070
    :goto_0
    const-string v1, ""

    .line 1071
    if-eqz v0, :cond_8

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1072
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1074
    :goto_1
    const-string v1, "gc_billing_info_sms_1"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v10

    .line 1077
    if-nez v10, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 1079
    const/4 v0, 0x0

    .line 1116
    :goto_2
    return-object v0

    :cond_0
    move v0, v5

    .line 1069
    goto :goto_0

    .line 1082
    :cond_1
    const-string v0, "gc_billing_info_sms_6"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v10}, Lcn/cmgame/billing/b/b;->aG()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    sget v6, Lcn/cmgame/billing/ui/b;->cK:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1083
    invoke-direct {p0, v10}, Lcn/cmgame/billing/ui/b;->e(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1085
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1086
    invoke-direct {p0, v10}, Lcn/cmgame/billing/ui/b;->d(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1090
    :goto_3
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v0, v5}, Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1094
    :cond_2
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cN:I

    if-ne v0, v7, :cond_7

    .line 1095
    const-string v0, "gc_billing_info_sms_9"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1100
    :goto_4
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aY()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1102
    const-string v1, "gc_billing_info_sms_2"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    move-object v0, p0

    move v2, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1105
    :cond_3
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aR()Ljava/lang/String;

    move-result-object v0

    .line 1106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1107
    const-string v1, "gc_billing_info_sms_3"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cu:I

    move-object v0, p0

    move v2, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1110
    :cond_4
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aZ()Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1112
    const-string v1, "gc_billing_info_sms_4"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cu:I

    move-object v0, p0

    move v2, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1115
    :cond_5
    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object v0, v8

    .line 1116
    goto/16 :goto_2

    .line 1088
    :cond_6
    const-string v0, "gc_discount_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 1097
    :cond_7
    const-string v0, "gc_billing_info_sms_8"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private clearCache()V
    .locals 3

    .prologue
    .line 2207
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2208
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2217
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2219
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2220
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 2227
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2229
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2230
    return-void

    .line 2208
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2221
    :cond_4
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2222
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2220
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private cm()Landroid/widget/ScrollView;
    .locals 14

    .prologue
    const/4 v13, -0x2

    const v12, -0x777778

    const/16 v11, 0x10

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1126
    new-instance v8, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1127
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1128
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1129
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1131
    const/16 v0, 0x30

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1133
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/cmgame/billing/api/a;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 1134
    :goto_0
    const-string v1, ""

    .line 1135
    if-eqz v0, :cond_8

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1136
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1138
    :goto_1
    const-string v1, "gc_billing_info_sms_1"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1140
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v10

    .line 1141
    if-nez v10, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 1143
    const/4 v0, 0x0

    .line 1231
    :goto_2
    return-object v0

    :cond_0
    move v0, v5

    .line 1133
    goto :goto_0

    .line 1146
    :cond_1
    const-string v0, "gc_billing_info_sms_6"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v10}, Lcn/cmgame/billing/b/b;->aG()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    sget v6, Lcn/cmgame/billing/ui/b;->cK:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
    invoke-direct {p0, v10}, Lcn/cmgame/billing/ui/b;->e(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1149
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1150
    invoke-direct {p0, v10}, Lcn/cmgame/billing/ui/b;->d(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1154
    :goto_3
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-nez v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    invoke-virtual {v0, v5}, Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1158
    :cond_2
    const-string v0, "gc_billing_net_phone"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    const-string v1, "gc_billing_net_phone_2"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1160
    new-array v2, v7, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=\'#E00808\'>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget v1, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {p0, v0, v11, v1}, Lcn/cmgame/billing/ui/b;->a(Landroid/text/Spanned;II)Landroid/widget/TextView;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1163
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 1164
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1167
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1168
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1169
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1170
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1171
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1172
    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1173
    iget v3, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1174
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    .line 1175
    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1178
    const-string v1, "gc_billing_blue_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    const-string v3, "gc_billing_net_contacts"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v1

    .line 1179
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1183
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1185
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 1186
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->bO:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1187
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->bO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    :cond_3
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/cmgame/sdk/e/j;->E(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1192
    new-instance v3, Lcn/cmgame/billing/ui/b$22;

    invoke-direct {v3, p0, v2}, Lcn/cmgame/billing/ui/b$22;-><init>(Lcn/cmgame/billing/ui/b;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1215
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aY()Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1217
    const-string v1, "gc_billing_info_sms_2"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    move-object v0, p0

    move v2, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1220
    :cond_4
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aR()Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1222
    const-string v1, "gc_billing_info_sms_3"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cu:I

    move-object v0, p0

    move v2, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1225
    :cond_5
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/f;->aZ()Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1227
    const-string v1, "gc_billing_info_sms_4"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cu:I

    move-object v0, p0

    move v2, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1229
    :cond_6
    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object v0, v8

    .line 1231
    goto/16 :goto_2

    .line 1152
    :cond_7
    const-string v0, "gc_discount_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private cn()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1240
    new-instance v0, Lcn/cmgame/billing/ui/b$23;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/b$23;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->a(Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private cp()V
    .locals 1

    .prologue
    .line 1527
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cN:I

    packed-switch v0, :pswitch_data_0

    .line 1543
    :goto_0
    :pswitch_0
    return-void

    .line 1529
    :pswitch_1
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cq()V

    goto :goto_0

    .line 1532
    :pswitch_2
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cr()V

    goto :goto_0

    .line 1535
    :pswitch_3
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cs()V

    goto :goto_0

    .line 1538
    :pswitch_4
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ct()V

    goto :goto_0

    .line 1527
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private cq()V
    .locals 5

    .prologue
    .line 1596
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/a;->ay()Ljava/lang/String;

    move-result-object v0

    .line 1597
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/cmgame/billing/ui/b;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1598
    invoke-static {v1}, Lcn/cmgame/billing/api/a;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1601
    :cond_1
    new-instance v2, Lcn/cmgame/billing/ui/b$4;

    invoke-direct {v2, p0, v0, v1}, Lcn/cmgame/billing/ui/b$4;-><init>(Lcn/cmgame/billing/ui/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcn/cmgame/billing/ui/b;->h(Z)V

    .line 1635
    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const/16 v4, 0x4e20

    invoke-static {v3, v0, v1, v2, v4}, Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1636
    :catch_0
    move-exception v0

    .line 1637
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1638
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cr()V
    .locals 4

    .prologue
    .line 1648
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1649
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v0

    .line 1653
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cu()Ljava/lang/String;

    move-result-object v1

    .line 1654
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v0

    .line 1655
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1656
    invoke-static {v2}, Lcn/cmgame/billing/api/a;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1659
    invoke-direct {p0, v1, v0, v2}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1654
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private cs()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1706
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1707
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_no_phone_number"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 1744
    :goto_0
    return-void

    .line 1710
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->by(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1712
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_invalid_china_mobile_card"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 1715
    :cond_2
    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1716
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    goto :goto_0

    .line 1719
    :cond_3
    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->bO:Ljava/lang/String;

    .line 1720
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v0

    .line 1723
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcn/cmgame/billing/ui/b;->h(Z)V

    .line 1724
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cu()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/cmgame/billing/ui/b$6;

    invoke-direct {v4, p0}, Lcn/cmgame/billing/ui/b$6;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-static {v2, v0, v3, v1, v4}, Lcn/cmgame/billing/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1721
    goto :goto_1
.end method

.method private ct()V
    .locals 6

    .prologue
    .line 1847
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->D(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_check_network"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 1849
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/cmgame/billing/api/GameInterface$BillingCallback;->onBillingFail(Ljava/lang/String;)V

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->bO:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1853
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_no_phone_number"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 1856
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cS:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1857
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1858
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    const-string v1, "gc_billing_no_vericode"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 1861
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v0

    .line 1862
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cu()Ljava/lang/String;

    move-result-object v2

    .line 1863
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v0

    .line 1864
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1865
    invoke-static {v3}, Lcn/cmgame/billing/api/a;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1869
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcn/cmgame/billing/ui/b;->h(Z)V

    .line 1870
    iget-object v4, p0, Lcn/cmgame/billing/ui/b;->bO:Ljava/lang/String;

    new-instance v5, Lcn/cmgame/billing/ui/b$9;

    invoke-direct {v5, p0, v3}, Lcn/cmgame/billing/ui/b$9;-><init>(Lcn/cmgame/billing/ui/b;Ljava/lang/String;)V

    invoke-static {v2, v0, v4, v1, v5}, Lcn/cmgame/billing/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/b/a$a;)V

    goto :goto_0

    .line 1863
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private cu()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1914
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->o()Lcn/cmgame/billing/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/a;->aw()Ljava/lang/String;

    move-result-object v0

    .line 1915
    const-string v1, "sag.cmgame.com:8080"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1916
    const-string v1, "sag.cmgame.com:8080"

    const-string v2, "sag.cmgame.com"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1918
    :cond_0
    return-object v0
.end method

.method private cv()Landroid/widget/LinearLayout;
    .locals 21

    .prologue
    .line 1926
    const/16 v2, 0xe

    move-object/from16 v0, p0

    iput v2, v0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v9

    .line 1928
    invoke-direct/range {p0 .. p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1930
    new-instance v10, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1931
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1932
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1933
    invoke-virtual {v10, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1935
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1936
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1937
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1938
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1939
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1940
    move-object/from16 v0, p0

    iget v2, v0, Lcn/cmgame/billing/ui/b;->cy:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcn/cmgame/billing/ui/b;->cx:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/cmgame/billing/ui/b;->cy:I

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcn/cmgame/billing/ui/b;->cy:I

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1942
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1943
    move-object/from16 v0, p0

    iget v3, v0, Lcn/cmgame/billing/ui/b;->cx:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1944
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v12, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1945
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1946
    const/16 v3, 0x11

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1947
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1948
    const-string v2, "gc_package_login_remind"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v2, "#14CB14"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v13

    .line 1950
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1951
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1952
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1953
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1954
    const-string v2, "gc_package_account"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x1000000

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v16

    .line 1955
    new-instance v17, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1956
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1957
    const/16 v2, 0x10

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1958
    move-object/from16 v0, p0

    iget v2, v0, Lcn/cmgame/billing/ui/b;->cv:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1959
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1960
    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1961
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->setSingleLine()V

    .line 1962
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1963
    const/16 v2, 0x10

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 1965
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1966
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1967
    const/16 v2, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1968
    const-string v2, "gc_package_password"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x1000000

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v2

    .line 1969
    new-instance v3, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1970
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1971
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 1972
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 1973
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 1974
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1976
    new-instance v4, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1977
    const-string v5, "gc_package_remember_account"

    invoke-static {v5}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 1978
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1979
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 1980
    new-instance v5, Lcn/cmgame/billing/ui/b$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcn/cmgame/billing/ui/b$10;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1994
    const-string v5, "true"

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v6

    invoke-virtual {v6}, Lcn/cmgame/billing/api/b;->R()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1995
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/cmgame/billing/api/a;->A()Lcn/cmgame/billing/api/b;

    move-result-object v5

    invoke-virtual {v5}, Lcn/cmgame/billing/api/b;->Q()Ljava/lang/String;

    move-result-object v5

    .line 1996
    if-eqz v5, :cond_0

    .line 1997
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 1999
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2003
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2004
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2005
    move-object/from16 v0, p0

    iget v7, v0, Lcn/cmgame/billing/ui/b;->cy:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/cmgame/billing/ui/b;->cx:I

    move-object/from16 v0, p0

    iget v0, v0, Lcn/cmgame/billing/ui/b;->cy:I

    move/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2006
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2008
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2009
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2010
    move-object/from16 v0, p0

    iget v7, v0, Lcn/cmgame/billing/ui/b;->cy:I

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2011
    const-string v7, "gc_billing_blue_selector"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v7

    const-string v8, "gc_package_login"

    invoke-static {v8}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v7

    .line 2012
    new-instance v8, Lcn/cmgame/billing/ui/b$11;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1, v3}, Lcn/cmgame/billing/ui/b$11;-><init>(Lcn/cmgame/billing/ui/b;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2041
    const-string v8, "gc_billing_blue_selector"

    invoke-static {v8}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v8

    const-string v18, "gc_package_register"

    invoke-static/range {v18 .. v18}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcn/cmgame/billing/ui/b;->a(II)Landroid/widget/Button;

    move-result-object v8

    .line 2042
    new-instance v18, Lcn/cmgame/billing/ui/b$13;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/cmgame/billing/ui/b$13;-><init>(Lcn/cmgame/billing/ui/b;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2049
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2050
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2051
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2052
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2053
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2054
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2055
    invoke-virtual {v5, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2056
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2057
    invoke-virtual {v11, v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2058
    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2059
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2060
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2061
    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2062
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2063
    return-object v9
.end method

.method static synthetic d(Lcn/cmgame/billing/ui/b;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cN:I

    return v0
.end method

.method private d(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 480
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_selector"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 488
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->db:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    .line 497
    :goto_0
    return-object v0

    .line 491
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 496
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cD:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method private d(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    .line 1320
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bX()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1321
    const-string v2, ""

    .line 1322
    const-string v0, ""

    .line 1323
    const-string v1, ""

    .line 1324
    const-string v0, ""

    .line 1325
    const-string v5, ""

    .line 1326
    const-string v4, ""

    .line 1327
    const/4 v3, 0x0

    .line 1328
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "0"

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v8

    invoke-virtual {v8}, Lcn/cmgame/billing/c/e;->bC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v6

    .line 1417
    :goto_0
    return-object v0

    .line 1331
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->G()Lcn/cmgame/billing/util/Const$f;

    move-result-object v7

    .line 1332
    const-string v8, "1"

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v9

    invoke-virtual {v9}, Lcn/cmgame/billing/b/k;->bt()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1333
    sget-object v9, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    if-ne v9, v7, :cond_3

    .line 1334
    if-nez v8, :cond_2

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    if-eqz v0, :cond_2

    .line 1335
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    move-object v0, v6

    .line 1337
    goto :goto_0

    .line 1339
    :cond_3
    sget-object v9, Lcn/cmgame/billing/util/Const$f;->gF:Lcn/cmgame/billing/util/Const$f;

    if-ne v9, v7, :cond_b

    .line 1340
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/d;->aM()Ljava/lang/String;

    move-result-object v7

    .line 1341
    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v8, :cond_4

    .line 1342
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v6

    .line 1343
    goto :goto_0

    .line 1345
    :cond_4
    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gc_discount_player"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "gc_discount_info"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "gc_discount_player_tip_1"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1381
    :cond_5
    :goto_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bC()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1382
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/c/e;->bC()Ljava/lang/String;

    move-result-object v3

    .line 1383
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    .line 1384
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1385
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 1386
    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1389
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v5, v7

    invoke-virtual {p1}, Lcn/cmgame/billing/b/b;->aI()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1390
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    .line 1391
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1392
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 1393
    const/4 v5, 0x0

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1397
    :cond_7
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    move v10, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v10

    .line 1410
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1411
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v2, v7}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/16 v1, 0x10

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(Landroid/text/Spanned;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1415
    :goto_2
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/c/e;)V

    .line 1416
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    move-object v0, v6

    .line 1417
    goto/16 :goto_0

    .line 1348
    :cond_9
    const-string v8, "2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gc_discount_level"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "gc_discount_info"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/d;->aN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1351
    :cond_a
    const-string v8, "3"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gc_discount_vip"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "gc_discount_info"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/d;->aN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1355
    :cond_b
    sget-object v9, Lcn/cmgame/billing/util/Const$f;->gG:Lcn/cmgame/billing/util/Const$f;

    if-ne v9, v7, :cond_c

    .line 1356
    const-string v1, "gc_discount_promotion"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bB()Lcn/cmgame/billing/b/i;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/i;->bk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bB()Lcn/cmgame/billing/b/i;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/i;->bk()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "gc_discount_promotion_tip"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1361
    :cond_c
    sget-object v9, Lcn/cmgame/billing/util/Const$f;->gH:Lcn/cmgame/billing/util/Const$f;

    if-ne v9, v7, :cond_5

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#E00808\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/c/e;->bB()Lcn/cmgame/billing/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/i;->bk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/c/e;->bB()Lcn/cmgame/billing/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/i;->bk()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#E00808\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gc_discount_promotion_tip"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/d;->aN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1367
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lcn/cmgame/billing/b/d;->aM()Ljava/lang/String;

    move-result-object v7

    .line 1368
    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1369
    if-eqz v8, :cond_e

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gc_discount_player"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "gc_discount_activity"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "<font color=\'#E00808\'>"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "gc_discount_player_tip_1"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "</font>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1373
    :cond_e
    iget-object v7, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcn/cmgame/billing/ui/e;->l(Z)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1375
    :cond_f
    const-string v8, "2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "gc_discount_level"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "gc_discount_activity"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1377
    :cond_10
    const-string v8, "3"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1378
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "gc_discount_vip"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "gc_discount_activity"

    invoke-static {v7}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1413
    :cond_11
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v1, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/16 v1, 0x10

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/cmgame/billing/ui/b;->a(Landroid/text/Spanned;II)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1454
    instance-of v1, p1, Lcn/cmgame/billing/c/e;

    if-nez v1, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    check-cast p1, Lcn/cmgame/billing/c/e;

    .line 1458
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1459
    invoke-virtual {p1}, Lcn/cmgame/billing/c/e;->aL()Ljava/lang/String;

    move-result-object v0

    .line 1460
    invoke-virtual {p1}, Lcn/cmgame/billing/c/e;->bj()Ljava/lang/String;

    move-result-object v1

    .line 1461
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/c/e;)V

    .line 1462
    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->ay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcn/cmgame/billing/ui/b;->ay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1463
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gH:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    .line 1471
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1464
    :cond_2
    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->ay(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcn/cmgame/billing/ui/b;->ay(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1465
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gF:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    goto :goto_1

    .line 1466
    :cond_3
    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->ay(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v1}, Lcn/cmgame/billing/ui/b;->ay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1467
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gG:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    goto :goto_1

    .line 1469
    :cond_4
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    goto :goto_1
.end method

.method private e(Lcn/cmgame/billing/b/b;)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/cmgame/billing/b/b;->aI()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    invoke-virtual {p1}, Lcn/cmgame/billing/b/b;->aI()I

    move-result v1

    invoke-static {v1}, Lcn/cmgame/sdk/e/j;->s(I)Ljava/lang/String;

    move-result-object v1

    .line 1492
    const-string v2, "gc_billing_info_sms_0"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bX()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1495
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1496
    iget v3, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1497
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1499
    const-string v2, "gc_billing_info_sms_7"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/cmgame/billing/ui/b;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1500
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1501
    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1502
    iget v4, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1503
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1504
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1505
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1506
    sget-object v3, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/api/a;->G()Lcn/cmgame/billing/util/Const$f;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1507
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1508
    const-string v3, "0"

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/c/e;->bC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1509
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/c/e;->bA()Lcn/cmgame/billing/b/d;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/b/d;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    .line 1510
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/b/k;->bt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1511
    :cond_0
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1513
    :cond_1
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cv:I

    invoke-virtual {p0, v2, v7, v0}, Lcn/cmgame/billing/ui/b;->a(Landroid/text/Spanned;II)Landroid/widget/TextView;

    move-result-object v0

    .line 1514
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1515
    iget v3, p0, Lcn/cmgame/billing/ui/b;->cv:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1516
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1517
    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1518
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1520
    return-object v1
.end method

.method static synthetic e(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 832
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cf()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ce()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 902
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ch()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 878
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cg()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private h(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1760
    if-eqz p1, :cond_1

    .line 1761
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1762
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    const-string v1, "gc_billing_unenabled"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1763
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1764
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_unenabled"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1765
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cZ:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cZ:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1788
    :goto_0
    return-void

    .line 1769
    :cond_0
    new-instance v0, Lcn/cmgame/billing/ui/b$7;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/cmgame/billing/ui/b$7;-><init>(Lcn/cmgame/billing/ui/b;JJ)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->cZ:Landroid/os/CountDownTimer;

    .line 1783
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cZ:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 1787
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->a(Landroid/widget/Button;)V

    goto :goto_0
.end method

.method static synthetic i(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/ui/e;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->dg:Lcn/cmgame/billing/ui/e;

    return-object v0
.end method

.method private i(Z)V
    .locals 1

    .prologue
    .line 1832
    if-eqz p1, :cond_1

    .line 1833
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cZ:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cZ:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->da:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1839
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->da:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0
.end method

.method private j(Z)Landroid/widget/GridView;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 2141
    new-instance v1, Landroid/widget/GridView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 2142
    new-instance v0, Lcn/cmgame/billing/util/c;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cY:I

    invoke-direct {v0, v2, v3}, Lcn/cmgame/billing/util/c;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcn/cmgame/billing/ui/b;->dd:Lcn/cmgame/billing/util/c;

    .line 2143
    sget-object v0, Lcn/cmgame/billing/ui/b;->dd:Lcn/cmgame/billing/util/c;

    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcn/cmgame/billing/util/c;->k(Ljava/util/List;)V

    .line 2144
    sget-object v0, Lcn/cmgame/billing/ui/b;->dd:Lcn/cmgame/billing/util/c;

    invoke-virtual {v0}, Lcn/cmgame/billing/util/c;->getCount()I

    move-result v2

    .line 2146
    if-gt v2, v7, :cond_0

    .line 2147
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cY:I

    mul-int/2addr v3, v2

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2148
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2153
    :goto_0
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2154
    if-nez p1, :cond_1

    .line 2155
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2159
    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setGravity(I)V

    .line 2160
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2162
    sget-object v0, Lcn/cmgame/billing/ui/b;->dd:Lcn/cmgame/billing/util/c;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2163
    new-instance v0, Lcn/cmgame/billing/ui/b$16;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/b$16;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2203
    return-object v1

    .line 2150
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cY:I

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2151
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 2157
    :cond_1
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method static synthetic j(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$GameExitCallback;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cP:Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    return-object v0
.end method

.method static synthetic k(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bT()V

    return-void
.end method

.method static synthetic l(Lcn/cmgame/billing/ui/b;)Lcn/cmgame/billing/api/GameInterface$BillingCallback;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cO:Lcn/cmgame/billing/api/GameInterface$BillingCallback;

    return-object v0
.end method

.method static synthetic m(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 2206
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->clearCache()V

    return-void
.end method

.method static synthetic n(Lcn/cmgame/billing/ui/b;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cR:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcn/cmgame/billing/ui/b;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    return v0
.end method

.method static synthetic p(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 1526
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cp()V

    return-void
.end method

.method static synthetic q(Lcn/cmgame/billing/ui/b;)V
    .locals 0

    .prologue
    .line 1647
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cr()V

    return-void
.end method

.method static synthetic r(Lcn/cmgame/billing/ui/b;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cT:I

    return v0
.end method

.method static synthetic s(Lcn/cmgame/billing/ui/b;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cQ:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic t(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 966
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cj()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcn/cmgame/billing/ui/b;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 948
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->ci()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcn/cmgame/billing/ui/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    return-object v0
.end method

.method static synthetic w(Lcn/cmgame/billing/ui/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;IZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 199
    iput-object p1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    .line 203
    iput p2, p0, Lcn/cmgame/billing/ui/b;->cN:I

    .line 204
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cN:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/cmgame/sdk/sms/c;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcn/cmgame/billing/ui/b;->cN:I

    if-ne v0, v1, :cond_2

    .line 205
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->dF()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->e(I)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/b;->e(I)V

    .line 210
    :cond_3
    iput-boolean p3, p0, Lcn/cmgame/billing/ui/b;->cM:Z

    .line 211
    iput-object p4, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v0

    .line 214
    if-nez v0, :cond_5

    .line 215
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->dismiss()V

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find billing information for billing index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 205
    goto :goto_0

    .line 219
    :cond_5
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bS()V

    .line 220
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    .line 229
    iput-object p2, p0, Lcn/cmgame/billing/ui/b;->cP:Lcn/cmgame/billing/api/GameInterface$GameExitCallback;

    .line 230
    iget-boolean v0, p0, Lcn/cmgame/billing/ui/b;->cA:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->cb()Landroid/widget/LinearLayout;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    .line 231
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->ca()Landroid/widget/LinearLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public bY()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 517
    const/4 v0, 0x5

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 518
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 519
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->x()Lcn/cmgame/billing/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/util/a;->cU()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    .line 521
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 522
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 523
    const-string v0, "game_ids"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 525
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 526
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 527
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-lt v2, v0, :cond_0

    .line 535
    invoke-direct {p0, v5}, Lcn/cmgame/billing/ui/b;->j(Z)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    :goto_1
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bP()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 543
    const-string v0, "gc_billing_require"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    const/high16 v6, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cd()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    return-object v7

    .line 528
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 528
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v6, v3, v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 540
    :cond_4
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public bZ()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 552
    invoke-static {}, Lcn/cmgame/billing/api/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bY()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    .line 555
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 556
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 557
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 558
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 559
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 560
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 562
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 565
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->x()Lcn/cmgame/billing/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/util/a;->cU()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    .line 566
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 567
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 568
    const-string v0, "game_ids"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 570
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 571
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v3

    .line 573
    :goto_1
    array-length v0, v5

    if-lt v2, v0, :cond_1

    .line 581
    invoke-direct {p0, v3}, Lcn/cmgame/billing/ui/b;->j(Z)Landroid/widget/GridView;

    move-result-object v0

    .line 594
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 595
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bP()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    const-string v0, "gc_billing_require"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    const/4 v5, 0x1

    const/high16 v6, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 600
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cd()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v7

    .line 601
    goto/16 :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 573
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 574
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v8, v5, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 576
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 583
    :cond_4
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 584
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 585
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v1, v2, v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 586
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 589
    :cond_5
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 590
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 591
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v5, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v1, v2, v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method public ca()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 608
    const/4 v0, 0x7

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 609
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 610
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->x()Lcn/cmgame/billing/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/util/a;->cU()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    .line 613
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 614
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    const-string v0, "game_ids"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    .line 617
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 620
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-lt v2, v0, :cond_1

    .line 628
    invoke-direct {p0, v5}, Lcn/cmgame/billing/ui/b;->j(Z)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    const-string v0, "gc_billing_exit_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    iget v3, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/b;->cv:I

    const/high16 v6, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/b;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    :goto_1
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cc()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 637
    return-object v7

    .line 621
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 620
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 621
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 622
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v6, v3, v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 634
    :cond_4
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bP()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public cb()Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 644
    invoke-static {}, Lcn/cmgame/billing/api/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->ca()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 694
    :goto_0
    return-object v0

    .line 647
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cU:I

    .line 648
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bO()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 653
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 654
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 655
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v6, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v0, v3, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 656
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 658
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 664
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->x()Lcn/cmgame/billing/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/util/a;->cU()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    .line 665
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 666
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 667
    const-string v0, "game_ids"

    invoke-static {v0}, Lcn/cmgame/billing/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 668
    check-cast v0, [Ljava/lang/String;

    .line 669
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v2, v3

    .line 672
    :goto_1
    array-length v0, v6

    if-lt v2, v0, :cond_2

    .line 680
    invoke-direct {p0, v3}, Lcn/cmgame/billing/ui/b;->j(Z)Landroid/widget/GridView;

    move-result-object v1

    .line 688
    :cond_1
    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bP()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 691
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cn()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 693
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cc()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v4

    .line 694
    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->de:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 672
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 673
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 674
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v8, v6, v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 683
    :cond_5
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/b;->bQ()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 684
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 685
    iget v2, p0, Lcn/cmgame/billing/ui/b;->cy:I

    iget v6, p0, Lcn/cmgame/billing/ui/b;->cx:I

    iget v7, p0, Lcn/cmgame/billing/ui/b;->cx:I

    invoke-virtual {v0, v2, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 686
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public co()V
    .locals 8

    .prologue
    .line 1421
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/k;->al(Ljava/lang/String;)V

    .line 1422
    sget-object v0, Lcn/cmgame/billing/util/Const$f;->gE:Lcn/cmgame/billing/util/Const$f;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->G()Lcn/cmgame/billing/util/Const$f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcn/cmgame/billing/util/Const$f;->gF:Lcn/cmgame/billing/util/Const$f;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->G()Lcn/cmgame/billing/util/Const$f;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1423
    :cond_0
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    sget-object v1, Lcn/cmgame/billing/util/Const$f;->gF:Lcn/cmgame/billing/util/Const$f;

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/util/Const$f;)V

    .line 1424
    new-instance v0, Lcn/cmgame/billing/b/d;

    invoke-direct {v0}, Lcn/cmgame/billing/b/d;-><init>()V

    .line 1425
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/d;->J(Ljava/lang/String;)V

    .line 1426
    const-string v1, "80"

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/d;->L(Ljava/lang/String;)V

    .line 1427
    const-string v1, "500230544000"

    invoke-virtual {v0, v1}, Lcn/cmgame/billing/b/d;->K(Ljava/lang/String;)V

    .line 1428
    iget-object v1, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v1

    .line 1429
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1430
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    new-instance v3, Lcn/cmgame/billing/c/e;

    invoke-direct {v3}, Lcn/cmgame/billing/c/e;-><init>()V

    invoke-virtual {v2, v3}, Lcn/cmgame/billing/api/a;->a(Lcn/cmgame/billing/c/e;)V

    .line 1432
    :cond_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/cmgame/billing/b/b;->aI()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/cmgame/billing/c/e;->ar(Ljava/lang/String;)V

    .line 1433
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->F()Lcn/cmgame/billing/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/cmgame/billing/c/e;->e(Lcn/cmgame/billing/b/d;)V

    .line 1434
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->bU()V

    .line 1451
    :goto_0
    return-void

    .line 1436
    :cond_2
    iget-object v0, p0, Lcn/cmgame/billing/ui/b;->cL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/cmgame/billing/ui/b;->aA(Ljava/lang/String;)Lcn/cmgame/billing/b/b;

    move-result-object v0

    .line 1437
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/cmgame/billing/b/b;->aF()Ljava/lang/String;

    move-result-object v0

    .line 1438
    :goto_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    new-instance v2, Lcn/cmgame/billing/ui/b$3;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/b$3;-><init>(Lcn/cmgame/billing/ui/b;)V

    invoke-virtual {v1, v0, v2}, Lcn/cmgame/billing/api/a;->a(Ljava/lang/String;Lcn/cmgame/billing/c/e$a;)V

    goto :goto_0

    .line 1437
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 1922
    iput p1, p0, Lcn/cmgame/billing/ui/b;->cN:I

    .line 1923
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2126
    iput-object p1, p0, Lcn/cmgame/billing/ui/b;->mContext:Landroid/content/Context;

    .line 2127
    invoke-direct {p0}, Lcn/cmgame/billing/ui/b;->cv()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/b;->setContentView(Landroid/view/View;)V

    .line 2128
    return-void
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v0

    .line 239
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cV:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/cmgame/billing/ui/b;->cV:I

    .line 240
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cW:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/cmgame/billing/ui/b;->cW:I

    .line 241
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cX:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/cmgame/billing/ui/b;->cX:I

    .line 242
    iget v1, p0, Lcn/cmgame/billing/ui/b;->cY:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/cmgame/billing/ui/b;->cY:I

    .line 243
    return-void
.end method

.method public setTabIndex(I)V
    .locals 0

    .prologue
    .line 2132
    iput p1, p0, Lcn/cmgame/billing/ui/b;->dc:I

    .line 2133
    return-void
.end method
