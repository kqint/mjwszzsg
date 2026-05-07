.class public Lcn/game189/sms/SMS;
.super Ljava/lang/Object;


# static fields
.field private static A:I = 0x0

.field private static B:Z = false

.field private static C:Z = false

.field private static D:Landroid/widget/PopupWindow; = null

.field private static E:Landroid/content/Context; = null

.field private static F:Z = false

.field private static G:Lcn/game189/sms/SMS; = null

.field private static H:Landroid/content/BroadcastReceiver; = null

.field public static final RE_ALREADY_FEE:I = 0x1

.field public static final RE_ERR_NO_IMEI:I = -0x4

.field public static final RE_ERR_READ:I = -0xa

.field public static final RE_ERR_READ_DATA:I = -0x6

.field public static final RE_ERR_READ_FEENAME:I = -0x8

.field public static final RE_ERR_READ_IMEI:I = -0x9

.field public static final RE_ERR_READ_NO_IMEI:I = -0x7

.field public static final RE_ERR_SAVE:I = -0x5

.field public static final RE_ERR_SAVE_FEENAME:I = -0xb

.field public static final RE_ERR_UNSAVE:I = -0xc

.field public static final RE_INIT:I = 0x0

.field public static final RE_NO_CARD:I = -0x2

.field public static final RE_NO_TELECOM:I = -0x3

.field public static final RE_SEND_ERR:I = -0x1

.field public static final RE_SMS_SENT:I = 0x2

.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static final j:Ljava/lang/String; = "EGAME_SMS"

.field private static k:Lcn/game189/sms/SMSListener; = null

.field private static l:Landroid/app/Activity; = null

.field private static m:Landroid/content/SharedPreferences; = null

.field private static n:Landroid/widget/Button; = null

.field private static o:Landroid/widget/Button; = null

.field private static p:Landroid/widget/TextView; = null

.field private static final r:Ljava/lang/String; = "EGAME_SMS_SENT"

.field private static final s:I = 0x66

.field private static final t:I = 0x67

.field private static final u:I = 0x68

.field private static final v:I = 0x69

.field public static final version:I = 0x1

.field private static w:I = 0x0

.field private static final x:I = -0x2

.field private static final y:I = -0x1

.field private static z:Z


# instance fields
.field private q:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "[\u8bf7\u4f7f\u7528\u89c4\u8303\u5bf9\u5e94\u8d39\u7528\u7684\u77ed\u4ee3\u76ee\u7684\u53f7\u7801]"

    sput-object v0, Lcn/game189/sms/SMS;->a:Ljava/lang/String;

    const-string v0, "[\u8bf7\u4f7f\u7528\u5e73\u53f0\u77ed\u4ee3\u4e32\u7801]"

    sput-object v0, Lcn/game189/sms/SMS;->b:Ljava/lang/String;

    const-string v0, "[\u8bf7\u8bf4\u660e\u8ba1\u8d39\u70b9\u5185\u5bb9\u548c\u8d2d\u4e70\u6548\u679c],\u6b64\u64cd\u4f5c\u5c06\u53d1\u9001\u4e00\u6761\u8ba1\u8d39\u77ed\u4fe1,\u6536\u53d6\u60a8x\u5143\u8d39\u7528,\u662f\u5426\u786e\u8ba4?"

    sput-object v0, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    const-string v0, "CHECK_SMS"

    sput-object v0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    const-string v0, "\u786e\u5b9a"

    sput-object v0, Lcn/game189/sms/SMS;->e:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcn/game189/sms/SMS;->f:Ljava/lang/String;

    const-string v0, "\u77ed\u4fe1\u53d1\u9001\u4e2d,\u8bf7\u7a0d\u4faf......"

    sput-object v0, Lcn/game189/sms/SMS;->g:Ljava/lang/String;

    const-string v0, "\u53d1\u9001\u6210\u529f!"

    sput-object v0, Lcn/game189/sms/SMS;->h:Ljava/lang/String;

    const-string v0, "\u53d1\u9001\u5931\u8d25!\u8bf7\u786e\u8ba4\u624b\u673a\u4f7f\u7528\u7535\u4fe1\u624b\u673a\u5361,\u77ed\u4fe1\u529f\u80fd\u6b63\u5e38,\u5185\u5b58\u7a7a\u95f4\u8db3\u591f."

    sput-object v0, Lcn/game189/sms/SMS;->i:Ljava/lang/String;

    const/16 v0, 0x66

    sput v0, Lcn/game189/sms/SMS;->w:I

    sput-boolean v1, Lcn/game189/sms/SMS;->z:Z

    sput v1, Lcn/game189/sms/SMS;->A:I

    sput-boolean v1, Lcn/game189/sms/SMS;->B:Z

    sput-boolean v1, Lcn/game189/sms/SMS;->C:Z

    sput-boolean v1, Lcn/game189/sms/SMS;->F:Z

    new-instance v0, Lcn/game189/sms/SMS;

    invoke-direct {v0}, Lcn/game189/sms/SMS;-><init>()V

    sput-object v0, Lcn/game189/sms/SMS;->G:Lcn/game189/sms/SMS;

    new-instance v0, Lcn/game189/sms/SMS$1;

    invoke-direct {v0}, Lcn/game189/sms/SMS$1;-><init>()V

    sput-object v0, Lcn/game189/sms/SMS;->H:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcn/game189/sms/SMS;->q:Landroid/telephony/SmsManager;

    return-void
