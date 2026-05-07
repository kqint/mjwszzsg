.class public Lcn/cmgame/billing/util/c;
.super Landroid/widget/BaseAdapter;
.source "GameLogosAdapter.java"


# instance fields
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

.field private gK:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/cmgame/billing/util/c;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcn/cmgame/billing/util/c;->gK:I

    .line 27
    return-void
.end method


# virtual methods
.method public cW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 55
    if-nez p2, :cond_2

    .line 56
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/cmgame/billing/util/c;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcn/cmgame/billing/util/c;->gK:I

    iget v2, p0, Lcn/cmgame/billing/util/c;->gK:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    :cond_0
    const-string v0, "#66CD00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 69
    if-ge p1, v5, :cond_3

    .line 70
    invoke-virtual {p2, v3, v3, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 78
    :cond_1
    :goto_1
    return-object p2

    .line 60
    :cond_2
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0

    .line 71
    :cond_3
    if-ne p1, v5, :cond_4

    .line 72
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 73
    :cond_4
    const/4 v0, 0x4

    if-lt p1, v0, :cond_5

    if-ge p1, v6, :cond_5

    .line 74
    invoke-virtual {p2, v3, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1

    .line 75
    :cond_5
    if-ne p1, v6, :cond_1

    .line 76
    invoke-virtual {p2, v3, v4, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lcn/cmgame/billing/util/c;->df:Ljava/util/List;

    .line 31
    return-void
.end method
