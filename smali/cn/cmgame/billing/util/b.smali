.class public Lcn/cmgame/billing/util/b;
.super Landroid/widget/BaseAdapter;
.source "DynamicAdvsAdapter.java"


# instance fields
.field private dQ:I

.field private dR:I

.field private gJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/cmgame/billing/util/b;->mContext:Landroid/content/Context;

    .line 27
    iput p3, p0, Lcn/cmgame/billing/util/b;->dQ:I

    .line 28
    iput p2, p0, Lcn/cmgame/billing/util/b;->dR:I

    .line 29
    return-void
.end method


# virtual methods
.method public cV()Ljava/util/List;
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
    .line 32
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    int-to-long v0, p1

    .line 61
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 67
    if-nez p2, :cond_1

    .line 68
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/cmgame/billing/util/b;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    iget v1, p0, Lcn/cmgame/billing/util/b;->dR:I

    iget v2, p0, Lcn/cmgame/billing/util/b;->dQ:I

    invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const-string v0, "generic_gamelist_defaulticon"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_0
    :goto_1
    return-object p2

    .line 73
    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "generic_gamelist_defaulticon"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public j(Ljava/util/List;)V
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
    .line 36
    iput-object p1, p0, Lcn/cmgame/billing/util/b;->gJ:Ljava/util/List;

    .line 37
    return-void
.end method