.end method

.method static synthetic a(Lcn/game189/sms/SMS;)Landroid/telephony/SmsManager;
    .locals 1

    iget-object v0, p0, Lcn/game189/sms/SMS;->q:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method static synthetic a()V
    .locals 1

    const/16 v0, 0x69

    sput v0, Lcn/game189/sms/SMS;->w:I

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcn/game189/sms/SMS;->A:I

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    sput-object p0, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x64

    const/16 v2, 0x50

    const/16 v3, 0x50

    const/16 v4, 0x50

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xff

    const/16 v4, 0x24

    const/16 v5, 0x24

    const/16 v6, 0x24

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0xf

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/16 v6, 0xf

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sget-object v4, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v4, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xff

    const/16 v3, 0x24

    const/16 v4, 0x24

    const/16 v5, 0x24

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/16 v7, 0xf

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    sget-object v4, Lcn/game189/sms/SMS;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const/16 v3, 0xf

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/16 v6, 0xf

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    sget-object v3, Lcn/game189/sms/SMS;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    new-instance v2, Lcn/game189/sms/SMS$3;

    invoke-direct {v2}, Lcn/game189/sms/SMS$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    new-instance v2, Lcn/game189/sms/SMS$4;

    invoke-direct {v2}, Lcn/game189/sms/SMS$4;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v1, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_0
    sget-boolean v0, Lcn/game189/sms/SMS;->F:Z

    if-nez v0, :cond_1

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v1, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    new-instance v1, Lcn/game189/sms/SMS$2;

    invoke-direct {v1}, Lcn/game189/sms/SMS$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    sget-object v0, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/game189/sms/SMS;->F:Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/game189/sms/SMS;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x24

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, 0xf

    const/16 v5, 0xff

    sput-object p0, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v1, 0x64

    const/16 v2, 0x50

    const/16 v3, 0x50

    const/16 v4, 0x50

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sget-object v4, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v4, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    sget-object v4, Lcn/game189/sms/SMS;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v3, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    sget-object v3, Lcn/game189/sms/SMS;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v2, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    new-instance v2, Lcn/game189/sms/SMS$3;

    invoke-direct {v2}, Lcn/game189/sms/SMS$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    new-instance v2, Lcn/game189/sms/SMS$4;

    invoke-direct {v2}, Lcn/game189/sms/SMS$4;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v7, v7, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v1, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcn/game189/sms/SMS;->C:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcn/game189/sms/SMS;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v1, -0xb

    sput v1, Lcn/game189/sms/SMS;->A:I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    sget-object v1, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    const-string v2, "EGAME_SMS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    :cond_1
    sget-object v1, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    invoke-static {v2}, Lcn/game189/sms/SMS;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, -0x4

    sput v1, Lcn/game189/sms/SMS;->A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EGAME_SMS"

    const-string v3, "saveFee error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x5

    sput v1, Lcn/game189/sms/SMS;->A:I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/k99k/tools/encrypter/Encrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c()Lcn/game189/sms/SMS;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->G:Lcn/game189/sms/SMS;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    sget-object v1, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    const-string v2, "EGAME_SMS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v1, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "EGAME_SMS"

    const-string v3, "unSaveFee error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0xc

    sput v1, Lcn/game189/sms/SMS;->A:I

    goto :goto_0
