.class public Lsafiap/framework/ui/res/LayoutDialogStyleB;
.super Landroid/widget/RelativeLayout;
.source "LayoutDialogStyleB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;
    }
.end annotation


# static fields
.field private static final ID_TITLE_BAR:I = 0x1

.field private static final ID_UI_MESSAGE:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private configs:[I

.field private mCancleBtn:Landroid/widget/TextView;

.field private mConfirmBtn:Landroid/widget/TextView;

.field private mLayoutBottom:Landroid/widget/RelativeLayout;

.field private mLayoutButton:Landroid/widget/LinearLayout;

.field private mLayoutMessage:Landroid/widget/RelativeLayout;

.field private mLayoutTitleBar:Landroid/widget/RelativeLayout;

.field private mOnDialogStyleBCancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

.field private mOnDialogStyleBConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

.field private mTextViewUiMessage:Landroid/widget/TextView;

.field private mTextViewUiTitle:Landroid/widget/TextView;

.field private mWinManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;[I)V
    .locals 8
    .param p1, "manager"    # Landroid/view/WindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cfg"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    .line 16
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    .line 17
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutMessage:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutBottom:Landroid/widget/RelativeLayout;

    .line 19
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    .line 20
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    .line 21
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    .line 22
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    .line 23
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    .line 26
    const-string v2, "LayoutDialogStyleB"

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->TAG:Ljava/lang/String;

    .line 27
    const/16 v2, 0xb

    new-array v2, v2, [I

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    .line 216
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mOnDialogStyleBConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    .line 217
    iput-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mOnDialogStyleBCancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    .line 33
    const-string v2, "LayoutDialogStyleB"

    const-string v3, "LayoutDownloadErrorDialog() is called..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_0

    .line 37
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    .line 38
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    invoke-virtual {p0, v1}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    const v2, 0xffffff

    invoke-virtual {p0, v2}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setBackgroundColor(I)V

    .line 45
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    aget v3, v3, v7

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    .line 46
    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v3, v4}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v3

    .line 47
    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v4, v5}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v4

    .line 45
    invoke-virtual {p0, v2, v3, v4, v7}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setPadding(IIII)V

    .line 51
    invoke-direct {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setTitleBar()V

    .line 53
    invoke-direct {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setMessage()V

    .line 55
    invoke-direct {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->setBottom()V

    .line 56
    return-void

    .line 35
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    aget v3, p3, v0

    aput v3, v2, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lsafiap/framework/ui/res/LayoutDialogStyleB;)Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mOnDialogStyleBConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    return-object v0
.end method

.method static synthetic access$1(Lsafiap/framework/ui/res/LayoutDialogStyleB;)Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mOnDialogStyleBCancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

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

    .line 118
    const-string v7, "LayoutDialogStyleB"

    const-string v8, "setBottom()...start"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutBottom:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 121
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/16 v9, 0xa

    aget v8, v8, v9

    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 124
    iput v11, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 125
    const/4 v7, 0x3

    invoke-virtual {v1, v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    .line 129
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    const v8, -0x3c3c3d

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 130
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v3, "params1":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 133
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 134
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutBottom:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    .line 138
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 142
    new-array v7, v13, [[I

    new-array v8, v12, [I

    const v9, 0x10100a7

    aput v9, v8, v10

    aput-object v8, v7, v10

    .line 143
    new-array v8, v12, [I

    const v9, 0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v12

    new-array v8, v13, [I

    fill-array-data v8, :array_0

    .line 141
    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getStateListColorDrawable([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 145
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    new-instance v8, Lsafiap/framework/ui/res/LayoutDialogStyleB$1;

    invoke-direct {v8, p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB$1;-><init>(Lsafiap/framework/ui/res/LayoutDialogStyleB;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v4, "params2":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 159
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 160
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 162
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    const-string v8, "\u7acb\u5373\u5347\u7ea7"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    .local v6, "seperator":Landroid/view/View;
    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v2, "params0":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 174
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 175
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    .line 180
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 184
    new-array v7, v13, [[I

    new-array v8, v12, [I

    const v9, 0x10100a7

    aput v9, v8, v10

    aput-object v8, v7, v10

    .line 185
    new-array v8, v12, [I

    const v9, 0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v12

    new-array v8, v13, [I

    fill-array-data v8, :array_1

    .line 183
    invoke-static {v7, v8}, Lsafiap/framework/ui/res/SafRes;->getStateListColorDrawable([[I[I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 187
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    new-instance v8, Lsafiap/framework/ui/res/LayoutDialogStyleB$2;

    invoke-direct {v8, p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB$2;-><init>(Lsafiap/framework/ui/res/LayoutDialogStyleB;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v5, "params3":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 204
    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 205
    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 207
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    const-string v8, "\u53d6\u6d88"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutButton:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v7, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v7, v1}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    return-void

    .line 143
    :array_0
    .array-data 4
        -0x757778
        -0x919393
    .end array-data

    .line 185
    :array_1
    .array-data 4
        -0x757778
        -0x919393
    .end array-data
.end method

.method private setMessage()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 89
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutMessage:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutMessage:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 91
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutMessage:Landroid/widget/RelativeLayout;

    const v3, -0x242425

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 95
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 96
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    .line 99
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v1, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 101
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 102
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    .line 103
    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    aget v4, v4, v9

    invoke-static {v3, v4}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v3

    .line 104
    iget-object v4, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/16 v6, 0x8

    aget v5, v5, v6

    invoke-static {v4, v5}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v4

    .line 105
    iget-object v5, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-static {v5, v6}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v5

    .line 102
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 108
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    const-string v3, "\u4e2d\u56fd\u79fb\u52a8\u8bdd\u8d39\u652f\u4ed8\u670d\u52a1\u4e0b\u8f7d\u51fa\u9519\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5\u3002"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    const v3, -0xcdcdce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutMessage:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutMessage:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method private setTitleBar()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 59
    const-string v2, "LayoutDialogStyleB"

    const-string v3, "setTitleBar()...start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    .line 61
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 62
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    const v3, -0xfea355

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 66
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 67
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    .line 71
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v1, "params1":Landroid/widget/RelativeLayout$LayoutParams;
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 73
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 74
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->configs:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v2, v3}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v2

    .line 75
    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mWinManager:Landroid/view/WindowManager;

    invoke-static {v3, v8}, Lsafiap/framework/ui/res/SafRes;->getDimention(Landroid/view/WindowManager;I)I

    move-result v3

    .line 74
    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 80
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u8f7d\u51fa\u9519"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 82
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/ui/res/LayoutDialogStyleB;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mLayoutTitleBar:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getmCancleBtn()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mCancleBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmConfirmBtn()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mConfirmBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmTextViewUiMessage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmTextViewUiTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mTextViewUiTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setOnDialogStyleBCancelListener(Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    .prologue
    .line 228
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mOnDialogStyleBCancelListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    .line 229
    return-void
.end method

.method public setOnDialogStyleBConfirmListener(Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    .prologue
    .line 224
    iput-object p1, p0, Lsafiap/framework/ui/res/LayoutDialogStyleB;->mOnDialogStyleBConfirmListener:Lsafiap/framework/ui/res/LayoutDialogStyleB$OnDialogStyleBButtonListener;

    .line 225
    return-void
.end method
