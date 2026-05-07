.class public Lcn/cmgame/billing/ui/c;
.super Lcn/cmgame/billing/ui/a;
.source "GameDetailDialog.java"


# static fields
.field public static dd:Lcn/cmgame/billing/util/c;


# instance fields
.field private cc:Lcn/cmgame/billing/b/e;

.field private dJ:I

.field private dK:I

.field private dL:I

.field private dM:I

.field private dN:I

.field private dO:I

.field private dP:I

.field private dQ:I

.field private dR:I

.field private dS:Lcn/cmgame/billing/util/b;

.field private dT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0x46

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dJ:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dK:I

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dL:I

    .line 45
    const/16 v0, 0x80

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dM:I

    .line 47
    const/16 v0, 0x8c

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dN:I

    .line 49
    const/16 v0, 0x9c

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dO:I

    .line 51
    const/16 v0, 0xfd

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dP:I

    .line 54
    const/16 v0, 0xc8

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dQ:I

    .line 57
    const/16 v0, 0x12c

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dR:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    .line 75
    iput-object p1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/c;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/cmgame/billing/b/e;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "Theme_billing_dialog"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bl(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcn/cmgame/billing/ui/a;-><init>(Landroid/content/Context;I)V

    .line 39
    const/16 v0, 0x46

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dJ:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dK:I

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dL:I

    .line 45
    const/16 v0, 0x80

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dM:I

    .line 47
    const/16 v0, 0x8c

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dN:I

    .line 49
    const/16 v0, 0x9c

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dO:I

    .line 51
    const/16 v0, 0xfd

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dP:I

    .line 54
    const/16 v0, 0xc8

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dQ:I

    .line 57
    const/16 v0, 0x12c

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dR:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    .line 90
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/c;->init()V

    .line 91
    invoke-virtual {p0, p3}, Lcn/cmgame/billing/ui/c;->b(Landroid/graphics/Bitmap;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/cmgame/billing/ui/c;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0, p2}, Lcn/cmgame/billing/ui/c;->c(Lcn/cmgame/billing/b/e;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcn/cmgame/billing/ui/c;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcn/cmgame/billing/ui/c;)Lcn/cmgame/billing/util/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->dS:Lcn/cmgame/billing/util/b;

    return-object v0
.end method

.method private c(Landroid/graphics/Bitmap;)Landroid/widget/LinearLayout;
    .locals 14

    .prologue
    const/4 v13, -0x1

    const v6, -0x777778

    const/4 v12, 0x1

    const/4 v11, -0x2

    const/4 v5, 0x0

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    sget v2, Lcn/cmgame/billing/ui/c;->cw:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cu:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/cmgame/billing/ui/c;->dJ:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->dJ:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    :goto_0
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v9

    .line 184
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 186
    new-instance v10, Landroid/widget/RatingBar;

    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 187
    const v2, 0x101007d

    .line 186
    invoke-direct {v10, v0, v1, v2}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aV()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {v10, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 189
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 190
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {v10, v0}, Landroid/widget/RatingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aS()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 197
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcn/cmgame/billing/ui/c;->dN:I

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    iget v4, p0, Lcn/cmgame/billing/ui/c;->cy:I

    iget v6, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v3, v4, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 217
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const-string v3, "gc_billing_green_selector"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    const-string v3, "gc_game_download"

    invoke-static {v3}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 221
    invoke-virtual {v0, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 224
    new-instance v3, Lcn/cmgame/billing/ui/c$3;

    invoke-direct {v3, p0}, Lcn/cmgame/billing/ui/c$3;-><init>(Lcn/cmgame/billing/ui/c;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    return-object v7

    .line 174
    :cond_0
    const-string v1, "generic_gamelist_defaulticon"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private c(Lcn/cmgame/billing/b/e;)V
    .locals 3

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 128
    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcn/cmgame/billing/b/e;->aX()Ljava/util/List;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcn/cmgame/billing/ui/c;->clearCache()V

    .line 112
    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->dS:Lcn/cmgame/billing/util/b;

    iget-object v2, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/util/b;->j(Ljava/util/List;)V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/cmgame/billing/b/j;

    .line 114
    invoke-virtual {v0}, Lcn/cmgame/billing/b/j;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v2, Lcn/cmgame/billing/ui/c$1;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/c$1;-><init>(Lcn/cmgame/billing/ui/c;)V

    .line 114
    invoke-static {v0, v2}, Lcn/cmgame/billing/b/e;->a(Ljava/lang/String;Lcn/cmgame/sdk/b/b;)V

    goto :goto_0
.end method

.method static synthetic c(Lcn/cmgame/billing/ui/c;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcn/cmgame/billing/ui/c;->clearCache()V

    return-void
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 388
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 391
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 383
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private cx()Landroid/widget/LinearLayout;
    .locals 13

    .prologue
    .line 261
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    sget v2, Lcn/cmgame/billing/ui/c;->cw:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cu:I

    add-int/2addr v3, v4

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 264
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    iget v1, p0, Lcn/cmgame/billing/ui/c;->dL:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->dM:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->dO:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->dP:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 272
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    const-string v0, "gc_game_detail"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cx:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cu:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 274
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 275
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const/4 v2, 0x0

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 280
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    const-string v0, "gc_gameDetail_cpname"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v3}, Lcn/cmgame/billing/b/e;->aR()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    .line 284
    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const/4 v5, 0x0

    const v6, -0x777778

    move-object v0, p0

    .line 283
    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v10

    .line 285
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 287
    const-string v0, "gc_gameDetail_download"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v3}, Lcn/cmgame/billing/b/e;->aT()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    .line 288
    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const/4 v5, 0x0

    const v6, -0x777778

    move-object v0, p0

    .line 287
    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v12

    .line 289
    invoke-virtual {v12}, Landroid/widget/TextView;->setSingleLine()V

    .line 290
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->aH()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const/4 v5, 0x0

    const v6, -0x777778

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 291
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    const-string v0, "gc_gameDetail_category"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v3}, Lcn/cmgame/billing/b/e;->aU()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    .line 294
    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const/4 v5, 0x0

    const v6, -0x777778

    move-object v0, p0

    .line 293
    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 295
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    return-object v7
.end method

.method private cy()Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    const/4 v4, -0x2

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 310
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    sget v2, Lcn/cmgame/billing/ui/c;->cw:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cu:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 312
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 313
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 315
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    iget v1, p0, Lcn/cmgame/billing/ui/c;->dL:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->dM:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->dO:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->dP:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 321
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    const-string v0, "gc_game_introduction"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cu:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 324
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 325
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x64

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 330
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 331
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 332
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v9, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 336
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    invoke-virtual {v0}, Lcn/cmgame/billing/b/e;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cv:I

    const v6, -0x777778

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 337
    invoke-virtual {v9, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 338
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    return-object v7
.end method

.method private cz()Landroid/widget/LinearLayout;
    .locals 10

    .prologue
    const/4 v4, -0x2

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 349
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    sget v2, Lcn/cmgame/billing/ui/c;->cw:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cu:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 351
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 353
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 357
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 358
    iget v1, p0, Lcn/cmgame/billing/ui/c;->dL:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->dM:I

    iget v3, p0, Lcn/cmgame/billing/ui/c;->dO:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->dP:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 359
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    const-string v0, "gc_game_screenshots"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->cu:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcn/cmgame/billing/ui/c;->a(Ljava/lang/CharSequence;IIIZI)Landroid/widget/TextView;

    move-result-object v0

    .line 361
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 362
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 363
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    new-instance v0, Landroid/widget/Gallery;

    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 366
    iget v1, p0, Lcn/cmgame/billing/ui/c;->cv:I

    iget v2, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/Gallery;->setPadding(IIII)V

    .line 367
    invoke-virtual {v0, v9}, Landroid/widget/Gallery;->setGravity(I)V

    .line 368
    iget v1, p0, Lcn/cmgame/billing/ui/c;->dK:I

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 369
    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 370
    invoke-virtual {v0, v9}, Landroid/widget/Gallery;->setSelection(I)V

    .line 372
    :cond_0
    new-instance v1, Lcn/cmgame/billing/util/b;

    iget-object v2, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    iget v3, p0, Lcn/cmgame/billing/ui/c;->dR:I

    iget v4, p0, Lcn/cmgame/billing/ui/c;->dQ:I

    invoke-direct {v1, v2, v3, v4}, Lcn/cmgame/billing/util/b;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcn/cmgame/billing/ui/c;->dS:Lcn/cmgame/billing/util/b;

    .line 373
    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->dS:Lcn/cmgame/billing/util/b;

    iget-object v2, p0, Lcn/cmgame/billing/ui/c;->dT:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcn/cmgame/billing/util/b;->j(Ljava/util/List;)V

    .line 374
    iget-object v1, p0, Lcn/cmgame/billing/ui/c;->dS:Lcn/cmgame/billing/util/b;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 375
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    return-object v7
.end method

.method static synthetic d(Lcn/cmgame/billing/ui/c;)Lcn/cmgame/billing/b/e;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/cmgame/billing/ui/c;->cc:Lcn/cmgame/billing/b/e;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)Landroid/widget/LinearLayout;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Lcn/cmgame/billing/ui/c;->bO()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    iget v3, p0, Lcn/cmgame/billing/ui/c;->cv:I

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    new-instance v2, Lcn/cmgame/billing/ui/c$2;

    invoke-direct {v2, p0}, Lcn/cmgame/billing/ui/c$2;-><init>(Lcn/cmgame/billing/ui/c;)V

    invoke-virtual {p0, v2}, Lcn/cmgame/billing/ui/c;->a(Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-direct {p0, p1}, Lcn/cmgame/billing/ui/c;->c(Landroid/graphics/Bitmap;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/cmgame/billing/ui/c;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    invoke-direct {p0}, Lcn/cmgame/billing/ui/c;->cx()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    invoke-direct {p0}, Lcn/cmgame/billing/ui/c;->cy()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    invoke-direct {p0}, Lcn/cmgame/billing/ui/c;->cz()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcn/cmgame/billing/api/a;->dK()F

    move-result v0

    .line 100
    iget v1, p0, Lcn/cmgame/billing/ui/c;->dN:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/cmgame/billing/ui/c;->dN:I

    .line 101
    return-void
.end method
