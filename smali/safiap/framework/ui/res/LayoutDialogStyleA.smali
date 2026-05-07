.class public Lsafiap/framework/ui/res/LayoutDialogStyleA;
.super Landroid/widget/RelativeLayout;
.source "LayoutDialogStyleA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;
    }
.end annotation


# static fields
.field private static final ID_TITLE_BAR:I = 0x1

.field private static final ID_UI_MESSAGE:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private configs:[I

.field private mCancelBtn:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckValue:Z

.field private mConfirmBtn:Landroid/widget/TextView;

.field private mLayoutBottom:Landroid/widget/RelativeLayout;

.field private mLayoutButton:Landroid/widget/LinearLayout;

.field private mLayoutContent:Landroid/widget/LinearLayout;

.field private mLayoutMessage:Landroid/widget/RelativeLayout;

.field private mLayoutTitleBar:Landroid/widget/RelativeLayout;

.field private mOnDialogStyleACancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

.field private mOnDialogStyleAConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

.field private mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

.field private mTextViewUiMessage:Landroid/widget/TextView;

.field private mTextViewUiNote:Landroid/widget/TextView;

.field private mTextViewUiTitle:Landroid/widget/TextView;

.field private mWinManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V
    .locals 2
    .param p1, "manager"    # Landroid/view/WindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cfg"    # [I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    .line 20
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    .line 21
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutMessage:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutBottom:Landroid/widget/RelativeLayout;

    .line 23
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    .line 24
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    .line 25
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    .line 26
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    .line 28
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    .line 30
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckValue:Z

    .line 35
    const-string v0, "LayoutDialogStyleA"

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->TAG:Ljava/lang/String;

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    .line 311
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mOnDialogStyleAConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    .line 312
    iput-object v1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mOnDialogStyleACancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    .line 41
    const-string v0, "LayoutDialogStyleA"

    const-string v1, "LayoutUpdateDialog() is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    .line 43
    invoke-virtual {p0, p3}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->resetParameters([I)V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lsafiap/framework/ui/res/LayoutDialogStyleA;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckValue:Z

    return-void
.end method

.method static synthetic access$1(Lsafiap/framework/ui/res/LayoutDialogStyleA;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckValue:Z

    return v0
.end method

.method static synthetic access$2(Lsafiap/framework/ui/res/LayoutDialogStyleA;)Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mOnDialogStyleAConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    return-object v0
.end method

.method static synthetic access$3(Lsafiap/framework/ui/res/LayoutDialogStyleA;)Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mOnDialogStyleACancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    return-object v0
.end method

.method private setBottom()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 212
    const-string v7, "LayoutDialogStyleA"

    const-string v8, "setBottom()...start"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutBottom:Landroid/widget/RelativeLayout;

    .line 214
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 215
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/16 v9, 0xb

    aget v8, v8, v9

    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 218
    iput v11, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 219
    const/4 v7, 0x3

    invoke-virtual {v1, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    .line 223
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    const v8, -0x3c3c3d

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 224
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v3, "params1":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 227
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 228
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutBottom:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    .line 232
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 236
    new-array v7, v13, [[I

    new-array v8, v12, [I

    const v9, 0x10100a7

    aput v9, v8, v10

    aput-object v8, v7, v10

    .line 237
    new-array v8, v12, [I

    const v9, 0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v12

    new-array v8, v13, [I

    fill-array-data v8, :array_0

    .line 235
    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getStateListColorDrawable([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 239
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    new-instance v8, Lsafiap/framework/ui/res/LayoutDialogStyleA$2;

    invoke-direct {v8, p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA$2;-><init>(Lsafiap/framework/ui/res/LayoutDialogStyleA;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v4, "params2":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 253
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 254
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 256
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    const-string v8, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 264
    .local v6, "seperator":Landroid/view/View;
    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 265
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v2, "params0":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 268
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 269
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    .line 274
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 275
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 278
    new-array v7, v13, [[I

    new-array v8, v12, [I

    const v9, 0x10100a7

    aput v9, v8, v10

    aput-object v8, v7, v10

    .line 279
    new-array v8, v12, [I

    const v9, 0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v12

    new-array v8, v13, [I

    fill-array-data v8, :array_1

    .line 277
    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getStateListColorDrawable([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 281
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    new-instance v8, Lsafiap/framework/ui/res/LayoutDialogStyleA$3;

    invoke-direct {v8, p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA$3;-><init>(Lsafiap/framework/ui/res/LayoutDialogStyleA;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 297
    .local v5, "params3":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 298
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 299
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 301
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    const-string v8, "\u53d6\u6d88"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 303
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutButton:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v7, v1}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    return-void

    .line 237
    :array_0
    .array-data 4
        -0x757778
        -0x919393
    .end array-data

    .line 279
    :array_1
    .array-data 4
        -0x757778
        -0x919393
    .end array-data
.end method

.method private setMessage()V
    .locals 12

    .prologue
    .line 102
    const-string v6, "LayoutDialogStyleA"

    const-string v7, "setMessage()...start"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutMessage:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutMessage:Landroid/widget/RelativeLayout;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 105
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutMessage:Landroid/widget/RelativeLayout;

    const v7, -0x242425

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-static {v6, v7}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 109
    const/4 v6, -0x1

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 110
    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 112
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    .line 113
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    const v7, -0x242425

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 114
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v1, "params1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 117
    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 118
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutMessage:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v2, "params2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 124
    const/4 v6, 0x0

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    const/high16 v6, 0x41c80000    # 25.0f

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    const-string v7, "\u60a8\u624b\u673a\u4e0a\u7684\u4e2d\u56fd\u79fb\u52a8\u652f\u4ed8\u670d\u52a1\u6709\u65b0\u7248\u672c\uff08\u5927\u5c0f\uff1a100KB\uff09\u53ef\u4f9b\u5347\u7ea7\u3002"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    const v7, -0xcdcdce

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v7

    .line 131
    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    invoke-static {v8, v9}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v8

    .line 132
    iget-object v9, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v10, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v11, 0x7

    aget v10, v10, v11

    invoke-static {v9, v10}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v9

    .line 133
    iget-object v10, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v10

    .line 130
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    .line 141
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v3, "params3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 143
    const/4 v6, 0x0

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    const/high16 v6, 0x41c80000    # 25.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    const-string v7, "\u5347\u7ea7\u65b0\u7248\u672c\uff0c\u66f4\u4fbf\u6377\uff0c\u66f4\u5b89\u5168\u5730\u4f7f\u7528\u8bdd\u8d39\u8fdb\u884c\u5feb\u6377\u652f\u4ed8\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    const v7, -0xcdcdce

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/16 v8, 0x12

    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v7

    .line 150
    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/16 v10, 0x8

    aget v9, v9, v10

    invoke-static {v8, v9}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v8

    .line 151
    iget-object v9, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v9

    .line 152
    iget-object v10, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v10

    .line 149
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiNote:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v6, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    .line 161
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v4, "params4":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 163
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/16 v8, 0x9

    aget v7, v7, v8

    invoke-static {v6, v7}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 164
    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 165
    const/high16 v6, 0x41b00000    # 22.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 167
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 168
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    const v7, -0xfea353

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 169
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    const-string v7, "\u4e0d\u518d\u63d0\u9192"

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v7

    .line 172
    const/4 v8, 0x0

    .line 173
    const/4 v9, 0x0

    .line 174
    const/4 v10, 0x0

    .line 171
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 175
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lsafiap/framework/ui/res/LayoutDialogStyleA$1;

    invoke-direct {v7, p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA$1;-><init>(Lsafiap/framework/ui/res/LayoutDialogStyleA;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    .line 190
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v5, "params5":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 192
    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 193
    const/high16 v6, 0x41b00000    # 22.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 195
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    const-string v7, "\u60a8\u9700\u8981\u5347\u7ea7\u6b64\u7248\u672c\u624d\u80fd\u4f7f\u7528\u652f\u4ed8\u670d\u52a1"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 197
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    const v7, -0xfea353

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/16 v8, 0x12

    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v7

    .line 199
    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v9, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/16 v10, 0x8

    aget v9, v9, v10

    invoke-static {v8, v9}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v8

    .line 200
    iget-object v9, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v9

    .line 201
    iget-object v10, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v10

    .line 198
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 202
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutMessage:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6, v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void
.end method

.method private setTitleBar()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 72
    const-string v2, "LayoutDialogStyleA"

    const-string v3, "setTitleBar()...start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    .line 74
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 75
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    const v3, -0xfea355

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 79
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 80
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    .line 84
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v1, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 86
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    .line 88
    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    invoke-static {v3, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v3

    .line 87
    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 93
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getmCancleBtn()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCancelBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getmConfirmBtn()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mConfirmBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmTextViewMandatoryUpdateNote()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewMandatoryUpdateNote:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmTextViewUiMessage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmTextViewUiTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mTextViewUiTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public isCheckValue()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mCheckValue:Z

    return v0
.end method

.method public resetParameters([I)V
    .locals 8
    .param p1, "cfg"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 51
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    invoke-virtual {p0, v1}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const v2, 0xffffff

    invoke-virtual {p0, v2}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setBackgroundColor(I)V

    .line 58
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    aget v3, v3, v7

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    .line 59
    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v3, v4}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v3

    .line 60
    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mWinManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v4, v5}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v4

    .line 58
    invoke-virtual {p0, v2, v3, v4, v7}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setPadding(IIII)V

    .line 64
    invoke-direct {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setTitleBar()V

    .line 66
    invoke-direct {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setMessage()V

    .line 68
    invoke-direct {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleA;->setBottom()V

    .line 69
    return-void

    .line 48
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->configs:[I

    aget v3, p1, v0

    aput v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnDialogStyleACancelListener(Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    .prologue
    .line 323
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mOnDialogStyleACancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    .line 324
    return-void
.end method

.method public setOnDialogStyleAConfirmListener(Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    .prologue
    .line 319
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleA;->mOnDialogStyleAConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleA$OnDialogStyleAButtonListener;

    .line 320
    return-void
.end method
