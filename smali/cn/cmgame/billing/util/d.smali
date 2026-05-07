.class public Lcn/cmgame/billing/util/d;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x10

.field public static final gL:I = 0x1

.field public static final gM:I = 0x20

.field public static final gN:I = 0x40

.field public static final gO:I = 0x1

.field public static final gP:I = 0x2


# instance fields
.field private gQ:Landroid/graphics/Canvas;

.field private gR:Landroid/graphics/Bitmap;

.field private gS:Landroid/graphics/Paint;

.field gT:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcn/cmgame/billing/util/d;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcn/cmgame/billing/util/d;->cX()V

    .line 34
    iput-object p1, p0, Lcn/cmgame/billing/util/d;->gQ:Landroid/graphics/Canvas;

    .line 35
    iput-object p2, p0, Lcn/cmgame/billing/util/d;->gR:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcn/cmgame/billing/util/d;->gT:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;II)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gQ:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;III)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0, p4}, Lcn/cmgame/billing/util/d;->i(I)V

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcn/cmgame/billing/util/d;->a(Landroid/graphics/Bitmap;II)V

    .line 65
    return-void
.end method

.method public a(Lcn/cmgame/billing/util/e;III)V
    .locals 1

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/cmgame/billing/util/e;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0, p4}, Lcn/cmgame/billing/util/d;->i(I)V

    .line 71
    invoke-virtual {p1, p2}, Lcn/cmgame/billing/util/e;->j(I)V

    .line 72
    invoke-virtual {p1, p3}, Lcn/cmgame/billing/util/e;->k(I)V

    .line 73
    invoke-virtual {p1}, Lcn/cmgame/billing/util/e;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcn/cmgame/billing/util/d;->a(Landroid/graphics/Bitmap;II)V

    goto :goto_0
.end method

.method public cX()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    .line 56
    return-void
.end method

.method public fillRect(IIII)V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gQ:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gR:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public i(I)V
    .locals 3

    .prologue
    const/high16 v2, 0x41b00000    # 22.0f

    .line 81
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/16 v0, 0x14

    if-eq v0, p1, :cond_0

    const/4 v0, 0x6

    if-ne v0, p1, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 83
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const/16 v0, 0x40

    if-eq v0, p1, :cond_3

    const/16 v0, 0x50

    if-ne v0, p1, :cond_4

    .line 85
    :cond_3
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 87
    :cond_4
    const/16 v0, 0x8

    if-eq v0, p1, :cond_5

    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 88
    :cond_5
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setClip(IIII)V
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gQ:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 60
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/cmgame/billing/util/d;->gS:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    return-void
.end method
