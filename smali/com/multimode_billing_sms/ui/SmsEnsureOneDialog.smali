.class public Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final ENSURE:I = 0x1

.field public static final OTHERPAY:I = 0x5


# instance fields
.field private _$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;

.field private _$2:Lcom/infinit/MultimodeBilling/tools/DensityUtil;

.field private _$3:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;)V
    .locals 2

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;

    new-instance v0, Lcom/infinit/MultimodeBilling/tools/DensityUtil;

    iget-object v1, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$2:Lcom/infinit/MultimodeBilling/tools/DensityUtil;

    invoke-direct {p0, p2, p3, p4}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static _$1(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;)Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;

    return-object v0
.end method

.method private _$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->requestWindowFeature(I)Z

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v7

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v8

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v9

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v10

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v11

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    move-result v12

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x42dc0000    # 110.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    const/high16 v5, 0x43480000    # 200.0f

    invoke-static {v5}, Lcom/infinit/MultimodeBilling/tools/DensityUtil;->dip2px(F)I

    invoke-virtual/range {p0 .. p0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v15, v5

    const-wide v17, 0x3fe999999999999aL    # 0.8

    mul-double v15, v15, v17

    double-to-int v15, v15

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    div-int/lit8 v17, v16, 0x28

    mul-int/lit8 v5, v16, 0x2

    div-int/lit8 v18, v5, 0x28

    mul-int/lit8 v5, v16, 0x3

    div-int/lit8 v5, v5, 0x28

    const/16 v19, 0xb

    const-string v20, "xyf"

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "dm.widthPixels ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ";dm.heightPixels = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "dipwith = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const v20, 0x3dcccccd    # 0.1f

    const/16 v21, 0x0

    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v21 .. v24}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v14, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v14, v0, v5, v1, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41200000    # 10.0f

    const/16 v21, 0xf0

    const/16 v22, 0xf0

    const/16 v23, 0xf0

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->GetCorner(FI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-direct {v5, v0, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7, v8, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/high16 v5, 0x41200000    # 10.0f

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/infinit/MultimodeBilling/tools/PhoneInfoTools;->toCornerTop(Landroid/view/View;F)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xf

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/16 v22, -0x2

    move/from16 v0, v22

    invoke-direct {v5, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xd

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v22, "\u4e2d\u56fd\u8054\u901a\u6c83\u5546\u5e97\u6e38\u620f\u4e2d\u5fc3"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v22, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v23, "close.png"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v23, "close.png"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/16 v23, -0x2

    move/from16 v0, v23

    invoke-direct {v5, v10, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0xff

    const/16 v10, 0xf0

    const/16 v23, 0xf0

    move/from16 v0, v23

    invoke-static {v5, v10, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v8, v5, v0, v10, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v10, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x2

    mul-int/lit8 v25, v16, 0x8

    div-int/lit8 v25, v25, 0x28

    invoke-direct/range {v23 .. v25}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v23, "chinaunicom.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v23, Landroid/view/ViewGroup$LayoutParams;

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v0, v6, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0xff

    const/16 v24, 0xf0

    const/16 v25, 0xf0

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v9, v0, v9, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x2

    mul-int/lit8 v26, v16, 0x8

    div-int/lit8 v26, v26, 0x28

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v24, "wostore_logo.png"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v10, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v5, v11, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x74

    const/16 v11, 0x74

    const/16 v23, 0x74

    move/from16 v0, v23

    invoke-static {v5, v11, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v11, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v7, v0, v7, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v23, -0x2

    move/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v7, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v18, "\u60a8\u5c06\u9009\u62e9\u4f7f\u7528\u300e"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v18, "\u300f\u4e1a\u52a1\t\u5171\u9700\u82b1\u8d39\u4eba\u6c11\u5e01 "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v18, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, " \u5143"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x64

    const/16 v25, 0x64

    const/16 v26, 0x64

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/high16 v24, -0x10000

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x2

    const/16 v25, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v23, 0x64

    const/16 v24, 0x64

    const/16 v25, 0x64

    invoke-static/range {v23 .. v25}, Landroid/graphics/Color;->rgb(III)I

    move-result v23

    move/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x2

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v24

    const/16 v25, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v7, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v23, -0x2

    move/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v18, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v23, v15, 0x4

    div-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    invoke-direct {v5, v0, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u786e\u8ba4\u8bdd\u8d39\u652f\u4ed8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v23, "btn_ac.png"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v23, "btn_ac.png"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v23, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v9, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    mul-int/lit8 v24, v15, 0x3

    div-int/lit8 v24, v24, 0xd

    move/from16 v0, v24

    invoke-direct {v5, v0, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f"

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/multimode_billing_sms/ui/MultiModePay;->getInstance()Lcom/multimode_billing_sms/ui/MultiModePay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/multimode_billing_sms/ui/MultiModePay;->isSupportOtherPay()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v12, "btn_an.png"

    invoke-virtual {v5, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v12, "btn_an.png"

    invoke-static {v5, v12}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v5, -0x1

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setTextColor(I)V

    :goto_3
    move/from16 v0, v19

    int-to-float v5, v0

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setTextSize(F)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v5, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v23, -0x2

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v5, v12, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    int-to-double v0, v15

    move-wide/from16 v23, v0

    const-wide v25, 0x3fe999999999999aL    # 0.8

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x96

    const/16 v19, 0x96

    const/16 v23, 0x96

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v6, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-direct {v6, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v23, -0x2

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v12, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v6, v12, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x1

    const/16 v23, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    const-string v17, "\u611f\u8c22\u652f\u6301\u6b63\u7248\u6e38\u620f\uff0c\u8f7b\u677e\u70b9\u51fb\u83b7\u5f97\u66f4\u591a\u4e50\u8da3!"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x64

    const/16 v19, 0x64

    const/16 v23, 0x64

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v17, 0x41200000    # 10.0f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v19, Landroid/text/SpannableString;

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    const-string v24, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0x64

    const/16 v25, 0x64

    const/16 v26, 0x64

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const-string v25, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, 0xe

    const/16 v25, 0x24

    const/16 v26, 0xf1

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v24, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v19, 0x41200000    # 10.0f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/multimode_billing_sms/ui/lIlIIlIIIlIIlIll;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/multimode_billing_sms/ui/lIlIIlIIIlIIlIll;-><init>(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/multimode_billing_sms/ui/IllIIlIIIlIIlIll;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v9}, Lcom/multimode_billing_sms/ui/IllIIlIIIlIIlIll;-><init>(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;Landroid/widget/Button;)V

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1}, Lcom/multimode_billing_sms/ui/lllIIlIIIlIIlIll;-><init>(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;Landroid/widget/Button;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->setContentView(Landroid/view/View;)V

    iput v15, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, v16

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v12, "btn_an.jpg"

    invoke-virtual {v5, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v12, "btn_an.jpg"

    invoke-static {v5, v12}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    const/16 v5, 0x64

    const/16 v12, 0x64

    const/16 v24, 0x64

    move/from16 v0, v24

    invoke-static {v5, v12, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_3

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method static _$2(Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getBitMapDrawable(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$3:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    array-length v6, v4

    invoke-static {v4, v3, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v3, v6

    float-to-int v3, v3

    if-gtz v3, :cond_2

    :goto_0
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    array-length v3, v4

    invoke-static {v4, v1, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getScreenWidth(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->_$1:Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog$SmsOneSureListener;->OneSure(I)V

    invoke-virtual {p0}, Lcom/multimode_billing_sms/ui/SmsEnsureOneDialog;->dismiss()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object v2

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