.end method

.method public static checkFee(Ljava/lang/String;Landroid/app/Activity;Lcn/game189/sms/SMSListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    sget-boolean v0, Lcn/game189/sms/SMS;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/game189/sms/SMS;->B:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const-string v0, "EGAME_SMS"

    const-string v1, "checkFee - Activity or SMSListener is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    sput-boolean v1, Lcn/game189/sms/SMS;->z:Z

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    const/4 v1, 0x0

    sput v1, Lcn/game189/sms/SMS;->A:I

    sput-object p1, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    if-nez p6, :cond_3

    invoke-static {p0}, Lcn/game189/sms/SMS;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    sput v0, Lcn/game189/sms/SMS;->A:I

    const/4 v0, 0x0

    sput-boolean v0, Lcn/game189/sms/SMS;->B:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x66

    sput v1, Lcn/game189/sms/SMS;->w:I

    const/4 v1, 0x0

    sput-boolean v1, Lcn/game189/sms/SMS;->C:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "106598110"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/game189/sms/SMS;->a:Ljava/lang/String;

    sput-object p0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    sput-object p3, Lcn/game189/sms/SMS;->b:Ljava/lang/String;

    sput-object p4, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    sput-object p5, Lcn/game189/sms/SMS;->h:Ljava/lang/String;

    sput-object p2, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    :try_start_0
    sget-object v2, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    if-nez v2, :cond_4

    sput-object v1, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v3, 0x64

    const/16 v4, 0x50

    const/16 v5, 0x50

    const/16 v6, 0x50

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0xff

    const/16 v6, 0x24

    const/16 v7, 0x24

    const/16 v8, 0x24

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/16 v7, 0xf

    const/16 v8, 0xf

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sget-object v6, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v6, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xff

    const/16 v5, 0x24

    const/16 v6, 0x24

    const/16 v7, 0x24

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v6, 0xf

    const/16 v7, 0xf

    const/16 v8, 0xf

    const/16 v9, 0xf

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v5, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    sget-object v6, Lcn/game189/sms/SMS;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v5, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v5, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/16 v7, 0xf

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    sget-object v4, Lcn/game189/sms/SMS;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    new-instance v3, Lcn/game189/sms/SMS$3;

    invoke-direct {v3}, Lcn/game189/sms/SMS$3;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    new-instance v3, Lcn/game189/sms/SMS$4;

    invoke-direct {v3}, Lcn/game189/sms/SMS$4;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v1, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_4
    sget-boolean v1, Lcn/game189/sms/SMS;->F:Z

    if-nez v1, :cond_5

    sget-object v1, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v2, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    new-instance v2, Lcn/game189/sms/SMS$2;

    invoke-direct {v2}, Lcn/game189/sms/SMS$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    sget-object v1, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/game189/sms/SMS;->F:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.egame.opengameaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "chargeCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "EGAME_SMS"

    const-string v1, "opengameaction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-static {}, Lcn/game189/sms/SMS;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    goto :goto_1
.end method

.method public static clear()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcn/game189/sms/SMS;->B:Z

    sput-boolean v0, Lcn/game189/sms/SMS;->F:Z

    sget-object v0, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v0, Lcn/game189/sms/SMS;->z:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    sget-object v1, Lcn/game189/sms/SMS;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SMS2"

    const-string v1, "clear err......."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic d()Z
    .locals 2

    sget-object v0, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x3

    sput v0, Lcn/game189/sms/SMS;->A:I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    sput v0, Lcn/game189/sms/SMS;->A:I

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    sget-object v2, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    const-string v3, "EGAME_SMS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v2, Lcn/game189/sms/SMS;->m:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcn/game189/sms/SMS;->l:Landroid/app/Activity;

    invoke-static {v3}, Lcn/game189/sms/SMS;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v1, -0x7

    sput v1, Lcn/game189/sms/SMS;->A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EGAME_SMS"

    const-string v3, "isFee error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0xa

    sput v1, Lcn/game189/sms/SMS;->A:I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/k99k/tools/encrypter/Encrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v1, -0x6

    sput v1, Lcn/game189/sms/SMS;->A:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v1, -0x8

    sput v1, Lcn/game189/sms/SMS;->A:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v1, -0x9

    sput v1, Lcn/game189/sms/SMS;->A:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g()Landroid/content/BroadcastReceiver;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->H:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static gameExit(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.egame.opengameaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EGAME_SMS"

    const-string v2, "game exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static gameStart(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.egame.opengameaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EGAME_SMS"

    const-string v2, "game start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getResult()I
    .locals 1

    sget v0, Lcn/game189/sms/SMS;->A:I

    return v0
.end method

.method static synthetic h()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/game189/sms/SMS;->z:Z

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v1, Lcn/game189/sms/SMS;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/game189/sms/SMSListener;->smsOK(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/game189/sms/SMS;->c(Ljava/lang/String;)Z

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v1, Lcn/game189/sms/SMS;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    sget v2, Lcn/game189/sms/SMS;->A:I

    invoke-interface {v0, v1, v2}, Lcn/game189/sms/SMSListener;->smsFail(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic m()V
    .locals 3

    sget-object v0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/game189/sms/SMS;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    sget-object v0, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/game189/sms/SMSListener;->smsCancel(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic n()V
    .locals 0

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    return-void
.end method

.method static synthetic o()Z
    .locals 1

    sget-boolean v0, Lcn/game189/sms/SMS;->C:Z

    return v0
.end method

.method static synthetic p()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic q()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic t()I
    .locals 1

    sget v0, Lcn/game189/sms/SMS;->w:I

    return v0
.end method

.method private static u()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v1, Lcn/game189/sms/SMS;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    new-instance v1, Lcn/game189/sms/SMS$2;

    invoke-direct {v1}, Lcn/game189/sms/SMS$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcn/game189/sms/SMS;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method private static v()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v1, Lcn/game189/sms/SMS;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/game189/sms/SMSListener;->smsOK(Ljava/lang/String;)V

    return-void
.end method

.method private static w()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/game189/sms/SMS;->c(Ljava/lang/String;)Z

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcn/game189/sms/SMS;->p:Landroid/widget/TextView;

    sget-object v1, Lcn/game189/sms/SMS;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    sget-object v0, Lcn/game189/sms/SMS;->o:Landroid/widget/Button;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    sget v2, Lcn/game189/sms/SMS;->A:I

    invoke-interface {v0, v1, v2}, Lcn/game189/sms/SMSListener;->smsFail(Ljava/lang/String;I)V

    return-void
.end method

.method private static x()V
    .locals 3

    sget-object v0, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/game189/sms/SMS;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    sget-object v0, Lcn/game189/sms/SMS;->k:Lcn/game189/sms/SMSListener;

    sget-object v1, Lcn/game189/sms/SMS;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/game189/sms/SMSListener;->smsCancel(Ljava/lang/String;I)V

    return-void
.end method

.method private static y()V
    .locals 0

    invoke-static {}, Lcn/game189/sms/SMS;->clear()V

    return-void
.end method

.method private static z()Z
    .locals 2

    sget-object v0, Lcn/game189/sms/SMS;->E:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x3

    sput v0, Lcn/game189/sms/SMS;->A:I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    sput v0, Lcn/game189/sms/SMS;->A:I

    goto :goto_1
.end method
