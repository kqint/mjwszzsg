.class public Lcn/cmgame/billing/ui/e;
.super Lcn/cmgame/billing/ui/a;
.source "PackageDialog.java"


# static fields
.field private static final cJ:I = 0x3e8

.field private static final cK:I


# instance fields
.field private cW:I

.field private cX:I

.field private dY:Ljava/lang/String;

.field private da:Landroid/os/CountDownTimer;

.field private eX:I

.field private eY:Lcn/cmgame/billing/ui/a;

.field private eZ:Lcn/cmgame/billing/ui/a;

.field private fa:Landroid/widget/Button;

.field private fb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0xf7

    const/16 v1, 0xa1

    const/16 v2, 0x3a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/cmgame/billing/ui/e;->cK:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xdc

    iput v0, p0, Lcn/cmgame/billing/ui/e;->cW:I

    .line 44
    const/16 v0, 0x5a

    iput v0, p0, Lcn/cmgame/billing/ui/e;->cX:I

    .line 47
    const/16 v0, 0x78

    iput v0, p0, Lcn/cmgame/billing/ui/e;->eX:I

    .line 74
    iput-object p1, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/e;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcn/cmgame/billing/ui/a;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;I)V

    .line 41
    const/16 v0, 0xdc

    iput v0, p0, Lcn/cmgame/billing/ui/e;->cW:I

    .line 44
    const/16 v0, 0x5a

    iput v0, p0, Lcn/cmgame/billing/ui/e;->cX:I

    .line 47
    const/16 v0, 0x78

    iput v0, p0, Lcn/cmgame/billing/ui/e;->eX:I

    .line 86
    iput-object p1, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcn/cmgame/billing/ui/e;->eZ:Lcn/cmgame/billing/ui/a;

    .line 88
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/e;->init()V

    .line 89
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/e;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/e;ILjava/lang/String;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/e;->b(ILjava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/Button;Z)V
    .locals 7

    .prologue
    .line 565
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->B()Lcn/cmgame/billing/b/k;

    move-result-object v6

    .line 566
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    const-string v1, "gc_package_no_login"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->b(Landroid/content/Context;I)V

    .line 624
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/e;->b(Landroid/widget/Button;Z)V

    .line 571
    invoke-virtual {v6}, Lcn/cmgame/billing/b/k;->br()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcn/cmgame/billing/b/k;->bp()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/h;->bg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "40288000"

    const-string v4, ""

    .line 572
    new-instance v5, Lcn/cmgame/billing/ui/e$8;

    invoke-direct {v5, p0, v6, p1, p2}, Lcn/cmgame/billing/ui/e$8;-><init>(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/b/k;Landroid/widget/Button;Z)V

    .line 571
    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/e;Landroid/widget/Button;Z)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/e;->a(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/e;Lcn/cmgame/billing/ui/a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcn/cmgame/billing/ui/e;->eY:Lcn/cmgame/billing/ui/a;

    return-void
.end method

.method private b(ILjava/lang/String;)Landroid/widget/ScrollView;
    .locals 12

    .prologue
    const/16 v11, 0x11

    const/4 v6, 0x2

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 454
    new-instance v8, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 455
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 457
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cv:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {v0, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 459
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 461
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 462
    iget v0, p0, Lcn/cmgame/billing/ui/e;->cx:I

    iget v1, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cx:I

    iget v3, p0, Lcn/cmgame/billing/ui/e;->cy:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 463
    const-string v0, "gc_billing_order_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string v0, "gc_billing_order_member_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/h;->bi()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    const-string v0, "gc_billing_purchase"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 469
    if-ne p1, v4, :cond_3

    .line 470
    const-string v0, "gc_billing_order_succ_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const-string v0, "gc_billing_order_succ_member_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_1
    const-string v1, "gc_billing_game_again"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    move-object v1, v0

    .line 502
    :goto_0
    const/16 v2, 0x12

    iget v0, p0, Lcn/cmgame/billing/ui/e;->cx:I

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cv:I

    const/high16 v6, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/e;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    const-string v0, "gc_billing_green_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v7}, Lcn/cmgame/billing/ui/e;->a(II)Landroid/widget/Button;

    move-result-object v0

    .line 504
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cX:I

    invoke-direct {v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 505
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 506
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cx:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 507
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    if-eqz p1, :cond_2

    .line 510
    iget v1, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cy:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 512
    :cond_2
    new-instance v1, Lcn/cmgame/billing/ui/e$7;

    invoke-direct {v1, p0, p1}, Lcn/cmgame/billing/ui/e$7;-><init>(Lcn/cmgame/billing/ui/e;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 561
    return-object v8

    .line 475
    :cond_3
    if-ne p1, v6, :cond_8

    .line 476
    const-string v0, "gc_billing_order_fail_tip_1"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    const-string v0, "gc_billing_order_again"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 478
    const-string v2, "000"

    iput-object v2, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 479
    const-string v2, "201002"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 480
    const-string v0, "201002"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 481
    const-string v0, "gc_billing_order_fail_tip_2"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 483
    :cond_4
    const-string v2, "201004"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    const-string v0, "201004"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 485
    const-string v0, "gc_billing_order_fail_tip_3"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 487
    :cond_5
    const-string v2, "201005"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 488
    const-string v0, "201005"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 489
    const-string v0, "gc_billing_order_fail_tip_4"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    const-string v0, "gc_billing_game_again"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 491
    :cond_6
    const-string v2, "201006"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 492
    const-string v0, "201006"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 493
    const-string v0, "gc_billing_order_fail_tip_5"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 495
    :cond_7
    const-string v2, "200080"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 496
    const-string v0, "200080"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 497
    const-string v0, "gc_billing_order_fail_tip_6"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    :cond_8
    move v7, v0

    goto/16 :goto_0
.end method

.method private b(Landroid/widget/Button;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 631
    const-string v0, "gc_billing_unenabled"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 632
    if-eqz p2, :cond_0

    .line 633
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->eZ:Lcn/cmgame/billing/ui/a;

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 634
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->eZ:Lcn/cmgame/billing/ui/a;

    iget-object v0, v0, Lcn/cmgame/billing/ui/a;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_unenabled"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    :goto_0
    const-string v0, "gc_billing_dialog_handling"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 641
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->cS()V

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->da:Landroid/os/CountDownTimer;

    .line 643
    new-instance v0, Lcn/cmgame/billing/ui/e$9;

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcn/cmgame/billing/ui/e$9;-><init>(Lcn/cmgame/billing/ui/e;JJLandroid/widget/Button;)V

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->da:Landroid/os/CountDownTimer;

    .line 663
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->da:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 664
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->cz:Landroid/widget/ImageView;

    const-string v1, "gc_billing_cancel_unenabled"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcn/cmgame/billing/ui/e;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->cS()V

    return-void
.end method

.method static synthetic b(Lcn/cmgame/billing/ui/e;Landroid/widget/Button;Z)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Lcn/cmgame/billing/ui/e;->b(Landroid/widget/Button;Z)V

    return-void
.end method

.method private bX()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 258
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 263
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 264
    return-object v0
.end method

.method static synthetic c(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->eY:Lcn/cmgame/billing/ui/a;

    return-object v0
.end method

.method private cP()Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 144
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, "gc_billing_member_name"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/e;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    const-string v1, "gc_billing_member_pay"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/b/h;->bi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/e;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    const-string v1, "gc_billing_member_partner"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->y()Lcn/cmgame/billing/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/b/f;->aR()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/e;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    iget v3, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cB:I

    iget v5, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iget v6, p0, Lcn/cmgame/billing/ui/e;->cx:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    const-string v3, "gc_billing_divider_line"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/h;->bh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/cmgame/billing/ui/e;->aw(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    return-object v0

    .line 154
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iget v3, p0, Lcn/cmgame/billing/ui/e;->cB:I

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cy:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 157
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    const-string v3, "gc_member_logo"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cQ()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    .line 174
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 179
    const-string v0, "gc_billing_package_enter"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 180
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const-string v0, "gc_billing_member_join"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 183
    :cond_0
    const-string v2, "gc_billing_green_selector"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2, v0, v5, v4}, Lcn/cmgame/billing/ui/e;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    .line 184
    iget v0, p0, Lcn/cmgame/billing/ui/e;->cW:I

    .line 185
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->getScreenHeight()I

    move-result v2

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/cmgame/billing/api/a;->getScreenWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x320

    if-ge v2, v3, :cond_1

    .line 186
    iget v0, p0, Lcn/cmgame/billing/ui/e;->eX:I

    .line 188
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcn/cmgame/billing/ui/e;->cX:I

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    iget v3, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 190
    iget-object v3, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    new-instance v3, Lcn/cmgame/billing/ui/e$1;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/e$1;-><init>(Lcn/cmgame/billing/ui/e;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    const-string v2, "gc_billing_green_selector"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v2

    const-string v3, "gc_billing_member_more"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3, v5, v4}, Lcn/cmgame/billing/ui/e;->a(IIIF)Landroid/widget/Button;

    move-result-object v2

    .line 199
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cX:I

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    iget v0, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 201
    iget v0, p0, Lcn/cmgame/billing/ui/e;->cx:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 202
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v0, Lcn/cmgame/billing/ui/e$2;

    invoke-direct {v0, p0}, Lcn/cmgame/billing/ui/e$2;-><init>(Lcn/cmgame/billing/ui/e;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    return-object v1
.end method

.method private cR()Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x2

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    .line 214
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/cmgame/billing/ui/e;->cX:I

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    iget v1, p0, Lcn/cmgame/billing/ui/e;->cv:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cB:I

    iget v3, p0, Lcn/cmgame/billing/ui/e;->cv:I

    mul-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cy:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 217
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const-string v0, "gc_billing_package_enter"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const-string v0, "gc_billing_member_join"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 225
    :cond_0
    const-string v2, "gc_billing_green_selector"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2, v0, v9, v7}, Lcn/cmgame/billing/ui/e;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    .line 226
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 228
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cv:I

    mul-int/lit8 v2, v2, 0x3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 229
    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    new-instance v2, Lcn/cmgame/billing/ui/e$3;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/e$3;-><init>(Lcn/cmgame/billing/ui/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->fa:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    const-string v0, "gc_billing_green_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    const-string v2, "gc_billing_member_more"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v9, v7}, Lcn/cmgame/billing/ui/e;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    .line 238
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 240
    iget v3, p0, Lcn/cmgame/billing/ui/e;->cv:I

    mul-int/lit8 v3, v3, 0x3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 241
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v2, Lcn/cmgame/billing/ui/e$4;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/e$4;-><init>(Lcn/cmgame/billing/ui/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    return-object v1
.end method

.method private cS()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->da:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->da:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 676
    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/cmgame/billing/ui/e;)Lcn/cmgame/billing/ui/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->eZ:Lcn/cmgame/billing/ui/a;

    return-object v0
.end method

.method static synthetic e(Lcn/cmgame/billing/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/cmgame/billing/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->dY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/16 v10, 0x11

    const/4 v4, 0x1

    const/4 v9, -0x2

    const/4 v5, 0x0

    .line 344
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->getScreenWidth()I

    move-result v1

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->getScreenHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cv:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    iget v0, p0, Lcn/cmgame/billing/ui/e;->cx:I

    iget v1, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cx:I

    iget v3, p0, Lcn/cmgame/billing/ui/e;->cy:I

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 352
    const-string v0, "gc_discount_player_tip_3"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    const-string v0, "gc_billing_dialog_sure"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 354
    if-ne p1, v4, :cond_0

    .line 355
    const-string v0, "gc_discount_player_success"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v0, "gc_billing_game_again"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 383
    :goto_0
    const/16 v2, 0x12

    iget v0, p0, Lcn/cmgame/billing/ui/e;->cx:I

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cv:I

    const/high16 v6, -0x1000000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/e;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 384
    const-string v0, "gc_billing_green_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v7}, Lcn/cmgame/billing/ui/e;->a(II)Landroid/widget/Button;

    move-result-object v0

    .line 385
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cX:I

    invoke-direct {v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 386
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 387
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cx:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 388
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget v1, p0, Lcn/cmgame/billing/ui/e;->cy:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcn/cmgame/billing/ui/e;->cy:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 391
    new-instance v1, Lcn/cmgame/billing/ui/e$6;

    invoke-direct {v1, p0, p1}, Lcn/cmgame/billing/ui/e$6;-><init>(Lcn/cmgame/billing/ui/e;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    return-object v8

    .line 357
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 358
    const-string v0, "gc_billing_order_fail_tip_1"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    const-string v0, "gc_billing_order_again"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    .line 360
    const-string v2, "000"

    iput-object v2, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 361
    const-string v2, "201002"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v0, "201002"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 363
    const-string v0, "gc_billing_order_fail_tip_2"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_0

    .line 365
    :cond_1
    const-string v2, "201004"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    const-string v0, "201004"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 367
    const-string v0, "gc_billing_order_fail_tip_3"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 369
    :cond_2
    const-string v2, "201005"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    const-string v0, "201005"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 371
    const-string v0, "gc_billing_order_fail_tip_4"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    const-string v0, "gc_billing_game_again"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 373
    :cond_3
    const-string v2, "201006"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    const-string v0, "201006"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 375
    const-string v0, "gc_billing_order_fail_tip_5"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    .line 377
    :cond_4
    const-string v2, "200080"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    const-string v0, "200080"

    iput-object v0, p0, Lcn/cmgame/billing/ui/e;->fb:Ljava/lang/String;

    .line 379
    const-string v0, "gc_billing_order_fail_tip_6"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    const-string v0, "gc_close"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto/16 :goto_0

    :cond_5
    move v7, v0

    goto/16 :goto_0
.end method

.method public aB(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcn/cmgame/billing/ui/e;->dY:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public cG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcn/cmgame/billing/ui/e;->dY:Ljava/lang/String;

    return-object v0
.end method

.method public cN()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 105
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->bX()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->cP()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->cR()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    return-object v0
.end method

.method public cO()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 121
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->bX()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 122
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cx:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/cmgame/billing/ui/e;->cx:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 127
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 128
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcn/cmgame/billing/ui/e;->cW:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 130
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->cP()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    invoke-direct {p0}, Lcn/cmgame/billing/ui/e;->cQ()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v0

    .line 96
    iget v1, p0, Lcn/cmgame/billing/ui/e;->cW:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcn/cmgame/billing/ui/e;->cW:I

    .line 97
    iget v1, p0, Lcn/cmgame/billing/ui/e;->cX:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/cmgame/billing/ui/e;->cX:I

    .line 98
    return-void
.end method

.method public l(Z)Landroid/widget/LinearLayout;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 268
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/e;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    iget-boolean v2, p0, Lcn/cmgame/billing/ui/e;->cA:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->getScreenHeight()I

    move-result v2

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/cmgame/billing/api/a;->getScreenWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v4, 0x320

    if-ge v2, v4, :cond_2

    .line 273
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v5, v3

    .line 278
    :goto_0
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cy:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 279
    iget v2, p0, Lcn/cmgame/billing/ui/e;->cv:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 280
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    const/4 v1, 0x0

    .line 282
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 283
    const-string v1, "gc_billing_package_info"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->D()Lcn/cmgame/billing/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/b/h;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_1
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string v0, "gc_billing_member_info"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    const-string v1, "gc_billing_package_join"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    .line 289
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/cmgame/billing/api/a;->C()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const-string v1, "gc_billing_member_enter"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    .line 292
    :cond_1
    if-eqz p1, :cond_3

    .line 293
    const-string v0, "gc_billing_player_discount"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    const-string v0, "gc_billing_member_enter"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 296
    :goto_2
    const/16 v2, 0x12

    sget v6, Lcn/cmgame/billing/ui/e;->cK:I

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/e;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    const-string v0, "gc_billing_green_selector"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bd(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {p0, v0, v7, v1, v2}, Lcn/cmgame/billing/ui/e;->a(IIIF)Landroid/widget/Button;

    move-result-object v0

    .line 298
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    new-instance v1, Lcn/cmgame/billing/ui/e$5;

    invoke-direct {v1, p0, p1}, Lcn/cmgame/billing/ui/e$5;-><init>(Lcn/cmgame/billing/ui/e;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-object v8

    .line 276
    :cond_2
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v5, v0

    goto/16 :goto_0

    :cond_3
    move v7, v1

    move-object v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
